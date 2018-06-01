# Bootstrap Extended Utilities

This Rails gem adds more Utilities CSS classes on top of what Bootstrap 4 already offers. It adds new properties as well as build on already existing ones. Such as adding Breakpoints to certain existing utilities.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bootstrap-extended-utilities'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstra-extended-utilities

## How to use

Every new property can be configured to your needs. This way you can add only what you require without bloating the CSS.

Most classes follow the same naming structure as Bootstrap, with exception of hovers.

Each component can be turn on or off by adjusting the `$components` SCSS variable.

```
$components: (
  cursor,
  opacity,
  overflow,
  position,
  shadow,
  sizes,
  svg,
  z-index
);
```
By default all components are turned on.

Each component has their own variables that allow for further customization.
```
  $cursor-breakpoints: false; // Toggle breakpoints for Cursor property
  $cursors: (
    pointer
  ); // Add or remove different Cursor properties

  $opacity-hover: false; // Toggle hovers for Opacity
  $opacity-breakpoints: true; /// Toggle breakpoints for Opacity
  $opacities: (
    0: 0,
    10: 0.1,
    20: 0.2,
    30: 0.3,
    40: 0.4,
    50: 0.5,
    60: 0.6,
    70: 0.7,
    80: 0.8,
    90: 0.9,
    100: 1
  ); // Add or remove different Opacity properties. First value is the classname, second is the opacity value.

  $overflow-breakpoints: true; // Toggle breakpoints for Overflow
  $overflow: (
    visible,
    hidden,
    scroll,
    auto,
    initial,
    inherit
  ); // Add or remove different Overflow properties.

  $positions: (
    absolute,
    relative
    static,
    fixed
  ); // Add or remove different position properties. These are only breakpoints, as Bootstrap already offers the base classes.

  $shadow-hover: false; // Toggle hovers on box-shadows
  $shadow-breakpoints: true; // Toggle breakpoints for box-shadows
  $shadows: (
    "": 0 .5rem 1rem rgba($black, .15),
    sm: 0 .125rem .25rem rgba($black, .075),
    lg: 0 1rem 3rem rgba($black, .175)
  ); // Add or remove Shadows. These are only hovers and breakpoints, as Bootstrap already offers the base classes.

  $sizes-breakpoints: true; // These are only breakpoints, as Bootstrpa already offers the base classes. The sizes can be changed with the Bootstrap variable $sizes.

  $z-index-breakpoints: false; // toggle breakpoints on z-index
  $z-indexes: (
    -1,
    1,
    2,
    10,
    100,
    1000
  ); // Add or remove different z-index values
```

Everything listed here are the default values.

All classes can be used similar to the already existing Utilities classes in Bootstrap. Such as `.position-md-absolute`. Hovers can be access with the `.hover:` addition. Such as `.hover:opacity-lg-50`.

SVG offers two classes `.fill-current` and `.stroke-current` which use the currentColor property.

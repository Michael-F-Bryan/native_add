# Call Rust from Flutter

A Flutter plugin that calls Rust code.

## Getting Started

First, you'll need to install the `flutter_rust_bridge_codegen` CLI tool if
you haven't already.

```shell
$ cargo install flutter_rust_bridge_codegen
```

Next, we need to regenerate the glue code that exposes our `native_add` crate's
API to Dart.

```shell
$ flutter_rust_bridge_codegen \
    --rust-input rust/src/api.rs \
    --dart-output lib/bridge_generated.dart \
    --c-output ios/Classes/bridge_generated.h
```

This will create three files:

- `rust/src/bridge_generated.rs` - some glue code on the Rust side
- `lib/bridge_generated.dart` - some Dart classes for dynamically loading the
  Rust code from a shared library and calling its functions
- `ios/Classes/bridge_generated.h` - declarations for the functions from
  our Rust glue code

/// A constant that is read as `null` but overwrites old value in `copyWith`.
///
/// In JavaScript, `Object.assign()` overwrites any properties a new map
/// contains even if they are `null`. `Mode` objects are merged this way
/// when a `Mode` contains `variants`.
///
/// This behavior is ported to Dart as [Mode.copyWith] method
/// but it cannot overwrite a value with `null` because `null` is treated
/// as "do not overwrite" there.
///
/// So we need this magic value that returns `null` when read with a getter
/// but can overwrite a value when objects are merged.
const overwritingNullString =
    'This is to preserve null string when it is explicitly passed to the constructor.';

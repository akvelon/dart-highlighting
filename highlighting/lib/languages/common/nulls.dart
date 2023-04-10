/// Constant that denotes null, that is manually set to null,
/// as opposed to unsound null.
/// E.g.
/// ```
/// Class Mode {
///   String? scope;
///
///   Mode({
///     this.scope,
///   });
/// }
/// ```
/// `Mode(scope: null);` is different from `Mode();`
const preserveNullString =
    'This is to preserve null string when it is explicitly passed to the constructor.';

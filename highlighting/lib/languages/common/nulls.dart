/// Constant that denotes null, that field is explicitly set to null,
/// as opposed to implicit null.
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

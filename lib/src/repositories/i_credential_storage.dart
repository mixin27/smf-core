import 'package:smf_core/smf_core.dart';

/// Credential storage interface.
abstract class ICredentialStorage {
  /// Read [Credential] data from storage.
  Future<Credential?> read();

  /// Save [Credential] data to storage.
  Future<void> save(Credential credential);

  /// Clear the cached [Credential] from storage.
  Future<void> clear();
}

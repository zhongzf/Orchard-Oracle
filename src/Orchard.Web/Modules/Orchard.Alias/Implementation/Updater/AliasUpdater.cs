using System;
using System.Linq;
using Orchard.Alias.Implementation.Holder;
using Orchard.Alias.Implementation.Storage;
using Orchard.Environment;
using Orchard.Tasks;
using Orchard.Logging;
using Orchard.Environment.Configuration;
using Orchard.Data.Providers;

namespace Orchard.Alias.Implementation.Updater {
    public class AliasHolderUpdater : IOrchardShellEvents, IBackgroundTask {
        private readonly IAliasHolder _aliasHolder;
        private readonly IAliasStorage _storage;
        private readonly IAliasUpdateCursor _cursor;
        private readonly ShellSettings _shellSettings;

        public ILogger Logger { get; set; }

        public AliasHolderUpdater(IAliasHolder aliasHolder, IAliasStorage storage, IAliasUpdateCursor cursor, ShellSettings shellSettings) {
            _aliasHolder = aliasHolder;
            _storage = storage;
            _cursor = cursor;
			_shellSettings = shellSettings;
            Logger = NullLogger.Instance;
        }

        void IOrchardShellEvents.Activated() {
            Refresh();
        }

        void IOrchardShellEvents.Terminating() {
        }

        private void Refresh() {
            try {
                // only retreive aliases which have not been processed yet
                var aliases = _storage.List(x => x.Id > _cursor.Cursor).ToArray();

                // update the last processed id
                if (aliases.Any()) {
                    _cursor.Cursor = aliases.Last().Item5;
                }                

                if (_shellSettings.DataProvider == OracleDataServicesProvider.ProviderName)
                {
                    _aliasHolder.SetAliases(aliases.Select(alias => new AliasInfo { Path = alias.Item1 ?? string.Empty, Area = alias.Item2, RouteValues = alias.Item3 }));
                }
                else
                {
                    _aliasHolder.SetAliases(aliases.Select(alias => new AliasInfo { Path = alias.Item1, Area = alias.Item2, RouteValues = alias.Item3 }));
                }
            }
            catch (Exception ex) {
                Logger.Error(ex, "Exception during Alias refresh");
            }
        }

        public void Sweep() {
            Refresh();
        }
    }
}

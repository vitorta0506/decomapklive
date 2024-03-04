package ig;

import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.KeyManagerFactorySpi;
import javax.net.ssl.ManagerFactoryParameters;
/* loaded from: classes5.dex */
final class f extends KeyManagerFactory {

    /* loaded from: classes5.dex */
    private static final class a extends KeyManagerFactorySpi {

        /* renamed from: a  reason: collision with root package name */
        private final List<KeyManager> f41156a;

        public a(List<KeyManager> list) {
            this.f41156a = Collections.unmodifiableList(new ArrayList(list));
        }

        @Override // javax.net.ssl.KeyManagerFactorySpi
        protected KeyManager[] engineGetKeyManagers() {
            return (KeyManager[]) this.f41156a.toArray(new KeyManager[0]);
        }

        @Override // javax.net.ssl.KeyManagerFactorySpi
        protected void engineInit(KeyStore keyStore, char[] cArr) {
        }

        @Override // javax.net.ssl.KeyManagerFactorySpi
        protected void engineInit(ManagerFactoryParameters managerFactoryParameters) {
        }
    }

    public f(List<KeyManager> list) {
        super(new a(list), new l0(), "FakeAlgorithm");
    }
}

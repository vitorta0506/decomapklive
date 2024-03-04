package ig;

import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.ManagerFactoryParameters;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.TrustManagerFactorySpi;
/* loaded from: classes5.dex */
final class g extends TrustManagerFactory {

    /* loaded from: classes5.dex */
    private static final class a extends TrustManagerFactorySpi {

        /* renamed from: a  reason: collision with root package name */
        private final List<TrustManager> f41160a;

        public a(List<TrustManager> list) {
            this.f41160a = Collections.unmodifiableList(new ArrayList(list));
        }

        @Override // javax.net.ssl.TrustManagerFactorySpi
        protected TrustManager[] engineGetTrustManagers() {
            return (TrustManager[]) this.f41160a.toArray(new TrustManager[0]);
        }

        @Override // javax.net.ssl.TrustManagerFactorySpi
        protected void engineInit(KeyStore keyStore) {
        }

        @Override // javax.net.ssl.TrustManagerFactorySpi
        protected void engineInit(ManagerFactoryParameters managerFactoryParameters) {
        }
    }

    public g(List<TrustManager> list) {
        super(new a(list), new l0(), "FakeAlgorithm");
    }
}

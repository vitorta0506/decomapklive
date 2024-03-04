package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.KeyManagerFactorySpi;
import javax.net.ssl.ManagerFactoryParameters;
import javax.net.ssl.X509KeyManager;
/* loaded from: classes5.dex */
public final class i0 extends KeyManagerFactory {

    /* renamed from: a  reason: collision with root package name */
    private final int f44581a;

    /* loaded from: classes5.dex */
    class a extends KeyManagerFactorySpi {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ KeyManagerFactory f44582a;

        a(KeyManagerFactory keyManagerFactory) {
            this.f44582a = keyManagerFactory;
        }

        @Override // javax.net.ssl.KeyManagerFactorySpi
        protected KeyManager[] engineGetKeyManagers() {
            return this.f44582a.getKeyManagers();
        }

        @Override // javax.net.ssl.KeyManagerFactorySpi
        protected void engineInit(KeyStore keyStore, char[] cArr) throws KeyStoreException, NoSuchAlgorithmException, UnrecoverableKeyException {
            this.f44582a.init(keyStore, cArr);
        }

        @Override // javax.net.ssl.KeyManagerFactorySpi
        protected void engineInit(ManagerFactoryParameters managerFactoryParameters) throws InvalidAlgorithmParameterException {
            this.f44582a.init(managerFactoryParameters);
        }
    }

    public i0(KeyManagerFactory keyManagerFactory) {
        this(keyManagerFactory, 1024);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0 a(String str) {
        X509KeyManager H = j1.H(getKeyManagers());
        if ("sun.security.ssl.X509KeyManagerImpl".equals(H.getClass().getName())) {
            return new s0(H, str);
        }
        return new h0(j1.H(getKeyManagers()), str, this.f44581a);
    }

    public i0(KeyManagerFactory keyManagerFactory, int i9) {
        super(new a(keyManagerFactory), keyManagerFactory.getProvider(), keyManagerFactory.getAlgorithm());
        this.f44581a = io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "maxCachedEntries");
    }
}

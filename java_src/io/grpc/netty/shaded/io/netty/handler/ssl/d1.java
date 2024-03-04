package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.UnrecoverableKeyException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.KeyManagerFactorySpi;
import javax.net.ssl.ManagerFactoryParameters;
import javax.net.ssl.X509KeyManager;
/* loaded from: classes5.dex */
public final class d1 extends KeyManagerFactory {

    /* renamed from: a  reason: collision with root package name */
    private final a f44512a;

    public d1() {
        this(b(null));
    }

    private static a a(String str, Provider provider) throws NoSuchAlgorithmException {
        KeyManagerFactory keyManagerFactory;
        if (str == null) {
            str = KeyManagerFactory.getDefaultAlgorithm();
        }
        if (provider == null) {
            keyManagerFactory = KeyManagerFactory.getInstance(str);
        } else {
            keyManagerFactory = KeyManagerFactory.getInstance(str, provider);
        }
        return new a(keyManagerFactory);
    }

    private static a b(Provider provider) {
        try {
            return a(null, provider);
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0 c() {
        return this.f44512a.a();
    }

    private d1(a aVar) {
        super(aVar, aVar.f44513a.getProvider(), aVar.f44513a.getAlgorithm());
        this.f44512a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class a extends KeyManagerFactorySpi {

        /* renamed from: a  reason: collision with root package name */
        final KeyManagerFactory f44513a;

        /* renamed from: b  reason: collision with root package name */
        private volatile C0491a f44514b;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: io.grpc.netty.shaded.io.netty.handler.ssl.d1$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0491a {

            /* renamed from: a  reason: collision with root package name */
            private final X509KeyManager f44515a;

            /* renamed from: b  reason: collision with root package name */
            private final String f44516b;

            /* renamed from: c  reason: collision with root package name */
            private final Iterable<String> f44517c;

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: io.grpc.netty.shaded.io.netty.handler.ssl.d1$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public static final class C0492a extends s0 {

                /* renamed from: c  reason: collision with root package name */
                private final Map<String, Object> f44518c;

                C0492a(X509KeyManager x509KeyManager, String str, Iterable<String> iterable) {
                    super(x509KeyManager, str);
                    this.f44518c = new HashMap();
                    try {
                        for (String str2 : iterable) {
                            if (str2 != null && !this.f44518c.containsKey(str2)) {
                                try {
                                    this.f44518c.put(str2, super.a(kg.t0.f53908g, str2));
                                } catch (Exception e10) {
                                    this.f44518c.put(str2, e10);
                                }
                            }
                        }
                        io.grpc.netty.shaded.io.netty.util.internal.s.c(this.f44518c, "materialMap");
                    } catch (Throwable th2) {
                        b();
                        throw th2;
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s0
                public q0 a(kg.k kVar, String str) throws Exception {
                    Object obj = this.f44518c.get(str);
                    if (obj == null) {
                        return null;
                    }
                    if (obj instanceof q0) {
                        return ((q0) obj).retain();
                    }
                    throw ((Exception) obj);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s0
                public void b() {
                    for (Object obj : this.f44518c.values()) {
                        io.grpc.netty.shaded.io.netty.util.r.a(obj);
                    }
                    this.f44518c.clear();
                }
            }

            C0491a(X509KeyManager x509KeyManager, String str, Iterable<String> iterable) {
                this.f44515a = x509KeyManager;
                this.f44516b = str;
                this.f44517c = iterable;
            }

            s0 b() {
                return new C0492a(this.f44515a, this.f44516b, this.f44517c);
            }
        }

        a(KeyManagerFactory keyManagerFactory) {
            this.f44513a = (KeyManagerFactory) io.grpc.netty.shaded.io.netty.util.internal.s.h(keyManagerFactory, "kmf");
        }

        private static String b(char[] cArr) {
            if (cArr == null || cArr.length == 0) {
                return null;
            }
            return new String(cArr);
        }

        s0 a() {
            C0491a c0491a = this.f44514b;
            if (c0491a != null) {
                return c0491a.b();
            }
            throw new IllegalStateException("engineInit(...) not called yet");
        }

        @Override // javax.net.ssl.KeyManagerFactorySpi
        protected KeyManager[] engineGetKeyManagers() {
            C0491a c0491a = this.f44514b;
            if (c0491a != null) {
                return new KeyManager[]{c0491a.f44515a};
            }
            throw new IllegalStateException("engineInit(...) not called yet");
        }

        @Override // javax.net.ssl.KeyManagerFactorySpi
        protected synchronized void engineInit(KeyStore keyStore, char[] cArr) throws KeyStoreException, NoSuchAlgorithmException, UnrecoverableKeyException {
            if (this.f44514b == null) {
                if (keyStore.aliases().hasMoreElements()) {
                    this.f44513a.init(keyStore, cArr);
                    this.f44514b = new C0491a(j1.H(this.f44513a.getKeyManagers()), b(cArr), Collections.list(keyStore.aliases()));
                } else {
                    throw new KeyStoreException("No aliases found");
                }
            } else {
                throw new KeyStoreException("Already initialized");
            }
        }

        @Override // javax.net.ssl.KeyManagerFactorySpi
        protected void engineInit(ManagerFactoryParameters managerFactoryParameters) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("Not supported");
        }
    }
}

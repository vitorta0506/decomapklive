package org.apache.http.conn.ssl;

import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
@Deprecated
/* loaded from: classes7.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private String f55879a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<KeyManager> f55880b = new LinkedHashSet();

    /* renamed from: c  reason: collision with root package name */
    private final Set<TrustManager> f55881c = new LinkedHashSet();

    /* renamed from: d  reason: collision with root package name */
    private SecureRandom f55882d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a implements X509KeyManager {

        /* renamed from: a  reason: collision with root package name */
        private final X509KeyManager f55883a;

        /* renamed from: b  reason: collision with root package name */
        private final e f55884b;

        a(X509KeyManager x509KeyManager, e eVar) {
            this.f55883a = x509KeyManager;
            this.f55884b = eVar;
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseClientAlias(String[] strArr, Principal[] principalArr, Socket socket) {
            HashMap hashMap = new HashMap();
            for (String str : strArr) {
                String[] clientAliases = this.f55883a.getClientAliases(str, principalArr);
                if (clientAliases != null) {
                    for (String str2 : clientAliases) {
                        hashMap.put(str2, new d(str, this.f55883a.getCertificateChain(str2)));
                    }
                }
            }
            return this.f55884b.a(hashMap, socket);
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseServerAlias(String str, Principal[] principalArr, Socket socket) {
            HashMap hashMap = new HashMap();
            String[] serverAliases = this.f55883a.getServerAliases(str, principalArr);
            if (serverAliases != null) {
                for (String str2 : serverAliases) {
                    hashMap.put(str2, new d(str, this.f55883a.getCertificateChain(str2)));
                }
            }
            return this.f55884b.a(hashMap, socket);
        }

        @Override // javax.net.ssl.X509KeyManager
        public X509Certificate[] getCertificateChain(String str) {
            return this.f55883a.getCertificateChain(str);
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getClientAliases(String str, Principal[] principalArr) {
            return this.f55883a.getClientAliases(str, principalArr);
        }

        @Override // javax.net.ssl.X509KeyManager
        public PrivateKey getPrivateKey(String str) {
            return this.f55883a.getPrivateKey(str);
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getServerAliases(String str, Principal[] principalArr) {
            return this.f55883a.getServerAliases(str, principalArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class b implements X509TrustManager {

        /* renamed from: a  reason: collision with root package name */
        private final X509TrustManager f55885a;

        /* renamed from: b  reason: collision with root package name */
        private final i f55886b;

        b(X509TrustManager x509TrustManager, i iVar) {
            this.f55885a = x509TrustManager;
            this.f55886b = iVar;
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            this.f55885a.checkClientTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            if (this.f55886b.a(x509CertificateArr, str)) {
                return;
            }
            this.f55885a.checkServerTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return this.f55885a.getAcceptedIssuers();
        }
    }

    public SSLContext a() throws NoSuchAlgorithmException, KeyManagementException {
        KeyManager[] keyManagerArr;
        String str = this.f55879a;
        if (str == null) {
            str = SSLSocketFactory.TLS;
        }
        SSLContext sSLContext = SSLContext.getInstance(str);
        TrustManager[] trustManagerArr = null;
        if (this.f55880b.isEmpty()) {
            keyManagerArr = null;
        } else {
            Set<KeyManager> set = this.f55880b;
            keyManagerArr = (KeyManager[]) set.toArray(new KeyManager[set.size()]);
        }
        if (!this.f55881c.isEmpty()) {
            Set<TrustManager> set2 = this.f55881c;
            trustManagerArr = (TrustManager[]) set2.toArray(new TrustManager[set2.size()]);
        }
        sSLContext.init(keyManagerArr, trustManagerArr, this.f55882d);
        return sSLContext;
    }

    public f b(KeyStore keyStore, char[] cArr) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException {
        c(keyStore, cArr, null);
        return this;
    }

    public f c(KeyStore keyStore, char[] cArr, e eVar) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException {
        KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        keyManagerFactory.init(keyStore, cArr);
        KeyManager[] keyManagers = keyManagerFactory.getKeyManagers();
        if (keyManagers != null) {
            if (eVar != null) {
                for (int i9 = 0; i9 < keyManagers.length; i9++) {
                    KeyManager keyManager = keyManagers[i9];
                    if (keyManager instanceof X509KeyManager) {
                        keyManagers[i9] = new a((X509KeyManager) keyManager, eVar);
                    }
                }
            }
            for (KeyManager keyManager2 : keyManagers) {
                this.f55880b.add(keyManager2);
            }
        }
        return this;
    }

    public f d(KeyStore keyStore) throws NoSuchAlgorithmException, KeyStoreException {
        return e(keyStore, null);
    }

    public f e(KeyStore keyStore, i iVar) throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStore);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        if (trustManagers != null) {
            if (iVar != null) {
                for (int i9 = 0; i9 < trustManagers.length; i9++) {
                    TrustManager trustManager = trustManagers[i9];
                    if (trustManager instanceof X509TrustManager) {
                        trustManagers[i9] = new b((X509TrustManager) trustManager, iVar);
                    }
                }
            }
            for (TrustManager trustManager2 : trustManagers) {
                this.f55881c.add(trustManager2);
            }
        }
        return this;
    }

    public f f(SecureRandom secureRandom) {
        this.f55882d = secureRandom;
        return this;
    }

    public f g(String str) {
        this.f55879a = str;
        return this;
    }
}

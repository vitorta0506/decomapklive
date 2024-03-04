package io.grpc.netty.shaded.io.netty.handler.ssl;

import com.tencent.xmagic.license.RSAUtils;
import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyException;
import java.security.KeyFactory;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.EncryptedPrivateKeyInfo;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.TrustManagerFactory;
/* loaded from: classes5.dex */
public abstract class p1 {

    /* renamed from: c  reason: collision with root package name */
    static final CertificateFactory f44715c;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f44716a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.f f44717b;

    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44718a;

        static {
            int[] iArr = new int[SslProvider.values().length];
            f44718a = iArr;
            try {
                iArr[SslProvider.JDK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44718a[SslProvider.OPENSSL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44718a[SslProvider.OPENSSL_REFCNT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        try {
            f44715c = CertificateFactory.getInstance("X.509");
        } catch (CertificateException e10) {
            throw new IllegalStateException("unable to instance X.509 CertificateFactory", e10);
        }
    }

    protected p1() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PrivateKey A(InputStream inputStream, String str) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, InvalidAlgorithmParameterException, KeyException, IOException {
        if (inputStream == null) {
            return null;
        }
        return p(g1.c(inputStream), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static X509Certificate[] B(InputStream inputStream) throws CertificateException {
        if (inputStream == null) {
            return null;
        }
        return o(g1.a(inputStream));
    }

    private static void C(SslProvider sslProvider, Provider provider) {
        if (provider == null) {
            return;
        }
        throw new IllegalArgumentException("Java Security Provider unsupported for SslProvider: " + sslProvider);
    }

    static KeyManagerFactory b(KeyStore keyStore, String str, char[] cArr, KeyManagerFactory keyManagerFactory) throws KeyStoreException, NoSuchAlgorithmException, UnrecoverableKeyException {
        if (keyManagerFactory == null) {
            if (str == null) {
                str = KeyManagerFactory.getDefaultAlgorithm();
            }
            keyManagerFactory = KeyManagerFactory.getInstance(str);
        }
        keyManagerFactory.init(keyStore, cArr);
        return keyManagerFactory;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static KeyManagerFactory e(X509Certificate[] x509CertificateArr, String str, PrivateKey privateKey, String str2, KeyManagerFactory keyManagerFactory, String str3) throws KeyStoreException, NoSuchAlgorithmException, IOException, CertificateException, UnrecoverableKeyException {
        if (str == null) {
            str = KeyManagerFactory.getDefaultAlgorithm();
        }
        char[] s10 = s(str2);
        return b(h(x509CertificateArr, privateKey, s10, str3), str, s10, keyManagerFactory);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static KeyStore h(X509Certificate[] x509CertificateArr, PrivateKey privateKey, char[] cArr, String str) throws KeyStoreException, NoSuchAlgorithmException, CertificateException, IOException {
        if (str == null) {
            str = KeyStore.getDefaultType();
        }
        KeyStore keyStore = KeyStore.getInstance(str);
        keyStore.load(null, null);
        keyStore.setKeyEntry("key", privateKey, cArr, x509CertificateArr);
        return keyStore;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static TrustManagerFactory i(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, String str) throws NoSuchAlgorithmException, CertificateException, KeyStoreException, IOException {
        if (str == null) {
            str = KeyStore.getDefaultType();
        }
        KeyStore keyStore = KeyStore.getInstance(str);
        keyStore.load(null, null);
        int i9 = 1;
        for (X509Certificate x509Certificate : x509CertificateArr) {
            keyStore.setCertificateEntry(Integer.toString(i9), x509Certificate);
            i9++;
        }
        if (trustManagerFactory == null) {
            trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        }
        trustManagerFactory.init(keyStore);
        return trustManagerFactory;
    }

    public static SslProvider j() {
        return k();
    }

    private static SslProvider k() {
        if (e0.h()) {
            return SslProvider.OPENSSL;
        }
        return SslProvider.JDK;
    }

    public static SslProvider l() {
        return k();
    }

    @Deprecated
    protected static PKCS8EncodedKeySpec n(char[] cArr, byte[] bArr) throws IOException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (cArr == null) {
            return new PKCS8EncodedKeySpec(bArr);
        }
        EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(bArr);
        SecretKey generateSecret = SecretKeyFactory.getInstance(encryptedPrivateKeyInfo.getAlgName()).generateSecret(new PBEKeySpec(cArr));
        Cipher cipher = Cipher.getInstance(encryptedPrivateKeyInfo.getAlgName());
        cipher.init(2, generateSecret, encryptedPrivateKeyInfo.getAlgParameters());
        return encryptedPrivateKeyInfo.getKeySpec(cipher);
    }

    private static X509Certificate[] o(kg.j[] jVarArr) throws CertificateException {
        CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
        X509Certificate[] x509CertificateArr = new X509Certificate[jVarArr.length];
        int i9 = 0;
        for (int i10 = 0; i10 < jVarArr.length; i10++) {
            try {
                kg.m mVar = new kg.m(jVarArr[i10], false);
                x509CertificateArr[i10] = (X509Certificate) certificateFactory.generateCertificate(mVar);
                try {
                    mVar.close();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            } finally {
                int length = jVarArr.length;
                while (i9 < length) {
                    jVarArr[i9].release();
                    i9++;
                }
            }
        }
        return x509CertificateArr;
    }

    private static PrivateKey p(kg.j jVar, String str) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, InvalidAlgorithmParameterException, KeyException, IOException {
        byte[] bArr = new byte[jVar.P1()];
        jVar.C1(bArr).release();
        PKCS8EncodedKeySpec n9 = n(str == null ? null : str.toCharArray(), bArr);
        try {
            try {
                try {
                    return KeyFactory.getInstance(RSAUtils.RSA).generatePrivate(n9);
                } catch (InvalidKeySpecException unused) {
                    return KeyFactory.getInstance("DSA").generatePrivate(n9);
                }
            } catch (InvalidKeySpecException e10) {
                throw new InvalidKeySpecException("Neither RSA, DSA nor EC worked", e10);
            }
        } catch (InvalidKeySpecException unused2) {
            return KeyFactory.getInstance("EC").generatePrivate(n9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static char[] s(String str) {
        return str == null ? io.grpc.netty.shaded.io.netty.util.internal.h.f45066c : str.toCharArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p1 t(SslProvider sslProvider, Provider provider, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, ApplicationProtocolConfig applicationProtocolConfig, String[] strArr, long j10, long j11, boolean z10, String str2, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        SslProvider j12 = sslProvider == null ? j() : sslProvider;
        int i9 = a.f44718a[j12.ordinal()];
        if (i9 == 1) {
            if (!z10) {
                return new y(provider, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, iVar, applicationProtocolConfig, strArr, j10, j11, str2);
            }
            throw new IllegalArgumentException("OCSP is not supported with this SslProvider: " + j12);
        } else if (i9 == 2) {
            C(j12, provider);
            e0.e();
            return new j0(x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, iVar, applicationProtocolConfig, strArr, j10, j11, z10, str2, entryArr);
        } else if (i9 == 3) {
            C(j12, provider);
            e0.e();
            return new i1(x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, iVar, applicationProtocolConfig, strArr, j10, j11, z10, str2, entryArr);
        } else {
            throw new Error(j12.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p1 w(SslProvider sslProvider, Provider provider, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, ApplicationProtocolConfig applicationProtocolConfig, long j10, long j11, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, String str2, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        SslProvider l10 = sslProvider == null ? l() : sslProvider;
        int i9 = a.f44718a[l10.ordinal()];
        if (i9 == 1) {
            if (!z11) {
                return new b0(provider, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, iVar, applicationProtocolConfig, j10, j11, clientAuth, strArr, z10, str2);
            }
            throw new IllegalArgumentException("OCSP is not supported with this SslProvider: " + l10);
        } else if (i9 == 2) {
            C(l10, provider);
            return new v0(x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, iVar, applicationProtocolConfig, j10, j11, clientAuth, strArr, z10, z11, str2, entryArr);
        } else if (i9 == 3) {
            C(l10, provider);
            return new l1(x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, iVar, applicationProtocolConfig, j10, j11, clientAuth, strArr, z10, z11, str2, entryArr);
        } else {
            throw new Error(l10.toString());
        }
    }

    public abstract b a();

    public abstract boolean q();

    public final boolean r() {
        return !q();
    }

    public abstract SSLEngine v(kg.k kVar, String str, int i9);

    public abstract SSLSessionContext y();

    public long z() {
        return y().getSessionTimeout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public p1(boolean z10) {
        this.f44717b = new io.grpc.netty.shaded.io.netty.util.k();
        this.f44716a = z10;
    }
}

package cc;

import ec.f;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes4.dex */
public class e implements X509TrustManager {

    /* renamed from: c  reason: collision with root package name */
    private static final String f1708c = e.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    protected List<X509TrustManager> f1709a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private X509Certificate[] f1710b;

    public e(InputStream inputStream, String str) throws IllegalArgumentException {
        a(inputStream, str);
    }

    private void a(InputStream inputStream, String str) {
        if (inputStream != null && str != null) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                try {
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
                    KeyStore keyStore = KeyStore.getInstance("bks");
                    keyStore.load(inputStream, str.toCharArray());
                    trustManagerFactory.init(keyStore);
                    TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                    for (int i9 = 0; i9 < trustManagers.length; i9++) {
                        if (trustManagers[i9] instanceof X509TrustManager) {
                            this.f1709a.add((X509TrustManager) trustManagers[i9]);
                        }
                    }
                    ec.e.b(inputStream);
                } finally {
                    ec.e.b(inputStream);
                }
            } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e10) {
                String str2 = f1708c;
                f.d(str2, "loadInputStream: exception : " + e10.getMessage());
            }
            String str3 = f1708c;
            f.b(str3, "loadInputStream: cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            return;
        }
        throw new IllegalArgumentException("inputstream or trustPwd is null");
    }

    public void b(X509Certificate[] x509CertificateArr) {
        this.f1710b = x509CertificateArr;
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        f.e(f1708c, "checkClientTrusted: ");
        for (X509TrustManager x509TrustManager : this.f1709a) {
            try {
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                return;
            } catch (CertificateException e10) {
                String str2 = f1708c;
                f.d(str2, "checkServerTrusted CertificateException" + e10.getMessage());
            }
        }
        throw new CertificateException("checkServerTrusted CertificateException");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        b(x509CertificateArr);
        f.e(f1708c, "checkServerTrusted begin ,server ca chain size is : " + x509CertificateArr.length + " ,auth type is : " + str);
        long currentTimeMillis = System.currentTimeMillis();
        for (X509Certificate x509Certificate : x509CertificateArr) {
            String str2 = f1708c;
            f.b(str2, "server ca chain: getSubjectDN is :" + x509Certificate.getSubjectDN());
            f.b(str2, "IssuerDN :" + x509Certificate.getIssuerDN());
            f.b(str2, "SerialNumber : " + x509Certificate.getSerialNumber());
        }
        int size = this.f1709a.size();
        for (int i9 = 0; i9 < size; i9++) {
            try {
                String str3 = f1708c;
                f.e(str3, "check server i : " + i9);
                X509TrustManager x509TrustManager = this.f1709a.get(i9);
                X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
                if (acceptedIssuers != null) {
                    f.e(str3, "client root ca size is : " + acceptedIssuers.length);
                    for (int i10 = 0; i10 < acceptedIssuers.length; i10++) {
                        f.b(f1708c, "client root ca getIssuerDN :" + acceptedIssuers[i10].getIssuerDN());
                    }
                }
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                f.e(f1708c, "checkServerTrusted succeed ,root ca issuer is : " + x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                return;
            } catch (CertificateException e10) {
                String str4 = f1708c;
                f.d(str4, "checkServerTrusted error :" + e10.getMessage() + " , time : " + i9);
                if (i9 == size - 1) {
                    if (x509CertificateArr.length > 0) {
                        f.d(str4, "root ca issuer : " + x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                    }
                    throw e10;
                }
            }
        }
        f.b(f1708c, "checkServerTrusted: cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        try {
            ArrayList arrayList = new ArrayList();
            for (X509TrustManager x509TrustManager : this.f1709a) {
                arrayList.addAll(Arrays.asList(x509TrustManager.getAcceptedIssuers()));
            }
            return (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
        } catch (Exception e10) {
            String str = f1708c;
            f.d(str, "getAcceptedIssuers exception : " + e10.getMessage());
            return new X509Certificate[0];
        }
    }
}

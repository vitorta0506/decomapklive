package org.conscrypt;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateParsingException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PKIXRevocationChecker;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509ExtendedTrustManager;
/* loaded from: classes7.dex */
public final class d0 extends X509ExtendedTrustManager {

    /* renamed from: o  reason: collision with root package name */
    private static final Logger f56329o = Logger.getLogger(d0.class.getName());

    /* renamed from: p  reason: collision with root package name */
    private static final c f56330p = new c();

    /* renamed from: a  reason: collision with root package name */
    private final KeyStore f56331a;

    /* renamed from: b  reason: collision with root package name */
    private e f56332b;

    /* renamed from: c  reason: collision with root package name */
    private final j f56333c;

    /* renamed from: d  reason: collision with root package name */
    private final CertPathValidator f56334d;

    /* renamed from: e  reason: collision with root package name */
    private final e0 f56335e;

    /* renamed from: f  reason: collision with root package name */
    private final e0 f56336f;

    /* renamed from: g  reason: collision with root package name */
    private final X509Certificate[] f56337g;

    /* renamed from: h  reason: collision with root package name */
    private final Exception f56338h;

    /* renamed from: i  reason: collision with root package name */
    private final CertificateFactory f56339i;

    /* renamed from: j  reason: collision with root package name */
    private final d f56340j;

    /* renamed from: k  reason: collision with root package name */
    private org.conscrypt.ct.c f56341k;

    /* renamed from: l  reason: collision with root package name */
    private gl.b f56342l;

    /* renamed from: m  reason: collision with root package name */
    private k f56343m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f56344n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class b extends PKIXCertPathChecker {

        /* renamed from: c  reason: collision with root package name */
        private static final Set<String> f56345c = Collections.unmodifiableSet(new HashSet(Arrays.asList("2.5.29.37")));

        /* renamed from: a  reason: collision with root package name */
        private final boolean f56346a;

        /* renamed from: b  reason: collision with root package name */
        private final X509Certificate f56347b;

        @Override // java.security.cert.PKIXCertPathChecker
        public void check(Certificate certificate, Collection<String> collection) throws CertPathValidatorException {
            X509Certificate x509Certificate = this.f56347b;
            if (certificate != x509Certificate) {
                return;
            }
            try {
                List<String> extendedKeyUsage = x509Certificate.getExtendedKeyUsage();
                if (extendedKeyUsage == null) {
                    return;
                }
                boolean z10 = false;
                for (String str : extendedKeyUsage) {
                    if (!str.equals("2.5.29.37.0")) {
                        if (this.f56346a) {
                            if (str.equals("1.3.6.1.5.5.7.3.2")) {
                            }
                        } else if (!str.equals("1.3.6.1.5.5.7.3.1") && !str.equals("2.16.840.1.113730.4.1") && !str.equals("1.3.6.1.4.1.311.10.3.3")) {
                        }
                    }
                    z10 = true;
                }
                if (z10) {
                    collection.remove("2.5.29.37");
                    return;
                }
                throw new CertPathValidatorException("End-entity certificate does not have a valid extendedKeyUsage.");
            } catch (CertificateParsingException e10) {
                throw new CertPathValidatorException(e10);
            }
        }

        @Override // java.security.cert.PKIXCertPathChecker
        public Set<String> getSupportedExtensions() {
            return f56345c;
        }

        @Override // java.security.cert.PKIXCertPathChecker, java.security.cert.CertPathChecker
        public void init(boolean z10) throws CertPathValidatorException {
        }

        @Override // java.security.cert.PKIXCertPathChecker, java.security.cert.CertPathChecker
        public boolean isForwardCheckingSupported() {
            return true;
        }

        private b(boolean z10, X509Certificate x509Certificate) {
            this.f56346a = z10;
            this.f56347b = x509Certificate;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class c implements Comparator<TrustAnchor> {

        /* renamed from: a  reason: collision with root package name */
        private static final f f56348a = new f();

        private c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(TrustAnchor trustAnchor, TrustAnchor trustAnchor2) {
            return f56348a.compare(trustAnchor.getTrustedCert(), trustAnchor2.getTrustedCert());
        }
    }

    public d0(KeyStore keyStore) {
        this(keyStore, null);
    }

    private static X509Certificate[] a(KeyStore keyStore) {
        try {
            ArrayList arrayList = new ArrayList();
            Enumeration<String> aliases = keyStore.aliases();
            while (aliases.hasMoreElements()) {
                X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(aliases.nextElement());
                if (x509Certificate != null) {
                    arrayList.add(x509Certificate);
                }
            }
            return (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
        } catch (KeyStoreException unused) {
            return new X509Certificate[0];
        }
    }

    private void b(X509Certificate x509Certificate) throws CertificateException {
        d dVar = this.f56340j;
        if (dVar == null || !dVar.a(x509Certificate.getPublicKey())) {
            return;
        }
        throw new CertificateException("Certificate blocklisted by public key: " + x509Certificate);
    }

    private void c(String str, List<X509Certificate> list, byte[] bArr, byte[] bArr2) throws CertificateException {
        if (!this.f56342l.a(this.f56341k.h(list, bArr2, bArr), str, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]))) {
            throw new CertificateException("Certificate chain does not conform to required transparency policy.");
        }
    }

    private List<X509Certificate> d(X509Certificate[] x509CertificateArr, String str, SSLSession sSLSession, SSLParameters sSLParameters, boolean z10) throws CertificateException {
        byte[] bArr;
        byte[] bArr2;
        String str2;
        if (sSLSession != null) {
            str2 = sSLSession.getPeerHost();
            bArr = k(sSLSession);
            bArr2 = l(sSLSession);
        } else {
            bArr = null;
            bArr2 = null;
            str2 = null;
        }
        if (sSLSession != null && sSLParameters != null && "HTTPS".equalsIgnoreCase(sSLParameters.getEndpointIdentificationAlgorithm()) && !j().verify(x509CertificateArr, str2, sSLSession)) {
            throw new CertificateException("No subjectAltNames on the certificate match");
        }
        return e(x509CertificateArr, bArr, bArr2, str, str2, z10);
    }

    private List<X509Certificate> e(X509Certificate[] x509CertificateArr, byte[] bArr, byte[] bArr2, String str, String str2, boolean z10) throws CertificateException {
        if (x509CertificateArr != null && x509CertificateArr.length != 0 && str != null && str.length() != 0) {
            if (this.f56338h == null) {
                HashSet hashSet = new HashSet();
                ArrayList<X509Certificate> arrayList = new ArrayList<>();
                ArrayList<TrustAnchor> arrayList2 = new ArrayList<>();
                X509Certificate x509Certificate = x509CertificateArr[0];
                TrustAnchor h10 = h(x509Certificate);
                if (h10 != null) {
                    arrayList2.add(h10);
                    hashSet.add(h10.getTrustedCert());
                } else {
                    arrayList.add(x509Certificate);
                }
                hashSet.add(x509Certificate);
                return f(x509CertificateArr, bArr, bArr2, str2, z10, arrayList, arrayList2, hashSet);
            }
            throw new CertificateException(this.f56338h);
        }
        throw new IllegalArgumentException("null or zero-length parameter");
    }

    private List<X509Certificate> f(X509Certificate[] x509CertificateArr, byte[] bArr, byte[] bArr2, String str, boolean z10, ArrayList<X509Certificate> arrayList, ArrayList<TrustAnchor> arrayList2, Set<X509Certificate> set) throws CertificateException {
        X509Certificate trustedCert;
        if (arrayList2.isEmpty()) {
            trustedCert = arrayList.get(arrayList.size() - 1);
        } else {
            trustedCert = arrayList2.get(arrayList2.size() - 1).getTrustedCert();
        }
        X509Certificate x509Certificate = trustedCert;
        b(x509Certificate);
        if (x509Certificate.getIssuerDN().equals(x509Certificate.getSubjectDN())) {
            return s(arrayList, arrayList2, str, z10, bArr, bArr2);
        }
        boolean z11 = false;
        CertificateException e10 = null;
        for (TrustAnchor trustAnchor : q(g(x509Certificate))) {
            X509Certificate trustedCert2 = trustAnchor.getTrustedCert();
            if (!set.contains(trustedCert2)) {
                set.add(trustedCert2);
                arrayList2.add(trustAnchor);
                try {
                    return f(x509CertificateArr, bArr, bArr2, str, z10, arrayList, arrayList2, set);
                } catch (CertificateException e11) {
                    e10 = e11;
                    arrayList2.remove(arrayList2.size() - 1);
                    set.remove(trustedCert2);
                    z11 = true;
                }
            }
        }
        if (!arrayList2.isEmpty()) {
            if (!z11) {
                return s(arrayList, arrayList2, str, z10, bArr, bArr2);
            }
            throw e10;
        }
        for (int i9 = 1; i9 < x509CertificateArr.length; i9++) {
            X509Certificate x509Certificate2 = x509CertificateArr[i9];
            if (!set.contains(x509Certificate2) && x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
                try {
                    x509Certificate2.checkValidity();
                    g.b(x509Certificate2);
                    set.add(x509Certificate2);
                    arrayList.add(x509Certificate2);
                    try {
                        return f(x509CertificateArr, bArr, bArr2, str, z10, arrayList, arrayList2, set);
                    } catch (CertificateException e12) {
                        e10 = e12;
                        set.remove(x509Certificate2);
                        arrayList.remove(arrayList.size() - 1);
                    }
                } catch (CertificateException e13) {
                    e10 = new CertificateException("Unacceptable certificate: " + x509Certificate2.getSubjectX500Principal(), e13);
                }
            }
        }
        for (TrustAnchor trustAnchor2 : q(this.f56336f.a(x509Certificate))) {
            X509Certificate trustedCert3 = trustAnchor2.getTrustedCert();
            if (!set.contains(trustedCert3)) {
                set.add(trustedCert3);
                arrayList.add(trustedCert3);
                try {
                    return f(x509CertificateArr, bArr, bArr2, str, z10, arrayList, arrayList2, set);
                } catch (CertificateException e14) {
                    e10 = e14;
                    arrayList.remove(arrayList.size() - 1);
                    set.remove(trustedCert3);
                }
            }
        }
        if (e10 != null) {
            throw e10;
        }
        throw new CertificateException(new CertPathValidatorException("Trust anchor for certification path not found.", null, this.f56339i.generateCertPath(arrayList), -1));
    }

    private Set<TrustAnchor> g(X509Certificate x509Certificate) {
        j jVar;
        Set<TrustAnchor> a10 = this.f56335e.a(x509Certificate);
        if (a10.isEmpty() && (jVar = this.f56333c) != null) {
            Set<X509Certificate> b10 = jVar.b(x509Certificate);
            if (b10.isEmpty()) {
                return a10;
            }
            a10 = new HashSet<>(b10.size());
            for (X509Certificate x509Certificate2 : b10) {
                a10.add(this.f56335e.d(x509Certificate2));
            }
        }
        return a10;
    }

    private TrustAnchor h(X509Certificate x509Certificate) {
        X509Certificate a10;
        TrustAnchor b10 = this.f56335e.b(x509Certificate);
        if (b10 != null) {
            return b10;
        }
        j jVar = this.f56333c;
        if (jVar == null || (a10 = jVar.a(x509Certificate)) == null) {
            return null;
        }
        return new TrustAnchor(a10, null);
    }

    private static SSLSession i(SSLSocket sSLSocket) throws CertificateException {
        SSLSession handshakeSession = sSLSocket.getHandshakeSession();
        if (handshakeSession != null) {
            return handshakeSession;
        }
        throw new CertificateException("Not in handshake; no session available");
    }

    private k j() {
        k kVar = this.f56343m;
        return kVar != null ? kVar : a0.d();
    }

    private static byte[] k(SSLSession sSLSession) {
        List<byte[]> list;
        if (sSLSession instanceof l) {
            list = ((l) sSLSession).f();
        } else {
            try {
                Method declaredMethod = sSLSession.getClass().getDeclaredMethod("getStatusResponses", new Class[0]);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(sSLSession, new Object[0]);
                if (invoke instanceof List) {
                    list = (List) invoke;
                }
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException unused) {
            } catch (InvocationTargetException e10) {
                throw new RuntimeException(e10.getCause());
            }
            list = null;
        }
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private byte[] l(SSLSession sSLSession) {
        if (sSLSession instanceof l) {
            return ((l) sSLSession).b();
        }
        try {
            Method declaredMethod = sSLSession.getClass().getDeclaredMethod("getPeerSignedCertificateTimestamp", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(sSLSession, new Object[0]);
            if (invoke instanceof byte[]) {
                return (byte[]) invoke;
            }
            return null;
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException unused) {
            return null;
        } catch (InvocationTargetException e10) {
            throw new RuntimeException(e10.getCause());
        }
    }

    private void p(PKIXParameters pKIXParameters, X509Certificate x509Certificate, byte[] bArr) {
        if (bArr == null) {
            return;
        }
        PKIXRevocationChecker pKIXRevocationChecker = null;
        List<PKIXCertPathChecker> arrayList = new ArrayList<>(pKIXParameters.getCertPathCheckers());
        Iterator<PKIXCertPathChecker> it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            PKIXCertPathChecker next = it.next();
            if (next instanceof PKIXRevocationChecker) {
                pKIXRevocationChecker = (PKIXRevocationChecker) next;
                break;
            }
        }
        if (pKIXRevocationChecker == null) {
            try {
                pKIXRevocationChecker = (PKIXRevocationChecker) this.f56334d.getRevocationChecker();
                arrayList.add(pKIXRevocationChecker);
                pKIXRevocationChecker.setOptions(Collections.singleton(PKIXRevocationChecker.Option.ONLY_END_ENTITY));
            } catch (UnsupportedOperationException unused) {
                return;
            }
        }
        pKIXRevocationChecker.setOcspResponses(Collections.singletonMap(x509Certificate, bArr));
        pKIXParameters.setCertPathCheckers(arrayList);
    }

    private static Collection<TrustAnchor> q(Set<TrustAnchor> set) {
        if (set.size() <= 1) {
            return set;
        }
        ArrayList arrayList = new ArrayList(set);
        Collections.sort(arrayList, f56330p);
        return arrayList;
    }

    private static Set<TrustAnchor> r(X509Certificate[] x509CertificateArr) {
        HashSet hashSet = new HashSet(x509CertificateArr.length);
        for (X509Certificate x509Certificate : x509CertificateArr) {
            hashSet.add(new TrustAnchor(x509Certificate, null));
        }
        return hashSet;
    }

    private List<X509Certificate> s(List<X509Certificate> list, List<TrustAnchor> list2, String str, boolean z10, byte[] bArr, byte[] bArr2) throws CertificateException {
        try {
            CertPath generateCertPath = this.f56339i.generateCertPath(list);
            if (!list2.isEmpty()) {
                ArrayList<X509Certificate> arrayList = new ArrayList();
                arrayList.addAll(list);
                for (TrustAnchor trustAnchor : list2) {
                    arrayList.add(trustAnchor.getTrustedCert());
                }
                e eVar = this.f56332b;
                if (eVar != null) {
                    eVar.a(str, arrayList);
                }
                for (X509Certificate x509Certificate : arrayList) {
                    b(x509Certificate);
                }
                if (!z10 && (this.f56344n || (str != null && a0.i(str)))) {
                    c(str, arrayList, bArr, bArr2);
                }
                if (list.isEmpty()) {
                    return arrayList;
                }
                g.a(list);
                try {
                    HashSet hashSet = new HashSet();
                    hashSet.add(list2.get(0));
                    PKIXParameters pKIXParameters = new PKIXParameters(hashSet);
                    pKIXParameters.setRevocationEnabled(false);
                    X509Certificate x509Certificate2 = list.get(0);
                    p(pKIXParameters, x509Certificate2, bArr);
                    pKIXParameters.addCertPathChecker(new b(z10, x509Certificate2));
                    this.f56334d.validate(generateCertPath, pKIXParameters);
                    for (int i9 = 1; i9 < list.size(); i9++) {
                        this.f56336f.d(list.get(i9));
                    }
                    return arrayList;
                } catch (InvalidAlgorithmParameterException e10) {
                    throw new CertificateException("Chain validation failed", e10);
                } catch (CertPathValidatorException e11) {
                    throw new CertificateException("Chain validation failed", e11);
                }
            }
            throw new CertificateException(new CertPathValidatorException("Trust anchor for certification path not found.", null, generateCertPath, -1));
        } catch (CertificateException e12) {
            Logger logger = f56329o;
            logger.fine("Rejected candidate cert chain due to error: " + e12.getMessage());
            throw e12;
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        d(x509CertificateArr, str, null, null, true);
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        d(x509CertificateArr, str, null, null, false);
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        X509Certificate[] x509CertificateArr = this.f56337g;
        return x509CertificateArr != null ? (X509Certificate[]) x509CertificateArr.clone() : a(this.f56331a);
    }

    public List<X509Certificate> m(X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        SSLSession sSLSession;
        SSLParameters sSLParameters;
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            SSLSession i9 = i(sSLSocket);
            sSLParameters = sSLSocket.getSSLParameters();
            sSLSession = i9;
        } else {
            sSLSession = null;
            sSLParameters = null;
        }
        return d(x509CertificateArr, str, sSLSession, sSLParameters, false);
    }

    public List<X509Certificate> n(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        SSLSession handshakeSession = sSLEngine.getHandshakeSession();
        if (handshakeSession != null) {
            return d(x509CertificateArr, str, handshakeSession, sSLEngine.getSSLParameters(), false);
        }
        throw new CertificateException("Not in handshake; no session available");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(k kVar) {
        this.f56343m = kVar;
    }

    public d0(KeyStore keyStore, e eVar) {
        this(keyStore, eVar, null);
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        SSLSession sSLSession;
        SSLParameters sSLParameters;
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            SSLSession i9 = i(sSLSocket);
            sSLParameters = sSLSocket.getSSLParameters();
            sSLSession = i9;
        } else {
            sSLSession = null;
            sSLParameters = null;
        }
        d(x509CertificateArr, str, sSLSession, sSLParameters, true);
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        m(x509CertificateArr, str, socket);
    }

    public d0(KeyStore keyStore, e eVar, j jVar) {
        this(keyStore, eVar, jVar, null);
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        n(x509CertificateArr, str, sSLEngine);
    }

    public d0(KeyStore keyStore, e eVar, j jVar, d dVar) {
        this(keyStore, eVar, jVar, dVar, null, null, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:1|(6:2|3|4|5|7|8)|(2:10|(10:(2:13|14)|29|30|31|32|(1:21)|(1:23)|(1:25)|26|27))|37|38|40|41|42|32|(0)|(0)|(0)|26|27|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r8;
        r8 = r6;
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005a, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005b, code lost:
        r6 = null;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r8;
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d0(java.security.KeyStore r6, org.conscrypt.e r7, org.conscrypt.j r8, org.conscrypt.d r9, gl.a r10, org.conscrypt.ct.c r11, gl.b r12) {
        /*
            Method dump skipped, instructions count: 178
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.conscrypt.d0.<init>(java.security.KeyStore, org.conscrypt.e, org.conscrypt.j, org.conscrypt.d, gl.a, org.conscrypt.ct.c, gl.b):void");
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        SSLSession handshakeSession = sSLEngine.getHandshakeSession();
        if (handshakeSession != null) {
            d(x509CertificateArr, str, handshakeSession, sSLEngine.getSSLParameters(), true);
            return;
        }
        throw new CertificateException("Not in handshake; no session available");
    }
}

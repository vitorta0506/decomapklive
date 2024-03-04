package org.conscrypt;

import java.nio.ByteBuffer;
import java.security.Provider;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
/* loaded from: classes7.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final a f56361a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f56362b = 0;

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f56363a;

        /* renamed from: b  reason: collision with root package name */
        private final int f56364b;

        /* renamed from: c  reason: collision with root package name */
        private final int f56365c;

        /* synthetic */ a(int i9, int i10, int i11, h hVar) {
            this(i9, i10, i11);
        }

        public int a() {
            return this.f56363a;
        }

        public int b() {
            return this.f56364b;
        }

        public int c() {
            return this.f56365c;
        }

        private a(int i9, int i10, int i11) {
            this.f56363a = i9;
            this.f56364b = i10;
            this.f56365c = i11;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e A[ADDED_TO_REGION] */
    static {
        /*
            java.lang.String r0 = "-1"
            r1 = 0
            r2 = -1
            java.lang.Class<org.conscrypt.i> r3 = org.conscrypt.i.class
            java.lang.String r4 = "conscrypt.properties"
            java.io.InputStream r3 = r3.getResourceAsStream(r4)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L44
            if (r3 == 0) goto L39
            java.util.Properties r4 = new java.util.Properties     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L45
            r4.<init>()     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L45
            r4.load(r3)     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L45
            java.lang.String r5 = "org.conscrypt.version.major"
            java.lang.String r5 = r4.getProperty(r5, r0)     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L45
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L45
            java.lang.String r6 = "org.conscrypt.version.minor"
            java.lang.String r6 = r4.getProperty(r6, r0)     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L46
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L46
            java.lang.String r7 = "org.conscrypt.version.patch"
            java.lang.String r0 = r4.getProperty(r7, r0)     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L47
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L36 java.io.IOException -> L47
            r2 = r5
            goto L3b
        L36:
            r0 = move-exception
            r1 = r3
            goto L40
        L39:
            r0 = -1
            r6 = -1
        L3b:
            hl.a.a(r3)
            goto L4c
        L3f:
            r0 = move-exception
        L40:
            hl.a.a(r1)
            throw r0
        L44:
            r3 = r1
        L45:
            r5 = -1
        L46:
            r6 = -1
        L47:
            hl.a.a(r3)
            r2 = r5
            r0 = -1
        L4c:
            if (r2 < 0) goto L5a
            if (r6 < 0) goto L5a
            if (r0 < 0) goto L5a
            org.conscrypt.i$a r3 = new org.conscrypt.i$a
            r3.<init>(r2, r6, r0, r1)
            org.conscrypt.i.f56361a = r3
            goto L5c
        L5a:
            org.conscrypt.i.f56361a = r1
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.conscrypt.i.<clinit>():void");
    }

    private i() {
    }

    public static void a() {
        NativeCrypto.a();
    }

    public static String b(SSLSocket sSLSocket) {
        return q(sSLSocket).getApplicationProtocol();
    }

    public static boolean c() {
        try {
            a();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean d(Provider provider) {
        return provider instanceof OpenSSLProvider;
    }

    public static boolean e(SSLEngine sSLEngine) {
        return sSLEngine instanceof org.conscrypt.a;
    }

    public static boolean f(SSLSocket sSLSocket) {
        return sSLSocket instanceof b;
    }

    public static boolean g(TrustManager trustManager) {
        return trustManager instanceof d0;
    }

    public static int h(SSLEngine sSLEngine) {
        return p(sSLEngine).b();
    }

    public static Provider i() {
        a();
        return new OpenSSLProvider();
    }

    public static void j(SSLEngine sSLEngine, String[] strArr) {
        p(sSLEngine).c(strArr);
    }

    public static void k(SSLSocket sSLSocket, String[] strArr) {
        q(sSLSocket).b(strArr);
    }

    public static void l(SSLEngine sSLEngine, c cVar) {
        p(sSLEngine).d(cVar);
    }

    public static void m(SSLEngine sSLEngine, m mVar) {
        p(sSLEngine).e(mVar);
    }

    public static void n(TrustManager trustManager, k kVar) {
        r(trustManager).o(kVar);
    }

    public static void o(SSLSocket sSLSocket, boolean z10) {
        q(sSLSocket).c(z10);
    }

    private static org.conscrypt.a p(SSLEngine sSLEngine) {
        if (e(sSLEngine)) {
            return (org.conscrypt.a) sSLEngine;
        }
        throw new IllegalArgumentException("Not a conscrypt engine: " + sSLEngine.getClass().getName());
    }

    private static b q(SSLSocket sSLSocket) {
        if (f(sSLSocket)) {
            return (b) sSLSocket;
        }
        throw new IllegalArgumentException("Not a conscrypt socket: " + sSLSocket.getClass().getName());
    }

    private static d0 r(TrustManager trustManager) {
        if (g(trustManager)) {
            return (d0) trustManager;
        }
        throw new IllegalArgumentException("Not a Conscrypt trust manager: " + trustManager.getClass().getName());
    }

    public static SSLEngineResult s(SSLEngine sSLEngine, ByteBuffer[] byteBufferArr, ByteBuffer[] byteBufferArr2) throws SSLException {
        return p(sSLEngine).f(byteBufferArr, byteBufferArr2);
    }

    public static a t() {
        return f56361a;
    }
}

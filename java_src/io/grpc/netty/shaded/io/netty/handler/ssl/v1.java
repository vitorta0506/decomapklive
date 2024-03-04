package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.codec.base64.Base64Dialect;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.TrustManager;
import kotlin.UByte;
import kotlin.UShort;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class v1 {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44837a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(v1.class);

    /* renamed from: b  reason: collision with root package name */
    static final Set<String> f44838b = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList("TLS_AES_256_GCM_SHA384", "TLS_CHACHA20_POLY1305_SHA256", "TLS_AES_128_GCM_SHA256", "TLS_AES_128_CCM_8_SHA256", "TLS_AES_128_CCM_SHA256")));

    /* renamed from: c  reason: collision with root package name */
    static final String[] f44839c;

    /* renamed from: d  reason: collision with root package name */
    static final String[] f44840d;

    /* renamed from: e  reason: collision with root package name */
    static final String[] f44841e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f44842f;

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f44843g;

    static {
        String[] strArr = {"TLS_AES_128_GCM_SHA256", "TLS_AES_256_GCM_SHA384"};
        f44841e = strArr;
        boolean m10 = m(null);
        f44842f = m10;
        f44843g = k(null);
        if (m10) {
            f44840d = strArr;
        } else {
            f44840d = io.grpc.netty.shaded.io.netty.util.internal.h.f45069f;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        linkedHashSet.add("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        linkedHashSet.add("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        linkedHashSet.add("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        linkedHashSet.add("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        linkedHashSet.add("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        linkedHashSet.add("TLS_RSA_WITH_AES_128_GCM_SHA256");
        linkedHashSet.add("TLS_RSA_WITH_AES_128_CBC_SHA");
        linkedHashSet.add("TLS_RSA_WITH_AES_256_CBC_SHA");
        Collections.addAll(linkedHashSet, f44840d);
        f44839c = (String[]) linkedHashSet.toArray(io.grpc.netty.shaded.io.netty.util.internal.h.f45069f);
    }

    private v1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Set<String> set, List<String> list, String... strArr) {
        for (String str : strArr) {
            if (set.contains(str)) {
                list.add(str);
            }
        }
    }

    static boolean b(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int c(java.nio.ByteBuffer r7) {
        /*
            int r0 = r7.position()
            byte r1 = r7.get(r0)
            short r1 = t(r1)
            r2 = 1
            r3 = 0
            switch(r1) {
                case 20: goto L13;
                case 21: goto L13;
                case 22: goto L13;
                case 23: goto L13;
                case 24: goto L13;
                default: goto L11;
            }
        L11:
            r1 = 0
            goto L14
        L13:
            r1 = 1
        L14:
            r4 = 3
            if (r1 == 0) goto L38
            int r5 = r0 + 1
            byte r6 = r7.get(r5)
            short r6 = t(r6)
            if (r6 == r4) goto L2b
            short r5 = r7.getShort(r5)
            r6 = 257(0x101, float:3.6E-43)
            if (r5 != r6) goto L39
        L2b:
            int r5 = r0 + 3
            int r5 = u(r7, r5)
            r6 = 5
            int r5 = r5 + r6
            if (r5 > r6) goto L36
            goto L3a
        L36:
            r3 = r1
            goto L3a
        L38:
            r3 = r1
        L39:
            r5 = 0
        L3a:
            if (r3 != 0) goto L74
            byte r1 = r7.get(r0)
            short r1 = t(r1)
            r1 = r1 & 128(0x80, float:1.8E-43)
            r3 = 2
            if (r1 == 0) goto L4b
            r1 = 2
            goto L4c
        L4b:
            r1 = 3
        L4c:
            int r5 = r0 + r1
            int r5 = r5 + r2
            byte r2 = r7.get(r5)
            short r2 = t(r2)
            if (r2 == r3) goto L5e
            if (r2 != r4) goto L5c
            goto L5e
        L5c:
            r7 = -2
            return r7
        L5e:
            if (r1 != r3) goto L68
            short r7 = p(r7, r0)
            r7 = r7 & 32767(0x7fff, float:4.5916E-41)
            int r7 = r7 + r3
            goto L6f
        L68:
            short r7 = p(r7, r0)
            r7 = r7 & 16383(0x3fff, float:2.2957E-41)
            int r7 = r7 + r4
        L6f:
            r5 = r7
            if (r5 > r1) goto L74
            r7 = -1
            return r7
        L74:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.v1.c(java.nio.ByteBuffer):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int d(kg.j r6, int r7) {
        /*
            short r0 = r6.R0(r7)
            r1 = 1
            r2 = 0
            switch(r0) {
                case 20: goto Lb;
                case 21: goto Lb;
                case 22: goto Lb;
                case 23: goto Lb;
                case 24: goto Lb;
                default: goto L9;
            }
        L9:
            r0 = 0
            goto Lc
        Lb:
            r0 = 1
        Lc:
            r3 = 3
            if (r0 == 0) goto L2c
            int r4 = r7 + 1
            short r5 = r6.R0(r4)
            if (r5 == r3) goto L1f
            short r4 = r6.P0(r4)
            r5 = 257(0x101, float:3.6E-43)
            if (r4 != r5) goto L2d
        L1f:
            int r4 = r7 + 3
            int r4 = v(r6, r4)
            r5 = 5
            int r4 = r4 + r5
            if (r4 > r5) goto L2a
            goto L2e
        L2a:
            r2 = r0
            goto L2e
        L2c:
            r2 = r0
        L2d:
            r4 = 0
        L2e:
            if (r2 != 0) goto L60
            short r0 = r6.R0(r7)
            r0 = r0 & 128(0x80, float:1.8E-43)
            r2 = 2
            if (r0 == 0) goto L3b
            r0 = 2
            goto L3c
        L3b:
            r0 = 3
        L3c:
            int r4 = r7 + r0
            int r4 = r4 + r1
            short r1 = r6.R0(r4)
            if (r1 == r2) goto L4a
            if (r1 != r3) goto L48
            goto L4a
        L48:
            r6 = -2
            return r6
        L4a:
            if (r0 != r2) goto L54
            short r6 = q(r6, r7)
            r6 = r6 & 32767(0x7fff, float:4.5916E-41)
            int r6 = r6 + r2
            goto L5b
        L54:
            short r6 = q(r6, r7)
            r6 = r6 & 16383(0x3fff, float:2.2957E-41)
            int r6 = r6 + r3
        L5b:
            r4 = r6
            if (r4 > r0) goto L60
            r6 = -1
            return r6
        L60:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.v1.d(kg.j, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(ByteBuffer[] byteBufferArr, int i9) {
        ByteBuffer byteBuffer = byteBufferArr[i9];
        if (byteBuffer.remaining() >= 5) {
            return c(byteBuffer);
        }
        ByteBuffer allocate = ByteBuffer.allocate(5);
        while (true) {
            int i10 = i9 + 1;
            ByteBuffer duplicate = byteBufferArr[i9].duplicate();
            if (duplicate.remaining() > allocate.remaining()) {
                duplicate.limit(duplicate.position() + allocate.remaining());
            }
            allocate.put(duplicate);
            if (!allocate.hasRemaining()) {
                allocate.flip();
                return c(allocate);
            }
            i9 = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SSLContext f(String str) throws NoSuchAlgorithmException, KeyManagementException, NoSuchProviderException {
        SSLContext sSLContext;
        if (io.grpc.netty.shaded.io.netty.util.internal.b0.h(str)) {
            sSLContext = SSLContext.getInstance(g());
        } else {
            sSLContext = SSLContext.getInstance(g(), str);
        }
        sSLContext.init(null, new TrustManager[0], null);
        return sSLContext;
    }

    private static String g() {
        return f44842f ? "TLSv1.3" : "TLSv1.2";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2, boolean z10) {
        mVar.flush();
        if (z10) {
            mVar.s(new u1(th2));
        }
        mVar.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(String str) {
        return f44838b.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean j(Provider provider) {
        if (provider == null) {
            return f44843g;
        }
        return k(provider);
    }

    private static boolean k(Provider provider) {
        try {
            return b(o(provider).getDefaultSSLParameters().getProtocols(), "TLSv1.3");
        } catch (Throwable th2) {
            f44837a.debug("Unable to detect if JDK SSLEngine with provider {} enables TLSv1.3 by default, assuming no", provider, th2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean l(Provider provider) {
        if (provider == null) {
            return f44842f;
        }
        return m(provider);
    }

    private static boolean m(Provider provider) {
        try {
            return b(o(provider).getSupportedSSLParameters().getProtocols(), "TLSv1.3");
        } catch (Throwable th2) {
            f44837a.debug("Unable to detect if JDK SSLEngine with provider {} supports TLSv1.3, assuming no", provider, th2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean n(String str) {
        return (str == null || str.indexOf(46) <= 0 || str.endsWith(".") || str.startsWith(FileUtils.RES_PREFIX_STORAGE) || io.grpc.netty.shaded.io.netty.util.n.j(str) || io.grpc.netty.shaded.io.netty.util.n.o(str)) ? false : true;
    }

    private static SSLContext o(Provider provider) throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sSLContext;
        if (provider == null) {
            sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS);
        } else {
            sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS, provider);
        }
        sSLContext.init(null, new TrustManager[0], null);
        return sSLContext;
    }

    private static short p(ByteBuffer byteBuffer, int i9) {
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? byteBuffer.getShort(i9) : kg.n.M(byteBuffer.getShort(i9));
    }

    private static short q(kg.j jVar, int i9) {
        short P0 = jVar.P0(i9);
        return jVar.v1() == ByteOrder.LITTLE_ENDIAN ? Short.reverseBytes(P0) : P0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static kg.j r(kg.k kVar, kg.j jVar) {
        kg.j k10 = io.grpc.netty.shaded.io.netty.handler.codec.base64.a.k(jVar, jVar.Q1(), jVar.P1(), true, Base64Dialect.STANDARD, kVar);
        jVar.R1(jVar.K2());
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SSLHandshakeException s(Throwable th2) {
        if (th2 instanceof SSLHandshakeException) {
            return (SSLHandshakeException) th2;
        }
        return (SSLHandshakeException) new SSLHandshakeException(th2.getMessage()).initCause(th2);
    }

    private static short t(byte b10) {
        return (short) (b10 & UByte.MAX_VALUE);
    }

    private static int u(ByteBuffer byteBuffer, int i9) {
        return p(byteBuffer, i9) & UShort.MAX_VALUE;
    }

    private static int v(kg.j jVar, int i9) {
        int Y0 = jVar.Y0(i9);
        return jVar.v1() == ByteOrder.LITTLE_ENDIAN ? Integer.reverseBytes(Y0) >>> 16 : Y0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void w(List<String> list, Iterable<String> iterable) {
        if (list.isEmpty()) {
            for (String str : iterable) {
                if (!str.startsWith("SSL_") && !str.contains("_RC4_")) {
                    list.add(str);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void x(List<String> list, String... strArr) {
        w(list, Arrays.asList(strArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void y(kg.j jVar) {
        if (jVar.i1()) {
            return;
        }
        jVar.k2(0, jVar.F());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void z(kg.j jVar) {
        y(jVar);
        jVar.release();
    }
}

package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLException;
import javax.net.ssl.X509KeyManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    private final X509KeyManager f44750a;

    /* renamed from: b  reason: collision with root package name */
    private final String f44751b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(X509KeyManager x509KeyManager, String str) {
        this.f44750a = x509KeyManager;
        this.f44751b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(X509Certificate[] x509CertificateArr, PrivateKey privateKey, String str) throws SSLException {
        f(x509CertificateArr);
        e(privateKey, str);
    }

    private static void e(PrivateKey privateKey, String str) throws SSLException {
        long S;
        if (privateKey == null) {
            return;
        }
        long j10 = 0;
        try {
            try {
                S = j1.S(kg.t0.f53908g, privateKey);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            long parsePrivateKey = SSL.parsePrivateKey(S, str);
            SSL.freeBIO(S);
            if (parsePrivateKey != 0) {
                SSL.freePrivateKey(parsePrivateKey);
            }
        } catch (Exception e11) {
            e = e11;
            throw new SSLException("PrivateKey type not supported " + privateKey.getFormat(), e);
        } catch (Throwable th3) {
            th = th3;
            j10 = S;
            SSL.freeBIO(j10);
            throw th;
        }
    }

    private static void f(X509Certificate[] x509CertificateArr) throws SSLException {
        long R;
        if (x509CertificateArr == null || x509CertificateArr.length == 0) {
            return;
        }
        f1 f1Var = null;
        long j10 = 0;
        try {
            try {
                kg.t0 t0Var = kg.t0.f53908g;
                f1Var = PemX509Certificate.toPEM(t0Var, true, x509CertificateArr);
                R = j1.R(t0Var, f1Var.retain());
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            long parseX509Chain = SSL.parseX509Chain(R);
            SSL.freeBIO(R);
            if (parseX509Chain != 0) {
                SSL.freeX509Chain(parseX509Chain);
            }
            f1Var.release();
        } catch (Exception e11) {
            e = e11;
            throw new SSLException("Certificate type not supported", e);
        } catch (Throwable th3) {
            th = th3;
            j10 = R;
            SSL.freeBIO(j10);
            if (f1Var != null) {
                f1Var.release();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.grpc.netty.shaded.io.netty.handler.ssl.q0 a(kg.k r21, java.lang.String r22) throws java.lang.Exception {
        /*
            r20 = this;
            r1 = r20
            r0 = r21
            r2 = r22
            javax.net.ssl.X509KeyManager r3 = r1.f44750a
            java.security.cert.X509Certificate[] r9 = r3.getCertificateChain(r2)
            if (r9 == 0) goto L94
            int r3 = r9.length
            if (r3 != 0) goto L13
            goto L94
        L13:
            javax.net.ssl.X509KeyManager r3 = r1.f44750a
            java.security.PrivateKey r2 = r3.getPrivateKey(r2)
            r3 = 1
            io.grpc.netty.shaded.io.netty.handler.ssl.f1 r3 = io.grpc.netty.shaded.io.netty.handler.ssl.PemX509Certificate.toPEM(r0, r3, r9)
            r10 = 0
            io.grpc.netty.shaded.io.netty.handler.ssl.f1 r4 = r3.retain()     // Catch: java.lang.Throwable -> L76
            long r12 = io.grpc.netty.shaded.io.netty.handler.ssl.j1.R(r0, r4)     // Catch: java.lang.Throwable -> L76
            long r14 = io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.parseX509Chain(r12)     // Catch: java.lang.Throwable -> L72
            boolean r4 = r2 instanceof io.grpc.netty.shaded.io.netty.handler.ssl.t0     // Catch: java.lang.Throwable -> L6d
            if (r4 == 0) goto L37
            io.grpc.netty.shaded.io.netty.handler.ssl.t0 r2 = (io.grpc.netty.shaded.io.netty.handler.ssl.t0) r2     // Catch: java.lang.Throwable -> L6d
            io.grpc.netty.shaded.io.netty.handler.ssl.q0 r0 = r2.b(r14, r9)     // Catch: java.lang.Throwable -> L6d
            goto L55
        L37:
            long r7 = io.grpc.netty.shaded.io.netty.handler.ssl.j1.S(r0, r2)     // Catch: java.lang.Throwable -> L6d
            if (r2 != 0) goto L40
            r16 = r10
            goto L48
        L40:
            java.lang.String r0 = r1.f44751b     // Catch: java.lang.Throwable -> L67
            long r4 = io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.parsePrivateKey(r7, r0)     // Catch: java.lang.Throwable -> L67
            r16 = r4
        L48:
            io.grpc.netty.shaded.io.netty.handler.ssl.l r0 = new io.grpc.netty.shaded.io.netty.handler.ssl.l     // Catch: java.lang.Throwable -> L63
            r4 = r0
            r5 = r14
            r18 = r7
            r7 = r16
            r4.<init>(r5, r7, r9)     // Catch: java.lang.Throwable -> L5f
            r10 = r18
        L55:
            io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.freeBIO(r12)
            io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.freeBIO(r10)
            r3.release()
            return r0
        L5f:
            r0 = move-exception
            r7 = r18
            goto L7c
        L63:
            r0 = move-exception
            r18 = r7
            goto L7c
        L67:
            r0 = move-exception
            r18 = r7
            r16 = r10
            goto L7c
        L6d:
            r0 = move-exception
            r7 = r10
            r16 = r7
            goto L7c
        L72:
            r0 = move-exception
            r7 = r10
            r14 = r7
            goto L7a
        L76:
            r0 = move-exception
            r7 = r10
            r12 = r7
            r14 = r12
        L7a:
            r16 = r14
        L7c:
            io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.freeBIO(r12)
            io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.freeBIO(r7)
            int r2 = (r14 > r10 ? 1 : (r14 == r10 ? 0 : -1))
            if (r2 == 0) goto L89
            io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.freeX509Chain(r14)
        L89:
            int r2 = (r16 > r10 ? 1 : (r16 == r10 ? 0 : -1))
            if (r2 == 0) goto L90
            io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.freePrivateKey(r16)
        L90:
            r3.release()
            throw r0
        L94:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.s0.a(kg.k, java.lang.String):io.grpc.netty.shaded.io.netty.handler.ssl.q0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public X509KeyManager c() {
        return this.f44750a;
    }
}

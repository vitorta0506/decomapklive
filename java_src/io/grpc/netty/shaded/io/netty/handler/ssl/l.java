package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import io.grpc.netty.shaded.io.netty.util.ResourceLeakDetector;
import java.security.cert.X509Certificate;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class l extends io.grpc.netty.shaded.io.netty.util.b implements q0 {

    /* renamed from: e  reason: collision with root package name */
    private static final ResourceLeakDetector<l> f44689e = io.grpc.netty.shaded.io.netty.util.t.b().c(l.class);

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.v<l> f44690a = f44689e.l(this);

    /* renamed from: b  reason: collision with root package name */
    private final X509Certificate[] f44691b;

    /* renamed from: c  reason: collision with root package name */
    private long f44692c;

    /* renamed from: d  reason: collision with root package name */
    private long f44693d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(long j10, long j11, X509Certificate[] x509CertificateArr) {
        this.f44692c = j10;
        this.f44693d = j11;
        this.f44691b = x509CertificateArr;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: a */
    public l retain() {
        io.grpc.netty.shaded.io.netty.util.v<l> vVar = this.f44690a;
        if (vVar != null) {
            vVar.c();
        }
        super.retain();
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    /* renamed from: b */
    public l retain(int i9) {
        io.grpc.netty.shaded.io.netty.util.v<l> vVar = this.f44690a;
        if (vVar != null) {
            vVar.c();
        }
        super.retain(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.q0
    public long c() {
        if (refCnt() > 0) {
            return this.f44693d;
        }
        throw new IllegalReferenceCountException();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    protected void deallocate() {
        SSL.freeX509Chain(this.f44692c);
        this.f44692c = 0L;
        SSL.freePrivateKey(this.f44693d);
        this.f44693d = 0L;
        io.grpc.netty.shaded.io.netty.util.v<l> vVar = this.f44690a;
        if (vVar != null) {
            vVar.b(this);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    /* renamed from: e */
    public l touch() {
        io.grpc.netty.shaded.io.netty.util.v<l> vVar = this.f44690a;
        if (vVar != null) {
            vVar.c();
        }
        super.touch();
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.q0
    public X509Certificate[] f() {
        return (X509Certificate[]) this.f44691b.clone();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: h */
    public l touch(Object obj) {
        io.grpc.netty.shaded.io.netty.util.v<l> vVar = this.f44690a;
        if (vVar != null) {
            vVar.a(obj);
        }
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.q0
    public long m() {
        if (refCnt() > 0) {
            return this.f44692c;
        }
        throw new IllegalReferenceCountException();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b, io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        io.grpc.netty.shaded.io.netty.util.v<l> vVar = this.f44690a;
        if (vVar != null) {
            vVar.c();
        }
        return super.release();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b, io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        io.grpc.netty.shaded.io.netty.util.v<l> vVar = this.f44690a;
        if (vVar != null) {
            vVar.c();
        }
        return super.release(i9);
    }
}

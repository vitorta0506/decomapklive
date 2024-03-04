package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class t0 extends io.grpc.netty.shaded.io.netty.util.b implements PrivateKey {

    /* renamed from: a  reason: collision with root package name */
    private long f44818a;

    /* JADX INFO: Access modifiers changed from: private */
    public long c() {
        if (refCnt() > 0) {
            return this.f44818a;
        }
        throw new IllegalReferenceCountException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0 b(long j10, X509Certificate[] x509CertificateArr) {
        return new a(j10, x509CertificateArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    protected void deallocate() {
        SSL.freePrivateKey(this.f44818a);
        this.f44818a = 0L;
    }

    @Override // javax.security.auth.Destroyable
    public void destroy() {
        release(refCnt());
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: e */
    public t0 retain() {
        super.retain();
        return this;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "unknown";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return null;
    }

    @Override // java.security.Key
    public String getFormat() {
        return null;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    /* renamed from: h */
    public t0 retain(int i9) {
        super.retain(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    /* renamed from: i */
    public t0 touch() {
        super.touch();
        return this;
    }

    @Override // javax.security.auth.Destroyable
    public boolean isDestroyed() {
        return refCnt() == 0;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: j */
    public t0 touch(Object obj) {
        return this;
    }

    /* loaded from: classes5.dex */
    final class a extends io.grpc.netty.shaded.io.netty.util.b implements q0 {

        /* renamed from: a  reason: collision with root package name */
        long f44819a;

        /* renamed from: b  reason: collision with root package name */
        private final X509Certificate[] f44820b;

        a(long j10, X509Certificate[] x509CertificateArr) {
            this.f44819a = j10;
            this.f44820b = x509CertificateArr == null ? io.grpc.netty.shaded.io.netty.util.internal.h.f45074k : x509CertificateArr;
            t0.this.retain();
        }

        private void a() {
            SSL.freeX509Chain(this.f44819a);
            this.f44819a = 0L;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.b
        /* renamed from: b */
        public q0 retain(int i9) {
            super.retain(i9);
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.q0
        public long c() {
            if (refCnt() > 0) {
                return t0.this.c();
            }
            throw new IllegalReferenceCountException();
        }

        @Override // io.grpc.netty.shaded.io.netty.util.b
        protected void deallocate() {
            a();
            t0.this.release();
        }

        @Override // io.grpc.netty.shaded.io.netty.util.b
        /* renamed from: e */
        public q0 touch() {
            t0.this.touch();
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.q0
        public X509Certificate[] f() {
            return (X509Certificate[]) this.f44820b.clone();
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        /* renamed from: h */
        public q0 touch(Object obj) {
            t0.this.touch(obj);
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.q0
        public long m() {
            if (refCnt() > 0) {
                return this.f44819a;
            }
            throw new IllegalReferenceCountException();
        }

        @Override // io.grpc.netty.shaded.io.netty.util.b, io.grpc.netty.shaded.io.netty.util.s
        public q0 retain() {
            super.retain();
            return this;
        }
    }
}

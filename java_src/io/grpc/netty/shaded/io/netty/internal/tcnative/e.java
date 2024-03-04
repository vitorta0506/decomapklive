package io.grpc.netty.shaded.io.netty.internal.tcnative;

import io.grpc.netty.shaded.io.netty.internal.tcnative.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class e extends f implements rg.a {

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f44967h = new byte[0];

    /* renamed from: f  reason: collision with root package name */
    private final AsyncSSLPrivateKeyMethod f44968f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f44969g;

    /* loaded from: classes5.dex */
    class a implements rg.b<byte[]> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f.c f44970a;

        a(f.c cVar) {
            this.f44970a = cVar;
        }

        @Override // rg.b
        public void a(long j10, Throwable th2) {
            e.this.f44969g = e.f44967h;
            this.f44970a.a(j10, 0);
        }

        @Override // rg.b
        /* renamed from: c */
        public void b(long j10, byte[] bArr) {
            e.this.f44969g = bArr;
            this.f44970a.a(j10, 1);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.internal.tcnative.f
    protected final void d(long j10, f.c cVar) {
        h(j10, this.f44968f, new a(cVar));
    }

    @Override // rg.a
    public final void e(Runnable runnable) {
        a(runnable);
    }

    protected abstract void h(long j10, AsyncSSLPrivateKeyMethod asyncSSLPrivateKeyMethod, rg.b<byte[]> bVar);
}

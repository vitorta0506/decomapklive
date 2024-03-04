package io.grpc.internal;

import io.grpc.internal.k2;
import io.grpc.internal.l1;
import java.io.Closeable;
/* loaded from: classes5.dex */
final class h2 extends m0 {

    /* renamed from: a  reason: collision with root package name */
    private final l1.b f42782a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f42783b;

    public h2(l1.b bVar) {
        this.f42782a = bVar;
    }

    @Override // io.grpc.internal.m0, io.grpc.internal.l1.b
    public void a(k2.a aVar) {
        if (this.f42783b) {
            if (aVar instanceof Closeable) {
                GrpcUtil.f((Closeable) aVar);
                return;
            }
            return;
        }
        super.a(aVar);
    }

    @Override // io.grpc.internal.m0, io.grpc.internal.l1.b
    public void c(Throwable th2) {
        this.f42783b = true;
        super.c(th2);
    }

    @Override // io.grpc.internal.m0, io.grpc.internal.l1.b
    public void d(boolean z10) {
        this.f42783b = true;
        super.d(z10);
    }

    @Override // io.grpc.internal.m0
    protected l1.b e() {
        return this.f42782a;
    }
}

package io.grpc.internal;

import io.grpc.internal.k2;
import io.grpc.internal.l1;
/* loaded from: classes5.dex */
abstract class m0 implements l1.b {
    @Override // io.grpc.internal.l1.b
    public void a(k2.a aVar) {
        e().a(aVar);
    }

    @Override // io.grpc.internal.l1.b
    public void b(int i9) {
        e().b(i9);
    }

    @Override // io.grpc.internal.l1.b
    public void c(Throwable th2) {
        e().c(th2);
    }

    @Override // io.grpc.internal.l1.b
    public void d(boolean z10) {
        e().d(z10);
    }

    protected abstract l1.b e();
}

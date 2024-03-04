package io.grpc.internal;
/* loaded from: classes5.dex */
abstract class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.r f43111a;

    /* JADX INFO: Access modifiers changed from: protected */
    public x(io.grpc.r rVar) {
        this.f43111a = rVar;
    }

    public abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        io.grpc.r c10 = this.f43111a.c();
        try {
            b();
        } finally {
            this.f43111a.k(c10);
        }
    }
}

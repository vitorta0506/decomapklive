package io.grpc.netty.shaded.io.netty.channel;
/* loaded from: classes5.dex */
final class o0 extends b0 {

    /* renamed from: c  reason: collision with root package name */
    private final Throwable f43721c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(e eVar, ug.j jVar, Throwable th2) {
        super(eVar, jVar);
        this.f43721c = (Throwable) io.grpc.netty.shaded.io.netty.util.internal.s.h(th2, "cause");
    }

    @Override // ug.q
    public Throwable L() {
        return this.f43721c;
    }

    @Override // ug.q
    public boolean p0() {
        return false;
    }
}

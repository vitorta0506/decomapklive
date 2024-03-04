package ug;
/* loaded from: classes5.dex */
public final class m<V> extends e<V> {

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f58489b;

    public m(j jVar, Throwable th2) {
        super(jVar);
        this.f58489b = (Throwable) io.grpc.netty.shaded.io.netty.util.internal.s.h(th2, "cause");
    }

    @Override // ug.q
    public Throwable L() {
        return this.f58489b;
    }

    @Override // ug.q
    public V Q() {
        return null;
    }

    @Override // ug.q
    public boolean p0() {
        return false;
    }
}

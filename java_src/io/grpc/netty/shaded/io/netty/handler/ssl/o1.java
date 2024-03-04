package io.grpc.netty.shaded.io.netty.handler.ssl;
/* loaded from: classes5.dex */
public abstract class o1 {

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f44714a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o1() {
        this.f44714a = null;
    }

    public final Throwable a() {
        return this.f44714a;
    }

    public final boolean b() {
        return this.f44714a == null;
    }

    public String toString() {
        Throwable a10 = a();
        if (a10 == null) {
            return getClass().getSimpleName() + "(SUCCESS)";
        }
        return getClass().getSimpleName() + '(' + a10 + ')';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o1(Throwable th2) {
        this.f44714a = (Throwable) io.grpc.netty.shaded.io.netty.util.internal.s.h(th2, "cause");
    }
}

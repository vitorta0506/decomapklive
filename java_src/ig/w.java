package ig;

import ig.g0;
/* loaded from: classes5.dex */
final class w extends io.grpc.e {

    /* renamed from: a  reason: collision with root package name */
    private final g0.a f41321a;

    private w(g0.a aVar) {
        this.f41321a = (g0.a) com.google.common.base.o.t(aVar, "negotiator");
    }

    public static io.grpc.e a(g0.a aVar) {
        return new w(aVar);
    }

    public g0.a b() {
        return this.f41321a;
    }
}

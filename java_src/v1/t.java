package v1;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class t implements q1.b<s> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Executor> f58679a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<w1.d> f58680b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<u> f58681c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<x1.a> f58682d;

    public t(fi.a<Executor> aVar, fi.a<w1.d> aVar2, fi.a<u> aVar3, fi.a<x1.a> aVar4) {
        this.f58679a = aVar;
        this.f58680b = aVar2;
        this.f58681c = aVar3;
        this.f58682d = aVar4;
    }

    public static t a(fi.a<Executor> aVar, fi.a<w1.d> aVar2, fi.a<u> aVar3, fi.a<x1.a> aVar4) {
        return new t(aVar, aVar2, aVar3, aVar4);
    }

    public static s c(Executor executor, w1.d dVar, u uVar, x1.a aVar) {
        return new s(executor, dVar, uVar, aVar);
    }

    @Override // fi.a
    /* renamed from: b */
    public s get() {
        return c(this.f58679a.get(), this.f58680b.get(), this.f58681c.get(), this.f58682d.get());
    }
}

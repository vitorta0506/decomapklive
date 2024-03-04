package u1;

import java.util.concurrent.Executor;
import v1.u;
/* loaded from: classes.dex */
public final class d implements q1.b<c> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Executor> f58308a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<o1.d> f58309b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<u> f58310c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<w1.d> f58311d;

    /* renamed from: e  reason: collision with root package name */
    private final fi.a<x1.a> f58312e;

    public d(fi.a<Executor> aVar, fi.a<o1.d> aVar2, fi.a<u> aVar3, fi.a<w1.d> aVar4, fi.a<x1.a> aVar5) {
        this.f58308a = aVar;
        this.f58309b = aVar2;
        this.f58310c = aVar3;
        this.f58311d = aVar4;
        this.f58312e = aVar5;
    }

    public static d a(fi.a<Executor> aVar, fi.a<o1.d> aVar2, fi.a<u> aVar3, fi.a<w1.d> aVar4, fi.a<x1.a> aVar5) {
        return new d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c c(Executor executor, o1.d dVar, u uVar, w1.d dVar2, x1.a aVar) {
        return new c(executor, dVar, uVar, dVar2, aVar);
    }

    @Override // fi.a
    /* renamed from: b */
    public c get() {
        return c(this.f58308a.get(), this.f58309b.get(), this.f58310c.get(), this.f58311d.get(), this.f58312e.get());
    }
}

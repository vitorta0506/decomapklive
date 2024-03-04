package v1;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class p implements q1.b<o> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Context> f58664a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<o1.d> f58665b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<w1.d> f58666c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<u> f58667d;

    /* renamed from: e  reason: collision with root package name */
    private final fi.a<Executor> f58668e;

    /* renamed from: f  reason: collision with root package name */
    private final fi.a<x1.a> f58669f;

    /* renamed from: g  reason: collision with root package name */
    private final fi.a<y1.a> f58670g;

    /* renamed from: h  reason: collision with root package name */
    private final fi.a<y1.a> f58671h;

    /* renamed from: i  reason: collision with root package name */
    private final fi.a<w1.c> f58672i;

    public p(fi.a<Context> aVar, fi.a<o1.d> aVar2, fi.a<w1.d> aVar3, fi.a<u> aVar4, fi.a<Executor> aVar5, fi.a<x1.a> aVar6, fi.a<y1.a> aVar7, fi.a<y1.a> aVar8, fi.a<w1.c> aVar9) {
        this.f58664a = aVar;
        this.f58665b = aVar2;
        this.f58666c = aVar3;
        this.f58667d = aVar4;
        this.f58668e = aVar5;
        this.f58669f = aVar6;
        this.f58670g = aVar7;
        this.f58671h = aVar8;
        this.f58672i = aVar9;
    }

    public static p a(fi.a<Context> aVar, fi.a<o1.d> aVar2, fi.a<w1.d> aVar3, fi.a<u> aVar4, fi.a<Executor> aVar5, fi.a<x1.a> aVar6, fi.a<y1.a> aVar7, fi.a<y1.a> aVar8, fi.a<w1.c> aVar9) {
        return new p(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    public static o c(Context context, o1.d dVar, w1.d dVar2, u uVar, Executor executor, x1.a aVar, y1.a aVar2, y1.a aVar3, w1.c cVar) {
        return new o(context, dVar, dVar2, uVar, executor, aVar, aVar2, aVar3, cVar);
    }

    @Override // fi.a
    /* renamed from: b */
    public o get() {
        return c(this.f58664a.get(), this.f58665b.get(), this.f58666c.get(), this.f58667d.get(), this.f58668e.get(), this.f58669f.get(), this.f58670g.get(), this.f58671h.get(), this.f58672i.get());
    }
}

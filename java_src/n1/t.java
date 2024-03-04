package n1;

import android.content.Context;
import androidx.annotation.RestrictTo;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes.dex */
public class t implements s {

    /* renamed from: e  reason: collision with root package name */
    private static volatile u f55282e;

    /* renamed from: a  reason: collision with root package name */
    private final y1.a f55283a;

    /* renamed from: b  reason: collision with root package name */
    private final y1.a f55284b;

    /* renamed from: c  reason: collision with root package name */
    private final u1.e f55285c;

    /* renamed from: d  reason: collision with root package name */
    private final v1.o f55286d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(y1.a aVar, y1.a aVar2, u1.e eVar, v1.o oVar, v1.s sVar) {
        this.f55283a = aVar;
        this.f55284b = aVar2;
        this.f55285c = eVar;
        this.f55286d = oVar;
        sVar.c();
    }

    private i b(n nVar) {
        return i.a().i(this.f55283a.a()).k(this.f55284b.a()).j(nVar.g()).h(new h(nVar.b(), nVar.d())).g(nVar.c().a()).d();
    }

    public static t c() {
        u uVar = f55282e;
        if (uVar != null) {
            return uVar.c();
        }
        throw new IllegalStateException("Not initialized!");
    }

    private static Set<l1.b> d(f fVar) {
        if (fVar instanceof g) {
            return Collections.unmodifiableSet(((g) fVar).a());
        }
        return Collections.singleton(l1.b.b("proto"));
    }

    public static void f(Context context) {
        if (f55282e == null) {
            synchronized (t.class) {
                if (f55282e == null) {
                    f55282e = e.e().a(context).build();
                }
            }
        }
    }

    @Override // n1.s
    public void a(n nVar, l1.g gVar) {
        this.f55285c.a(nVar.f().f(nVar.c().c()), b(nVar), gVar);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public v1.o e() {
        return this.f55286d;
    }

    public l1.f g(f fVar) {
        return new p(d(fVar), o.a().b(fVar.getName()).c(fVar.getExtras()).a(), this);
    }
}

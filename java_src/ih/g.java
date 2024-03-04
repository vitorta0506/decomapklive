package ih;

import com.google.common.base.o;
import eh.e1;
import eh.i1;
import eh.j0;
import eh.k2;
import ih.c;
/* loaded from: classes5.dex */
public final class g implements k2 {

    /* renamed from: a  reason: collision with root package name */
    private final c<i1, e> f41373a;

    /* renamed from: b  reason: collision with root package name */
    private final c<e1, e> f41374b;

    public g(j0.b bVar) {
        this(new a(bVar), new d(bVar));
    }

    @Override // eh.k2
    public e a(e eVar) {
        o.t(eVar, "serverSslContextProvider");
        return this.f41374b.a(eVar.a(), eVar);
    }

    @Override // eh.k2
    public e b(e eVar) {
        o.t(eVar, "clientSslContextProvider");
        return this.f41373a.a(eVar.c(), eVar);
    }

    g(c.b<i1, e> bVar, c.b<e1, e> bVar2) {
        o.t(bVar, "clientFactory");
        o.t(bVar2, "serverFactory");
        this.f41373a = new c<>(bVar);
        this.f41374b = new c<>(bVar2);
    }
}

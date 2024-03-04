package eh;

import com.google.common.collect.ImmutableMap;
import eh.l1;
import eh.l2;
import java.util.Objects;
/* loaded from: classes5.dex */
final class a0 extends l2.a {

    /* renamed from: a  reason: collision with root package name */
    private final l2.a.b f38641a;

    /* renamed from: b  reason: collision with root package name */
    private final l2.a.AbstractC0399a f38642b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableMap<String, l1.b> f38643c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(l2.a.b bVar, l2.a.AbstractC0399a abstractC0399a, ImmutableMap<String, l1.b> immutableMap) {
        Objects.requireNonNull(bVar, "Null routeMatch");
        this.f38641a = bVar;
        this.f38642b = abstractC0399a;
        Objects.requireNonNull(immutableMap, "Null filterConfigOverrides");
        this.f38643c = immutableMap;
    }

    @Override // eh.l2.a
    ImmutableMap<String, l1.b> b() {
        return this.f38643c;
    }

    @Override // eh.l2.a
    l2.a.AbstractC0399a e() {
        return this.f38642b;
    }

    public boolean equals(Object obj) {
        l2.a.AbstractC0399a abstractC0399a;
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2.a) {
            l2.a aVar = (l2.a) obj;
            return this.f38641a.equals(aVar.f()) && ((abstractC0399a = this.f38642b) != null ? abstractC0399a.equals(aVar.e()) : aVar.e() == null) && this.f38643c.equals(aVar.b());
        }
        return false;
    }

    @Override // eh.l2.a
    l2.a.b f() {
        return this.f38641a;
    }

    public int hashCode() {
        int hashCode = (this.f38641a.hashCode() ^ 1000003) * 1000003;
        l2.a.AbstractC0399a abstractC0399a = this.f38642b;
        return ((hashCode ^ (abstractC0399a == null ? 0 : abstractC0399a.hashCode())) * 1000003) ^ this.f38643c.hashCode();
    }

    public String toString() {
        return "Route{routeMatch=" + this.f38641a + ", routeAction=" + this.f38642b + ", filterConfigOverrides=" + this.f38643c + "}";
    }
}

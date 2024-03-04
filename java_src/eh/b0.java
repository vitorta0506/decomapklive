package eh;

import com.google.common.collect.ImmutableList;
import eh.l2;
import eh.u0;
import java.util.Objects;
/* loaded from: classes5.dex */
final class b0 extends l2.a.AbstractC0399a {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<l2.a.AbstractC0399a.b> f38690a;

    /* renamed from: b  reason: collision with root package name */
    private final Long f38691b;

    /* renamed from: c  reason: collision with root package name */
    private final String f38692c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableList<l2.a.AbstractC0399a.AbstractC0400a> f38693d;

    /* renamed from: e  reason: collision with root package name */
    private final u0.a f38694e;

    /* renamed from: f  reason: collision with root package name */
    private final l2.a.AbstractC0399a.c f38695f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(ImmutableList<l2.a.AbstractC0399a.b> immutableList, Long l10, String str, ImmutableList<l2.a.AbstractC0399a.AbstractC0400a> immutableList2, u0.a aVar, l2.a.AbstractC0399a.c cVar) {
        Objects.requireNonNull(immutableList, "Null hashPolicies");
        this.f38690a = immutableList;
        this.f38691b = l10;
        this.f38692c = str;
        this.f38693d = immutableList2;
        this.f38694e = aVar;
        this.f38695f = cVar;
    }

    @Override // eh.l2.a.AbstractC0399a
    String a() {
        return this.f38692c;
    }

    public boolean equals(Object obj) {
        Long l10;
        String str;
        ImmutableList<l2.a.AbstractC0399a.AbstractC0400a> immutableList;
        u0.a aVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2.a.AbstractC0399a) {
            l2.a.AbstractC0399a abstractC0399a = (l2.a.AbstractC0399a) obj;
            if (this.f38690a.equals(abstractC0399a.f()) && ((l10 = this.f38691b) != null ? l10.equals(abstractC0399a.i()) : abstractC0399a.i() == null) && ((str = this.f38692c) != null ? str.equals(abstractC0399a.a()) : abstractC0399a.a() == null) && ((immutableList = this.f38693d) != null ? immutableList.equals(abstractC0399a.j()) : abstractC0399a.j() == null) && ((aVar = this.f38694e) != null ? aVar.equals(abstractC0399a.g()) : abstractC0399a.g() == null)) {
                l2.a.AbstractC0399a.c cVar = this.f38695f;
                if (cVar == null) {
                    if (abstractC0399a.h() == null) {
                        return true;
                    }
                } else if (cVar.equals(abstractC0399a.h())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // eh.l2.a.AbstractC0399a
    ImmutableList<l2.a.AbstractC0399a.b> f() {
        return this.f38690a;
    }

    @Override // eh.l2.a.AbstractC0399a
    u0.a g() {
        return this.f38694e;
    }

    @Override // eh.l2.a.AbstractC0399a
    l2.a.AbstractC0399a.c h() {
        return this.f38695f;
    }

    public int hashCode() {
        int hashCode = (this.f38690a.hashCode() ^ 1000003) * 1000003;
        Long l10 = this.f38691b;
        int hashCode2 = (hashCode ^ (l10 == null ? 0 : l10.hashCode())) * 1000003;
        String str = this.f38692c;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        ImmutableList<l2.a.AbstractC0399a.AbstractC0400a> immutableList = this.f38693d;
        int hashCode4 = (hashCode3 ^ (immutableList == null ? 0 : immutableList.hashCode())) * 1000003;
        u0.a aVar = this.f38694e;
        int hashCode5 = (hashCode4 ^ (aVar == null ? 0 : aVar.hashCode())) * 1000003;
        l2.a.AbstractC0399a.c cVar = this.f38695f;
        return hashCode5 ^ (cVar != null ? cVar.hashCode() : 0);
    }

    @Override // eh.l2.a.AbstractC0399a
    Long i() {
        return this.f38691b;
    }

    @Override // eh.l2.a.AbstractC0399a
    ImmutableList<l2.a.AbstractC0399a.AbstractC0400a> j() {
        return this.f38693d;
    }

    public String toString() {
        return "RouteAction{hashPolicies=" + this.f38690a + ", timeoutNano=" + this.f38691b + ", cluster=" + this.f38692c + ", weightedClusters=" + this.f38693d + ", namedClusterSpecifierPluginConfig=" + this.f38694e + ", retryPolicy=" + this.f38695f + "}";
    }
}

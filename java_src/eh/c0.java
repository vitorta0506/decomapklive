package eh;

import com.google.common.collect.ImmutableMap;
import eh.l1;
import eh.l2;
import java.util.Objects;
/* loaded from: classes5.dex */
final class c0 extends l2.a.AbstractC0399a.AbstractC0400a {

    /* renamed from: a  reason: collision with root package name */
    private final String f38700a;

    /* renamed from: b  reason: collision with root package name */
    private final int f38701b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableMap<String, l1.b> f38702c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(String str, int i9, ImmutableMap<String, l1.b> immutableMap) {
        Objects.requireNonNull(str, "Null name");
        this.f38700a = str;
        this.f38701b = i9;
        Objects.requireNonNull(immutableMap, "Null filterConfigOverrides");
        this.f38702c = immutableMap;
    }

    @Override // eh.l2.a.AbstractC0399a.AbstractC0400a
    ImmutableMap<String, l1.b> b() {
        return this.f38702c;
    }

    @Override // eh.l2.a.AbstractC0399a.AbstractC0400a
    String c() {
        return this.f38700a;
    }

    @Override // eh.l2.a.AbstractC0399a.AbstractC0400a
    int d() {
        return this.f38701b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2.a.AbstractC0399a.AbstractC0400a) {
            l2.a.AbstractC0399a.AbstractC0400a abstractC0400a = (l2.a.AbstractC0399a.AbstractC0400a) obj;
            return this.f38700a.equals(abstractC0400a.c()) && this.f38701b == abstractC0400a.d() && this.f38702c.equals(abstractC0400a.b());
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f38700a.hashCode() ^ 1000003) * 1000003) ^ this.f38701b) * 1000003) ^ this.f38702c.hashCode();
    }

    public String toString() {
        return "ClusterWeight{name=" + this.f38700a + ", weight=" + this.f38701b + ", filterConfigOverrides=" + this.f38702c + "}";
    }
}

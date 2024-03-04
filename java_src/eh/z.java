package eh;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import eh.l1;
import eh.l2;
import java.util.Objects;
/* loaded from: classes5.dex */
final class z extends l2 {

    /* renamed from: a  reason: collision with root package name */
    private final String f39416a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<String> f39417b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableList<l2.a> f39418c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableMap<String, l1.b> f39419d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(String str, ImmutableList<String> immutableList, ImmutableList<l2.a> immutableList2, ImmutableMap<String, l1.b> immutableMap) {
        Objects.requireNonNull(str, "Null name");
        this.f39416a = str;
        Objects.requireNonNull(immutableList, "Null domains");
        this.f39417b = immutableList;
        Objects.requireNonNull(immutableList2, "Null routes");
        this.f39418c = immutableList2;
        Objects.requireNonNull(immutableMap, "Null filterConfigOverrides");
        this.f39419d = immutableMap;
    }

    @Override // eh.l2
    ImmutableList<String> b() {
        return this.f39417b;
    }

    @Override // eh.l2
    ImmutableMap<String, l1.b> c() {
        return this.f39419d;
    }

    @Override // eh.l2
    String d() {
        return this.f39416a;
    }

    @Override // eh.l2
    ImmutableList<l2.a> e() {
        return this.f39418c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2) {
            l2 l2Var = (l2) obj;
            return this.f39416a.equals(l2Var.d()) && this.f39417b.equals(l2Var.b()) && this.f39418c.equals(l2Var.e()) && this.f39419d.equals(l2Var.c());
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.f39416a.hashCode() ^ 1000003) * 1000003) ^ this.f39417b.hashCode()) * 1000003) ^ this.f39418c.hashCode()) * 1000003) ^ this.f39419d.hashCode();
    }

    public String toString() {
        return "VirtualHost{name=" + this.f39416a + ", domains=" + this.f39417b + ", routes=" + this.f39418c + ", filterConfigOverrides=" + this.f39419d + "}";
    }
}

package eh;

import eh.u0;
import java.util.Objects;
/* loaded from: classes5.dex */
final class g extends u0.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f38758a;

    /* renamed from: b  reason: collision with root package name */
    private final u0.b f38759b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(String str, u0.b bVar) {
        Objects.requireNonNull(str, "Null name");
        this.f38758a = str;
        Objects.requireNonNull(bVar, "Null config");
        this.f38759b = bVar;
    }

    @Override // eh.u0.a
    u0.b a() {
        return this.f38759b;
    }

    @Override // eh.u0.a
    String c() {
        return this.f38758a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof u0.a) {
            u0.a aVar = (u0.a) obj;
            return this.f38758a.equals(aVar.c()) && this.f38759b.equals(aVar.a());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f38758a.hashCode() ^ 1000003) * 1000003) ^ this.f38759b.hashCode();
    }

    public String toString() {
        return "NamedPluginConfig{name=" + this.f38758a + ", config=" + this.f38759b + "}";
    }
}

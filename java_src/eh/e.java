package eh;

import com.google.common.collect.ImmutableMap;
import eh.j0;
import java.util.Objects;
/* loaded from: classes5.dex */
final class e extends j0.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f38728a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableMap<String, ?> f38729b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, ImmutableMap<String, ?> immutableMap) {
        Objects.requireNonNull(str, "Null pluginName");
        this.f38728a = str;
        Objects.requireNonNull(immutableMap, "Null config");
        this.f38729b = immutableMap;
    }

    @Override // eh.j0.c
    public ImmutableMap<String, ?> a() {
        return this.f38729b;
    }

    @Override // eh.j0.c
    public String c() {
        return this.f38728a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j0.c) {
            j0.c cVar = (j0.c) obj;
            return this.f38728a.equals(cVar.c()) && this.f38729b.equals(cVar.a());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f38728a.hashCode() ^ 1000003) * 1000003) ^ this.f38729b.hashCode();
    }

    public String toString() {
        return "CertificateProviderInfo{pluginName=" + this.f38728a + ", config=" + this.f38729b + "}";
    }
}

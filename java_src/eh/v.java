package eh;

import com.google.common.collect.ImmutableMap;
import eh.c2;
import java.util.Objects;
/* loaded from: classes5.dex */
final class v extends c2.a {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<String, ?> f39352a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(ImmutableMap<String, ?> immutableMap) {
        Objects.requireNonNull(immutableMap, "Null config");
        this.f39352a = immutableMap;
    }

    @Override // eh.c2.a
    ImmutableMap<String, ?> a() {
        return this.f39352a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c2.a) {
            return this.f39352a.equals(((c2.a) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f39352a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RlsPluginConfig{config=" + this.f39352a + "}";
    }
}

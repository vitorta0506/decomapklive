package eh;

import com.google.common.collect.ImmutableList;
import eh.j0;
import java.util.Objects;
/* loaded from: classes5.dex */
final class c extends j0.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f38698a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<j0.d> f38699b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, ImmutableList<j0.d> immutableList) {
        Objects.requireNonNull(str, "Null clientListenerResourceNameTemplate");
        this.f38698a = str;
        Objects.requireNonNull(immutableList, "Null xdsServers");
        this.f38699b = immutableList;
    }

    @Override // eh.j0.a
    String a() {
        return this.f38698a;
    }

    @Override // eh.j0.a
    ImmutableList<j0.d> c() {
        return this.f38699b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j0.a) {
            j0.a aVar = (j0.a) obj;
            return this.f38698a.equals(aVar.a()) && this.f38699b.equals(aVar.c());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f38698a.hashCode() ^ 1000003) * 1000003) ^ this.f38699b.hashCode();
    }

    public String toString() {
        return "AuthorityInfo{clientListenerResourceNameTemplate=" + this.f38698a + ", xdsServers=" + this.f38699b + "}";
    }
}

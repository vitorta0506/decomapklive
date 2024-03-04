package hh;

import com.google.common.collect.ImmutableList;
import java.util.Objects;
/* loaded from: classes5.dex */
final class b extends p {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<? extends x> f40770a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(ImmutableList<? extends x> immutableList) {
        Objects.requireNonNull(immutableList, "Null allMatch");
        this.f40770a = immutableList;
    }

    @Override // hh.p
    public ImmutableList<? extends x> a() {
        return this.f40770a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p) {
            return this.f40770a.equals(((p) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f40770a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AndMatcher{allMatch=" + this.f40770a + "}";
    }
}

package hh;

import com.google.common.collect.ImmutableList;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class j extends y {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<? extends x> f40780a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(ImmutableList<? extends x> immutableList) {
        Objects.requireNonNull(immutableList, "Null anyMatch");
        this.f40780a = immutableList;
    }

    @Override // hh.y
    public ImmutableList<? extends x> a() {
        return this.f40780a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y) {
            return this.f40780a.equals(((y) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f40780a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "OrMatcher{anyMatch=" + this.f40780a + "}";
    }
}

package hh;

import java.util.Objects;
/* loaded from: classes5.dex */
final class d extends r {

    /* renamed from: a  reason: collision with root package name */
    private final fh.i f40773a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(fh.i iVar) {
        Objects.requireNonNull(iVar, "Null delegate");
        this.f40773a = iVar;
    }

    @Override // hh.r
    public fh.i b() {
        return this.f40773a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof r) {
            return this.f40773a.equals(((r) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f40773a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AuthHeaderMatcher{delegate=" + this.f40773a + "}";
    }
}

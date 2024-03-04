package hh;

import java.util.Objects;
/* loaded from: classes5.dex */
final class k extends z {

    /* renamed from: a  reason: collision with root package name */
    private final fh.j f40781a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(fh.j jVar) {
        Objects.requireNonNull(jVar, "Null delegate");
        this.f40781a = jVar;
    }

    @Override // hh.z
    public fh.j b() {
        return this.f40781a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof z) {
            return this.f40781a.equals(((z) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f40781a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "PathMatcher{delegate=" + this.f40781a + "}";
    }
}

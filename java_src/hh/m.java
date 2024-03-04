package hh;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class m extends b0 {

    /* renamed from: a  reason: collision with root package name */
    private final fh.j f40785a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(fh.j jVar) {
        Objects.requireNonNull(jVar, "Null delegate");
        this.f40785a = jVar;
    }

    @Override // hh.b0
    public fh.j b() {
        return this.f40785a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b0) {
            return this.f40785a.equals(((b0) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f40785a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RequestedServerNameMatcher{delegate=" + this.f40785a + "}";
    }
}

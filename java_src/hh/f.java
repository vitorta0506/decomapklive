package hh;

import java.util.Objects;
/* loaded from: classes5.dex */
final class f extends t {

    /* renamed from: a  reason: collision with root package name */
    private final fh.g f40775a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(fh.g gVar) {
        Objects.requireNonNull(gVar, "Null delegate");
        this.f40775a = gVar;
    }

    @Override // hh.t
    public fh.g b() {
        return this.f40775a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t) {
            return this.f40775a.equals(((t) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f40775a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "DestinationIpMatcher{delegate=" + this.f40775a + "}";
    }
}

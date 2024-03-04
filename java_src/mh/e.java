package mh;

import java.util.List;
import java.util.Objects;
/* loaded from: classes7.dex */
final class e extends n {

    /* renamed from: a  reason: collision with root package name */
    private final List<Object> f55113a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(List<Object> list) {
        Objects.requireNonNull(list, "Null entries");
        this.f55113a = list;
    }

    @Override // mh.n
    public List<Object> d() {
        return this.f55113a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n) {
            return this.f55113a.equals(((n) obj).d());
        }
        return false;
    }

    public int hashCode() {
        return this.f55113a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Tracestate{entries=" + this.f55113a + "}";
    }
}

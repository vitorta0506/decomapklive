package hh;

import java.util.Objects;
/* loaded from: classes5.dex */
final class i extends w {

    /* renamed from: a  reason: collision with root package name */
    private final x f40779a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(x xVar) {
        Objects.requireNonNull(xVar, "Null toInvertMatcher");
        this.f40779a = xVar;
    }

    @Override // hh.w
    public x b() {
        return this.f40779a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof w) {
            return this.f40779a.equals(((w) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f40779a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "InvertMatcher{toInvertMatcher=" + this.f40779a + "}";
    }
}

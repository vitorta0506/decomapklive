package eh;

import com.google.common.collect.ImmutableList;
import eh.l2;
import java.util.Objects;
/* loaded from: classes5.dex */
final class f0 extends l2.a.b {

    /* renamed from: a  reason: collision with root package name */
    private final l2.a.b.AbstractC0402a f38744a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<fh.i> f38745b;

    /* renamed from: c  reason: collision with root package name */
    private final fh.h f38746c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(l2.a.b.AbstractC0402a abstractC0402a, ImmutableList<fh.i> immutableList, fh.h hVar) {
        Objects.requireNonNull(abstractC0402a, "Null pathMatcher");
        this.f38744a = abstractC0402a;
        Objects.requireNonNull(immutableList, "Null headerMatchers");
        this.f38745b = immutableList;
        this.f38746c = hVar;
    }

    @Override // eh.l2.a.b
    fh.h b() {
        return this.f38746c;
    }

    @Override // eh.l2.a.b
    ImmutableList<fh.i> c() {
        return this.f38745b;
    }

    @Override // eh.l2.a.b
    l2.a.b.AbstractC0402a d() {
        return this.f38744a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2.a.b) {
            l2.a.b bVar = (l2.a.b) obj;
            if (this.f38744a.equals(bVar.d()) && this.f38745b.equals(bVar.c())) {
                fh.h hVar = this.f38746c;
                if (hVar == null) {
                    if (bVar.b() == null) {
                        return true;
                    }
                } else if (hVar.equals(bVar.b())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (((this.f38744a.hashCode() ^ 1000003) * 1000003) ^ this.f38745b.hashCode()) * 1000003;
        fh.h hVar = this.f38746c;
        return hashCode ^ (hVar == null ? 0 : hVar.hashCode());
    }

    public String toString() {
        return "RouteMatch{pathMatcher=" + this.f38744a + ", headerMatchers=" + this.f38745b + ", fractionMatcher=" + this.f38746c + "}";
    }
}

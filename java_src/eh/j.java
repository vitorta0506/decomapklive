package eh;

import com.google.common.collect.ImmutableList;
import java.util.Objects;
/* loaded from: classes5.dex */
final class j extends z0 {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<y0> f38795a;

    /* renamed from: b  reason: collision with root package name */
    private final int f38796b;

    /* renamed from: c  reason: collision with root package name */
    private final int f38797c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(ImmutableList<y0> immutableList, int i9, int i10) {
        Objects.requireNonNull(immutableList, "Null endpoints");
        this.f38795a = immutableList;
        this.f38796b = i9;
        this.f38797c = i10;
    }

    @Override // eh.z0
    ImmutableList<y0> b() {
        return this.f38795a;
    }

    @Override // eh.z0
    int c() {
        return this.f38796b;
    }

    @Override // eh.z0
    int d() {
        return this.f38797c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof z0) {
            z0 z0Var = (z0) obj;
            return this.f38795a.equals(z0Var.b()) && this.f38796b == z0Var.c() && this.f38797c == z0Var.d();
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f38795a.hashCode() ^ 1000003) * 1000003) ^ this.f38796b) * 1000003) ^ this.f38797c;
    }

    public String toString() {
        return "LocalityLbEndpoints{endpoints=" + this.f38795a + ", localityWeight=" + this.f38796b + ", priority=" + this.f38797c + "}";
    }
}

package w1;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b extends k {

    /* renamed from: a  reason: collision with root package name */
    private final long f59278a;

    /* renamed from: b  reason: collision with root package name */
    private final n1.o f59279b;

    /* renamed from: c  reason: collision with root package name */
    private final n1.i f59280c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long j10, n1.o oVar, n1.i iVar) {
        this.f59278a = j10;
        Objects.requireNonNull(oVar, "Null transportContext");
        this.f59279b = oVar;
        Objects.requireNonNull(iVar, "Null event");
        this.f59280c = iVar;
    }

    @Override // w1.k
    public n1.i b() {
        return this.f59280c;
    }

    @Override // w1.k
    public long c() {
        return this.f59278a;
    }

    @Override // w1.k
    public n1.o d() {
        return this.f59279b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            return this.f59278a == kVar.c() && this.f59279b.equals(kVar.d()) && this.f59280c.equals(kVar.b());
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f59278a;
        return this.f59280c.hashCode() ^ ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f59279b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f59278a + ", transportContext=" + this.f59279b + ", event=" + this.f59280c + "}";
    }
}

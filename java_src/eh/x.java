package eh;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class x extends h2 {

    /* renamed from: a  reason: collision with root package name */
    private final String f39403a;

    /* renamed from: b  reason: collision with root package name */
    private final long f39404b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(String str, long j10) {
        Objects.requireNonNull(str, "Null category");
        this.f39403a = str;
        this.f39404b = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.h2
    public String a() {
        return this.f39403a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.h2
    public long c() {
        return this.f39404b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h2) {
            h2 h2Var = (h2) obj;
            return this.f39403a.equals(h2Var.a()) && this.f39404b == h2Var.c();
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f39404b;
        return ((this.f39403a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "DroppedRequests{category=" + this.f39403a + ", droppedCount=" + this.f39404b + "}";
    }
}

package i6;

import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
final class a extends j {

    /* renamed from: a  reason: collision with root package name */
    private final String f40973a;

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f40974b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, List<String> list) {
        Objects.requireNonNull(str, "Null userAgent");
        this.f40973a = str;
        Objects.requireNonNull(list, "Null usedDates");
        this.f40974b = list;
    }

    @Override // i6.j
    public List<String> b() {
        return this.f40974b;
    }

    @Override // i6.j
    public String c() {
        return this.f40973a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            return this.f40973a.equals(jVar.c()) && this.f40974b.equals(jVar.b());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f40973a.hashCode() ^ 1000003) * 1000003) ^ this.f40974b.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.f40973a + ", usedDates=" + this.f40974b + "}";
    }
}

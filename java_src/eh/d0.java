package eh;

import com.google.re2j.Pattern;
import eh.l2;
import java.util.Objects;
/* loaded from: classes5.dex */
final class d0 extends l2.a.AbstractC0399a.b {

    /* renamed from: a  reason: collision with root package name */
    private final l2.a.AbstractC0399a.b.EnumC0401a f38716a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f38717b;

    /* renamed from: c  reason: collision with root package name */
    private final String f38718c;

    /* renamed from: d  reason: collision with root package name */
    private final Pattern f38719d;

    /* renamed from: e  reason: collision with root package name */
    private final String f38720e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(l2.a.AbstractC0399a.b.EnumC0401a enumC0401a, boolean z10, String str, Pattern pattern, String str2) {
        Objects.requireNonNull(enumC0401a, "Null type");
        this.f38716a = enumC0401a;
        this.f38717b = z10;
        this.f38718c = str;
        this.f38719d = pattern;
        this.f38720e = str2;
    }

    @Override // eh.l2.a.AbstractC0399a.b
    String d() {
        return this.f38718c;
    }

    @Override // eh.l2.a.AbstractC0399a.b
    boolean e() {
        return this.f38717b;
    }

    public boolean equals(Object obj) {
        String str;
        Pattern pattern;
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2.a.AbstractC0399a.b) {
            l2.a.AbstractC0399a.b bVar = (l2.a.AbstractC0399a.b) obj;
            if (this.f38716a.equals(bVar.h()) && this.f38717b == bVar.e() && ((str = this.f38718c) != null ? str.equals(bVar.d()) : bVar.d() == null) && ((pattern = this.f38719d) != null ? pattern.equals(bVar.f()) : bVar.f() == null)) {
                String str2 = this.f38720e;
                if (str2 == null) {
                    if (bVar.g() == null) {
                        return true;
                    }
                } else if (str2.equals(bVar.g())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // eh.l2.a.AbstractC0399a.b
    Pattern f() {
        return this.f38719d;
    }

    @Override // eh.l2.a.AbstractC0399a.b
    String g() {
        return this.f38720e;
    }

    @Override // eh.l2.a.AbstractC0399a.b
    l2.a.AbstractC0399a.b.EnumC0401a h() {
        return this.f38716a;
    }

    public int hashCode() {
        int hashCode = (((this.f38716a.hashCode() ^ 1000003) * 1000003) ^ (this.f38717b ? 1231 : 1237)) * 1000003;
        String str = this.f38718c;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        Pattern pattern = this.f38719d;
        int hashCode3 = (hashCode2 ^ (pattern == null ? 0 : pattern.hashCode())) * 1000003;
        String str2 = this.f38720e;
        return hashCode3 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "HashPolicy{type=" + this.f38716a + ", isTerminal=" + this.f38717b + ", headerName=" + this.f38718c + ", regEx=" + this.f38719d + ", regExSubstitution=" + this.f38720e + "}";
    }
}

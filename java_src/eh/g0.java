package eh;

import com.google.re2j.Pattern;
import eh.l2;
/* loaded from: classes5.dex */
final class g0 extends l2.a.b.AbstractC0402a {

    /* renamed from: a  reason: collision with root package name */
    private final String f38760a;

    /* renamed from: b  reason: collision with root package name */
    private final String f38761b;

    /* renamed from: c  reason: collision with root package name */
    private final Pattern f38762c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f38763d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(String str, String str2, Pattern pattern, boolean z10) {
        this.f38760a = str;
        this.f38761b = str2;
        this.f38762c = pattern;
        this.f38763d = z10;
    }

    @Override // eh.l2.a.b.AbstractC0402a
    boolean a() {
        return this.f38763d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2.a.b.AbstractC0402a) {
            l2.a.b.AbstractC0402a abstractC0402a = (l2.a.b.AbstractC0402a) obj;
            String str = this.f38760a;
            if (str != null ? str.equals(abstractC0402a.f()) : abstractC0402a.f() == null) {
                String str2 = this.f38761b;
                if (str2 != null ? str2.equals(abstractC0402a.g()) : abstractC0402a.g() == null) {
                    Pattern pattern = this.f38762c;
                    if (pattern != null ? pattern.equals(abstractC0402a.h()) : abstractC0402a.h() == null) {
                        if (this.f38763d == abstractC0402a.a()) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    @Override // eh.l2.a.b.AbstractC0402a
    String f() {
        return this.f38760a;
    }

    @Override // eh.l2.a.b.AbstractC0402a
    String g() {
        return this.f38761b;
    }

    @Override // eh.l2.a.b.AbstractC0402a
    Pattern h() {
        return this.f38762c;
    }

    public int hashCode() {
        String str = this.f38760a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f38761b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        Pattern pattern = this.f38762c;
        return ((hashCode2 ^ (pattern != null ? pattern.hashCode() : 0)) * 1000003) ^ (this.f38763d ? 1231 : 1237);
    }

    public String toString() {
        return "PathMatcher{path=" + this.f38760a + ", prefix=" + this.f38761b + ", regEx=" + this.f38762c + ", caseSensitive=" + this.f38763d + "}";
    }
}

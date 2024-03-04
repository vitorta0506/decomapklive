package fh;

import com.google.re2j.Pattern;
/* loaded from: classes5.dex */
final class e extends j {

    /* renamed from: a  reason: collision with root package name */
    private final String f39739a;

    /* renamed from: b  reason: collision with root package name */
    private final String f39740b;

    /* renamed from: c  reason: collision with root package name */
    private final String f39741c;

    /* renamed from: d  reason: collision with root package name */
    private final Pattern f39742d;

    /* renamed from: e  reason: collision with root package name */
    private final String f39743e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f39744f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, String str2, String str3, Pattern pattern, String str4, boolean z10) {
        this.f39739a = str;
        this.f39740b = str2;
        this.f39741c = str3;
        this.f39742d = pattern;
        this.f39743e = str4;
        this.f39744f = z10;
    }

    @Override // fh.j
    String a() {
        return this.f39743e;
    }

    @Override // fh.j
    String c() {
        return this.f39739a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            String str = this.f39739a;
            if (str != null ? str.equals(jVar.c()) : jVar.c() == null) {
                String str2 = this.f39740b;
                if (str2 != null ? str2.equals(jVar.j()) : jVar.j() == null) {
                    String str3 = this.f39741c;
                    if (str3 != null ? str3.equals(jVar.l()) : jVar.l() == null) {
                        Pattern pattern = this.f39742d;
                        if (pattern != null ? pattern.equals(jVar.k()) : jVar.k() == null) {
                            String str4 = this.f39743e;
                            if (str4 != null ? str4.equals(jVar.a()) : jVar.a() == null) {
                                if (this.f39744f == jVar.i()) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f39739a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f39740b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f39741c;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        Pattern pattern = this.f39742d;
        int hashCode4 = (hashCode3 ^ (pattern == null ? 0 : pattern.hashCode())) * 1000003;
        String str4 = this.f39743e;
        return ((hashCode4 ^ (str4 != null ? str4.hashCode() : 0)) * 1000003) ^ (this.f39744f ? 1231 : 1237);
    }

    @Override // fh.j
    boolean i() {
        return this.f39744f;
    }

    @Override // fh.j
    String j() {
        return this.f39740b;
    }

    @Override // fh.j
    Pattern k() {
        return this.f39742d;
    }

    @Override // fh.j
    String l() {
        return this.f39741c;
    }

    public String toString() {
        return "StringMatcher{exact=" + this.f39739a + ", prefix=" + this.f39740b + ", suffix=" + this.f39741c + ", regEx=" + this.f39742d + ", contains=" + this.f39743e + ", ignoreCase=" + this.f39744f + "}";
    }
}

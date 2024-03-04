package fh;

import com.google.re2j.Pattern;
import fh.i;
import java.util.Objects;
/* loaded from: classes5.dex */
final class c extends i {

    /* renamed from: a  reason: collision with root package name */
    private final String f39729a;

    /* renamed from: b  reason: collision with root package name */
    private final String f39730b;

    /* renamed from: c  reason: collision with root package name */
    private final Pattern f39731c;

    /* renamed from: d  reason: collision with root package name */
    private final i.a f39732d;

    /* renamed from: e  reason: collision with root package name */
    private final Boolean f39733e;

    /* renamed from: f  reason: collision with root package name */
    private final String f39734f;

    /* renamed from: g  reason: collision with root package name */
    private final String f39735g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f39736h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, String str2, Pattern pattern, i.a aVar, Boolean bool, String str3, String str4, boolean z10) {
        Objects.requireNonNull(str, "Null name");
        this.f39729a = str;
        this.f39730b = str2;
        this.f39731c = pattern;
        this.f39732d = aVar;
        this.f39733e = bool;
        this.f39734f = str3;
        this.f39735g = str4;
        this.f39736h = z10;
    }

    @Override // fh.i
    public String b() {
        return this.f39730b;
    }

    public boolean equals(Object obj) {
        String str;
        Pattern pattern;
        i.a aVar;
        Boolean bool;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return this.f39729a.equals(iVar.k()) && ((str = this.f39730b) != null ? str.equals(iVar.b()) : iVar.b() == null) && ((pattern = this.f39731c) != null ? pattern.equals(iVar.o()) : iVar.o() == null) && ((aVar = this.f39732d) != null ? aVar.equals(iVar.n()) : iVar.n() == null) && ((bool = this.f39733e) != null ? bool.equals(iVar.m()) : iVar.m() == null) && ((str2 = this.f39734f) != null ? str2.equals(iVar.l()) : iVar.l() == null) && ((str3 = this.f39735g) != null ? str3.equals(iVar.p()) : iVar.p() == null) && this.f39736h == iVar.i();
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (this.f39729a.hashCode() ^ 1000003) * 1000003;
        String str = this.f39730b;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        Pattern pattern = this.f39731c;
        int hashCode3 = (hashCode2 ^ (pattern == null ? 0 : pattern.hashCode())) * 1000003;
        i.a aVar = this.f39732d;
        int hashCode4 = (hashCode3 ^ (aVar == null ? 0 : aVar.hashCode())) * 1000003;
        Boolean bool = this.f39733e;
        int hashCode5 = (hashCode4 ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        String str2 = this.f39734f;
        int hashCode6 = (hashCode5 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f39735g;
        return ((hashCode6 ^ (str3 != null ? str3.hashCode() : 0)) * 1000003) ^ (this.f39736h ? 1231 : 1237);
    }

    @Override // fh.i
    public boolean i() {
        return this.f39736h;
    }

    @Override // fh.i
    public String k() {
        return this.f39729a;
    }

    @Override // fh.i
    public String l() {
        return this.f39734f;
    }

    @Override // fh.i
    public Boolean m() {
        return this.f39733e;
    }

    @Override // fh.i
    public i.a n() {
        return this.f39732d;
    }

    @Override // fh.i
    public Pattern o() {
        return this.f39731c;
    }

    @Override // fh.i
    public String p() {
        return this.f39735g;
    }

    public String toString() {
        return "HeaderMatcher{name=" + this.f39729a + ", exactValue=" + this.f39730b + ", safeRegEx=" + this.f39731c + ", range=" + this.f39732d + ", present=" + this.f39733e + ", prefix=" + this.f39734f + ", suffix=" + this.f39735g + ", inverted=" + this.f39736h + "}";
    }
}

package el;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f39500a;

    /* renamed from: b  reason: collision with root package name */
    private String f39501b;

    private int a(String str) {
        if (str == null) {
            return 1;
        }
        return str.hashCode();
    }

    private boolean d(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public String b() {
        return this.f39500a;
    }

    public String c() {
        return this.f39501b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            return aVar == this || (d(this.f39500a, aVar.f39500a) && d(this.f39501b, aVar.f39501b));
        }
        return false;
    }

    public int hashCode() {
        return a(this.f39500a) + (a(this.f39501b) * 31);
    }
}

package h;
/* loaded from: classes.dex */
public class g {

    /* renamed from: d  reason: collision with root package name */
    private static String f40232d = "\r";

    /* renamed from: a  reason: collision with root package name */
    private final String f40233a;

    /* renamed from: b  reason: collision with root package name */
    public final float f40234b;

    /* renamed from: c  reason: collision with root package name */
    public final float f40235c;

    public g(String str, float f10, float f11) {
        this.f40233a = str;
        this.f40235c = f11;
        this.f40234b = f10;
    }

    public boolean a(String str) {
        if (this.f40233a.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.f40233a.endsWith(f40232d)) {
            String str2 = this.f40233a;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}

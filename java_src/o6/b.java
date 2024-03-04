package o6;
/* loaded from: classes2.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private static b f55522a;

    private b() {
    }

    public static b b() {
        if (f55522a == null) {
            f55522a = new b();
        }
        return f55522a;
    }

    @Override // o6.a
    public long a() {
        return System.currentTimeMillis();
    }
}

package vg;
/* loaded from: classes5.dex */
public final class j {

    /* loaded from: classes5.dex */
    public interface a {
        int c();

        long d();

        long f();
    }

    public static boolean a(a aVar) {
        return aVar.f() >= aVar.d();
    }

    public static int b(a aVar) {
        long d10;
        long f10;
        long f11 = aVar.f();
        while (true) {
            d10 = aVar.d();
            f10 = aVar.f();
            if (f11 == f10) {
                break;
            }
            f11 = f10;
        }
        long j10 = d10 - f10;
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < 0) {
            return 0;
        }
        return (aVar.c() == -1 || j10 <= ((long) aVar.c())) ? (int) j10 : aVar.c();
    }
}

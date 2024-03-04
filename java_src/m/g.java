package m;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.FloatRange;
import e.k;
import java.util.List;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static PointF f54394a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static double b(double d10, double d11, double d12) {
        return Math.max(d11, Math.min(d12, d10));
    }

    public static float c(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f12, f10));
    }

    public static int d(int i9, int i10, int i11) {
        return Math.max(i10, Math.min(i11, i9));
    }

    public static boolean e(float f10, float f11, float f12) {
        return f10 >= f11 && f10 <= f12;
    }

    private static int f(int i9, int i10) {
        int i11 = i9 / i10;
        return (((i9 ^ i10) >= 0) || i9 % i10 == 0) ? i11 : i11 - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(float f10, float f11) {
        return h((int) f10, (int) f11);
    }

    private static int h(int i9, int i10) {
        return i9 - (i10 * f(i9, i10));
    }

    public static void i(j.h hVar, Path path) {
        path.reset();
        PointF b10 = hVar.b();
        path.moveTo(b10.x, b10.y);
        f54394a.set(b10.x, b10.y);
        for (int i9 = 0; i9 < hVar.a().size(); i9++) {
            h.a aVar = hVar.a().get(i9);
            PointF a10 = aVar.a();
            PointF b11 = aVar.b();
            PointF c10 = aVar.c();
            if (a10.equals(f54394a) && b11.equals(c10)) {
                path.lineTo(c10.x, c10.y);
            } else {
                path.cubicTo(a10.x, a10.y, b11.x, b11.y, c10.x, c10.y);
            }
            f54394a.set(c10.x, c10.y);
        }
        if (hVar.d()) {
            path.close();
        }
    }

    public static double j(double d10, double d11, @FloatRange(from = 0.0d, to = 1.0d) double d12) {
        return d10 + (d12 * (d11 - d10));
    }

    public static float k(float f10, float f11, @FloatRange(from = 0.0d, to = 1.0d) float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static int l(int i9, int i10, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return (int) (i9 + (f10 * (i10 - i9)));
    }

    public static void m(h.d dVar, int i9, List<h.d> list, h.d dVar2, k kVar) {
        if (dVar.c(kVar.getName(), i9)) {
            list.add(dVar2.a(kVar.getName()).i(kVar));
        }
    }
}

package ma;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import com.guochao.faceshow.aaspring.utils.LogUtils;
/* loaded from: classes3.dex */
public class a {
    public static float a(float f10, float f11, float f12, float f13) {
        float f14 = f12 - f10;
        float f15 = f13 - f11;
        float atan = (float) ((((float) Math.atan(f15 / f14)) / 6.283185307179586d) * 360.0d);
        int i9 = (f14 > 0.0f ? 1 : (f14 == 0.0f ? 0 : -1));
        if (i9 < 0 || f15 != 0.0f) {
            int i10 = (f14 > 0.0f ? 1 : (f14 == 0.0f ? 0 : -1));
            if (i10 < 0 && f15 == 0.0f) {
                atan = 180.0f;
            } else if (i9 == 0 && f15 > 0.0f) {
                atan = 90.0f;
            } else if (i9 == 0 && f15 < 0.0f) {
                atan = 270.0f;
            } else if (i9 <= 0 || f15 <= 0.0f) {
                if ((i10 < 0 && f15 > 0.0f) || (i10 < 0 && f15 < 0.0f)) {
                    atan += 180.0f;
                } else if (i9 > 0 && f15 < 0.0f) {
                    atan += 360.0f;
                }
            }
        } else {
            atan = 0.0f;
        }
        LogUtils.i("hzw", "[" + f10 + "," + f11 + "]:[" + f12 + "," + f13 + "] = " + atan);
        return atan;
    }

    public static void b(Canvas canvas, float f10, float f11, float f12, Paint paint) {
        canvas.drawCircle(f10, f11, f12, paint);
    }

    public static void c(Canvas canvas, float f10, float f11, float f12, float f13, Paint paint) {
        if (f10 < f12) {
            if (f11 < f13) {
                canvas.drawRect(f10, f11, f12, f13, paint);
            } else {
                canvas.drawRect(f10, f13, f12, f11, paint);
            }
        } else if (f11 < f13) {
            canvas.drawRect(f12, f11, f10, f13, paint);
        } else {
            canvas.drawRect(f12, f13, f10, f11, paint);
        }
    }

    public static PointF d(PointF pointF, float f10, float f11, float f12, float f13, float f14) {
        if (f10 % 360.0f == 0.0f) {
            pointF.x = f11;
            pointF.y = f12;
            return pointF;
        }
        double d10 = f11 - f13;
        double d11 = (float) ((f10 * 3.141592653589793d) / 180.0d);
        double d12 = f12 - f14;
        pointF.x = (float) (((Math.cos(d11) * d10) - (Math.sin(d11) * d12)) + f13);
        pointF.y = (float) ((d10 * Math.sin(d11)) + (d12 * Math.cos(d11)) + f14);
        return pointF;
    }

    public static double[] e(float f10, float f11, double d10, boolean z10, double d11) {
        double[] dArr = new double[2];
        double d12 = f10;
        double d13 = f11;
        double cos = (Math.cos(d10) * d12) - (Math.sin(d10) * d13);
        double sin = (d12 * Math.sin(d10)) + (d13 * Math.cos(d10));
        if (z10) {
            double sqrt = Math.sqrt((cos * cos) + (sin * sin));
            cos = (cos / sqrt) * d11;
            sin = (sin / sqrt) * d11;
        }
        dArr[0] = cos;
        dArr[1] = sin;
        return dArr;
    }

    public static void f(Rect rect, float f10, float f11, float f12) {
        rect.left = (int) ((f11 - ((f11 - rect.left) * f10)) + 0.5f);
        rect.right = (int) ((f11 - ((f11 - rect.right) * f10)) + 0.5f);
        rect.top = (int) ((f12 - ((f12 - rect.top) * f10)) + 0.5f);
        rect.bottom = (int) ((f12 - (f10 * (f12 - rect.bottom))) + 0.5f);
    }
}

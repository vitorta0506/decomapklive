package nd;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.rd.animation.type.AnimationType;
import com.rd.draw.data.Orientation;
/* loaded from: classes4.dex */
public class a {
    public static int a(@Nullable kd.a aVar, int i9) {
        if (aVar == null) {
            return 0;
        }
        if (aVar.g() == Orientation.HORIZONTAL) {
            return g(aVar, i9);
        }
        return h(aVar, i9);
    }

    private static int b(@NonNull kd.a aVar, float f10, float f11) {
        int c10 = aVar.c();
        int m10 = aVar.m();
        int s10 = aVar.s();
        int h10 = aVar.h();
        int d10 = aVar.g() == Orientation.HORIZONTAL ? aVar.d() : aVar.v();
        int i9 = 0;
        int i10 = 0;
        while (i9 < c10) {
            int i11 = (m10 * 2) + (s10 / 2) + (i9 > 0 ? h10 : h10 / 2) + i10;
            boolean z10 = true;
            boolean z11 = f10 >= ((float) i10) && f10 <= ((float) i11);
            z10 = (f11 < 0.0f || f11 > ((float) d10)) ? false : false;
            if (z11 && z10) {
                return i9;
            }
            i9++;
            i10 = i11;
        }
        return -1;
    }

    private static int c(@NonNull kd.a aVar, int i9) {
        int c10 = aVar.c();
        int m10 = aVar.m();
        int s10 = aVar.s();
        int h10 = aVar.h();
        int i10 = 0;
        for (int i11 = 0; i11 < c10; i11++) {
            int i12 = s10 / 2;
            int i13 = i10 + m10 + i12;
            if (i9 == i11) {
                return i13;
            }
            i10 = i13 + m10 + h10 + i12;
        }
        return aVar.b() == AnimationType.DROP ? i10 + (m10 * 2) : i10;
    }

    public static int d(@Nullable kd.a aVar, float f10, float f11) {
        if (aVar == null) {
            return -1;
        }
        if (aVar.g() != Orientation.HORIZONTAL) {
            f11 = f10;
            f10 = f11;
        }
        return b(aVar, f10, f11);
    }

    public static Pair<Integer, Float> e(@NonNull kd.a aVar, int i9, float f10, boolean z10) {
        int c10 = aVar.c();
        int q10 = aVar.q();
        if (z10) {
            i9 = (c10 - 1) - i9;
        }
        boolean z11 = false;
        if (i9 < 0) {
            i9 = 0;
        } else {
            int i10 = c10 - 1;
            if (i9 > i10) {
                i9 = i10;
            }
        }
        boolean z12 = i9 > q10;
        boolean z13 = !z10 ? i9 + 1 >= q10 : i9 + (-1) >= q10;
        if (z12 || z13) {
            aVar.V(i9);
            q10 = i9;
        }
        float f11 = 0.0f;
        if (q10 == i9 && f10 != 0.0f) {
            z11 = true;
        }
        if (z11) {
            i9 = z10 ? i9 - 1 : i9 + 1;
        } else {
            f10 = 1.0f - f10;
        }
        if (f10 > 1.0f) {
            f11 = 1.0f;
        } else if (f10 >= 0.0f) {
            f11 = f10;
        }
        return new Pair<>(Integer.valueOf(i9), Float.valueOf(f11));
    }

    private static int f(@NonNull kd.a aVar) {
        int m10 = aVar.m();
        return aVar.b() == AnimationType.DROP ? m10 * 3 : m10;
    }

    public static int g(@Nullable kd.a aVar, int i9) {
        int f10;
        if (aVar == null) {
            return 0;
        }
        if (aVar.g() == Orientation.HORIZONTAL) {
            f10 = c(aVar, i9);
        } else {
            f10 = f(aVar);
        }
        return f10 + aVar.j();
    }

    public static int h(@Nullable kd.a aVar, int i9) {
        int c10;
        if (aVar == null) {
            return 0;
        }
        if (aVar.g() == Orientation.HORIZONTAL) {
            c10 = f(aVar);
        } else {
            c10 = c(aVar, i9);
        }
        return c10 + aVar.l();
    }
}

package jd;

import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import com.rd.animation.type.AnimationType;
import com.rd.draw.data.Orientation;
/* loaded from: classes4.dex */
public class c {
    public Pair<Integer, Integer> a(@NonNull kd.a aVar, int i9, int i10) {
        int i11;
        int i12;
        int mode = View.MeasureSpec.getMode(i9);
        int size = View.MeasureSpec.getSize(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i10);
        int c10 = aVar.c();
        int m10 = aVar.m();
        int s10 = aVar.s();
        int h10 = aVar.h();
        int j10 = aVar.j();
        int l10 = aVar.l();
        int k10 = aVar.k();
        int i13 = aVar.i();
        int i14 = m10 * 2;
        Orientation g10 = aVar.g();
        if (c10 != 0) {
            i12 = (i14 * c10) + (s10 * 2 * c10) + (h10 * (c10 - 1));
            i11 = i14 + s10;
            if (g10 != Orientation.HORIZONTAL) {
                i12 = i11;
                i11 = i12;
            }
        } else {
            i11 = 0;
            i12 = 0;
        }
        if (aVar.b() == AnimationType.DROP) {
            if (g10 == Orientation.HORIZONTAL) {
                i11 *= 2;
            } else {
                i12 *= 2;
            }
        }
        Orientation orientation = Orientation.HORIZONTAL;
        int i15 = i12 + j10 + k10;
        int i16 = i11 + l10 + i13;
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(i15, size) : i15;
        }
        if (mode2 != 1073741824) {
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(i16, size2) : i16;
        }
        if (size < 0) {
            size = 0;
        }
        int i17 = size2 >= 0 ? size2 : 0;
        aVar.a0(size);
        aVar.G(i17);
        return new Pair<>(Integer.valueOf(size), Integer.valueOf(i17));
    }
}

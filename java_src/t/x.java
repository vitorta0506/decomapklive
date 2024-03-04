package t;

import android.graphics.Rect;
/* loaded from: classes.dex */
class x implements o {
    @Override // t.o
    public Rect a(int i9, int i10, Rect rect) {
        Rect rect2 = new Rect(rect);
        int i11 = rect2.left;
        if (i11 > i9) {
            rect2.right -= i11 - i9;
            rect2.left = i9;
        }
        return rect2;
    }
}

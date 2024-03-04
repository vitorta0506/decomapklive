package t;

import android.graphics.Rect;
/* loaded from: classes.dex */
class d0 implements o {
    @Override // t.o
    public Rect a(int i9, int i10, Rect rect) {
        Rect rect2 = new Rect(rect);
        int i11 = rect2.right;
        if (i11 < i10) {
            rect2.left += i10 - i11;
            rect2.right = i10;
        }
        return rect2;
    }
}

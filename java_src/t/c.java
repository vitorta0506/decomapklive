package t;

import android.graphics.Rect;
/* loaded from: classes.dex */
class c implements o {
    @Override // t.o
    public Rect a(int i9, int i10, Rect rect) {
        Rect rect2 = new Rect(rect);
        int i11 = ((i10 - i9) - (rect2.right - rect2.left)) / 2;
        rect2.left = i9 + i11;
        rect2.right = i10 - i11;
        return rect2;
    }
}

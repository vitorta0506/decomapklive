package t;

import android.graphics.Rect;
/* loaded from: classes.dex */
class h0 implements o {
    @Override // t.o
    public Rect a(int i9, int i10, Rect rect) {
        if (rect.left >= i9) {
            if (rect.right <= i10) {
                Rect rect2 = new Rect(rect);
                int i11 = rect2.top;
                if (i11 > i9) {
                    rect2.bottom -= i11 - i9;
                    rect2.top = i9;
                }
                return rect2;
            }
            throw new IllegalArgumentException("bottom point of input rect can't be bigger than maxTop");
        }
        throw new IllegalArgumentException("top point of input rect can't be lower than minTop");
    }
}

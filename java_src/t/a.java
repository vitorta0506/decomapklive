package t;

import android.graphics.Rect;
/* loaded from: classes.dex */
class a implements o {
    @Override // t.o
    public Rect a(int i9, int i10, Rect rect) {
        if (rect.top >= i9) {
            if (rect.bottom <= i10) {
                Rect rect2 = new Rect(rect);
                int i11 = rect2.bottom;
                if (i11 < i10) {
                    rect2.top += i10 - i11;
                    rect2.bottom = i10;
                }
                return rect2;
            }
            throw new IllegalArgumentException("bottom point of input rect can't be bigger than maxTop");
        }
        throw new IllegalArgumentException("top point of input rect can't be lower than minTop");
    }
}

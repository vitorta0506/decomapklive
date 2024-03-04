package com.yanzhenjie.recyclerview.swipe;

import android.view.View;
import android.widget.OverScroller;
import com.yanzhenjie.recyclerview.swipe.a;
/* loaded from: classes5.dex */
class b extends a {
    public b(View view) {
        super(1, view);
    }

    @Override // com.yanzhenjie.recyclerview.swipe.a
    public void a(OverScroller overScroller, int i9, int i10) {
        overScroller.startScroll(-Math.abs(i9), 0, Math.abs(i9), 0, i10);
    }

    @Override // com.yanzhenjie.recyclerview.swipe.a
    public void b(OverScroller overScroller, int i9, int i10) {
        overScroller.startScroll(Math.abs(i9), 0, f().getWidth() - Math.abs(i9), 0, i10);
    }

    @Override // com.yanzhenjie.recyclerview.swipe.a
    public a.C0373a d(int i9, int i10) {
        a.C0373a c0373a = this.f37839c;
        c0373a.f37840a = i9;
        c0373a.f37841b = i10;
        c0373a.f37842c = false;
        if (i9 == 0) {
            c0373a.f37842c = true;
        }
        if (i9 >= 0) {
            c0373a.f37840a = 0;
        }
        if (c0373a.f37840a <= (-f().getWidth())) {
            this.f37839c.f37840a = -f().getWidth();
        }
        return this.f37839c;
    }

    @Override // com.yanzhenjie.recyclerview.swipe.a
    public boolean h(int i9, float f10) {
        return f10 > ((float) f().getWidth());
    }

    public boolean j(int i9) {
        int e10 = (-f().getWidth()) * e();
        return i9 <= e10 && e10 != 0;
    }

    public boolean k(int i9) {
        return i9 < (-f().getWidth()) * e();
    }
}

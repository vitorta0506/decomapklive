package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class DrawableView extends View {

    /* renamed from: a  reason: collision with root package name */
    Drawable f23596a;

    public DrawableView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Drawable drawable = this.f23596a;
        if (drawable != null) {
            drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.f23596a.draw(canvas);
        }
    }

    public void setDrawable(Drawable drawable) {
        if (this.f23596a != drawable) {
            this.f23596a = drawable;
            invalidate();
        }
    }

    public DrawableView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}

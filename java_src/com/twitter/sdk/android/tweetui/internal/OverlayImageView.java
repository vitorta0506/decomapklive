package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes4.dex */
public class OverlayImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    a f35470a;

    /* loaded from: classes4.dex */
    protected static class a {

        /* renamed from: a  reason: collision with root package name */
        final Drawable f35471a;

        a(Drawable drawable) {
            this.f35471a = drawable;
        }

        protected void a(ImageView imageView) {
            Drawable drawable = this.f35471a;
            if (drawable != null) {
                drawable.setCallback(null);
                imageView.unscheduleDrawable(this.f35471a);
            }
        }

        protected void b(Canvas canvas) {
            Drawable drawable = this.f35471a;
            if (drawable != null) {
                drawable.draw(canvas);
            }
        }

        protected void c(int i9, int i10) {
            Drawable drawable = this.f35471a;
            if (drawable != null) {
                drawable.setBounds(0, 0, i9, i10);
            }
        }

        protected void d(int[] iArr) {
            Drawable drawable = this.f35471a;
            if (drawable == null || !drawable.isStateful()) {
                return;
            }
            this.f35471a.setState(iArr);
        }
    }

    public OverlayImageView(Context context) {
        super(context);
        this.f35470a = new a(null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f35470a.d(getDrawableState());
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.f35470a.f35471a) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f35470a.b(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        this.f35470a.c(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        this.f35470a.c(i9, i10);
    }

    public void setOverlayDrawable(Drawable drawable) {
        a aVar = this.f35470a;
        if (drawable != aVar.f35471a) {
            aVar.a(this);
            if (drawable != null) {
                drawable.setCallback(this);
            }
            a aVar2 = new a(drawable);
            this.f35470a = aVar2;
            aVar2.d(getDrawableState());
            requestLayout();
        }
    }

    public OverlayImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35470a = new a(null);
    }
}

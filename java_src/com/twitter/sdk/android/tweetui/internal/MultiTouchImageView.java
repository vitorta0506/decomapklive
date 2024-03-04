package com.twitter.sdk.android.tweetui.internal;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import com.twitter.sdk.android.tweetui.internal.i;
/* loaded from: classes4.dex */
public class MultiTouchImageView extends ImageView implements i.b {

    /* renamed from: a  reason: collision with root package name */
    final ScaleGestureDetector f35459a;

    /* renamed from: b  reason: collision with root package name */
    final GestureDetector f35460b;

    /* renamed from: c  reason: collision with root package name */
    final Matrix f35461c;

    /* renamed from: d  reason: collision with root package name */
    final Matrix f35462d;

    /* renamed from: e  reason: collision with root package name */
    final Matrix f35463e;

    /* renamed from: f  reason: collision with root package name */
    final RectF f35464f;

    /* renamed from: g  reason: collision with root package name */
    final RectF f35465g;

    /* renamed from: h  reason: collision with root package name */
    final float[] f35466h;

    /* renamed from: i  reason: collision with root package name */
    boolean f35467i;

    /* loaded from: classes4.dex */
    class a extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        a() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            MultiTouchImageView.this.l(scaleGestureDetector.getScaleFactor(), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            MultiTouchImageView.this.k();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            if (MultiTouchImageView.this.getScale() < 1.0f) {
                MultiTouchImageView.this.j();
                MultiTouchImageView.this.k();
            }
        }
    }

    /* loaded from: classes4.dex */
    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (MultiTouchImageView.this.getScale() > 1.0f) {
                MultiTouchImageView multiTouchImageView = MultiTouchImageView.this;
                multiTouchImageView.c(multiTouchImageView.getScale(), 1.0f, motionEvent.getX(), motionEvent.getY());
                return true;
            }
            MultiTouchImageView multiTouchImageView2 = MultiTouchImageView.this;
            multiTouchImageView2.c(multiTouchImageView2.getScale(), 2.0f, motionEvent.getX(), motionEvent.getY());
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            MultiTouchImageView.this.m(-f10, -f11);
            MultiTouchImageView.this.k();
            MultiTouchImageView multiTouchImageView = MultiTouchImageView.this;
            if (!multiTouchImageView.f35467i || multiTouchImageView.f35459a.isInProgress()) {
                return true;
            }
            MultiTouchImageView.this.i(false);
            return true;
        }
    }

    public MultiTouchImageView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(float f10, float f11, ValueAnimator valueAnimator) {
        l(((Float) valueAnimator.getAnimatedValue()).floatValue() / getScale(), f10, f11);
        k();
    }

    @Override // com.twitter.sdk.android.tweetui.internal.i.b
    public boolean a() {
        return getScale() == 1.0f;
    }

    void c(float f10, float f11, final float f12, final float f13) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f10, f11);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.twitter.sdk.android.tweetui.internal.e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MultiTouchImageView.this.h(f12, f13, valueAnimator);
            }
        });
        ofFloat.start();
    }

    RectF d(Matrix matrix) {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            this.f35465g.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(this.f35465g);
        }
        return this.f35465g;
    }

    void e(Drawable drawable) {
        RectF rectF = new RectF(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.f35462d.reset();
        this.f35462d.setRectToRect(rectF, this.f35464f, Matrix.ScaleToFit.CENTER);
    }

    void f() {
        this.f35464f.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
    }

    boolean g() {
        Drawable drawable = getDrawable();
        return drawable != null && drawable.getIntrinsicWidth() > 0;
    }

    Matrix getDrawMatrix() {
        this.f35461c.set(this.f35462d);
        this.f35461c.postConcat(this.f35463e);
        return this.f35461c;
    }

    float getScale() {
        this.f35463e.getValues(this.f35466h);
        return this.f35466h[0];
    }

    void i(boolean z10) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    void j() {
        this.f35463e.reset();
    }

    void k() {
        n();
        setScaleType(ImageView.ScaleType.MATRIX);
        setImageMatrix(getDrawMatrix());
    }

    void l(float f10, float f11, float f12) {
        this.f35463e.postScale(f10, f10, f11, f12);
    }

    void m(float f10, float f11) {
        this.f35463e.postTranslate(f10, f11);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void n() {
        /*
            r7 = this;
            android.graphics.Matrix r0 = r7.getDrawMatrix()
            android.graphics.RectF r0 = r7.d(r0)
            float r1 = r0.height()
            android.graphics.RectF r2 = r7.f35464f
            float r2 = r2.height()
            r3 = 1073741824(0x40000000, float:2.0)
            r4 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 > 0) goto L29
            android.graphics.RectF r1 = r7.f35464f
            float r1 = r1.height()
            float r2 = r0.height()
            float r1 = r1 - r2
            float r1 = r1 / r3
            float r2 = r0.top
        L27:
            float r1 = r1 - r2
            goto L47
        L29:
            float r1 = r0.top
            int r2 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r2 <= 0) goto L31
            float r1 = -r1
            goto L47
        L31:
            float r1 = r0.bottom
            android.graphics.RectF r2 = r7.f35464f
            float r2 = r2.height()
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 >= 0) goto L46
            android.graphics.RectF r1 = r7.f35464f
            float r1 = r1.height()
            float r2 = r0.bottom
            goto L27
        L46:
            r1 = 0
        L47:
            float r2 = r0.width()
            android.graphics.RectF r5 = r7.f35464f
            float r5 = r5.width()
            r6 = 1
            int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r2 > 0) goto L69
            r7.f35467i = r6
            android.graphics.RectF r2 = r7.f35464f
            float r2 = r2.width()
            float r4 = r0.width()
            float r2 = r2 - r4
            float r2 = r2 / r3
            float r0 = r0.left
        L66:
            float r4 = r2 - r0
            goto L8d
        L69:
            float r2 = r0.left
            int r3 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r3 <= 0) goto L73
            r7.f35467i = r6
            float r4 = -r2
            goto L8d
        L73:
            float r2 = r0.right
            android.graphics.RectF r3 = r7.f35464f
            float r3 = r3.width()
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 >= 0) goto L8a
            r7.f35467i = r6
            android.graphics.RectF r2 = r7.f35464f
            float r2 = r2.width()
            float r0 = r0.right
            goto L66
        L8a:
            r0 = 0
            r7.f35467i = r0
        L8d:
            r7.m(r4, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.tweetui.internal.MultiTouchImageView.n():void");
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        if (g()) {
            f();
            e(getDrawable());
            k();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (g()) {
            i(true);
            return (this.f35460b.onTouchEvent(motionEvent) || this.f35459a.onTouchEvent(motionEvent)) || super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public MultiTouchImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultiTouchImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f35461c = new Matrix();
        this.f35462d = new Matrix();
        this.f35463e = new Matrix();
        this.f35464f = new RectF();
        this.f35465g = new RectF();
        this.f35466h = new float[9];
        this.f35459a = new ScaleGestureDetector(context, new a());
        this.f35460b = new GestureDetector(context, new b());
    }
}

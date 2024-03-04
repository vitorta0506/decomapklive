package com.lcodecore.tkrefreshlayout.header;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.guochao.twink.R$color;
import com.tencent.thumbplayer.api.TPOptionalID;
import kc.c;
/* loaded from: classes4.dex */
public class GoogleDotView extends View implements kc.b {

    /* renamed from: a  reason: collision with root package name */
    private Paint f27962a;

    /* renamed from: b  reason: collision with root package name */
    private float f27963b;

    /* renamed from: c  reason: collision with root package name */
    private int f27964c;

    /* renamed from: d  reason: collision with root package name */
    private int f27965d;

    /* renamed from: e  reason: collision with root package name */
    float f27966e;

    /* renamed from: f  reason: collision with root package name */
    float f27967f;

    /* renamed from: g  reason: collision with root package name */
    boolean f27968g;

    /* renamed from: h  reason: collision with root package name */
    ValueAnimator f27969h;

    /* renamed from: i  reason: collision with root package name */
    ValueAnimator f27970i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            GoogleDotView.this.f27966e = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            GoogleDotView.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            GoogleDotView.this.f27967f = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        }
    }

    public GoogleDotView(Context context) {
        this(context, null, 0);
    }

    private void d() {
        this.f27963b = nc.a.a(getContext(), 4.0f);
        Paint paint = new Paint();
        this.f27962a = paint;
        paint.setAntiAlias(true);
        this.f27962a.setColor(Color.rgb(114, 114, 114));
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 1.2f, 1.0f, 0.8f);
        this.f27969h = ofFloat;
        ofFloat.setDuration(800L);
        this.f27969h.setInterpolator(new DecelerateInterpolator());
        this.f27969h.addUpdateListener(new a());
        this.f27969h.setRepeatCount(-1);
        this.f27969h.setRepeatMode(2);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.8f, 1.0f, 1.2f);
        this.f27970i = ofFloat2;
        ofFloat2.setDuration(800L);
        this.f27970i.setInterpolator(new DecelerateInterpolator());
        this.f27970i.addUpdateListener(new b());
        this.f27970i.setRepeatCount(-1);
        this.f27970i.setRepeatMode(2);
    }

    @Override // kc.b
    public void a(float f10, float f11) {
        this.f27968g = true;
        this.f27969h.start();
        this.f27970i.start();
    }

    @Override // kc.b
    public void b(float f10, float f11, float f12) {
        float f13 = (f10 / 2.0f) + 1.0f;
        setScaleX(f13);
        setScaleY(f13);
        if (f10 < 1.0f) {
            this.f27968g = false;
            if (this.f27969h.isRunning()) {
                this.f27969h.cancel();
                invalidate();
            }
            if (this.f27970i.isRunning()) {
                this.f27970i.cancel();
            }
        }
    }

    @Override // kc.b
    public void c(float f10, float f11, float f12) {
        float f13 = (f10 / 2.0f) + 1.0f;
        setScaleX(f13);
        setScaleY(f13);
        this.f27968g = false;
        if (this.f27969h.isRunning()) {
            this.f27969h.cancel();
            invalidate();
        }
        if (this.f27970i.isRunning()) {
            this.f27970i.cancel();
        }
    }

    @Override // kc.b
    public View getView() {
        return this;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f27969h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f27970i;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = (getMeasuredWidth() / this.f27964c) - 10;
        for (int i9 = 0; i9 < this.f27964c; i9++) {
            if (this.f27968g) {
                if (i9 == 0) {
                    this.f27962a.setAlpha(105);
                    this.f27962a.setColor(getResources().getColor(R$color.Yellow));
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f27965d * 2)) - (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f27963b * this.f27967f, this.f27962a);
                } else if (i9 == 1) {
                    this.f27962a.setAlpha(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
                    this.f27962a.setColor(getResources().getColor(R$color.Green));
                    canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f27965d * 1)) - ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f27963b * this.f27967f, this.f27962a);
                } else if (i9 == 2) {
                    this.f27962a.setAlpha(255);
                    this.f27962a.setColor(getResources().getColor(R$color.Blue));
                    canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f27963b * this.f27966e, this.f27962a);
                } else if (i9 == 3) {
                    this.f27962a.setAlpha(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
                    this.f27962a.setColor(getResources().getColor(R$color.Orange));
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.f27965d * 1) + ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f27963b * this.f27967f, this.f27962a);
                } else if (i9 == 4) {
                    this.f27962a.setAlpha(105);
                    this.f27962a.setColor(getResources().getColor(R$color.Yellow));
                    canvas.drawCircle((getMeasuredWidth() / 2) + (this.f27965d * 2) + (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f27963b * this.f27967f, this.f27962a);
                }
            } else if (i9 == 0) {
                this.f27962a.setAlpha(105);
                this.f27962a.setColor(getResources().getColor(R$color.Yellow));
                canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f27965d * 2)) - (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f27963b, this.f27962a);
            } else if (i9 == 1) {
                this.f27962a.setAlpha(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
                this.f27962a.setColor(getResources().getColor(R$color.Green));
                canvas.drawCircle(((getMeasuredWidth() / 2) - (this.f27965d * 1)) - ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f27963b, this.f27962a);
            } else if (i9 == 2) {
                this.f27962a.setAlpha(255);
                this.f27962a.setColor(getResources().getColor(R$color.Blue));
                canvas.drawCircle(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.f27963b, this.f27962a);
            } else if (i9 == 3) {
                this.f27962a.setAlpha(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
                this.f27962a.setColor(getResources().getColor(R$color.Orange));
                canvas.drawCircle((getMeasuredWidth() / 2) + (this.f27965d * 1) + ((measuredWidth / 3) * 2), getMeasuredHeight() / 2, this.f27963b, this.f27962a);
            } else if (i9 == 4) {
                this.f27962a.setAlpha(105);
                this.f27962a.setColor(getResources().getColor(R$color.Yellow));
                canvas.drawCircle((getMeasuredWidth() / 2) + (this.f27965d * 2) + (((measuredWidth * 2) / 3) * 2), getMeasuredHeight() / 2, this.f27963b, this.f27962a);
            }
        }
    }

    @Override // kc.b
    public void onFinish(c cVar) {
        cVar.a();
    }

    @Override // kc.b
    public void reset() {
        this.f27968g = false;
        if (this.f27969h.isRunning()) {
            this.f27969h.cancel();
        }
        if (this.f27970i.isRunning()) {
            this.f27970i.cancel();
        }
        invalidate();
    }

    public void setCir_x(int i9) {
        this.f27965d = i9;
    }

    public GoogleDotView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GoogleDotView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f27964c = 5;
        this.f27968g = false;
        d();
    }
}

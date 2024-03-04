package com.scwang.smartrefresh.layout.header;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.scwang.smartrefresh.layout.R$styleable;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import wd.g;
import wd.j;
/* loaded from: classes4.dex */
public class BezierRadarHeader extends InternalAbstract implements g {

    /* renamed from: d  reason: collision with root package name */
    protected int f29384d;

    /* renamed from: e  reason: collision with root package name */
    protected int f29385e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f29386f;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f29387g;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f29388h;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f29389i;

    /* renamed from: j  reason: collision with root package name */
    protected Path f29390j;

    /* renamed from: k  reason: collision with root package name */
    protected Paint f29391k;

    /* renamed from: l  reason: collision with root package name */
    protected int f29392l;

    /* renamed from: m  reason: collision with root package name */
    protected int f29393m;

    /* renamed from: n  reason: collision with root package name */
    protected int f29394n;

    /* renamed from: o  reason: collision with root package name */
    protected float f29395o;

    /* renamed from: p  reason: collision with root package name */
    protected float f29396p;

    /* renamed from: q  reason: collision with root package name */
    protected float f29397q;

    /* renamed from: r  reason: collision with root package name */
    protected float f29398r;

    /* renamed from: s  reason: collision with root package name */
    protected int f29399s;

    /* renamed from: t  reason: collision with root package name */
    protected float f29400t;

    /* renamed from: u  reason: collision with root package name */
    protected float f29401u;

    /* renamed from: v  reason: collision with root package name */
    protected float f29402v;

    /* renamed from: w  reason: collision with root package name */
    protected Animator f29403w;

    /* renamed from: x  reason: collision with root package name */
    protected RectF f29404x;

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29405a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f29405a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29405a[RefreshState.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes4.dex */
    protected class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        byte f29406a;

        b(byte b10) {
            this.f29406a = b10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            byte b10 = this.f29406a;
            if (b10 == 0) {
                BezierRadarHeader.this.f29402v = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (1 == b10) {
                BezierRadarHeader bezierRadarHeader = BezierRadarHeader.this;
                if (bezierRadarHeader.f29388h) {
                    valueAnimator.cancel();
                    return;
                }
                bezierRadarHeader.f29393m = ((Integer) valueAnimator.getAnimatedValue()).intValue() / 2;
            } else if (2 == b10) {
                BezierRadarHeader.this.f29395o = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (3 == b10) {
                BezierRadarHeader.this.f29398r = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (4 == b10) {
                BezierRadarHeader.this.f29399s = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            }
            BezierRadarHeader.this.invalidate();
        }
    }

    public BezierRadarHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void a(@NonNull j jVar, int i9, int i10) {
        this.f29392l = i9;
        this.f29388h = false;
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 360);
        ofInt.setDuration(720L);
        ofInt.setRepeatCount(-1);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.addUpdateListener(new b((byte) 4));
        DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(decelerateInterpolator);
        ofFloat.addUpdateListener(new b((byte) 2));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setInterpolator(decelerateInterpolator);
        ofFloat2.addUpdateListener(new b((byte) 0));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(ofFloat, ofFloat2, ofInt);
        animatorSet.start();
        int i11 = this.f29393m;
        ValueAnimator ofInt2 = ValueAnimator.ofInt(i11, 0, -((int) (i11 * 0.8f)), 0, -((int) (i11 * 0.4f)), 0);
        ofInt2.addUpdateListener(new b((byte) 1));
        ofInt2.setInterpolator(decelerateInterpolator);
        ofInt2.setDuration(800L);
        ofInt2.start();
        this.f29403w = animatorSet;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        Animator animator = this.f29403w;
        if (animator != null) {
            animator.removeAllListeners();
            this.f29403w.end();
            this.f29403w = null;
        }
        int width = getWidth();
        int height = getHeight();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, (float) Math.sqrt((width * width) + (height * height)));
        ofFloat.setDuration(400L);
        ofFloat.addUpdateListener(new b((byte) 3));
        ofFloat.start();
        return 400;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        u(canvas, width);
        r(canvas, width, height);
        s(canvas, width, height);
        t(canvas, width, height);
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        int i9 = a.f29405a[refreshState2.ordinal()];
        if (i9 == 1 || i9 == 2) {
            this.f29395o = 1.0f;
            this.f29402v = 0.0f;
            this.f29398r = 0.0f;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void h(float f10, int i9, int i10) {
        this.f29394n = i9;
        postInvalidateOnAnimation();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public boolean j() {
        return this.f29389i;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        if (z10 || this.f29388h) {
            this.f29388h = true;
            this.f29392l = Math.min(i10, i9);
            this.f29393m = (int) (Math.max(0, i9 - i10) * 1.9f);
            this.f29396p = f10;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.f29403w;
        if (animator != null) {
            animator.removeAllListeners();
            this.f29403w.end();
            this.f29403w = null;
        }
    }

    protected void r(Canvas canvas, int i9, int i10) {
        if (this.f29395o > 0.0f) {
            this.f29391k.setColor(this.f29384d);
            float c10 = ae.b.c(i10);
            float f10 = i9 / 7;
            float f11 = this.f29396p;
            float f12 = 1.0f;
            float f13 = (f10 * f11) - (f11 > 1.0f ? ((f11 - 1.0f) * f10) / f11 : 0.0f);
            float f14 = i10;
            float f15 = 2.0f;
            float f16 = f14 - (f11 > 1.0f ? (((f11 - 1.0f) * f14) / 2.0f) / f11 : 0.0f);
            int i11 = 0;
            while (i11 < 7) {
                float f17 = (i11 + f12) - 4.0f;
                this.f29391k.setAlpha((int) (this.f29395o * (f12 - ((Math.abs(f17) / 7.0f) * f15)) * 255.0f * (1.0d - (1.0d / Math.pow((c10 / 800.0d) + 1.0d, 15.0d)))));
                float f18 = this.f29397q * (1.0f - (1.0f / ((c10 / 10.0f) + 1.0f)));
                canvas.drawCircle(((i9 / 2) - (f18 / 2.0f)) + (f17 * f13), f16 / 2.0f, f18, this.f29391k);
                i11++;
                f12 = 1.0f;
                f15 = 2.0f;
            }
            this.f29391k.setAlpha(255);
        }
    }

    protected void s(Canvas canvas, int i9, int i10) {
        if (this.f29403w != null || isInEditMode()) {
            float f10 = this.f29400t;
            float f11 = this.f29402v;
            float f12 = f10 * f11;
            float f13 = this.f29401u * f11;
            this.f29391k.setColor(this.f29384d);
            this.f29391k.setStyle(Paint.Style.FILL);
            float f14 = i9 / 2;
            float f15 = i10 / 2;
            canvas.drawCircle(f14, f15, f12, this.f29391k);
            this.f29391k.setStyle(Paint.Style.STROKE);
            float f16 = f13 + f12;
            canvas.drawCircle(f14, f15, f16, this.f29391k);
            this.f29391k.setColor((this.f29385e & ViewCompat.MEASURED_SIZE_MASK) | 1426063360);
            this.f29391k.setStyle(Paint.Style.FILL);
            this.f29404x.set(f14 - f12, f15 - f12, f14 + f12, f12 + f15);
            canvas.drawArc(this.f29404x, 270.0f, this.f29399s, true, this.f29391k);
            this.f29391k.setStyle(Paint.Style.STROKE);
            this.f29404x.set(f14 - f16, f15 - f16, f14 + f16, f15 + f16);
            canvas.drawArc(this.f29404x, 270.0f, this.f29399s, false, this.f29391k);
            this.f29391k.setStyle(Paint.Style.FILL);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0 && !this.f29386f) {
            w(iArr[0]);
            this.f29386f = false;
        }
        if (iArr.length <= 1 || this.f29387g) {
            return;
        }
        v(iArr[1]);
        this.f29387g = false;
    }

    protected void t(Canvas canvas, int i9, int i10) {
        if (this.f29398r > 0.0f) {
            this.f29391k.setColor(this.f29384d);
            canvas.drawCircle(i9 / 2, i10 / 2, this.f29398r, this.f29391k);
        }
    }

    protected void u(Canvas canvas, int i9) {
        int i10;
        this.f29390j.reset();
        this.f29390j.lineTo(0.0f, this.f29392l);
        Path path = this.f29390j;
        int i11 = this.f29394n;
        if (i11 < 0) {
            i11 = i9 / 2;
        }
        float f10 = i9;
        path.quadTo(i11, this.f29393m + i10, f10, this.f29392l);
        this.f29390j.lineTo(f10, 0.0f);
        this.f29391k.setColor(this.f29385e);
        canvas.drawPath(this.f29390j, this.f29391k);
    }

    public BezierRadarHeader v(@ColorInt int i9) {
        this.f29384d = i9;
        this.f29387g = true;
        return this;
    }

    public BezierRadarHeader w(@ColorInt int i9) {
        this.f29385e = i9;
        this.f29386f = true;
        return this;
    }

    public BezierRadarHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BezierRadarHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29389i = false;
        this.f29394n = -1;
        this.f29399s = 0;
        this.f29400t = 0.0f;
        this.f29401u = 0.0f;
        this.f29402v = 0.0f;
        this.f29404x = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.f29434b = SpinnerStyle.Scale;
        ae.b bVar = new ae.b();
        this.f29390j = new Path();
        Paint paint = new Paint();
        this.f29391k = paint;
        paint.setAntiAlias(true);
        this.f29397q = bVar.a(7.0f);
        this.f29400t = bVar.a(20.0f);
        this.f29401u = bVar.a(7.0f);
        this.f29391k.setStrokeWidth(bVar.a(3.0f));
        setMinimumHeight(bVar.a(100.0f));
        if (isInEditMode()) {
            this.f29392l = 1000;
            this.f29402v = 1.0f;
            this.f29399s = 270;
        } else {
            this.f29402v = 0.0f;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BezierRadarHeader);
        this.f29389i = obtainStyledAttributes.getBoolean(R$styleable.BezierRadarHeader_srlEnableHorizontalDrag, this.f29389i);
        int i10 = R$styleable.BezierRadarHeader_srlAccentColor;
        v(obtainStyledAttributes.getColor(i10, -1));
        int i11 = R$styleable.BezierRadarHeader_srlPrimaryColor;
        w(obtainStyledAttributes.getColor(i11, -14540254));
        this.f29387g = obtainStyledAttributes.hasValue(i10);
        this.f29386f = obtainStyledAttributes.hasValue(i11);
        obtainStyledAttributes.recycle();
    }
}

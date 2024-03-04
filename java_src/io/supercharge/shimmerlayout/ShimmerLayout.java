package io.supercharge.shimmerlayout;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
/* loaded from: classes7.dex */
public class ShimmerLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f52804a;

    /* renamed from: b  reason: collision with root package name */
    private Rect f52805b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f52806c;

    /* renamed from: d  reason: collision with root package name */
    private ValueAnimator f52807d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f52808e;

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f52809f;

    /* renamed from: g  reason: collision with root package name */
    private Canvas f52810g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f52811h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f52812i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f52813j;

    /* renamed from: k  reason: collision with root package name */
    private int f52814k;

    /* renamed from: l  reason: collision with root package name */
    private int f52815l;

    /* renamed from: m  reason: collision with root package name */
    private int f52816m;

    /* renamed from: n  reason: collision with root package name */
    private float f52817n;

    /* renamed from: o  reason: collision with root package name */
    private float f52818o;

    /* renamed from: p  reason: collision with root package name */
    private ViewTreeObserver.OnPreDrawListener f52819p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ShimmerLayout.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ShimmerLayout.this.n();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f52821a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f52822b;

        b(int i9, int i10) {
            this.f52821a = i9;
            this.f52822b = i10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ShimmerLayout.this.f52804a = this.f52821a + ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (ShimmerLayout.this.f52804a + this.f52822b >= 0) {
                ShimmerLayout.this.invalidate();
            }
        }
    }

    public ShimmerLayout(Context context) {
        this(context, null);
    }

    private Rect c() {
        return new Rect(0, 0, d(), getHeight());
    }

    private int d() {
        return (int) ((((getWidth() / 2) * this.f52817n) / Math.cos(Math.toRadians(Math.abs(this.f52816m)))) + (getHeight() * Math.tan(Math.toRadians(Math.abs(this.f52816m)))));
    }

    private Bitmap e(int i9, int i10) {
        try {
            return Bitmap.createBitmap(i9, i10, Bitmap.Config.ALPHA_8);
        } catch (OutOfMemoryError unused) {
            System.gc();
            return null;
        }
    }

    private void f() {
        if (this.f52806c != null) {
            return;
        }
        int j10 = j(this.f52815l);
        float width = (getWidth() / 2) * this.f52817n;
        float height = this.f52816m >= 0 ? getHeight() : 0.0f;
        int i9 = this.f52815l;
        LinearGradient linearGradient = new LinearGradient(0.0f, height, ((float) Math.cos(Math.toRadians(this.f52816m))) * width, height + (((float) Math.sin(Math.toRadians(this.f52816m))) * width), new int[]{j10, i9, i9, j10}, getGradientColorDistribution(), Shader.TileMode.CLAMP);
        Bitmap bitmap = this.f52808e;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        ComposeShader composeShader = new ComposeShader(linearGradient, new BitmapShader(bitmap, tileMode, tileMode), PorterDuff.Mode.DST_IN);
        Paint paint = new Paint();
        this.f52806c = paint;
        paint.setAntiAlias(true);
        this.f52806c.setDither(true);
        this.f52806c.setFilterBitmap(true);
        this.f52806c.setShader(composeShader);
    }

    private void g(Canvas canvas) {
        super.dispatchDraw(canvas);
        Bitmap maskBitmap = getMaskBitmap();
        this.f52808e = maskBitmap;
        if (maskBitmap == null) {
            return;
        }
        if (this.f52810g == null) {
            this.f52810g = new Canvas(this.f52808e);
        }
        this.f52810g.drawColor(0, PorterDuff.Mode.CLEAR);
        this.f52810g.save();
        this.f52810g.translate(-this.f52804a, 0.0f);
        super.dispatchDraw(this.f52810g);
        this.f52810g.restore();
        h(canvas);
        this.f52808e = null;
    }

    private float[] getGradientColorDistribution() {
        float[] fArr = {0.0f, 0.5f - (r1 / 2.0f), (r1 / 2.0f) + 0.5f, 1.0f};
        float f10 = this.f52818o;
        return fArr;
    }

    private Bitmap getMaskBitmap() {
        if (this.f52809f == null) {
            this.f52809f = e(this.f52805b.width(), getHeight());
        }
        return this.f52809f;
    }

    private Animator getShimmerAnimation() {
        ValueAnimator valueAnimator = this.f52807d;
        if (valueAnimator != null) {
            return valueAnimator;
        }
        if (this.f52805b == null) {
            this.f52805b = c();
        }
        int width = getWidth();
        int i9 = getWidth() > this.f52805b.width() ? -width : -this.f52805b.width();
        int width2 = this.f52805b.width();
        int i10 = width - i9;
        ValueAnimator ofInt = this.f52811h ? ValueAnimator.ofInt(i10, 0) : ValueAnimator.ofInt(0, i10);
        this.f52807d = ofInt;
        ofInt.setDuration(this.f52814k);
        this.f52807d.setRepeatCount(-1);
        this.f52807d.addUpdateListener(new b(i9, width2));
        return this.f52807d;
    }

    private void h(Canvas canvas) {
        f();
        canvas.save();
        canvas.translate(this.f52804a, 0.0f);
        Rect rect = this.f52805b;
        canvas.drawRect(rect.left, 0.0f, rect.width(), this.f52805b.height(), this.f52806c);
        canvas.restore();
    }

    private int i(int i9) {
        if (Build.VERSION.SDK_INT >= 23) {
            return getContext().getColor(i9);
        }
        return getResources().getColor(i9);
    }

    private int j(int i9) {
        return Color.argb(0, Color.red(i9), Color.green(i9), Color.blue(i9));
    }

    private void k() {
        this.f52810g = null;
        Bitmap bitmap = this.f52809f;
        if (bitmap != null) {
            bitmap.recycle();
            this.f52809f = null;
        }
    }

    private void l() {
        if (this.f52812i) {
            m();
            n();
        }
    }

    private void m() {
        ValueAnimator valueAnimator = this.f52807d;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f52807d.removeAllUpdateListeners();
        }
        this.f52807d = null;
        this.f52806c = null;
        this.f52812i = false;
        k();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f52812i && getWidth() > 0 && getHeight() > 0) {
            g(canvas);
        } else {
            super.dispatchDraw(canvas);
        }
    }

    public void n() {
        if (this.f52812i) {
            return;
        }
        if (getWidth() == 0) {
            this.f52819p = new a();
            getViewTreeObserver().addOnPreDrawListener(this.f52819p);
            return;
        }
        getShimmerAnimation().start();
        this.f52812i = true;
    }

    public void o() {
        if (this.f52819p != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f52819p);
        }
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        m();
        super.onDetachedFromWindow();
    }

    public void setAnimationReversed(boolean z10) {
        this.f52811h = z10;
        l();
    }

    public void setGradientCenterColorWidth(float f10) {
        if (f10 > 0.0f && 1.0f > f10) {
            this.f52818o = f10;
            l();
            return;
        }
        throw new IllegalArgumentException(String.format("gradientCenterColorWidth value must be higher than %d and less than %d", (byte) 0, (byte) 1));
    }

    public void setMaskWidth(float f10) {
        if (f10 > 0.0f && 1.0f >= f10) {
            this.f52817n = f10;
            l();
            return;
        }
        throw new IllegalArgumentException(String.format("maskWidth value must be higher than %d and less or equal to %d", (byte) 0, (byte) 1));
    }

    public void setShimmerAngle(int i9) {
        if (i9 >= -45 && 45 >= i9) {
            this.f52816m = i9;
            l();
            return;
        }
        throw new IllegalArgumentException(String.format("shimmerAngle value must be between %d and %d", (byte) -45, (byte) 45));
    }

    public void setShimmerAnimationDuration(int i9) {
        this.f52814k = i9;
        l();
    }

    public void setShimmerColor(int i9) {
        this.f52815l = i9;
        l();
    }

    @Override // android.view.View
    public void setVisibility(int i9) {
        super.setVisibility(i9);
        if (i9 == 0) {
            if (this.f52813j) {
                n();
                return;
            }
            return;
        }
        o();
    }

    public ShimmerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShimmerLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        setWillNotDraw(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.ShimmerLayout, 0, 0);
        try {
            this.f52816m = obtainStyledAttributes.getInteger(R$styleable.ShimmerLayout_shimmer_angle, 20);
            this.f52814k = obtainStyledAttributes.getInteger(R$styleable.ShimmerLayout_shimmer_animation_duration, 1500);
            this.f52815l = obtainStyledAttributes.getColor(R$styleable.ShimmerLayout_shimmer_color, i(R$color.shimmer_color));
            this.f52813j = obtainStyledAttributes.getBoolean(R$styleable.ShimmerLayout_shimmer_auto_start, false);
            this.f52817n = obtainStyledAttributes.getFloat(R$styleable.ShimmerLayout_shimmer_mask_width, 0.5f);
            this.f52818o = obtainStyledAttributes.getFloat(R$styleable.ShimmerLayout_shimmer_gradient_center_color_width, 0.1f);
            this.f52811h = obtainStyledAttributes.getBoolean(R$styleable.ShimmerLayout_shimmer_reverse_animation, false);
            obtainStyledAttributes.recycle();
            setMaskWidth(this.f52817n);
            setGradientCenterColorWidth(this.f52818o);
            setShimmerAngle(this.f52816m);
            if (this.f52813j && getVisibility() == 0) {
                n();
            }
        } catch (Throwable th2) {
            obtainStyledAttributes.recycle();
            throw th2;
        }
    }
}

package com.github.gzuliyujiang.wheelview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.Scroller;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import androidx.core.view.ViewCompat;
import com.github.gzuliyujiang.wheelview.R$attr;
import com.github.gzuliyujiang.wheelview.R$style;
import com.github.gzuliyujiang.wheelview.R$styleable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import k1.a;
import k1.b;
import k1.c;
/* loaded from: classes.dex */
public class WheelView extends View implements Runnable {
    private a A;
    private final Rect B;
    private int B3;
    private final Rect C;
    private int C4;
    private final Rect D;
    private final int D4;
    private final Rect E;
    private final int E4;
    private final Camera F;
    private final int F4;
    private final Matrix G;
    private boolean G4;
    private final Matrix H;
    private boolean H4;
    private int I;
    private final AttributeSet I4;
    private int J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int V1;
    private int V2;
    private int V3;

    /* renamed from: a  reason: collision with root package name */
    protected List<?> f5190a;

    /* renamed from: a1  reason: collision with root package name */
    private int f5191a1;

    /* renamed from: a2  reason: collision with root package name */
    private int f5192a2;

    /* renamed from: b  reason: collision with root package name */
    protected c f5193b;

    /* renamed from: c  reason: collision with root package name */
    protected Object f5194c;

    /* renamed from: d  reason: collision with root package name */
    protected int f5195d;

    /* renamed from: e  reason: collision with root package name */
    protected int f5196e;

    /* renamed from: f  reason: collision with root package name */
    protected int f5197f;

    /* renamed from: g  reason: collision with root package name */
    protected String f5198g;

    /* renamed from: h  reason: collision with root package name */
    protected int f5199h;

    /* renamed from: i  reason: collision with root package name */
    protected int f5200i;

    /* renamed from: j  reason: collision with root package name */
    protected int f5201j;

    /* renamed from: k  reason: collision with root package name */
    protected float f5202k;

    /* renamed from: l  reason: collision with root package name */
    protected int f5203l;

    /* renamed from: m  reason: collision with root package name */
    protected int f5204m;

    /* renamed from: n  reason: collision with root package name */
    protected int f5205n;

    /* renamed from: o  reason: collision with root package name */
    protected int f5206o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f5207p;

    /* renamed from: q  reason: collision with root package name */
    protected boolean f5208q;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f5209r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f5210s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f5211t;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f5212u;

    /* renamed from: v  reason: collision with root package name */
    protected int f5213v;

    /* renamed from: w  reason: collision with root package name */
    private final Handler f5214w;

    /* renamed from: x  reason: collision with root package name */
    private final Paint f5215x;

    /* renamed from: y  reason: collision with root package name */
    private final Scroller f5216y;

    /* renamed from: z  reason: collision with root package name */
    private VelocityTracker f5217z;

    public WheelView(Context context) {
        this(context, null);
    }

    private void A(Context context, AttributeSet attributeSet, int i9, int i10) {
        if (attributeSet == null) {
            this.f5201j = (int) (context.getResources().getDisplayMetrics().scaledDensity * 15.0f);
            this.f5195d = 5;
            this.f5196e = 0;
            this.f5207p = false;
            this.f5198g = "";
            this.f5200i = ViewCompat.MEASURED_STATE_MASK;
            this.f5199h = -7829368;
            this.f5205n = (int) (context.getResources().getDisplayMetrics().density * 20.0f);
            this.f5211t = false;
            this.f5208q = true;
            this.f5203l = -3552823;
            this.f5202k = context.getResources().getDisplayMetrics().density * 1.0f;
            this.f5209r = false;
            this.f5204m = -1;
            this.f5210s = false;
            this.f5212u = false;
            this.f5213v = 90;
            this.f5206o = 0;
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.WheelView, i9, i10);
        G(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    private boolean B(int i9, int i10) {
        return i9 >= 0 && i9 < i10;
    }

    private int C(int i9, int i10, int i11) {
        return i9 == 1073741824 ? i10 : i9 == Integer.MIN_VALUE ? Math.min(i11, i10) : i11;
    }

    private String E(int i9) {
        int itemCount = getItemCount();
        if (this.f5211t) {
            if (itemCount != 0) {
                int i10 = i9 % itemCount;
                if (i10 < 0) {
                    i10 += itemCount;
                }
                return t(i10);
            }
        } else if (B(i9, itemCount)) {
            return t(i9);
        }
        return "";
    }

    private void F() {
        VelocityTracker velocityTracker = this.f5217z;
        if (velocityTracker == null) {
            this.f5217z = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private float H(float f10) {
        return (float) Math.sin(Math.toRadians(f10));
    }

    private void I() {
        int i9 = this.f5206o;
        if (i9 == 1) {
            this.f5215x.setTextAlign(Paint.Align.LEFT);
        } else if (i9 != 2) {
            this.f5215x.setTextAlign(Paint.Align.CENTER);
        } else {
            this.f5215x.setTextAlign(Paint.Align.RIGHT);
        }
    }

    private void J() {
        int i9 = this.f5195d;
        if (i9 >= 2) {
            if (i9 % 2 == 0) {
                this.f5195d = i9 + 1;
            }
            int i10 = this.f5195d + 2;
            this.J = i10;
            this.K = i10 / 2;
            return;
        }
        throw new ArithmeticException("Visible item count can not be less than 2");
    }

    private void b() {
        VelocityTracker velocityTracker = this.f5217z;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f5217z = null;
        }
    }

    private float c(float f10, float f11, float f12) {
        return f10 < f11 ? f11 : Math.min(f10, f12);
    }

    private void d(int i9) {
        if (this.f5210s) {
            int i10 = this.V2;
            this.f5215x.setAlpha(Math.max((int) ((((i10 - i9) * 1.0f) / i10) * 255.0f), 0));
        }
    }

    private void f() {
        if (this.f5209r || this.f5200i != -1) {
            Rect rect = this.E;
            Rect rect2 = this.B;
            int i9 = rect2.left;
            int i10 = this.V1;
            int i11 = this.O;
            rect.set(i9, i10 - i11, rect2.right, i10 + i11);
        }
    }

    private float g(int i9, float f10) {
        int i10 = this.V2;
        int i11 = i9 > i10 ? 1 : i9 < i10 ? -1 : 0;
        float f11 = -(1.0f - f10);
        int i12 = this.f5213v;
        return c(f11 * i12 * i11, -i12, i12);
    }

    private int h(float f10) {
        return (int) (this.P - (Math.cos(Math.toRadians(f10)) * this.P));
    }

    private int i(int i9) {
        int i10;
        if (Math.abs(i9) > this.O) {
            if (this.B3 < 0) {
                i10 = -this.N;
            } else {
                i10 = this.N;
            }
            return i10 - i9;
        }
        return i9 * (-1);
    }

    private void j() {
        int i9 = this.f5206o;
        if (i9 == 1) {
            this.f5192a2 = this.B.left;
        } else if (i9 != 2) {
            this.f5192a2 = this.f5191a1;
        } else {
            this.f5192a2 = this.B.right;
        }
        this.V2 = (int) (this.V1 - ((this.f5215x.ascent() + this.f5215x.descent()) / 2.0f));
    }

    private void k() {
        int i9 = this.f5196e;
        int i10 = this.N;
        int i11 = i9 * i10;
        this.Q = this.f5211t ? Integer.MIN_VALUE : ((-i10) * (getItemCount() - 1)) + i11;
        if (this.f5211t) {
            i11 = Integer.MAX_VALUE;
        }
        this.R = i11;
    }

    private void l() {
        if (this.f5208q) {
            int i9 = (int) (this.f5202k / 2.0f);
            int i10 = this.V1;
            int i11 = this.O;
            int i12 = i10 + i11;
            int i13 = i10 - i11;
            Rect rect = this.C;
            Rect rect2 = this.B;
            rect.set(rect2.left, i12 - i9, rect2.right, i12 + i9);
            Rect rect3 = this.D;
            Rect rect4 = this.B;
            rect3.set(rect4.left, i13 - i9, rect4.right, i13 + i9);
        }
    }

    private int m(int i9) {
        return (((this.B3 * (-1)) / this.N) + this.f5196e) % i9;
    }

    private void n() {
        this.M = 0;
        this.L = 0;
        if (this.f5207p) {
            this.L = (int) this.f5215x.measureText(t(0));
        } else if (!TextUtils.isEmpty(this.f5198g)) {
            this.L = (int) this.f5215x.measureText(this.f5198g);
        } else {
            int itemCount = getItemCount();
            for (int i9 = 0; i9 < itemCount; i9++) {
                this.L = Math.max(this.L, (int) this.f5215x.measureText(t(i9)));
            }
        }
        Paint.FontMetrics fontMetrics = this.f5215x.getFontMetrics();
        this.M = (int) (fontMetrics.bottom - fontMetrics.top);
    }

    private float o(float f10) {
        return (H(f10) / H(this.f5213v)) * this.P;
    }

    private void p(Canvas canvas) {
        int i9 = (this.B3 * (-1)) / this.N;
        int i10 = this.K;
        int i11 = i9 - i10;
        int i12 = this.f5196e + i11;
        int i13 = i10 * (-1);
        while (i12 < this.f5196e + i11 + this.J) {
            this.f5215x.setColor(this.f5199h);
            this.f5215x.setStyle(Paint.Style.FILL);
            int i14 = this.V2;
            int i15 = this.N;
            int i16 = (i13 * i15) + i14 + (this.B3 % i15);
            int abs = Math.abs(i14 - i16);
            int i17 = this.V2;
            int i18 = this.B.top;
            float g10 = g(i16, (((i17 - abs) - i18) * 1.0f) / (i17 - i18));
            float o10 = o(g10);
            if (this.f5212u) {
                int i19 = this.f5191a1;
                int i20 = this.f5206o;
                if (i20 == 1) {
                    i19 = this.B.left;
                } else if (i20 == 2) {
                    i19 = this.B.right;
                }
                float f10 = this.V1 - o10;
                this.F.save();
                this.F.rotateX(g10);
                this.F.getMatrix(this.G);
                this.F.restore();
                float f11 = -i19;
                float f12 = -f10;
                this.G.preTranslate(f11, f12);
                float f13 = i19;
                this.G.postTranslate(f13, f10);
                this.F.save();
                this.F.translate(0.0f, 0.0f, h(g10));
                this.F.getMatrix(this.H);
                this.F.restore();
                this.H.preTranslate(f11, f12);
                this.H.postTranslate(f13, f10);
                this.G.postConcat(this.H);
            }
            d(abs);
            float f14 = this.f5212u ? this.V2 - o10 : i16;
            String E = E(i12);
            if (this.f5215x.measureText(E) - getMeasuredWidth() > 0.0f) {
                E = E.substring(0, E.length() - 3) + "...";
            }
            s(canvas, E, f14);
            i12++;
            i13++;
        }
    }

    private void q(Canvas canvas) {
        if (this.f5209r) {
            this.f5215x.setColor(Color.argb(128, Color.red(this.f5204m), Color.green(this.f5204m), Color.blue(this.f5204m)));
            this.f5215x.setStyle(Paint.Style.FILL);
            canvas.drawRect(this.E, this.f5215x);
        }
    }

    private void r(Canvas canvas) {
        if (this.f5208q) {
            this.f5215x.setColor(this.f5203l);
            this.f5215x.setStyle(Paint.Style.FILL);
            canvas.drawRect(this.C, this.f5215x);
            canvas.drawRect(this.D, this.f5215x);
        }
    }

    private void s(Canvas canvas, String str, float f10) {
        if (this.f5200i == -1) {
            canvas.save();
            canvas.clipRect(this.B);
            if (this.f5212u) {
                canvas.concat(this.G);
            }
            canvas.drawText(str, this.f5192a2, f10, this.f5215x);
            canvas.restore();
            return;
        }
        canvas.save();
        if (this.f5212u) {
            canvas.concat(this.G);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.E);
        } else {
            canvas.clipRect(this.E, Region.Op.DIFFERENCE);
        }
        canvas.drawText(str, this.f5192a2, f10, this.f5215x);
        canvas.restore();
        this.f5215x.setColor(this.f5200i);
        canvas.save();
        if (this.f5212u) {
            canvas.concat(this.G);
        }
        canvas.clipRect(this.E);
        canvas.drawText(str, this.f5192a2, f10, this.f5215x);
        canvas.restore();
    }

    private void w(MotionEvent motionEvent) {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        b();
    }

    private void x(MotionEvent motionEvent) {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        F();
        this.f5217z.addMovement(motionEvent);
        if (!this.f5216y.isFinished()) {
            this.f5216y.abortAnimation();
            this.H4 = true;
        }
        int y10 = (int) motionEvent.getY();
        this.V3 = y10;
        this.C4 = y10;
    }

    private void y(MotionEvent motionEvent) {
        int i9 = i(this.f5216y.getFinalY() % this.N);
        if (Math.abs(this.C4 - motionEvent.getY()) < this.F4 && i9 > 0) {
            this.G4 = true;
            return;
        }
        this.G4 = false;
        VelocityTracker velocityTracker = this.f5217z;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        a aVar = this.A;
        if (aVar != null) {
            aVar.b(this, 1);
        }
        float y10 = motionEvent.getY() - this.V3;
        if (Math.abs(y10) < 1.0f) {
            return;
        }
        this.B3 = (int) (this.B3 + y10);
        this.V3 = (int) motionEvent.getY();
        invalidate();
    }

    private void z(MotionEvent motionEvent) {
        int i9;
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        if (this.G4) {
            return;
        }
        VelocityTracker velocityTracker = this.f5217z;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
            this.f5217z.computeCurrentVelocity(1000, this.E4);
            i9 = (int) this.f5217z.getYVelocity();
        } else {
            i9 = 0;
        }
        this.H4 = false;
        if (Math.abs(i9) > this.D4) {
            this.f5216y.fling(0, this.B3, 0, i9, 0, 0, this.Q, this.R);
            int i10 = i(this.f5216y.getFinalY() % this.N);
            Scroller scroller = this.f5216y;
            scroller.setFinalY(scroller.getFinalY() + i10);
        } else {
            this.f5216y.startScroll(0, this.B3, 0, i(this.B3 % this.N));
        }
        if (!this.f5211t) {
            int finalY = this.f5216y.getFinalY();
            int i11 = this.R;
            if (finalY > i11) {
                this.f5216y.setFinalY(i11);
            } else {
                int finalY2 = this.f5216y.getFinalY();
                int i12 = this.Q;
                if (finalY2 < i12) {
                    this.f5216y.setFinalY(i12);
                }
            }
        }
        this.f5214w.post(this);
        b();
    }

    public void D() {
        this.f5194c = v(0);
        this.f5196e = 0;
        this.f5197f = 0;
        this.B3 = 0;
        I();
        n();
        k();
        requestLayout();
        invalidate();
    }

    protected void G(@NonNull Context context, @NonNull TypedArray typedArray) {
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f5201j = typedArray.getDimensionPixelSize(R$styleable.WheelView_wheel_itemTextSize, (int) (context.getResources().getDisplayMetrics().scaledDensity * 15.0f));
        this.f5195d = typedArray.getInt(R$styleable.WheelView_wheel_visibleItemCount, 5);
        this.f5207p = typedArray.getBoolean(R$styleable.WheelView_wheel_sameWidthEnabled, false);
        this.f5198g = typedArray.getString(R$styleable.WheelView_wheel_maxWidthText);
        this.f5200i = typedArray.getColor(R$styleable.WheelView_wheel_itemTextColorSelected, ViewCompat.MEASURED_STATE_MASK);
        this.f5199h = typedArray.getColor(R$styleable.WheelView_wheel_itemTextColor, -7829368);
        this.f5205n = typedArray.getDimensionPixelSize(R$styleable.WheelView_wheel_itemSpace, (int) (20.0f * f10));
        this.f5211t = typedArray.getBoolean(R$styleable.WheelView_wheel_cyclicEnabled, false);
        this.f5208q = typedArray.getBoolean(R$styleable.WheelView_wheel_indicatorEnabled, true);
        this.f5203l = typedArray.getColor(R$styleable.WheelView_wheel_indicatorColor, -3552823);
        this.f5202k = typedArray.getDimension(R$styleable.WheelView_wheel_indicatorSize, f10 * 1.0f);
        this.f5209r = typedArray.getBoolean(R$styleable.WheelView_wheel_curtainEnabled, false);
        this.f5204m = typedArray.getColor(R$styleable.WheelView_wheel_curtainColor, -1);
        this.f5210s = typedArray.getBoolean(R$styleable.WheelView_wheel_atmosphericEnabled, false);
        this.f5212u = typedArray.getBoolean(R$styleable.WheelView_wheel_curvedEnabled, false);
        this.f5213v = typedArray.getInteger(R$styleable.WheelView_wheel_curvedMaxAngle, 90);
        this.f5206o = typedArray.getInt(R$styleable.WheelView_wheel_itemTextAlign, 0);
    }

    public Object getCurrentItem() {
        return v(this.f5197f);
    }

    public int getCurrentPosition() {
        return this.f5197f;
    }

    @ColorInt
    public int getCurtainColor() {
        return this.f5204m;
    }

    public int getCurvedMaxAngle() {
        return this.f5213v;
    }

    public List<?> getData() {
        return this.f5190a;
    }

    @ColorInt
    public int getIndicatorColor() {
        return this.f5203l;
    }

    @Px
    public float getIndicatorSize() {
        return this.f5202k;
    }

    public int getItemCount() {
        return this.f5190a.size();
    }

    @Px
    public int getItemSpace() {
        return this.f5205n;
    }

    public String getMaxWidthText() {
        return this.f5198g;
    }

    @ColorInt
    public int getSelectedTextColor() {
        return this.f5200i;
    }

    public int getTextAlign() {
        return this.f5206o;
    }

    @ColorInt
    public int getTextColor() {
        return this.f5199h;
    }

    @Px
    public int getTextSize() {
        return this.f5201j;
    }

    public Typeface getTypeface() {
        Paint paint = this.f5215x;
        if (paint != null) {
            return paint.getTypeface();
        }
        return null;
    }

    public int getVisibleItemCount() {
        return this.f5195d;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        a aVar = this.A;
        if (aVar != null) {
            aVar.c(this, this.B3);
        }
        if (this.N - this.K <= 0) {
            return;
        }
        p(canvas);
        q(canvas);
        r(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int mode = View.MeasureSpec.getMode(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i9);
        int size2 = View.MeasureSpec.getSize(i10);
        int i11 = this.L;
        int i12 = this.M;
        int i13 = this.f5195d;
        int i14 = (i12 * i13) + (this.f5205n * (i13 - 1));
        if (this.f5212u) {
            i14 = (int) ((i14 * 2) / 3.141592653589793d);
        }
        setMeasuredDimension(C(mode, size, i11 + getPaddingLeft() + getPaddingRight()), C(mode2, size2, i14 + getPaddingTop() + getPaddingBottom()));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        this.B.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.f5191a1 = this.B.centerX();
        this.V1 = this.B.centerY();
        j();
        this.P = this.B.height() / 2;
        int height = this.B.height() / this.f5195d;
        this.N = height;
        this.O = height / 2;
        k();
        l();
        f();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            int action = motionEvent.getAction();
            if (action == 0) {
                x(motionEvent);
            } else if (action == 1) {
                z(motionEvent);
            } else if (action == 2) {
                y(motionEvent);
            } else if (action == 3) {
                w(motionEvent);
            }
        }
        if (this.G4) {
            performClick();
        }
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    @Override // java.lang.Runnable
    public void run() {
        int itemCount;
        a aVar;
        if (this.N == 0 || (itemCount = getItemCount()) == 0) {
            return;
        }
        if (this.f5216y.isFinished() && !this.H4) {
            int m10 = m(itemCount);
            if (m10 < 0) {
                m10 += itemCount;
            }
            this.f5197f = m10;
            a aVar2 = this.A;
            if (aVar2 != null) {
                aVar2.d(this, m10);
                this.A.b(this, 0);
            }
            postInvalidate();
        } else if (this.f5216y.computeScrollOffset()) {
            a aVar3 = this.A;
            if (aVar3 != null) {
                aVar3.b(this, 2);
            }
            this.B3 = this.f5216y.getCurrY();
            int m11 = m(itemCount);
            int i9 = this.I;
            if (i9 != m11) {
                if (m11 == 0 && i9 == itemCount - 1 && (aVar = this.A) != null) {
                    aVar.a(this);
                }
                this.I = m11;
            }
            postInvalidate();
            this.f5214w.postDelayed(this, 16L);
        }
    }

    public void setAtmosphericEnabled(boolean z10) {
        this.f5210s = z10;
        invalidate();
    }

    public void setCurtainColor(@ColorInt int i9) {
        this.f5204m = i9;
        invalidate();
    }

    public void setCurtainEnabled(boolean z10) {
        this.f5209r = z10;
        f();
        invalidate();
    }

    public void setCurvedEnabled(boolean z10) {
        this.f5212u = z10;
        requestLayout();
        invalidate();
    }

    public void setCurvedMaxAngle(int i9) {
        this.f5213v = i9;
        requestLayout();
        invalidate();
    }

    public void setCyclicEnabled(boolean z10) {
        this.f5211t = z10;
        k();
        invalidate();
    }

    public void setData(List<?> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f5190a = list;
        D();
    }

    public void setDefaultPosition(int i9) {
        int max = Math.max(Math.min(i9, getItemCount() - 1), 0);
        this.f5194c = v(max);
        this.f5196e = max;
        this.f5197f = max;
        this.B3 = 0;
        k();
        requestLayout();
        invalidate();
    }

    public void setDefaultValue(Object obj) {
        if (obj == null) {
            return;
        }
        int i9 = 0;
        for (Object obj2 : this.f5190a) {
            if (obj2.equals(obj) || ((obj2 instanceof b) && ((b) obj2).provideText().equals(obj))) {
                break;
            }
            i9++;
        }
        setDefaultPosition(i9);
    }

    public void setFormatter(c cVar) {
        this.f5193b = cVar;
    }

    public void setIndicatorColor(@ColorInt int i9) {
        this.f5203l = i9;
        invalidate();
    }

    public void setIndicatorEnabled(boolean z10) {
        this.f5208q = z10;
        l();
        invalidate();
    }

    public void setIndicatorSize(@Px float f10) {
        this.f5202k = f10;
        l();
        invalidate();
    }

    public void setItemSpace(@Px int i9) {
        this.f5205n = i9;
        requestLayout();
        invalidate();
    }

    public void setMaxWidthText(String str) {
        Objects.requireNonNull(str, "Maximum width text can not be null!");
        this.f5198g = str;
        n();
        requestLayout();
        invalidate();
    }

    public void setOnWheelChangedListener(a aVar) {
        this.A = aVar;
    }

    public void setSameWidthEnabled(boolean z10) {
        this.f5207p = z10;
        n();
        requestLayout();
        invalidate();
    }

    public void setSelectedTextColor(@ColorInt int i9) {
        this.f5200i = i9;
        f();
        invalidate();
    }

    public void setStyle(@StyleRes int i9) {
        if (this.I4 != null) {
            A(getContext(), this.I4, R$attr.WheelStyle, i9);
            requestLayout();
            invalidate();
            return;
        }
        throw new RuntimeException("Please use " + getClass().getSimpleName() + " in xml");
    }

    public void setTextAlign(int i9) {
        this.f5206o = i9;
        I();
        j();
        invalidate();
    }

    public void setTextColor(@ColorInt int i9) {
        this.f5199h = i9;
        invalidate();
    }

    public void setTextSize(@Px int i9) {
        this.f5201j = i9;
        this.f5215x.setTextSize(i9);
        n();
        requestLayout();
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        Paint paint = this.f5215x;
        if (paint == null || typeface == null) {
            return;
        }
        paint.setTypeface(typeface);
        n();
        requestLayout();
        invalidate();
    }

    public void setVisibleItemCount(int i9) {
        this.f5195d = i9;
        J();
        requestLayout();
    }

    public String t(int i9) {
        Object v10 = v(i9);
        if (v10 instanceof b) {
            return ((b) v10).provideText();
        }
        c cVar = this.f5193b;
        if (cVar != null) {
            return cVar.a(v10);
        }
        return v10.toString();
    }

    protected List<?> u() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("贵州穿青人");
        arrayList.add("大定府羡民");
        arrayList.add("不在五十六个民族之内");
        arrayList.add("已识别待定民族");
        arrayList.add("穿青山魈人马");
        arrayList.add("李裕江");
        return arrayList;
    }

    public Object v(int i9) {
        int i10;
        int size = this.f5190a.size();
        if (size != 0 && (i10 = (i9 + size) % size) >= 0 && i10 <= size - 1) {
            return this.f5190a.get(i10);
        }
        return null;
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.WheelStyle);
    }

    public WheelView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f5190a = new ArrayList();
        this.f5213v = 90;
        this.f5214w = new Handler();
        Paint paint = new Paint(69);
        this.f5215x = paint;
        this.B = new Rect();
        this.C = new Rect();
        this.D = new Rect();
        this.E = new Rect();
        this.F = new Camera();
        this.G = new Matrix();
        this.H = new Matrix();
        this.I4 = attributeSet;
        A(context, attributeSet, i9, R$style.WheelDefault);
        J();
        paint.setTextSize(this.f5201j);
        this.f5216y = new Scroller(context);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.D4 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.E4 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.F4 = viewConfiguration.getScaledTouchSlop();
        if (isInEditMode()) {
            setData(u());
        }
    }
}

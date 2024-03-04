package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.R$styleable;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class RangeSeekBar extends View {
    private float A;
    private int B;
    List<Bitmap> B3;
    private boolean C;
    private k C4;
    private int D;
    private float E;
    private float F;
    private boolean G;
    float H;
    float I;
    float J;
    boolean K;
    Paint L;
    RectF M;
    RectF N;
    Rect O;
    RectF P;
    Rect Q;
    r R;
    r V1;
    Bitmap V2;
    private int V3;

    /* renamed from: a  reason: collision with root package name */
    private int f23945a;

    /* renamed from: a1  reason: collision with root package name */
    r f23946a1;

    /* renamed from: a2  reason: collision with root package name */
    Bitmap f23947a2;

    /* renamed from: b  reason: collision with root package name */
    private int f23948b;

    /* renamed from: c  reason: collision with root package name */
    private int f23949c;

    /* renamed from: d  reason: collision with root package name */
    private int f23950d;

    /* renamed from: e  reason: collision with root package name */
    private int f23951e;

    /* renamed from: f  reason: collision with root package name */
    private int f23952f;

    /* renamed from: g  reason: collision with root package name */
    private int f23953g;

    /* renamed from: h  reason: collision with root package name */
    private int f23954h;

    /* renamed from: i  reason: collision with root package name */
    private int f23955i;

    /* renamed from: j  reason: collision with root package name */
    private int f23956j;

    /* renamed from: k  reason: collision with root package name */
    private int f23957k;

    /* renamed from: l  reason: collision with root package name */
    private int f23958l;

    /* renamed from: m  reason: collision with root package name */
    private CharSequence[] f23959m;

    /* renamed from: n  reason: collision with root package name */
    private float f23960n;

    /* renamed from: o  reason: collision with root package name */
    private int f23961o;

    /* renamed from: p  reason: collision with root package name */
    private int f23962p;

    /* renamed from: q  reason: collision with root package name */
    private int f23963q;

    /* renamed from: r  reason: collision with root package name */
    private int f23964r;

    /* renamed from: s  reason: collision with root package name */
    private int f23965s;

    /* renamed from: t  reason: collision with root package name */
    private int f23966t;

    /* renamed from: u  reason: collision with root package name */
    private float f23967u;

    /* renamed from: v  reason: collision with root package name */
    private int f23968v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f23969w;

    /* renamed from: x  reason: collision with root package name */
    private int f23970x;

    /* renamed from: y  reason: collision with root package name */
    private float f23971y;

    /* renamed from: z  reason: collision with root package name */
    private float f23972z;

    public RangeSeekBar(Context context) {
        this(context, null);
    }

    private void b(boolean z10) {
        r rVar;
        if (z10 && (rVar = this.V1) != null) {
            r rVar2 = this.R;
            boolean z11 = rVar == rVar2;
            rVar2.J(z11);
            if (this.f23951e == 2) {
                this.f23946a1.J(!z11);
                return;
            }
            return;
        }
        this.R.J(false);
        if (this.f23951e == 2) {
            this.f23946a1.J(false);
        }
    }

    private void e(AttributeSet attributeSet) {
        try {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.RangeSeekBar);
            this.f23951e = obtainStyledAttributes.getInt(18, 2);
            this.E = obtainStyledAttributes.getFloat(16, 0.0f);
            this.F = obtainStyledAttributes.getFloat(15, 100.0f);
            this.f23967u = obtainStyledAttributes.getFloat(17, 0.0f);
            this.f23968v = obtainStyledAttributes.getInt(0, 0);
            this.f23961o = obtainStyledAttributes.getColor(19, -11806366);
            this.f23960n = (int) obtainStyledAttributes.getDimension(24, -1.0f);
            this.f23962p = obtainStyledAttributes.getColor(20, -2631721);
            this.f23963q = obtainStyledAttributes.getResourceId(21, 0);
            this.f23964r = obtainStyledAttributes.getResourceId(22, 0);
            this.f23965s = (int) obtainStyledAttributes.getDimension(23, t.b(getContext(), 2.0f));
            this.f23952f = obtainStyledAttributes.getInt(40, 0);
            this.f23955i = obtainStyledAttributes.getInt(37, 1);
            this.f23956j = obtainStyledAttributes.getInt(39, 0);
            this.f23959m = obtainStyledAttributes.getTextArray(42);
            this.f23953g = (int) obtainStyledAttributes.getDimension(44, t.b(getContext(), 7.0f));
            this.f23954h = (int) obtainStyledAttributes.getDimension(45, t.b(getContext(), 12.0f));
            this.f23957k = obtainStyledAttributes.getColor(43, this.f23962p);
            this.f23958l = obtainStyledAttributes.getColor(43, this.f23961o);
            this.B = obtainStyledAttributes.getInt(31, 0);
            this.f23970x = obtainStyledAttributes.getColor(26, -6447715);
            this.A = obtainStyledAttributes.getDimension(29, 0.0f);
            this.f23971y = obtainStyledAttributes.getDimension(30, 0.0f);
            this.f23972z = obtainStyledAttributes.getDimension(28, 0.0f);
            this.D = obtainStyledAttributes.getResourceId(27, 0);
            this.C = obtainStyledAttributes.getBoolean(25, true);
            obtainStyledAttributes.recycle();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void f() {
        this.L.setStyle(Paint.Style.FILL);
        this.L.setColor(this.f23962p);
        this.L.setTextSize(this.f23954h);
    }

    private void g() {
        if (this.f23947a2 == null) {
            this.f23947a2 = t.f(getContext(), this.f23966t, this.f23965s, this.f23963q);
        }
        if (this.V2 == null) {
            this.V2 = t.f(getContext(), this.f23966t, this.f23965s, this.f23964r);
        }
    }

    private void h(AttributeSet attributeSet) {
        this.R = new r(this, attributeSet, true);
        r rVar = new r(this, attributeSet, false);
        this.f23946a1 = rVar;
        rVar.S(this.f23951e != 1);
    }

    private void i() {
        if (t() && this.D != 0 && this.B3.isEmpty()) {
            Bitmap f10 = t.f(getContext(), (int) this.f23971y, (int) this.f23972z, this.D);
            for (int i9 = 0; i9 <= this.B; i9++) {
                this.B3.add(f10);
            }
        }
    }

    private void o() {
        r rVar = this.V1;
        if (rVar == null || rVar.x() <= 1.0f || !this.K) {
            return;
        }
        this.K = false;
        this.V1.H();
    }

    private void p() {
        r rVar = this.V1;
        if (rVar == null || rVar.x() <= 1.0f || this.K) {
            return;
        }
        this.K = true;
        this.V1.I();
    }

    private boolean t() {
        return this.B >= 1 && this.f23972z > 0.0f && this.f23971y > 0.0f;
    }

    protected float a(float f10) {
        float f11 = 0.0f;
        if (this.V1 == null) {
            return 0.0f;
        }
        float progressLeft = ((f10 - getProgressLeft()) * 1.0f) / this.f23966t;
        if (f10 >= getProgressLeft()) {
            f11 = f10 > ((float) getProgressRight()) ? 1.0f : progressLeft;
        }
        if (this.f23951e == 2) {
            r rVar = this.V1;
            r rVar2 = this.R;
            if (rVar == rVar2) {
                float f12 = this.f23946a1.f24462y;
                float f13 = this.J;
                return f11 > f12 - f13 ? f12 - f13 : f11;
            } else if (rVar == this.f23946a1) {
                float f14 = rVar2.f24462y;
                float f15 = this.J;
                return f11 < f14 + f15 ? f14 + f15 : f11;
            } else {
                return f11;
            }
        }
        return f11;
    }

    protected float c(MotionEvent motionEvent) {
        return motionEvent.getX();
    }

    protected float d(MotionEvent motionEvent) {
        return motionEvent.getY();
    }

    public int getGravity() {
        return this.f23968v;
    }

    public r getLeftSeekBar() {
        return this.R;
    }

    public float getMaxProgress() {
        return this.F;
    }

    public float getMinInterval() {
        return this.f23967u;
    }

    public float getMinProgress() {
        return this.E;
    }

    public int getProgressBottom() {
        return this.f23948b;
    }

    public int getProgressColor() {
        return this.f23961o;
    }

    public int getProgressDefaultColor() {
        return this.f23962p;
    }

    public int getProgressDefaultDrawableId() {
        return this.f23964r;
    }

    public int getProgressDrawableId() {
        return this.f23963q;
    }

    public int getProgressHeight() {
        return this.f23965s;
    }

    public int getProgressLeft() {
        return this.f23949c;
    }

    public int getProgressPaddingRight() {
        return this.V3;
    }

    public float getProgressRadius() {
        return this.f23960n;
    }

    public int getProgressRight() {
        return this.f23950d;
    }

    public int getProgressTop() {
        return this.f23945a;
    }

    public int getProgressWidth() {
        return this.f23966t;
    }

    public s[] getRangeSeekBarState() {
        s sVar = new s();
        float s10 = this.R.s();
        sVar.f24467b = s10;
        sVar.f24466a = String.valueOf(s10);
        if (t.a(sVar.f24467b, this.E) == 0) {
            sVar.f24468c = true;
        } else if (t.a(sVar.f24467b, this.F) == 0) {
            sVar.f24469d = true;
        }
        s sVar2 = new s();
        if (this.f23951e == 2) {
            float s11 = this.f23946a1.s();
            sVar2.f24467b = s11;
            sVar2.f24466a = String.valueOf(s11);
            if (t.a(this.f23946a1.f24462y, this.E) == 0) {
                sVar2.f24468c = true;
            } else if (t.a(this.f23946a1.f24462y, this.F) == 0) {
                sVar2.f24469d = true;
            }
        }
        return new s[]{sVar, sVar2};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getRawHeight() {
        if (this.f23951e == 1) {
            float t10 = this.R.t();
            if (this.f23956j != 1 || this.f23959m == null) {
                return t10;
            }
            return (t10 - (this.R.w() / 2.0f)) + (this.f23965s / 2.0f) + Math.max((this.R.w() - this.f23965s) / 2.0f, getTickMarkRawHeight());
        }
        float max = Math.max(this.R.t(), this.f23946a1.t());
        if (this.f23956j != 1 || this.f23959m == null) {
            return max;
        }
        float max2 = Math.max(this.R.w(), this.f23946a1.w());
        return (max - (max2 / 2.0f)) + (this.f23965s / 2.0f) + Math.max((max2 - this.f23965s) / 2.0f, getTickMarkRawHeight());
    }

    public r getRightSeekBar() {
        return this.f23946a1;
    }

    public int getSeekBarMode() {
        return this.f23951e;
    }

    public int getSteps() {
        return this.B;
    }

    public List<Bitmap> getStepsBitmaps() {
        return this.B3;
    }

    public int getStepsColor() {
        return this.f23970x;
    }

    public int getStepsDrawableId() {
        return this.D;
    }

    public float getStepsHeight() {
        return this.f23972z;
    }

    public float getStepsRadius() {
        return this.A;
    }

    public float getStepsWidth() {
        return this.f23971y;
    }

    public int getTickMarkGravity() {
        return this.f23955i;
    }

    public int getTickMarkInRangeTextColor() {
        return this.f23958l;
    }

    public int getTickMarkLayoutGravity() {
        return this.f23956j;
    }

    public int getTickMarkMode() {
        return this.f23952f;
    }

    protected int getTickMarkRawHeight() {
        CharSequence[] charSequenceArr = this.f23959m;
        if (charSequenceArr == null || charSequenceArr.length <= 0) {
            return 0;
        }
        return this.f23953g + t.g(String.valueOf(charSequenceArr[0]), this.f23954h).height() + 3;
    }

    public CharSequence[] getTickMarkTextArray() {
        return this.f23959m;
    }

    public int getTickMarkTextColor() {
        return this.f23957k;
    }

    public int getTickMarkTextMargin() {
        return this.f23953g;
    }

    public int getTickMarkTextSize() {
        return this.f23954h;
    }

    protected void j(Canvas canvas, Paint paint) {
        r rVar;
        r rVar2;
        r rVar3;
        r rVar4;
        if (t.i(this.V2)) {
            canvas.drawBitmap(this.V2, (Rect) null, this.M, paint);
        } else {
            paint.setColor(this.f23962p);
            RectF rectF = this.M;
            float f10 = this.f23960n;
            canvas.drawRoundRect(rectF, f10, f10, paint);
        }
        if (this.f23951e == 2) {
            this.N.top = getProgressTop();
            this.N.left = rVar3.f24458u + (this.R.y() / 2.0f) + (this.f23966t * this.R.f24462y);
            this.N.right = rVar4.f24458u + (this.f23946a1.y() / 2.0f) + (this.f23966t * this.f23946a1.f24462y);
            this.N.bottom = getProgressBottom();
        } else {
            this.N.top = getProgressTop();
            this.N.left = rVar.f24458u + (this.R.y() / 2.0f);
            this.N.right = rVar2.f24458u + (this.R.y() / 2.0f) + (this.f23966t * this.R.f24462y);
            this.N.bottom = getProgressBottom();
        }
        if (t.i(this.f23947a2)) {
            Rect rect = this.O;
            rect.top = 0;
            rect.bottom = this.f23947a2.getHeight();
            int width = this.f23947a2.getWidth();
            if (this.f23951e == 2) {
                Rect rect2 = this.O;
                float f11 = width;
                rect2.left = (int) (this.R.f24462y * f11);
                rect2.right = (int) (f11 * this.f23946a1.f24462y);
            } else {
                Rect rect3 = this.O;
                rect3.left = 0;
                rect3.right = (int) (width * this.R.f24462y);
            }
            canvas.drawBitmap(this.f23947a2, this.O, this.N, (Paint) null);
            return;
        }
        paint.setColor(this.f23961o);
        RectF rectF2 = this.N;
        float f12 = this.f23960n;
        canvas.drawRoundRect(rectF2, f12, f12, paint);
    }

    protected void k(Canvas canvas) {
        if (this.R.o() == 3) {
            this.R.O(true);
        }
        this.R.b(canvas);
        if (this.f23951e == 2) {
            if (this.f23946a1.o() == 3) {
                this.f23946a1.O(true);
            }
            this.f23946a1.b(canvas);
        }
    }

    protected void l(Canvas canvas, Paint paint) {
        if (t()) {
            int progressWidth = getProgressWidth() / this.B;
            float progressHeight = (this.f23972z - getProgressHeight()) / 2.0f;
            for (int i9 = 0; i9 <= this.B; i9++) {
                float progressLeft = (getProgressLeft() + (i9 * progressWidth)) - (this.f23971y / 2.0f);
                this.P.set(progressLeft, getProgressTop() - progressHeight, this.f23971y + progressLeft, getProgressBottom() + progressHeight);
                if (!this.B3.isEmpty() && this.B3.size() > i9) {
                    canvas.drawBitmap(this.B3.get(i9), (Rect) null, this.P, paint);
                } else {
                    paint.setColor(this.f23970x);
                    RectF rectF = this.P;
                    float f10 = this.A;
                    canvas.drawRoundRect(rectF, f10, f10, paint);
                }
            }
        }
    }

    protected void m(Canvas canvas, Paint paint) {
        float progressLeft;
        int progressBottom;
        int progressLeft2;
        CharSequence[] charSequenceArr = this.f23959m;
        if (charSequenceArr == null) {
            return;
        }
        int length = this.f23966t / (charSequenceArr.length - 1);
        int i9 = 0;
        while (true) {
            CharSequence[] charSequenceArr2 = this.f23959m;
            if (i9 >= charSequenceArr2.length) {
                return;
            }
            String charSequence = charSequenceArr2[i9].toString();
            if (!TextUtils.isEmpty(charSequence)) {
                paint.getTextBounds(charSequence, 0, charSequence.length(), this.Q);
                paint.setColor(this.f23957k);
                if (this.f23952f == 1) {
                    int i10 = this.f23955i;
                    if (i10 == 2) {
                        progressLeft2 = (getProgressLeft() + (i9 * length)) - this.Q.width();
                    } else if (i10 == 1) {
                        progressLeft = (getProgressLeft() + (i9 * length)) - (this.Q.width() / 2.0f);
                    } else {
                        progressLeft2 = getProgressLeft() + (i9 * length);
                    }
                    progressLeft = progressLeft2;
                } else {
                    float h10 = t.h(charSequence);
                    s[] rangeSeekBarState = getRangeSeekBarState();
                    if (t.a(h10, rangeSeekBarState[0].f24467b) != -1 && t.a(h10, rangeSeekBarState[1].f24467b) != 1 && this.f23951e == 2) {
                        paint.setColor(this.f23958l);
                    }
                    float f10 = this.E;
                    progressLeft = (getProgressLeft() + ((this.f23966t * (h10 - f10)) / (this.F - f10))) - (this.Q.width() / 2.0f);
                }
                if (this.f23956j == 0) {
                    progressBottom = getProgressTop() - this.f23953g;
                } else {
                    progressBottom = getProgressBottom() + this.f23953g + this.Q.height();
                }
                canvas.drawText(charSequence, progressLeft, progressBottom, paint);
            }
            i9++;
        }
    }

    protected void n(int i9, int i10) {
        int paddingBottom = (i10 - getPaddingBottom()) - getPaddingTop();
        if (i10 <= 0) {
            return;
        }
        int i11 = this.f23968v;
        if (i11 == 0) {
            float max = (this.R.o() == 1 && this.f23946a1.o() == 1) ? 0.0f : Math.max(this.R.n(), this.f23946a1.n());
            float max2 = Math.max(this.R.w(), this.f23946a1.w());
            int i12 = this.f23965s;
            float f10 = max2 - (i12 / 2.0f);
            this.f23945a = (int) (((f10 - i12) / 2.0f) + max);
            if (this.f23959m != null && this.f23956j == 0) {
                this.f23945a = (int) Math.max(getTickMarkRawHeight(), max + ((f10 - this.f23965s) / 2.0f));
            }
            this.f23948b = this.f23945a + this.f23965s;
        } else if (i11 == 1) {
            if (this.f23959m != null && this.f23956j == 1) {
                this.f23948b = paddingBottom - getTickMarkRawHeight();
            } else {
                this.f23948b = (int) ((paddingBottom - (Math.max(this.R.w(), this.f23946a1.w()) / 2.0f)) + (this.f23965s / 2.0f));
            }
            this.f23945a = this.f23948b - this.f23965s;
        } else {
            int i13 = this.f23965s;
            int i14 = (paddingBottom - i13) / 2;
            this.f23945a = i14;
            this.f23948b = i14 + i13;
        }
        int max3 = ((int) Math.max(this.R.y(), this.f23946a1.y())) / 2;
        this.f23949c = getPaddingLeft() + max3;
        int paddingRight = (i9 - max3) - getPaddingRight();
        this.f23950d = paddingRight;
        this.f23966t = paddingRight - this.f23949c;
        this.M.set(getProgressLeft(), getProgressTop(), getProgressRight(), getProgressBottom());
        this.V3 = i9 - this.f23950d;
        if (this.f23960n <= 0.0f) {
            this.f23960n = (int) ((getProgressBottom() - getProgressTop()) * 0.45f);
        }
        g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m(canvas, this.L);
        j(canvas, this.L);
        l(canvas, this.L);
        k(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i9, int i10) {
        float rawHeight;
        int makeMeasureSpec;
        float rawHeight2;
        float max;
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == 1073741824) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY);
        } else if (mode == Integer.MIN_VALUE && (getParent() instanceof ViewGroup) && size == -1) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(((ViewGroup) getParent()).getMeasuredHeight(), Integer.MIN_VALUE);
        } else {
            if (this.f23968v == 2) {
                if (this.f23959m != null && this.f23956j == 1) {
                    rawHeight2 = getRawHeight();
                    max = getTickMarkRawHeight();
                } else {
                    rawHeight2 = getRawHeight();
                    max = Math.max(this.R.w(), this.f23946a1.w()) / 2.0f;
                }
                rawHeight = (rawHeight2 - max) * 2.0f;
            } else {
                rawHeight = getRawHeight();
            }
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) rawHeight, BasicMeasure.EXACTLY);
        }
        super.onMeasure(i9, makeMeasureSpec);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        try {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            s(savedState.minValue, savedState.maxValue, savedState.rangeInterval);
            q(savedState.currSelectedMin, savedState.currSelectedMax);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.minValue = this.E;
        savedState.maxValue = this.F;
        savedState.rangeInterval = this.f23967u;
        s[] rangeSeekBarState = getRangeSeekBarState();
        savedState.currSelectedMin = rangeSeekBarState[0].f24467b;
        savedState.currSelectedMax = rangeSeekBarState[1].f24467b;
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        n(i9, i10);
        s(this.E, this.F, this.f23967u);
        int progressBottom = (getProgressBottom() + getProgressTop()) / 2;
        this.R.G(getProgressLeft(), progressBottom);
        if (this.f23951e == 2) {
            this.f23946a1.G(getProgressLeft(), progressBottom);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.G) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (t() && this.C) {
                        float a10 = a(c(motionEvent));
                        float f10 = 1.0f / this.B;
                        this.V1.T(new BigDecimal(a10 / f10).setScale(0, RoundingMode.HALF_UP).intValue() * f10);
                    }
                    if (this.f23951e == 2) {
                        this.f23946a1.O(false);
                    }
                    this.R.O(false);
                    this.V1.D();
                    o();
                    if (this.C4 != null) {
                        s[] rangeSeekBarState = getRangeSeekBarState();
                        this.C4.c(this, rangeSeekBarState[0].f24467b, rangeSeekBarState[1].f24467b, false);
                    }
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    k kVar = this.C4;
                    if (kVar != null) {
                        kVar.b(this, this.V1 == this.R);
                    }
                    b(false);
                } else if (action == 2) {
                    float c10 = c(motionEvent);
                    if (this.f23951e == 2 && this.R.f24462y == this.f23946a1.f24462y) {
                        this.V1.D();
                        k kVar2 = this.C4;
                        if (kVar2 != null) {
                            kVar2.b(this, this.V1 == this.R);
                        }
                        if (c10 - this.H > 0.0f) {
                            r rVar = this.V1;
                            if (rVar != this.f23946a1) {
                                rVar.O(false);
                                o();
                                this.V1 = this.f23946a1;
                            }
                        } else {
                            r rVar2 = this.V1;
                            if (rVar2 != this.R) {
                                rVar2.O(false);
                                o();
                                this.V1 = this.R;
                            }
                        }
                        k kVar3 = this.C4;
                        if (kVar3 != null) {
                            kVar3.a(this, this.V1 == this.R);
                        }
                    }
                    p();
                    r rVar3 = this.V1;
                    float f11 = rVar3.f24463z;
                    rVar3.f24463z = f11 < 1.0f ? 0.1f + f11 : 1.0f;
                    this.H = c10;
                    rVar3.T(a(c10));
                    this.V1.O(true);
                    if (this.C4 != null) {
                        s[] rangeSeekBarState2 = getRangeSeekBarState();
                        this.C4.c(this, rangeSeekBarState2[0].f24467b, rangeSeekBarState2[1].f24467b, true);
                    }
                    invalidate();
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    b(true);
                } else if (action == 3) {
                    if (this.f23951e == 2) {
                        this.f23946a1.O(false);
                    }
                    r rVar4 = this.V1;
                    if (rVar4 == this.R) {
                        o();
                    } else if (rVar4 == this.f23946a1) {
                        o();
                    }
                    this.R.O(false);
                    if (this.C4 != null) {
                        s[] rangeSeekBarState3 = getRangeSeekBarState();
                        this.C4.c(this, rangeSeekBarState3[0].f24467b, rangeSeekBarState3[1].f24467b, false);
                    }
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    b(false);
                }
                return super.onTouchEvent(motionEvent);
            }
            this.H = c(motionEvent);
            this.I = d(motionEvent);
            if (this.f23951e == 2) {
                if (this.f23946a1.f24462y >= 1.0f && this.R.a(c(motionEvent), d(motionEvent))) {
                    this.V1 = this.R;
                    p();
                } else if (this.f23946a1.a(c(motionEvent), d(motionEvent))) {
                    this.V1 = this.f23946a1;
                    p();
                } else {
                    float progressLeft = ((this.H - getProgressLeft()) * 1.0f) / this.f23966t;
                    if (Math.abs(this.R.f24462y - progressLeft) < Math.abs(this.f23946a1.f24462y - progressLeft)) {
                        this.V1 = this.R;
                    } else {
                        this.V1 = this.f23946a1;
                    }
                    this.V1.T(a(this.H));
                }
            } else {
                this.V1 = this.R;
                p();
            }
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            k kVar4 = this.C4;
            if (kVar4 != null) {
                kVar4.a(this, this.V1 == this.R);
            }
            b(true);
            return true;
        }
        return true;
    }

    public void q(float f10, float f11) {
        float min = Math.min(f10, f11);
        float max = Math.max(min, f11);
        float f12 = this.f23967u;
        if (max - min < f12) {
            min = max - f12;
        }
        float f13 = this.E;
        if (min >= f13) {
            float f14 = this.F;
            if (max <= f14) {
                float f15 = f14 - f13;
                this.R.f24462y = Math.abs(min - f13) / f15;
                if (this.f23951e == 2) {
                    this.f23946a1.f24462y = Math.abs(max - this.E) / f15;
                }
                k kVar = this.C4;
                if (kVar != null) {
                    kVar.c(this, min, max, false);
                }
                invalidate();
                return;
            }
            throw new IllegalArgumentException("setProgress() max > (preset max - offsetValue) . #max:" + max + " #preset max:" + max);
        }
        throw new IllegalArgumentException("setProgress() min < (preset min - offsetValue) . #min:" + min + " #preset min:" + max);
    }

    public void r(float f10, float f11) {
        s(f10, f11, this.f23967u);
    }

    public void s(float f10, float f11, float f12) {
        if (f11 <= f10) {
            throw new IllegalArgumentException("setRange() max must be greater than min ! #max:" + f11 + " #min:" + f10);
        } else if (f12 < 0.0f) {
            throw new IllegalArgumentException("setRange() interval must be greater than zero ! #minInterval:" + f12);
        } else {
            float f13 = f11 - f10;
            if (f12 < f13) {
                this.F = f11;
                this.E = f10;
                this.f23967u = f12;
                float f14 = f12 / f13;
                this.J = f14;
                if (this.f23951e == 2) {
                    r rVar = this.R;
                    float f15 = rVar.f24462y;
                    if (f15 + f14 <= 1.0f) {
                        r rVar2 = this.f23946a1;
                        if (f15 + f14 > rVar2.f24462y) {
                            rVar2.f24462y = f15 + f14;
                        }
                    }
                    float f16 = this.f23946a1.f24462y;
                    if (f16 - f14 >= 0.0f && f16 - f14 < f15) {
                        rVar.f24462y = f16 - f14;
                    }
                }
                invalidate();
                return;
            }
            throw new IllegalArgumentException("setRange() interval must be less than (max - min) ! #minInterval:" + f12 + " #max - min:" + f13);
        }
    }

    public void setEnableThumbOverlap(boolean z10) {
        this.f23969w = z10;
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.G = z10;
    }

    public void setGravity(int i9) {
        this.f23968v = i9;
    }

    public void setIndicatorText(String str) {
        this.R.L(str);
        if (this.f23951e == 2) {
            this.f23946a1.L(str);
        }
    }

    public void setIndicatorTextDecimalFormat(String str) {
        this.R.M(str);
        if (this.f23951e == 2) {
            this.f23946a1.M(str);
        }
    }

    public void setIndicatorTextStringFormat(String str) {
        this.R.N(str);
        if (this.f23951e == 2) {
            this.f23946a1.N(str);
        }
    }

    public void setOnRangeChangedListener(k kVar) {
        this.C4 = kVar;
    }

    public void setProgress(float f10) {
        q(f10, this.F);
    }

    public void setProgressBottom(int i9) {
        this.f23948b = i9;
    }

    public void setProgressColor(@ColorInt int i9) {
        this.f23961o = i9;
    }

    public void setProgressDefaultColor(@ColorInt int i9) {
        this.f23962p = i9;
    }

    public void setProgressDefaultDrawableId(@DrawableRes int i9) {
        this.f23964r = i9;
        this.V2 = null;
        g();
    }

    public void setProgressDrawableId(@DrawableRes int i9) {
        this.f23963q = i9;
        this.f23947a2 = null;
        g();
    }

    public void setProgressHeight(int i9) {
        this.f23965s = i9;
    }

    public void setProgressLeft(int i9) {
        this.f23949c = i9;
    }

    public void setProgressRadius(float f10) {
        this.f23960n = f10;
    }

    public void setProgressRight(int i9) {
        this.f23950d = i9;
    }

    public void setProgressTop(int i9) {
        this.f23945a = i9;
    }

    public void setProgressWidth(int i9) {
        this.f23966t = i9;
    }

    public void setSeekBarMode(int i9) {
        this.f23951e = i9;
        this.f23946a1.S(i9 != 1);
    }

    public void setSteps(int i9) {
        this.B = i9;
    }

    public void setStepsAutoBonding(boolean z10) {
        this.C = z10;
    }

    public void setStepsBitmaps(List<Bitmap> list) {
        if (list != null && !list.isEmpty() && list.size() > this.B) {
            this.B3.clear();
            this.B3.addAll(list);
            return;
        }
        throw new IllegalArgumentException("stepsBitmaps must > steps !");
    }

    public void setStepsColor(@ColorInt int i9) {
        this.f23970x = i9;
    }

    public void setStepsDrawable(List<Integer> list) {
        if (list != null && !list.isEmpty() && list.size() > this.B) {
            if (t()) {
                ArrayList arrayList = new ArrayList();
                for (int i9 = 0; i9 < list.size(); i9++) {
                    arrayList.add(t.f(getContext(), (int) this.f23971y, (int) this.f23972z, list.get(i9).intValue()));
                }
                setStepsBitmaps(arrayList);
                return;
            }
            throw new IllegalArgumentException("stepsWidth must > 0, stepsHeight must > 0,steps must > 0 First!!");
        }
        throw new IllegalArgumentException("stepsDrawableIds must > steps !");
    }

    public void setStepsDrawableId(@DrawableRes int i9) {
        this.B3.clear();
        this.D = i9;
        i();
    }

    public void setStepsHeight(float f10) {
        this.f23972z = f10;
    }

    public void setStepsRadius(float f10) {
        this.A = f10;
    }

    public void setStepsWidth(float f10) {
        this.f23971y = f10;
    }

    public void setTickMarkGravity(int i9) {
        this.f23955i = i9;
    }

    public void setTickMarkInRangeTextColor(@ColorInt int i9) {
        this.f23958l = i9;
    }

    public void setTickMarkLayoutGravity(int i9) {
        this.f23956j = i9;
    }

    public void setTickMarkMode(int i9) {
        this.f23952f = i9;
    }

    public void setTickMarkTextArray(CharSequence[] charSequenceArr) {
        this.f23959m = charSequenceArr;
    }

    public void setTickMarkTextColor(@ColorInt int i9) {
        this.f23957k = i9;
    }

    public void setTickMarkTextMargin(int i9) {
        this.f23953g = i9;
    }

    public void setTickMarkTextSize(int i9) {
        this.f23954h = i9;
    }

    public void setTypeface(Typeface typeface) {
        this.L.setTypeface(typeface);
    }

    public void setUnit(String str) {
        this.R.R(str);
    }

    public RangeSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.G = true;
        this.K = false;
        this.L = new Paint();
        this.M = new RectF();
        this.N = new RectF();
        this.O = new Rect();
        this.P = new RectF();
        this.Q = new Rect();
        this.B3 = new ArrayList();
        e(attributeSet);
        f();
        h(attributeSet);
        i();
    }
}

package com.guochao.faceshow.aaspring.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.utils.ReportController;
import java.text.DecimalFormat;
/* loaded from: classes3.dex */
public class r {
    private boolean A;
    boolean B;
    Bitmap C;
    Bitmap D;
    Bitmap E;
    ValueAnimator F;
    String G;
    RangeSeekBar J;
    String K;
    DecimalFormat P;
    int Q;
    int R;

    /* renamed from: a  reason: collision with root package name */
    private int f24438a;

    /* renamed from: b  reason: collision with root package name */
    private int f24439b;

    /* renamed from: c  reason: collision with root package name */
    private int f24440c;

    /* renamed from: d  reason: collision with root package name */
    private int f24441d;

    /* renamed from: e  reason: collision with root package name */
    private int f24442e;

    /* renamed from: f  reason: collision with root package name */
    private int f24443f;

    /* renamed from: g  reason: collision with root package name */
    private int f24444g;

    /* renamed from: h  reason: collision with root package name */
    private int f24445h;

    /* renamed from: i  reason: collision with root package name */
    private float f24446i;

    /* renamed from: j  reason: collision with root package name */
    private int f24447j;

    /* renamed from: k  reason: collision with root package name */
    private int f24448k;

    /* renamed from: l  reason: collision with root package name */
    private int f24449l;

    /* renamed from: m  reason: collision with root package name */
    private int f24450m;

    /* renamed from: n  reason: collision with root package name */
    private int f24451n;

    /* renamed from: o  reason: collision with root package name */
    private int f24452o;

    /* renamed from: p  reason: collision with root package name */
    private int f24453p;

    /* renamed from: q  reason: collision with root package name */
    private int f24454q;

    /* renamed from: r  reason: collision with root package name */
    private int f24455r;

    /* renamed from: s  reason: collision with root package name */
    private String f24456s;

    /* renamed from: t  reason: collision with root package name */
    float f24457t;

    /* renamed from: u  reason: collision with root package name */
    int f24458u;

    /* renamed from: v  reason: collision with root package name */
    int f24459v;

    /* renamed from: w  reason: collision with root package name */
    int f24460w;

    /* renamed from: x  reason: collision with root package name */
    int f24461x;

    /* renamed from: y  reason: collision with root package name */
    float f24462y;

    /* renamed from: z  reason: collision with root package name */
    float f24463z = 0.0f;
    boolean H = false;
    boolean I = true;
    Path L = new Path();
    Rect M = new Rect();
    Rect N = new Rect();
    Paint O = new Paint(1);

    /* loaded from: classes3.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            r.this.f24463z = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            RangeSeekBar rangeSeekBar = r.this.J;
            if (rangeSeekBar != null) {
                rangeSeekBar.invalidate();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            r rVar = r.this;
            rVar.f24463z = 0.0f;
            RangeSeekBar rangeSeekBar = rVar.J;
            if (rangeSeekBar != null) {
                rangeSeekBar.invalidate();
            }
        }
    }

    public r(RangeSeekBar rangeSeekBar, AttributeSet attributeSet, boolean z10) {
        this.J = rangeSeekBar;
        this.B = z10;
        A(attributeSet);
        B();
        C();
    }

    private void A(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = d().obtainStyledAttributes(attributeSet, R$styleable.RangeSeekBar);
        if (obtainStyledAttributes == null) {
            return;
        }
        this.f24441d = (int) obtainStyledAttributes.getDimension(5, 0.0f);
        this.f24442e = obtainStyledAttributes.getResourceId(3, 0);
        this.f24438a = obtainStyledAttributes.getInt(11, 1);
        this.f24439b = obtainStyledAttributes.getLayoutDimension(4, -1);
        this.f24440c = obtainStyledAttributes.getLayoutDimension(14, -1);
        this.f24444g = (int) obtainStyledAttributes.getDimension(13, t.b(d(), 14.0f));
        this.f24445h = obtainStyledAttributes.getColor(12, -1);
        this.f24447j = obtainStyledAttributes.getColor(2, ContextCompat.getColor(d(), R.color.colorAccent));
        this.f24448k = (int) obtainStyledAttributes.getDimension(7, 0.0f);
        this.f24449l = (int) obtainStyledAttributes.getDimension(8, 0.0f);
        this.f24450m = (int) obtainStyledAttributes.getDimension(9, 0.0f);
        this.f24451n = (int) obtainStyledAttributes.getDimension(6, 0.0f);
        this.f24443f = (int) obtainStyledAttributes.getDimension(1, 0.0f);
        this.f24452o = obtainStyledAttributes.getResourceId(32, R.drawable.rsb_default_thumb);
        this.f24453p = obtainStyledAttributes.getResourceId(34, 0);
        this.f24454q = (int) obtainStyledAttributes.getDimension(36, t.b(d(), 26.0f));
        this.f24455r = (int) obtainStyledAttributes.getDimension(33, t.b(d(), 26.0f));
        this.f24457t = obtainStyledAttributes.getFloat(35, 1.0f);
        this.f24446i = obtainStyledAttributes.getDimension(10, 0.0f);
        obtainStyledAttributes.recycle();
    }

    private void B() {
        K(this.f24442e);
        P(this.f24452o, this.f24454q, this.f24455r);
        Q(this.f24453p, this.f24454q, this.f24455r);
    }

    protected void C() {
        this.Q = this.f24454q;
        this.R = this.f24455r;
        if (this.f24439b == -1) {
            this.f24439b = t.g(ReportController.REPORT_TYPE_ONE_V_ONE, this.f24444g).height() + this.f24450m + this.f24451n;
        }
        if (this.f24443f <= 0) {
            this.f24443f = this.f24454q / 4;
        }
    }

    public void D() {
        ValueAnimator valueAnimator = this.F;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f24463z, 0.0f);
        this.F = ofFloat;
        ofFloat.addUpdateListener(new a());
        this.F.addListener(new b());
        this.F.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E(Canvas canvas, Paint paint, String str) {
        int width;
        int height;
        if (str == null) {
            return;
        }
        paint.setTextSize(this.f24444g);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.f24447j);
        paint.getTextBounds(str, 0, str.length(), this.M);
        int width2 = this.M.width() + this.f24448k + this.f24449l;
        int i9 = this.f24440c;
        if (i9 > width2) {
            width2 = i9;
        }
        int height2 = this.M.height() + this.f24450m + this.f24451n;
        int i10 = this.f24439b;
        if (i10 > height2) {
            height2 = i10;
        }
        Rect rect = this.N;
        int i11 = this.Q;
        int i12 = (int) ((i11 / 2.0f) - (width2 / 2.0f));
        rect.left = i12;
        int i13 = ((this.f24461x - height2) - this.R) - this.f24441d;
        rect.top = i13;
        rect.right = i12 + width2;
        int i14 = i13 + height2;
        rect.bottom = i14;
        if (this.E == null) {
            int i15 = i11 / 2;
            int i16 = this.f24443f;
            int i17 = i14 - i16;
            this.L.reset();
            this.L.moveTo(i15, i14);
            float f10 = i17;
            this.L.lineTo(i15 - i16, f10);
            this.L.lineTo(i16 + i15, f10);
            this.L.close();
            canvas.drawPath(this.L, paint);
            Rect rect2 = this.N;
            int i18 = rect2.bottom;
            int i19 = this.f24443f;
            rect2.bottom = i18 - i19;
            rect2.top -= i19;
        }
        int b10 = t.b(d(), 1.0f);
        int width3 = (((this.N.width() / 2) - ((int) (this.J.getProgressWidth() * this.f24462y))) - this.J.getProgressLeft()) + b10;
        int width4 = (((this.N.width() / 2) - ((int) (this.J.getProgressWidth() * (1.0f - this.f24462y)))) - this.J.getProgressPaddingRight()) + b10;
        if (width3 > 0) {
            Rect rect3 = this.N;
            rect3.left += width3;
            rect3.right += width3;
        } else if (width4 > 0) {
            Rect rect4 = this.N;
            rect4.left -= width4;
            rect4.right -= width4;
        }
        Bitmap bitmap = this.E;
        if (bitmap != null) {
            t.c(canvas, paint, bitmap, this.N);
        } else if (this.f24446i > 0.0f) {
            RectF rectF = new RectF(this.N);
            float f11 = this.f24446i;
            canvas.drawRoundRect(rectF, f11, f11, paint);
        } else {
            canvas.drawRect(this.N, paint);
        }
        int i20 = this.f24448k;
        if (i20 > 0) {
            width = this.N.left + i20;
        } else {
            int i21 = this.f24449l;
            if (i21 > 0) {
                width = (this.N.right - i21) - this.M.width();
            } else {
                width = ((width2 - this.M.width()) / 2) + this.N.left;
            }
        }
        if (this.f24450m > 0) {
            height = this.N.top + this.M.height() + this.f24450m;
        } else if (this.f24451n > 0) {
            height = (this.N.bottom - this.M.height()) - this.f24451n;
        } else {
            height = (this.N.bottom - ((height2 - this.M.height()) / 2)) + 1;
        }
        paint.setColor(this.f24445h);
        if (!TextUtils.isEmpty(this.f24456s)) {
            canvas.drawText(String.format("%s%s", str, this.f24456s), width - 12, height - 5, paint);
        } else if ("51".equals(str)) {
            canvas.drawText("50+", width - 12, height - 5, paint);
        } else {
            canvas.drawText(str, width, height - 5, paint);
        }
    }

    protected void F(Canvas canvas) {
        Bitmap bitmap = this.D;
        if (bitmap != null && !this.H) {
            canvas.drawBitmap(bitmap, 0.0f, this.J.getProgressTop() + ((this.J.getProgressHeight() - this.R) / 2.0f), (Paint) null);
            return;
        }
        Bitmap bitmap2 = this.C;
        if (bitmap2 != null) {
            canvas.drawBitmap(bitmap2, 0.0f, this.J.getProgressTop() + ((this.J.getProgressHeight() - this.R) / 2.0f), (Paint) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void G(int i9, int i10) {
        C();
        B();
        float f10 = i9;
        this.f24458u = (int) (f10 - (y() / 2.0f));
        this.f24459v = (int) (f10 + (y() / 2.0f));
        this.f24460w = i10 - (v() / 2);
        this.f24461x = i10 + (v() / 2);
    }

    public void H() {
        this.Q = z();
        this.R = v();
        int progressBottom = this.J.getProgressBottom();
        int i9 = this.R;
        this.f24460w = progressBottom - (i9 / 2);
        this.f24461x = progressBottom + (i9 / 2);
        P(this.f24452o, this.Q, i9);
    }

    public void I() {
        this.Q = (int) y();
        this.R = (int) w();
        int progressBottom = this.J.getProgressBottom();
        int i9 = this.R;
        this.f24460w = progressBottom - (i9 / 2);
        this.f24461x = progressBottom + (i9 / 2);
        P(this.f24452o, this.Q, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void J(boolean z10) {
        this.H = z10;
    }

    public void K(@DrawableRes int i9) {
        if (i9 != 0) {
            this.f24442e = i9;
            this.E = BitmapFactory.decodeResource(u(), i9);
        }
    }

    public void L(String str) {
        this.G = str;
    }

    public void M(String str) {
        this.P = new DecimalFormat(str);
    }

    public void N(String str) {
        this.K = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void O(boolean z10) {
        int i9 = this.f24438a;
        if (i9 == 0) {
            this.A = z10;
        } else if (i9 == 1) {
            this.A = false;
        } else if (i9 == 2 || i9 == 3) {
            this.A = true;
        }
    }

    public void P(@DrawableRes int i9, int i10, int i11) {
        if (i9 == 0 || u() == null || i10 <= 0 || i11 <= 0) {
            return;
        }
        this.f24452o = i9;
        this.C = t.e(i10, i11, u().getDrawable(i9, null));
    }

    public void Q(@DrawableRes int i9, int i10, int i11) {
        if (i9 == 0 || u() == null) {
            return;
        }
        this.f24453p = i9;
        this.D = t.e(i10, i11, u().getDrawable(i9, null));
    }

    public void R(String str) {
        this.f24456s = str;
    }

    public void S(boolean z10) {
        this.I = z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void T(float f10) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        } else if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        this.f24462y = f10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(float f10, float f11) {
        int progressWidth = (int) (this.J.getProgressWidth() * this.f24462y);
        return f10 > ((float) (this.f24458u + progressWidth)) && f10 < ((float) (this.f24459v + progressWidth)) && f11 > ((float) this.f24460w) && f11 < ((float) this.f24461x);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(Canvas canvas) {
        if (this.I) {
            canvas.save();
            canvas.translate((int) (this.J.getProgressWidth() * this.f24462y), 0.0f);
            canvas.translate(this.f24458u, 0.0f);
            if (this.A) {
                E(canvas, this.O, c(this.G));
            }
            F(canvas);
            canvas.restore();
        }
    }

    protected String c(String str) {
        s[] rangeSeekBarState = this.J.getRangeSeekBarState();
        if (TextUtils.isEmpty(str)) {
            if (this.B) {
                if (this.P != null) {
                    str = String.valueOf((int) rangeSeekBarState[0].f24467b);
                } else {
                    str = rangeSeekBarState[0].f24466a;
                }
            } else if (this.P != null) {
                str = String.valueOf((int) rangeSeekBarState[1].f24467b);
            } else {
                str = rangeSeekBarState[1].f24466a;
            }
        }
        String str2 = this.K;
        return str2 != null ? String.format(str2, str) : str;
    }

    public Context d() {
        return this.J.getContext();
    }

    public int e() {
        return this.f24443f;
    }

    public int f() {
        return this.f24447j;
    }

    public int g() {
        return this.f24439b;
    }

    public int h() {
        return this.f24441d;
    }

    public int i() {
        return this.f24451n;
    }

    public int j() {
        return this.f24448k;
    }

    public int k() {
        return this.f24449l;
    }

    public int l() {
        return this.f24450m;
    }

    public float m() {
        return this.f24446i;
    }

    public int n() {
        int i9;
        int i10 = this.f24439b;
        if (i10 > 0) {
            if (this.E != null) {
                i9 = this.f24441d;
            } else {
                i10 += this.f24443f;
                i9 = this.f24441d;
            }
        } else if (this.E != null) {
            i10 = t.g(ReportController.REPORT_TYPE_ONE_V_ONE, this.f24444g).height() + this.f24450m + this.f24451n;
            i9 = this.f24441d;
        } else {
            i10 = t.g(ReportController.REPORT_TYPE_ONE_V_ONE, this.f24444g).height() + this.f24450m + this.f24451n + this.f24441d;
            i9 = this.f24443f;
        }
        return i10 + i9;
    }

    public int o() {
        return this.f24438a;
    }

    public int p() {
        return this.f24445h;
    }

    public int q() {
        return this.f24444g;
    }

    public int r() {
        return this.f24440c;
    }

    public float s() {
        return this.J.getMinProgress() + ((this.J.getMaxProgress() - this.J.getMinProgress()) * this.f24462y);
    }

    public float t() {
        return g() + e() + h() + w();
    }

    public Resources u() {
        if (d() != null) {
            return d().getResources();
        }
        return null;
    }

    public int v() {
        return this.f24455r;
    }

    public float w() {
        return this.f24455r * this.f24457t;
    }

    public float x() {
        return this.f24457t;
    }

    public float y() {
        return this.f24454q * this.f24457t;
    }

    public int z() {
        return this.f24454q;
    }
}

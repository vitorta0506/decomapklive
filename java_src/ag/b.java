package ag;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
/* loaded from: classes5.dex */
public class b extends d {

    /* renamed from: h  reason: collision with root package name */
    private final Paint f755h;

    /* renamed from: i  reason: collision with root package name */
    private final RectF f756i;

    /* renamed from: j  reason: collision with root package name */
    private final Animator.AnimatorListener f757j;

    /* renamed from: k  reason: collision with root package name */
    private int[] f758k;

    /* renamed from: l  reason: collision with root package name */
    private float[] f759l;

    /* renamed from: m  reason: collision with root package name */
    private float f760m;

    /* renamed from: n  reason: collision with root package name */
    private float f761n;

    /* renamed from: o  reason: collision with root package name */
    private float f762o;

    /* renamed from: p  reason: collision with root package name */
    private float f763p;

    /* renamed from: q  reason: collision with root package name */
    private float f764q;

    /* renamed from: r  reason: collision with root package name */
    private float f765r;

    /* renamed from: s  reason: collision with root package name */
    private float f766s;

    /* renamed from: t  reason: collision with root package name */
    private float f767t;

    /* renamed from: u  reason: collision with root package name */
    private float f768u;

    /* renamed from: v  reason: collision with root package name */
    private static final Interpolator f750v = new LinearInterpolator();

    /* renamed from: w  reason: collision with root package name */
    private static final Interpolator f751w = new ag.a();

    /* renamed from: x  reason: collision with root package name */
    private static final Interpolator f752x = new AccelerateInterpolator();

    /* renamed from: y  reason: collision with root package name */
    private static final Interpolator f753y = new DecelerateInterpolator();

    /* renamed from: z  reason: collision with root package name */
    private static final float[] f754z = {1.0f, 0.875f, 0.625f};
    private static final int[] A = {Color.parseColor("#55ffffff"), Color.parseColor("#b1ffffff"), Color.parseColor("#ffffffff")};

    /* loaded from: classes5.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            b.this.y();
            b bVar = b.this;
            bVar.f764q = bVar.f763p;
            b bVar2 = b.this;
            bVar2.f761n = (bVar2.f761n + 1.0f) % 5.0f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            b.this.f761n = 0.0f;
        }
    }

    public b(Context context) {
        super(context);
        this.f755h = new Paint();
        this.f756i = new RectF();
        a aVar = new a();
        this.f757j = aVar;
        t(context);
        x();
        b(aVar);
    }

    private void t(Context context) {
        this.f767t = e.a(context, 2.5f);
        this.f768u = e.a(context, 12.5f);
        this.f759l = new float[3];
        this.f758k = A;
    }

    private void u(float f10, float f11) {
        float min = (Math.min(f10, f11) / 2.0f) - this.f768u;
        float ceil = (float) Math.ceil(this.f767t / 2.0f);
        if (min < ceil) {
            min = ceil;
        }
        this.f760m = min;
    }

    private void v() {
        this.f765r = 0.0f;
        this.f766s = 0.0f;
        this.f763p = 0.0f;
        this.f764q = 0.0f;
        float[] fArr = this.f759l;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
    }

    private void x() {
        this.f755h.setAntiAlias(true);
        this.f755h.setStrokeWidth(this.f767t);
        this.f755h.setStyle(Paint.Style.STROKE);
        this.f755h.setStrokeCap(Paint.Cap.ROUND);
        u((int) this.f778f, (int) this.f779g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        float f10 = this.f763p;
        this.f765r = f10;
        this.f766s = f10;
    }

    @Override // ag.d
    protected void c(float f10) {
        if (f10 <= 0.5f) {
            float interpolation = this.f766s + (f751w.getInterpolation(f10 / 0.5f) * 288.0f);
            this.f764q = interpolation;
            float f11 = this.f763p - interpolation;
            float abs = Math.abs(f11) / 288.0f;
            float interpolation2 = f753y.getInterpolation(abs);
            Interpolator interpolator = f750v;
            float interpolation3 = interpolation2 - interpolator.getInterpolation(abs);
            float interpolation4 = f752x.getInterpolation(abs) - interpolator.getInterpolation(abs);
            float[] fArr = this.f759l;
            float f12 = -f11;
            float[] fArr2 = f754z;
            fArr[0] = fArr2[0] * f12 * (interpolation3 + 1.0f);
            fArr[1] = fArr2[1] * f12 * 1.0f;
            fArr[2] = f12 * fArr2[2] * (interpolation4 + 1.0f);
        }
        if (f10 > 0.5f) {
            float interpolation5 = this.f765r + (f751w.getInterpolation((f10 - 0.5f) / 0.5f) * 288.0f);
            this.f763p = interpolation5;
            float f13 = interpolation5 - this.f764q;
            float abs2 = Math.abs(f13) / 288.0f;
            float[] fArr3 = f754z;
            if (abs2 > fArr3[1]) {
                float[] fArr4 = this.f759l;
                fArr4[0] = -f13;
                fArr4[1] = fArr3[1] * 288.0f;
                fArr4[2] = fArr3[2] * 288.0f;
            } else if (abs2 > fArr3[2]) {
                float[] fArr5 = this.f759l;
                fArr5[0] = 0.0f;
                fArr5[1] = -f13;
                fArr5[2] = fArr3[2] * 288.0f;
            } else {
                float[] fArr6 = this.f759l;
                fArr6[0] = 0.0f;
                fArr6[1] = 0.0f;
                fArr6[2] = -f13;
            }
        }
        this.f762o = (f10 * 216.0f) + ((this.f761n / 5.0f) * 1080.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ag.d
    public void d(Canvas canvas) {
        int save = canvas.save();
        this.f756i.set(this.f774b);
        RectF rectF = this.f756i;
        float f10 = this.f760m;
        rectF.inset(f10, f10);
        canvas.rotate(this.f762o, this.f756i.centerX(), this.f756i.centerY());
        for (int i9 = 0; i9 < 3; i9++) {
            if (this.f759l[i9] != 0.0f) {
                this.f755h.setColor(this.f758k[i9]);
                canvas.drawArc(this.f756i, this.f763p, this.f759l[i9], false, this.f755h);
            }
        }
        canvas.restoreToCount(save);
    }

    @Override // ag.d
    protected void g() {
        v();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ag.d
    public void h(int i9) {
        this.f755h.setAlpha(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ag.d
    public void k(ColorFilter colorFilter) {
        this.f755h.setColorFilter(colorFilter);
    }

    public void w(int i9, int i10, int i11) {
        this.f758k = new int[]{i9, i10, i11};
    }
}

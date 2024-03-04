package lc;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import androidx.annotation.NonNull;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class a extends Drawable implements Animatable {

    /* renamed from: m  reason: collision with root package name */
    private static final Interpolator f54260m = new LinearInterpolator();

    /* renamed from: n  reason: collision with root package name */
    private static final Interpolator f54261n = new FastOutSlowInInterpolator();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f54262a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<Animation> f54263b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final d f54264c;

    /* renamed from: d  reason: collision with root package name */
    private float f54265d;

    /* renamed from: e  reason: collision with root package name */
    private Resources f54266e;

    /* renamed from: f  reason: collision with root package name */
    private View f54267f;

    /* renamed from: g  reason: collision with root package name */
    private Animation f54268g;

    /* renamed from: h  reason: collision with root package name */
    private float f54269h;

    /* renamed from: i  reason: collision with root package name */
    private double f54270i;

    /* renamed from: j  reason: collision with root package name */
    private double f54271j;

    /* renamed from: k  reason: collision with root package name */
    boolean f54272k;

    /* renamed from: l  reason: collision with root package name */
    private final Drawable.Callback f54273l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lc.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0560a extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f54274a;

        C0560a(d dVar) {
            this.f54274a = dVar;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            a aVar = a.this;
            if (aVar.f54272k) {
                aVar.g(f10, this.f54274a);
                return;
            }
            float i9 = aVar.i(this.f54274a);
            float j10 = this.f54274a.j();
            float l10 = this.f54274a.l();
            float k10 = this.f54274a.k();
            a.this.r(f10, this.f54274a);
            if (f10 <= 0.5f) {
                Interpolator interpolator = a.f54261n;
                this.f54274a.D(l10 + ((0.8f - i9) * interpolator.getInterpolation(f10 / 0.5f)));
            }
            if (f10 > 0.5f) {
                Interpolator interpolator2 = a.f54261n;
                this.f54274a.z(j10 + ((0.8f - i9) * interpolator2.getInterpolation((f10 - 0.5f) / 0.5f)));
            }
            this.f54274a.B(k10 + (0.25f * f10));
            a.this.n((f10 * 216.0f) + ((a.this.f54269h / 5.0f) * 1080.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f54276a;

        b(d dVar) {
            this.f54276a = dVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            this.f54276a.F();
            this.f54276a.n();
            d dVar = this.f54276a;
            dVar.D(dVar.e());
            a aVar = a.this;
            if (aVar.f54272k) {
                aVar.f54272k = false;
                animation.setDuration(1332L);
                this.f54276a.C(false);
                return;
            }
            aVar.f54269h = (aVar.f54269h + 1.0f) % 5.0f;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            a.this.f54269h = 0.0f;
        }
    }

    /* loaded from: classes4.dex */
    class c implements Drawable.Callback {
        c() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            a.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
            a.this.scheduleSelf(runnable, j10);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            a.this.unscheduleSelf(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final RectF f54279a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        private final Paint f54280b;

        /* renamed from: c  reason: collision with root package name */
        private final Paint f54281c;

        /* renamed from: d  reason: collision with root package name */
        private final Drawable.Callback f54282d;

        /* renamed from: e  reason: collision with root package name */
        private float f54283e;

        /* renamed from: f  reason: collision with root package name */
        private float f54284f;

        /* renamed from: g  reason: collision with root package name */
        private float f54285g;

        /* renamed from: h  reason: collision with root package name */
        private float f54286h;

        /* renamed from: i  reason: collision with root package name */
        private float f54287i;

        /* renamed from: j  reason: collision with root package name */
        private int[] f54288j;

        /* renamed from: k  reason: collision with root package name */
        private int f54289k;

        /* renamed from: l  reason: collision with root package name */
        private float f54290l;

        /* renamed from: m  reason: collision with root package name */
        private float f54291m;

        /* renamed from: n  reason: collision with root package name */
        private float f54292n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f54293o;

        /* renamed from: p  reason: collision with root package name */
        private Path f54294p;

        /* renamed from: q  reason: collision with root package name */
        private float f54295q;

        /* renamed from: r  reason: collision with root package name */
        private double f54296r;

        /* renamed from: s  reason: collision with root package name */
        private int f54297s;

        /* renamed from: t  reason: collision with root package name */
        private int f54298t;

        /* renamed from: u  reason: collision with root package name */
        private int f54299u;

        /* renamed from: v  reason: collision with root package name */
        private final Paint f54300v;

        /* renamed from: w  reason: collision with root package name */
        private int f54301w;

        /* renamed from: x  reason: collision with root package name */
        private int f54302x;

        public d(Drawable.Callback callback) {
            Paint paint = new Paint();
            this.f54280b = paint;
            Paint paint2 = new Paint();
            this.f54281c = paint2;
            this.f54283e = 0.0f;
            this.f54284f = 0.0f;
            this.f54285g = 0.0f;
            this.f54286h = 5.0f;
            this.f54287i = 2.5f;
            this.f54300v = new Paint(1);
            this.f54282d = callback;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
        }

        private void b(Canvas canvas, float f10, float f11, Rect rect) {
            if (this.f54293o) {
                Path path = this.f54294p;
                if (path == null) {
                    Path path2 = new Path();
                    this.f54294p = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f12 = (((int) this.f54287i) / 2) * this.f54295q;
                float sin = (float) ((this.f54296r * Math.sin(0.0d)) + rect.exactCenterY());
                this.f54294p.moveTo(0.0f, 0.0f);
                this.f54294p.lineTo(this.f54297s * this.f54295q, 0.0f);
                Path path3 = this.f54294p;
                float f13 = this.f54295q;
                path3.lineTo((this.f54297s * f13) / 2.0f, this.f54298t * f13);
                this.f54294p.offset(((float) ((this.f54296r * Math.cos(0.0d)) + rect.exactCenterX())) - f12, sin);
                this.f54294p.close();
                this.f54281c.setColor(this.f54302x);
                canvas.rotate((f10 + f11) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.f54294p, this.f54281c);
            }
        }

        private int g() {
            return (this.f54289k + 1) % this.f54288j.length;
        }

        private void o() {
            this.f54282d.invalidateDrawable(null);
        }

        public void A(int i9, int i10) {
            float min = Math.min(i9, i10);
            double d10 = this.f54296r;
            this.f54287i = (float) ((d10 <= 0.0d || min < 0.0f) ? Math.ceil(this.f54286h / 2.0f) : (min / 2.0f) - d10);
        }

        public void B(float f10) {
            this.f54285g = f10;
            o();
        }

        public void C(boolean z10) {
            if (this.f54293o != z10) {
                this.f54293o = z10;
                o();
            }
        }

        public void D(float f10) {
            this.f54283e = f10;
            o();
        }

        public void E(float f10) {
            this.f54286h = f10;
            this.f54280b.setStrokeWidth(f10);
            o();
        }

        public void F() {
            this.f54290l = this.f54283e;
            this.f54291m = this.f54284f;
            this.f54292n = this.f54285g;
        }

        public void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f54279a;
            rectF.set(rect);
            float f10 = this.f54287i;
            rectF.inset(f10, f10);
            float f11 = this.f54283e;
            float f12 = this.f54285g;
            float f13 = (f11 + f12) * 360.0f;
            float f14 = ((this.f54284f + f12) * 360.0f) - f13;
            this.f54280b.setColor(this.f54302x);
            canvas.drawArc(rectF, f13, f14, false, this.f54280b);
            b(canvas, f13, f14, rect);
            if (this.f54299u < 255) {
                this.f54300v.setColor(this.f54301w);
                this.f54300v.setAlpha(255 - this.f54299u);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, this.f54300v);
            }
        }

        public int c() {
            return this.f54299u;
        }

        public double d() {
            return this.f54296r;
        }

        public float e() {
            return this.f54284f;
        }

        public int f() {
            return this.f54288j[g()];
        }

        public float h() {
            return this.f54283e;
        }

        public int i() {
            return this.f54288j[this.f54289k];
        }

        public float j() {
            return this.f54291m;
        }

        public float k() {
            return this.f54292n;
        }

        public float l() {
            return this.f54290l;
        }

        public float m() {
            return this.f54286h;
        }

        public void n() {
            x(g());
        }

        public void p() {
            this.f54290l = 0.0f;
            this.f54291m = 0.0f;
            this.f54292n = 0.0f;
            D(0.0f);
            z(0.0f);
            B(0.0f);
        }

        public void q(int i9) {
            this.f54299u = i9;
        }

        public void r(float f10, float f11) {
            this.f54297s = (int) f10;
            this.f54298t = (int) f11;
        }

        public void s(float f10) {
            if (f10 != this.f54295q) {
                this.f54295q = f10;
                o();
            }
        }

        public void t(int i9) {
            this.f54301w = i9;
        }

        public void u(double d10) {
            this.f54296r = d10;
        }

        public void v(int i9) {
            this.f54302x = i9;
        }

        public void w(ColorFilter colorFilter) {
            this.f54280b.setColorFilter(colorFilter);
            o();
        }

        public void x(int i9) {
            this.f54289k = i9;
            this.f54302x = this.f54288j[i9];
        }

        public void y(@NonNull int[] iArr) {
            this.f54288j = iArr;
            x(0);
        }

        public void z(float f10) {
            this.f54284f = f10;
            o();
        }
    }

    public a(Context context, View view) {
        int[] iArr = {-16017921};
        this.f54262a = iArr;
        c cVar = new c();
        this.f54273l = cVar;
        this.f54267f = view;
        this.f54266e = context.getResources();
        d dVar = new d(cVar);
        this.f54264c = dVar;
        dVar.y(iArr);
        s(1);
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(float f10, d dVar) {
        r(f10, dVar);
        dVar.D(dVar.l() + (((dVar.j() - i(dVar)) - dVar.l()) * f10));
        dVar.z(dVar.j());
        dVar.B(dVar.k() + ((((float) (Math.floor(dVar.k() / 0.8f) + 1.0d)) - dVar.k()) * f10));
    }

    private int h(float f10, int i9, int i10) {
        int intValue = Integer.valueOf(i9).intValue();
        int i11 = (intValue >> 24) & 255;
        int i12 = (intValue >> 16) & 255;
        int i13 = (intValue >> 8) & 255;
        int i14 = intValue & 255;
        int intValue2 = Integer.valueOf(i10).intValue();
        return ((i11 + ((int) ((((intValue2 >> 24) & 255) - i11) * f10))) << 24) | ((i12 + ((int) ((((intValue2 >> 16) & 255) - i12) * f10))) << 16) | ((i13 + ((int) ((((intValue2 >> 8) & 255) - i13) * f10))) << 8) | (i14 + ((int) (f10 * ((intValue2 & 255) - i14))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float i(d dVar) {
        return (float) Math.toRadians(dVar.m() / (dVar.d() * 6.283185307179586d));
    }

    private void o(double d10, double d11, double d12, double d13, float f10, float f11) {
        d dVar = this.f54264c;
        float f12 = this.f54266e.getDisplayMetrics().density;
        double d14 = f12;
        this.f54270i = d10 * d14;
        this.f54271j = d11 * d14;
        dVar.E(((float) d13) * f12);
        dVar.u(d12 * d14);
        dVar.x(0);
        dVar.r(f10 * f12, f11 * f12);
        dVar.A((int) this.f54270i, (int) this.f54271j);
    }

    private void q() {
        d dVar = this.f54264c;
        C0560a c0560a = new C0560a(dVar);
        c0560a.setRepeatCount(-1);
        c0560a.setRepeatMode(1);
        c0560a.setInterpolator(f54260m);
        c0560a.setAnimationListener(new b(dVar));
        this.f54268g = c0560a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(float f10, d dVar) {
        if (f10 > 0.75f) {
            dVar.v(h((f10 - 0.75f) / 0.25f, dVar.i(), dVar.f()));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.f54265d, bounds.exactCenterX(), bounds.exactCenterY());
        this.f54264c.a(canvas, bounds);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f54264c.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f54271j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f54270i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        ArrayList<Animation> arrayList = this.f54263b;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            Animation animation = arrayList.get(i9);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public void j(float f10) {
        this.f54264c.s(f10);
    }

    public void k(int i9) {
        this.f54264c.t(i9);
    }

    public void l(int... iArr) {
        this.f54264c.y(iArr);
        this.f54264c.x(0);
    }

    public void m(float f10) {
        this.f54264c.B(f10);
    }

    void n(float f10) {
        this.f54265d = f10;
        invalidateSelf();
    }

    public void p(float f10, float f11) {
        this.f54264c.D(f10);
        this.f54264c.z(f11);
    }

    public void s(int i9) {
        if (i9 == 0) {
            o(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            o(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
        this.f54264c.q(i9);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f54264c.w(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f54268g.reset();
        this.f54264c.F();
        if (this.f54264c.e() != this.f54264c.h()) {
            this.f54272k = true;
            this.f54268g.setDuration(666L);
            this.f54267f.startAnimation(this.f54268g);
            return;
        }
        this.f54264c.x(0);
        this.f54264c.p();
        this.f54268g.setDuration(1332L);
        this.f54267f.startAnimation(this.f54268g);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f54267f.clearAnimation();
        n(0.0f);
        this.f54264c.C(false);
        this.f54264c.x(0);
        this.f54264c.p();
    }
}

package rd;

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
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class a extends Drawable implements Animatable {

    /* renamed from: j  reason: collision with root package name */
    private static final Interpolator f57413j = new LinearInterpolator();

    /* renamed from: k  reason: collision with root package name */
    static final Interpolator f57414k = new FastOutSlowInInterpolator();

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f57415l = {ViewCompat.MEASURED_STATE_MASK};

    /* renamed from: a  reason: collision with root package name */
    private final List<Animation> f57416a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final c f57417b = new c();

    /* renamed from: c  reason: collision with root package name */
    private float f57418c;

    /* renamed from: d  reason: collision with root package name */
    private View f57419d;

    /* renamed from: e  reason: collision with root package name */
    private Animation f57420e;

    /* renamed from: f  reason: collision with root package name */
    float f57421f;

    /* renamed from: g  reason: collision with root package name */
    private float f57422g;

    /* renamed from: h  reason: collision with root package name */
    private float f57423h;

    /* renamed from: i  reason: collision with root package name */
    boolean f57424i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rd.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0633a extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f57425a;

        C0633a(c cVar) {
            this.f57425a = cVar;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            a aVar = a.this;
            if (aVar.f57424i) {
                aVar.a(f10, this.f57425a);
                return;
            }
            float c10 = aVar.c(this.f57425a);
            c cVar = this.f57425a;
            float f11 = cVar.f57440l;
            float f12 = cVar.f57439k;
            float f13 = cVar.f57441m;
            a.this.m(f10, cVar);
            if (f10 <= 0.5f) {
                this.f57425a.f57432d = f12 + ((0.8f - c10) * a.f57414k.getInterpolation(f10 / 0.5f));
            }
            if (f10 > 0.5f) {
                this.f57425a.f57433e = f11 + ((0.8f - c10) * a.f57414k.getInterpolation((f10 - 0.5f) / 0.5f));
            }
            a.this.g(f13 + (0.25f * f10));
            a aVar2 = a.this;
            aVar2.h((f10 * 216.0f) + ((aVar2.f57421f / 5.0f) * 1080.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f57427a;

        b(c cVar) {
            this.f57427a = cVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            this.f57427a.j();
            this.f57427a.f();
            c cVar = this.f57427a;
            cVar.f57432d = cVar.f57433e;
            a aVar = a.this;
            if (aVar.f57424i) {
                aVar.f57424i = false;
                animation.setDuration(1332L);
                a.this.l(false);
                return;
            }
            aVar.f57421f = (aVar.f57421f + 1.0f) % 5.0f;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            a.this.f57421f = 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        final RectF f57429a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        final Paint f57430b;

        /* renamed from: c  reason: collision with root package name */
        final Paint f57431c;

        /* renamed from: d  reason: collision with root package name */
        float f57432d;

        /* renamed from: e  reason: collision with root package name */
        float f57433e;

        /* renamed from: f  reason: collision with root package name */
        float f57434f;

        /* renamed from: g  reason: collision with root package name */
        float f57435g;

        /* renamed from: h  reason: collision with root package name */
        float f57436h;

        /* renamed from: i  reason: collision with root package name */
        int[] f57437i;

        /* renamed from: j  reason: collision with root package name */
        int f57438j;

        /* renamed from: k  reason: collision with root package name */
        float f57439k;

        /* renamed from: l  reason: collision with root package name */
        float f57440l;

        /* renamed from: m  reason: collision with root package name */
        float f57441m;

        /* renamed from: n  reason: collision with root package name */
        boolean f57442n;

        /* renamed from: o  reason: collision with root package name */
        Path f57443o;

        /* renamed from: p  reason: collision with root package name */
        float f57444p;

        /* renamed from: q  reason: collision with root package name */
        double f57445q;

        /* renamed from: r  reason: collision with root package name */
        int f57446r;

        /* renamed from: s  reason: collision with root package name */
        int f57447s;

        /* renamed from: t  reason: collision with root package name */
        int f57448t;

        /* renamed from: u  reason: collision with root package name */
        final Paint f57449u;

        /* renamed from: v  reason: collision with root package name */
        int f57450v;

        /* renamed from: w  reason: collision with root package name */
        int f57451w;

        c() {
            Paint paint = new Paint();
            this.f57430b = paint;
            Paint paint2 = new Paint();
            this.f57431c = paint2;
            this.f57432d = 0.0f;
            this.f57433e = 0.0f;
            this.f57434f = 0.0f;
            this.f57435g = 5.0f;
            this.f57436h = 2.5f;
            this.f57449u = new Paint(1);
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
        }

        private void b(Canvas canvas, float f10, float f11, Rect rect) {
            if (this.f57442n) {
                Path path = this.f57443o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f57443o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f12 = (((int) this.f57436h) / 2) * this.f57444p;
                float sin = (float) ((this.f57445q * Math.sin(0.0d)) + rect.exactCenterY());
                this.f57443o.moveTo(0.0f, 0.0f);
                this.f57443o.lineTo(this.f57446r * this.f57444p, 0.0f);
                Path path3 = this.f57443o;
                float f13 = this.f57444p;
                path3.lineTo((this.f57446r * f13) / 2.0f, this.f57447s * f13);
                this.f57443o.offset(((float) ((this.f57445q * Math.cos(0.0d)) + rect.exactCenterX())) - f12, sin);
                this.f57443o.close();
                this.f57431c.setColor(this.f57451w);
                canvas.rotate((f10 + f11) - 5.0f, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.f57443o, this.f57431c);
            }
        }

        private int d() {
            return (this.f57438j + 1) % this.f57437i.length;
        }

        public void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f57429a;
            rectF.set(rect);
            float f10 = this.f57436h;
            rectF.inset(f10, f10);
            float f11 = this.f57432d;
            float f12 = this.f57434f;
            float f13 = (f11 + f12) * 360.0f;
            float f14 = ((this.f57433e + f12) * 360.0f) - f13;
            if (f14 != 0.0f) {
                this.f57430b.setColor(this.f57451w);
                canvas.drawArc(rectF, f13, f14, false, this.f57430b);
            }
            b(canvas, f13, f14, rect);
            if (this.f57448t < 255) {
                this.f57449u.setColor(this.f57450v);
                this.f57449u.setAlpha(255 - this.f57448t);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, this.f57449u);
            }
        }

        public int c() {
            return this.f57437i[d()];
        }

        public int e() {
            return this.f57437i[this.f57438j];
        }

        public void f() {
            h(d());
        }

        public void g() {
            this.f57439k = 0.0f;
            this.f57440l = 0.0f;
            this.f57441m = 0.0f;
            this.f57432d = 0.0f;
            this.f57433e = 0.0f;
            this.f57434f = 0.0f;
        }

        public void h(int i9) {
            this.f57438j = i9;
            this.f57451w = this.f57437i[i9];
        }

        public void i(int i9, int i10) {
            float min = Math.min(i9, i10);
            double d10 = this.f57445q;
            this.f57436h = (float) ((d10 <= 0.0d || min < 0.0f) ? Math.ceil(this.f57435g / 2.0f) : (min / 2.0f) - d10);
        }

        public void j() {
            this.f57439k = this.f57432d;
            this.f57440l = this.f57433e;
            this.f57441m = this.f57434f;
        }
    }

    public a(View view) {
        this.f57419d = view;
        f(f57415l);
        n(1);
        k();
    }

    private int b(float f10, int i9, int i10) {
        int intValue = Integer.valueOf(i9).intValue();
        int i11 = (intValue >> 24) & 255;
        int i12 = (intValue >> 16) & 255;
        int i13 = (intValue >> 8) & 255;
        int i14 = intValue & 255;
        int intValue2 = Integer.valueOf(i10).intValue();
        return ((i11 + ((int) ((((intValue2 >> 24) & 255) - i11) * f10))) << 24) | ((i12 + ((int) ((((intValue2 >> 16) & 255) - i12) * f10))) << 16) | ((i13 + ((int) ((((intValue2 >> 8) & 255) - i13) * f10))) << 8) | (i14 + ((int) (f10 * ((intValue2 & 255) - i14))));
    }

    private void i(int i9, int i10, float f10, float f11, float f12, float f13) {
        float f14 = Resources.getSystem().getDisplayMetrics().density;
        this.f57422g = i9 * f14;
        this.f57423h = i10 * f14;
        this.f57417b.h(0);
        float f15 = f11 * f14;
        this.f57417b.f57430b.setStrokeWidth(f15);
        c cVar = this.f57417b;
        cVar.f57435g = f15;
        cVar.f57445q = f10 * f14;
        cVar.f57446r = (int) (f12 * f14);
        cVar.f57447s = (int) (f13 * f14);
        cVar.i((int) this.f57422g, (int) this.f57423h);
        invalidateSelf();
    }

    private void k() {
        c cVar = this.f57417b;
        C0633a c0633a = new C0633a(cVar);
        c0633a.setRepeatCount(-1);
        c0633a.setRepeatMode(1);
        c0633a.setInterpolator(f57413j);
        c0633a.setAnimationListener(new b(cVar));
        this.f57420e = c0633a;
    }

    void a(float f10, c cVar) {
        m(f10, cVar);
        float c10 = c(cVar);
        float f11 = cVar.f57439k;
        float f12 = cVar.f57440l;
        j(f11 + (((f12 - c10) - f11) * f10), f12);
        float f13 = cVar.f57441m;
        g(f13 + ((((float) (Math.floor(cVar.f57441m / 0.8f) + 1.0d)) - f13) * f10));
    }

    float c(c cVar) {
        return (float) Math.toRadians(cVar.f57435g / (cVar.f57445q * 6.283185307179586d));
    }

    public void d(float f10) {
        c cVar = this.f57417b;
        if (cVar.f57444p != f10) {
            cVar.f57444p = f10;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.f57418c, bounds.exactCenterX(), bounds.exactCenterY());
        this.f57417b.a(canvas, bounds);
        canvas.restoreToCount(save);
    }

    public void e(@ColorInt int i9) {
        this.f57417b.f57450v = i9;
    }

    public void f(@ColorInt int... iArr) {
        c cVar = this.f57417b;
        cVar.f57437i = iArr;
        cVar.h(0);
    }

    public void g(float f10) {
        this.f57417b.f57434f = f10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f57417b.f57448t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f57423h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f57422g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    void h(float f10) {
        this.f57418c = f10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        List<Animation> list = this.f57416a;
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            Animation animation = list.get(i9);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public void j(float f10, float f11) {
        c cVar = this.f57417b;
        cVar.f57432d = f10;
        cVar.f57433e = f11;
        invalidateSelf();
    }

    public void l(boolean z10) {
        c cVar = this.f57417b;
        if (cVar.f57442n != z10) {
            cVar.f57442n = z10;
            invalidateSelf();
        }
    }

    void m(float f10, c cVar) {
        if (f10 > 0.75f) {
            cVar.f57451w = b((f10 - 0.75f) / 0.25f, cVar.e(), cVar.c());
        }
    }

    public void n(int i9) {
        if (i9 == 0) {
            i(56, 56, 12.5f, 3.0f, 12.0f, 6.0f);
        } else {
            i(40, 40, 8.75f, 2.5f, 10.0f, 5.0f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
        this.f57417b.f57448t = i9;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f57417b.f57430b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f57420e.reset();
        this.f57417b.j();
        c cVar = this.f57417b;
        if (cVar.f57433e != cVar.f57432d) {
            this.f57424i = true;
            this.f57420e.setDuration(666L);
            this.f57419d.startAnimation(this.f57420e);
            return;
        }
        cVar.h(0);
        this.f57417b.g();
        this.f57420e.setDuration(1332L);
        this.f57419d.startAnimation(this.f57420e);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f57419d.clearAnimation();
        this.f57417b.h(0);
        this.f57417b.g();
        l(false);
        h(0.0f);
    }
}

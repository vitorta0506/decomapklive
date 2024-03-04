package n;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class a<T> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final com.airbnb.lottie.d f55175a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final T f55176b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public T f55177c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Interpolator f55178d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Interpolator f55179e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Interpolator f55180f;

    /* renamed from: g  reason: collision with root package name */
    public final float f55181g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public Float f55182h;

    /* renamed from: i  reason: collision with root package name */
    private float f55183i;

    /* renamed from: j  reason: collision with root package name */
    private float f55184j;

    /* renamed from: k  reason: collision with root package name */
    private int f55185k;

    /* renamed from: l  reason: collision with root package name */
    private int f55186l;

    /* renamed from: m  reason: collision with root package name */
    private float f55187m;

    /* renamed from: n  reason: collision with root package name */
    private float f55188n;

    /* renamed from: o  reason: collision with root package name */
    public PointF f55189o;

    /* renamed from: p  reason: collision with root package name */
    public PointF f55190p;

    public a(com.airbnb.lottie.d dVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, float f10, @Nullable Float f11) {
        this.f55183i = -3987645.8f;
        this.f55184j = -3987645.8f;
        this.f55185k = 784923401;
        this.f55186l = 784923401;
        this.f55187m = Float.MIN_VALUE;
        this.f55188n = Float.MIN_VALUE;
        this.f55189o = null;
        this.f55190p = null;
        this.f55175a = dVar;
        this.f55176b = t10;
        this.f55177c = t11;
        this.f55178d = interpolator;
        this.f55179e = null;
        this.f55180f = null;
        this.f55181g = f10;
        this.f55182h = f11;
    }

    public boolean a(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return f10 >= e() && f10 < b();
    }

    public float b() {
        if (this.f55175a == null) {
            return 1.0f;
        }
        if (this.f55188n == Float.MIN_VALUE) {
            if (this.f55182h == null) {
                this.f55188n = 1.0f;
            } else {
                this.f55188n = e() + ((this.f55182h.floatValue() - this.f55181g) / this.f55175a.e());
            }
        }
        return this.f55188n;
    }

    public float c() {
        if (this.f55184j == -3987645.8f) {
            this.f55184j = ((Float) this.f55177c).floatValue();
        }
        return this.f55184j;
    }

    public int d() {
        if (this.f55186l == 784923401) {
            this.f55186l = ((Integer) this.f55177c).intValue();
        }
        return this.f55186l;
    }

    public float e() {
        com.airbnb.lottie.d dVar = this.f55175a;
        if (dVar == null) {
            return 0.0f;
        }
        if (this.f55187m == Float.MIN_VALUE) {
            this.f55187m = (this.f55181g - dVar.p()) / this.f55175a.e();
        }
        return this.f55187m;
    }

    public float f() {
        if (this.f55183i == -3987645.8f) {
            this.f55183i = ((Float) this.f55176b).floatValue();
        }
        return this.f55183i;
    }

    public int g() {
        if (this.f55185k == 784923401) {
            this.f55185k = ((Integer) this.f55176b).intValue();
        }
        return this.f55185k;
    }

    public boolean h() {
        return this.f55178d == null && this.f55179e == null && this.f55180f == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f55176b + ", endValue=" + this.f55177c + ", startFrame=" + this.f55181g + ", endFrame=" + this.f55182h + ", interpolator=" + this.f55178d + '}';
    }

    public a(com.airbnb.lottie.d dVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, float f10, @Nullable Float f11) {
        this.f55183i = -3987645.8f;
        this.f55184j = -3987645.8f;
        this.f55185k = 784923401;
        this.f55186l = 784923401;
        this.f55187m = Float.MIN_VALUE;
        this.f55188n = Float.MIN_VALUE;
        this.f55189o = null;
        this.f55190p = null;
        this.f55175a = dVar;
        this.f55176b = t10;
        this.f55177c = t11;
        this.f55178d = null;
        this.f55179e = interpolator;
        this.f55180f = interpolator2;
        this.f55181g = f10;
        this.f55182h = f11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(com.airbnb.lottie.d dVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, @Nullable Interpolator interpolator3, float f10, @Nullable Float f11) {
        this.f55183i = -3987645.8f;
        this.f55184j = -3987645.8f;
        this.f55185k = 784923401;
        this.f55186l = 784923401;
        this.f55187m = Float.MIN_VALUE;
        this.f55188n = Float.MIN_VALUE;
        this.f55189o = null;
        this.f55190p = null;
        this.f55175a = dVar;
        this.f55176b = t10;
        this.f55177c = t11;
        this.f55178d = interpolator;
        this.f55179e = interpolator2;
        this.f55180f = interpolator3;
        this.f55181g = f10;
        this.f55182h = f11;
    }

    public a(T t10) {
        this.f55183i = -3987645.8f;
        this.f55184j = -3987645.8f;
        this.f55185k = 784923401;
        this.f55186l = 784923401;
        this.f55187m = Float.MIN_VALUE;
        this.f55188n = Float.MIN_VALUE;
        this.f55189o = null;
        this.f55190p = null;
        this.f55175a = null;
        this.f55176b = t10;
        this.f55177c = t10;
        this.f55178d = null;
        this.f55179e = null;
        this.f55180f = null;
        this.f55181g = Float.MIN_VALUE;
        this.f55182h = Float.valueOf(Float.MAX_VALUE);
    }
}

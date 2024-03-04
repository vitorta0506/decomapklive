package m;

import android.view.Choreographer;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* loaded from: classes.dex */
public class e extends a implements Choreographer.FrameCallback {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private com.airbnb.lottie.d f54390j;

    /* renamed from: c  reason: collision with root package name */
    private float f54383c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54384d = false;

    /* renamed from: e  reason: collision with root package name */
    private long f54385e = 0;

    /* renamed from: f  reason: collision with root package name */
    private float f54386f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    private int f54387g = 0;

    /* renamed from: h  reason: collision with root package name */
    private float f54388h = -2.1474836E9f;

    /* renamed from: i  reason: collision with root package name */
    private float f54389i = 2.1474836E9f;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    protected boolean f54391k = false;

    private void C() {
        if (this.f54390j == null) {
            return;
        }
        float f10 = this.f54386f;
        if (f10 < this.f54388h || f10 > this.f54389i) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f54388h), Float.valueOf(this.f54389i), Float.valueOf(this.f54386f)));
        }
    }

    private float k() {
        com.airbnb.lottie.d dVar = this.f54390j;
        if (dVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / dVar.i()) / Math.abs(this.f54383c);
    }

    private boolean o() {
        return n() < 0.0f;
    }

    public void A(int i9) {
        z(i9, (int) this.f54389i);
    }

    public void B(float f10) {
        this.f54383c = f10;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    @MainThread
    public void cancel() {
        a();
        s();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        r();
        if (this.f54390j == null || !isRunning()) {
            return;
        }
        com.airbnb.lottie.c.a("LottieValueAnimator#doFrame");
        long j11 = this.f54385e;
        float k10 = ((float) (j11 != 0 ? j10 - j11 : 0L)) / k();
        float f10 = this.f54386f;
        if (o()) {
            k10 = -k10;
        }
        float f11 = f10 + k10;
        this.f54386f = f11;
        boolean z10 = !g.e(f11, m(), l());
        this.f54386f = g.c(this.f54386f, m(), l());
        this.f54385e = j10;
        f();
        if (z10) {
            if (getRepeatCount() != -1 && this.f54387g >= getRepeatCount()) {
                this.f54386f = this.f54383c < 0.0f ? m() : l();
                s();
                b(o());
            } else {
                d();
                this.f54387g++;
                if (getRepeatMode() == 2) {
                    this.f54384d = !this.f54384d;
                    v();
                } else {
                    this.f54386f = o() ? l() : m();
                }
                this.f54385e = j10;
            }
        }
        C();
        com.airbnb.lottie.c.b("LottieValueAnimator#doFrame");
    }

    public void g() {
        this.f54390j = null;
        this.f54388h = -2.1474836E9f;
        this.f54389i = 2.1474836E9f;
    }

    @Override // android.animation.ValueAnimator
    @FloatRange(from = 0.0d, to = 1.0d)
    public float getAnimatedFraction() {
        float m10;
        float l10;
        float m11;
        if (this.f54390j == null) {
            return 0.0f;
        }
        if (o()) {
            m10 = l() - this.f54386f;
            l10 = l();
            m11 = m();
        } else {
            m10 = this.f54386f - m();
            l10 = l();
            m11 = m();
        }
        return m10 / (l10 - m11);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(i());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        com.airbnb.lottie.d dVar = this.f54390j;
        if (dVar == null) {
            return 0L;
        }
        return dVar.d();
    }

    @MainThread
    public void h() {
        s();
        b(o());
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float i() {
        com.airbnb.lottie.d dVar = this.f54390j;
        if (dVar == null) {
            return 0.0f;
        }
        return (this.f54386f - dVar.p()) / (this.f54390j.f() - this.f54390j.p());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f54391k;
    }

    public float j() {
        return this.f54386f;
    }

    public float l() {
        com.airbnb.lottie.d dVar = this.f54390j;
        if (dVar == null) {
            return 0.0f;
        }
        float f10 = this.f54389i;
        return f10 == 2.1474836E9f ? dVar.f() : f10;
    }

    public float m() {
        com.airbnb.lottie.d dVar = this.f54390j;
        if (dVar == null) {
            return 0.0f;
        }
        float f10 = this.f54388h;
        return f10 == -2.1474836E9f ? dVar.p() : f10;
    }

    public float n() {
        return this.f54383c;
    }

    @MainThread
    public void p() {
        s();
    }

    @MainThread
    public void q() {
        this.f54391k = true;
        e(o());
        x((int) (o() ? l() : m()));
        this.f54385e = 0L;
        this.f54387g = 0;
        r();
    }

    protected void r() {
        if (isRunning()) {
            t(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @MainThread
    protected void s() {
        t(true);
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i9) {
        super.setRepeatMode(i9);
        if (i9 == 2 || !this.f54384d) {
            return;
        }
        this.f54384d = false;
        v();
    }

    @MainThread
    protected void t(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f54391k = false;
        }
    }

    @MainThread
    public void u() {
        this.f54391k = true;
        r();
        this.f54385e = 0L;
        if (o() && j() == m()) {
            this.f54386f = l();
        } else if (o() || j() != l()) {
        } else {
            this.f54386f = m();
        }
    }

    public void v() {
        B(-n());
    }

    public void w(com.airbnb.lottie.d dVar) {
        boolean z10 = this.f54390j == null;
        this.f54390j = dVar;
        if (z10) {
            z((int) Math.max(this.f54388h, dVar.p()), (int) Math.min(this.f54389i, dVar.f()));
        } else {
            z((int) dVar.p(), (int) dVar.f());
        }
        float f10 = this.f54386f;
        this.f54386f = 0.0f;
        x((int) f10);
        f();
    }

    public void x(float f10) {
        if (this.f54386f == f10) {
            return;
        }
        this.f54386f = g.c(f10, m(), l());
        this.f54385e = 0L;
        f();
    }

    public void y(float f10) {
        z(this.f54388h, f10);
    }

    public void z(float f10, float f11) {
        if (f10 <= f11) {
            com.airbnb.lottie.d dVar = this.f54390j;
            float p10 = dVar == null ? -3.4028235E38f : dVar.p();
            com.airbnb.lottie.d dVar2 = this.f54390j;
            float f12 = dVar2 == null ? Float.MAX_VALUE : dVar2.f();
            float c10 = g.c(f10, p10, f12);
            float c11 = g.c(f11, p10, f12);
            if (c10 == this.f54388h && c11 == this.f54389i) {
                return;
            }
            this.f54388h = c10;
            this.f54389i = c11;
            x((int) g.c(this.f54386f, c10, c11));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
    }
}

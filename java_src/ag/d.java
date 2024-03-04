package ag;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private final ValueAnimator.AnimatorUpdateListener f773a = new a();

    /* renamed from: b  reason: collision with root package name */
    protected final Rect f774b = new Rect();

    /* renamed from: c  reason: collision with root package name */
    private Drawable.Callback f775c;

    /* renamed from: d  reason: collision with root package name */
    private ValueAnimator f776d;

    /* renamed from: e  reason: collision with root package name */
    protected long f777e;

    /* renamed from: f  reason: collision with root package name */
    protected float f778f;

    /* renamed from: g  reason: collision with root package name */
    protected float f779g;

    /* loaded from: classes5.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            d.this.c(((Float) valueAnimator.getAnimatedValue()).floatValue());
            d.this.e();
        }
    }

    public d(Context context) {
        float a10 = e.a(context, 56.0f);
        this.f779g = a10;
        this.f778f = a10;
        this.f777e = 1333L;
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f775c.invalidateDrawable(null);
    }

    private void l() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f776d = ofFloat;
        ofFloat.setRepeatCount(-1);
        this.f776d.setRepeatMode(1);
        this.f776d.setDuration(this.f777e);
        this.f776d.setInterpolator(new LinearInterpolator());
        this.f776d.addUpdateListener(this.f773a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(Animator.AnimatorListener animatorListener) {
        this.f776d.addListener(animatorListener);
    }

    protected abstract void c(float f10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void d(Canvas canvas);

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f776d.isRunning();
    }

    protected abstract void g();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void h(int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(Rect rect) {
        this.f774b.set(rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(Drawable.Callback callback) {
        this.f775c = callback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void k(ColorFilter colorFilter);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        g();
        this.f776d.addUpdateListener(this.f773a);
        this.f776d.setRepeatCount(-1);
        this.f776d.setDuration(this.f777e);
        this.f776d.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        this.f776d.removeUpdateListener(this.f773a);
        this.f776d.setRepeatCount(0);
        this.f776d.setDuration(0L);
        this.f776d.end();
    }
}

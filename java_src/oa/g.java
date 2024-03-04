package oa;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
/* loaded from: classes3.dex */
public abstract class g implements oa.b, View.OnTouchListener {

    /* renamed from: b  reason: collision with root package name */
    protected final pa.a f55532b;

    /* renamed from: c  reason: collision with root package name */
    protected final d f55533c;

    /* renamed from: d  reason: collision with root package name */
    protected final C0587g f55534d;

    /* renamed from: e  reason: collision with root package name */
    protected final b f55535e;

    /* renamed from: f  reason: collision with root package name */
    protected c f55536f;

    /* renamed from: i  reason: collision with root package name */
    protected float f55539i;

    /* renamed from: a  reason: collision with root package name */
    protected final f f55531a = new f();

    /* renamed from: g  reason: collision with root package name */
    protected oa.c f55537g = new oa.e();

    /* renamed from: h  reason: collision with root package name */
    protected oa.d f55538h = new oa.f();

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public Property<View, Float> f55540a;

        /* renamed from: b  reason: collision with root package name */
        public float f55541b;

        /* renamed from: c  reason: collision with root package name */
        public float f55542c;

        protected abstract void a(View view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public class b implements c, Animator.AnimatorListener, ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        protected final Interpolator f55543a = new DecelerateInterpolator();

        /* renamed from: b  reason: collision with root package name */
        protected final float f55544b;

        /* renamed from: c  reason: collision with root package name */
        protected final float f55545c;

        /* renamed from: d  reason: collision with root package name */
        protected final a f55546d;

        public b(float f10) {
            this.f55544b = f10;
            this.f55545c = f10 * 2.0f;
            this.f55546d = g.this.b();
        }

        @Override // oa.g.c
        public void a(c cVar) {
            g gVar = g.this;
            gVar.f55537g.a(gVar, cVar.c(), c());
            Animator e10 = e();
            e10.addListener(this);
            e10.start();
        }

        @Override // oa.g.c
        public boolean b(MotionEvent motionEvent) {
            return true;
        }

        @Override // oa.g.c
        public int c() {
            return 3;
        }

        @Override // oa.g.c
        public boolean d(MotionEvent motionEvent) {
            return true;
        }

        protected Animator e() {
            View view = g.this.f55532b.getView();
            this.f55546d.a(view);
            g gVar = g.this;
            float f10 = gVar.f55539i;
            if (f10 != 0.0f && ((f10 >= 0.0f || !gVar.f55531a.f55555c) && (f10 <= 0.0f || gVar.f55531a.f55555c))) {
                float f11 = (-f10) / this.f55544b;
                float f12 = f11 >= 0.0f ? f11 : 0.0f;
                float f13 = this.f55546d.f55541b + (((-f10) * f10) / this.f55545c);
                ObjectAnimator g10 = g(view, (int) f12, f13);
                ObjectAnimator f14 = f(f13);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playSequentially(g10, f14);
                return animatorSet;
            }
            return f(this.f55546d.f55541b);
        }

        protected ObjectAnimator f(float f10) {
            View view = g.this.f55532b.getView();
            float abs = Math.abs(f10);
            a aVar = this.f55546d;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, aVar.f55540a, g.this.f55531a.f55554b);
            ofFloat.setDuration(Math.max((int) ((abs / aVar.f55542c) * 800.0f), 200));
            ofFloat.setInterpolator(this.f55543a);
            ofFloat.addUpdateListener(this);
            return ofFloat;
        }

        protected ObjectAnimator g(View view, int i9, float f10) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, this.f55546d.f55540a, f10);
            ofFloat.setDuration(i9);
            ofFloat.setInterpolator(this.f55543a);
            ofFloat.addUpdateListener(this);
            return ofFloat;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            g gVar = g.this;
            gVar.e(gVar.f55533c);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            g gVar = g.this;
            gVar.f55538h.a(gVar, 3, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public interface c {
        void a(c cVar);

        boolean b(MotionEvent motionEvent);

        int c();

        boolean d(MotionEvent motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public class d implements c {

        /* renamed from: a  reason: collision with root package name */
        final e f55548a;

        public d() {
            this.f55548a = g.this.c();
        }

        @Override // oa.g.c
        public void a(c cVar) {
            g gVar = g.this;
            gVar.f55537g.a(gVar, cVar.c(), c());
        }

        @Override // oa.g.c
        public boolean b(MotionEvent motionEvent) {
            return false;
        }

        @Override // oa.g.c
        public int c() {
            return 0;
        }

        @Override // oa.g.c
        public boolean d(MotionEvent motionEvent) {
            if (this.f55548a.a(g.this.f55532b.getView(), motionEvent)) {
                if (!(g.this.f55532b.b() && this.f55548a.f55552c) && (!g.this.f55532b.a() || this.f55548a.f55552c)) {
                    return false;
                }
                g.this.f55531a.f55553a = motionEvent.getPointerId(0);
                g gVar = g.this;
                f fVar = gVar.f55531a;
                e eVar = this.f55548a;
                fVar.f55554b = eVar.f55550a;
                fVar.f55555c = eVar.f55552c;
                gVar.e(gVar.f55534d);
                return g.this.f55534d.d(motionEvent);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        public float f55550a;

        /* renamed from: b  reason: collision with root package name */
        public float f55551b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f55552c;

        protected abstract boolean a(View view, MotionEvent motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        protected int f55553a;

        /* renamed from: b  reason: collision with root package name */
        protected float f55554b;

        /* renamed from: c  reason: collision with root package name */
        protected boolean f55555c;

        protected f() {
        }
    }

    /* renamed from: oa.g$g  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    protected class C0587g implements c {

        /* renamed from: a  reason: collision with root package name */
        protected final float f55556a;

        /* renamed from: b  reason: collision with root package name */
        protected final float f55557b;

        /* renamed from: c  reason: collision with root package name */
        final e f55558c;

        /* renamed from: d  reason: collision with root package name */
        int f55559d;

        public C0587g(float f10, float f11) {
            this.f55558c = g.this.c();
            this.f55556a = f10;
            this.f55557b = f11;
        }

        @Override // oa.g.c
        public void a(c cVar) {
            g gVar = g.this;
            this.f55559d = gVar.f55531a.f55555c ? 1 : 2;
            gVar.f55537g.a(gVar, cVar.c(), c());
        }

        @Override // oa.g.c
        public boolean b(MotionEvent motionEvent) {
            g gVar = g.this;
            gVar.e(gVar.f55535e);
            return false;
        }

        @Override // oa.g.c
        public int c() {
            return this.f55559d;
        }

        @Override // oa.g.c
        public boolean d(MotionEvent motionEvent) {
            if (g.this.f55531a.f55553a != motionEvent.getPointerId(0)) {
                g gVar = g.this;
                gVar.e(gVar.f55535e);
                return true;
            }
            View view = g.this.f55532b.getView();
            if (this.f55558c.a(view, motionEvent)) {
                e eVar = this.f55558c;
                float f10 = eVar.f55551b;
                boolean z10 = eVar.f55552c;
                g gVar2 = g.this;
                f fVar = gVar2.f55531a;
                boolean z11 = fVar.f55555c;
                float f11 = f10 / (z10 == z11 ? this.f55556a : this.f55557b);
                float f12 = eVar.f55550a + f11;
                if ((z11 && !z10 && f12 <= fVar.f55554b) || (!z11 && z10 && f12 >= fVar.f55554b)) {
                    gVar2.g(view, fVar.f55554b, motionEvent);
                    g gVar3 = g.this;
                    gVar3.f55538h.a(gVar3, this.f55559d, 0.0f);
                    g gVar4 = g.this;
                    gVar4.e(gVar4.f55533c);
                    return true;
                }
                if (view.getParent() != null) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                }
                long eventTime = motionEvent.getEventTime() - motionEvent.getHistoricalEventTime(0);
                if (eventTime > 0) {
                    g.this.f55539i = f11 / ((float) eventTime);
                }
                g.this.f(view, f12);
                g gVar5 = g.this;
                gVar5.f55538h.a(gVar5, this.f55559d, f12);
                return true;
            }
            return true;
        }
    }

    public g(pa.a aVar, float f10, float f11, float f12) {
        this.f55532b = aVar;
        this.f55535e = new b(f10);
        this.f55534d = new C0587g(f11, f12);
        d dVar = new d();
        this.f55533c = dVar;
        this.f55536f = dVar;
        a();
    }

    protected void a() {
        d().setOnTouchListener(this);
        d().setOverScrollMode(2);
    }

    protected abstract a b();

    protected abstract e c();

    public View d() {
        return this.f55532b.getView();
    }

    protected void e(c cVar) {
        c cVar2 = this.f55536f;
        this.f55536f = cVar;
        cVar.a(cVar2);
    }

    protected abstract void f(View view, float f10);

    protected abstract void g(View view, float f10, MotionEvent motionEvent);

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                return this.f55536f.d(motionEvent);
            }
            if (action != 3) {
                return false;
            }
        }
        return this.f55536f.b(motionEvent);
    }
}

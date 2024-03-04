package mc;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private TwinklingRefreshLayout.d f54948a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54950c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54951d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54952e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54953f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54954g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54955h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54956i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54957j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54958k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54959l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f54960m = false;

    /* renamed from: n  reason: collision with root package name */
    private boolean f54961n = false;

    /* renamed from: o  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f54962o = new C0569a();

    /* renamed from: p  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f54963p = new b();

    /* renamed from: q  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f54964q = new c();

    /* renamed from: r  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f54965r = new d();

    /* renamed from: b  reason: collision with root package name */
    private DecelerateInterpolator f54949b = new DecelerateInterpolator(8.0f);

    /* renamed from: mc.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0569a implements ValueAnimator.AnimatorUpdateListener {
        C0569a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (a.this.f54950c && a.this.f54948a.A()) {
                a.this.N(intValue);
            } else {
                a.this.f54948a.t().getLayoutParams().height = intValue;
                a.this.f54948a.t().requestLayout();
                a.this.f54948a.t().setTranslationY(0.0f);
                a.this.f54948a.S(intValue);
            }
            if (a.this.f54948a.E()) {
                return;
            }
            a.this.f54948a.x().setTranslationY(intValue);
            a.this.O(intValue);
        }
    }

    /* loaded from: classes4.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (a.this.f54951d && a.this.f54948a.A()) {
                a.this.M(intValue);
            } else {
                a.this.f54948a.r().getLayoutParams().height = intValue;
                a.this.f54948a.r().requestLayout();
                a.this.f54948a.r().setTranslationY(0.0f);
                a.this.f54948a.T(intValue);
            }
            a.this.f54948a.x().setTranslationY(-intValue);
        }
    }

    /* loaded from: classes4.dex */
    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (a.this.f54948a.G()) {
                if (a.this.f54948a.t().getVisibility() != 0) {
                    a.this.f54948a.t().setVisibility(0);
                }
            } else if (a.this.f54948a.t().getVisibility() != 8) {
                a.this.f54948a.t().setVisibility(8);
            }
            if (a.this.f54950c && a.this.f54948a.A()) {
                a.this.N(intValue);
            } else {
                a.this.f54948a.t().setTranslationY(0.0f);
                a.this.f54948a.t().getLayoutParams().height = intValue;
                a.this.f54948a.t().requestLayout();
                a.this.f54948a.S(intValue);
            }
            a.this.f54948a.x().setTranslationY(intValue);
            a.this.O(intValue);
        }
    }

    /* loaded from: classes4.dex */
    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (a.this.f54948a.F()) {
                if (a.this.f54948a.r().getVisibility() != 0) {
                    a.this.f54948a.r().setVisibility(0);
                }
            } else if (a.this.f54948a.r().getVisibility() != 8) {
                a.this.f54948a.r().setVisibility(8);
            }
            if (a.this.f54951d && a.this.f54948a.A()) {
                a.this.M(intValue);
            } else {
                a.this.f54948a.r().getLayoutParams().height = intValue;
                a.this.f54948a.r().requestLayout();
                a.this.f54948a.r().setTranslationY(0.0f);
                a.this.f54948a.T(intValue);
            }
            a.this.f54948a.x().setTranslationY(-intValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e extends AnimatorListenerAdapter {
        e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f54952e = false;
            if (a.this.f54948a.t().getVisibility() != 0) {
                a.this.f54948a.t().setVisibility(0);
            }
            a.this.f54948a.e0(true);
            if (a.this.f54948a.A()) {
                if (a.this.f54950c) {
                    return;
                }
                a.this.f54948a.f0(true);
                a.this.f54948a.W();
                a.this.f54950c = true;
                return;
            }
            a.this.f54948a.f0(true);
            a.this.f54948a.W();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f54971a;

        f(boolean z10) {
            this.f54971a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f54953f = false;
            a.this.f54948a.e0(false);
            if (this.f54971a && a.this.f54950c && a.this.f54948a.A()) {
                a.this.f54948a.t().getLayoutParams().height = 0;
                a.this.f54948a.t().requestLayout();
                a.this.f54948a.t().setTranslationY(0.0f);
                a.this.f54950c = false;
                a.this.f54948a.f0(false);
                a.this.f54948a.Z();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f54954g = false;
            if (a.this.f54948a.r().getVisibility() != 0) {
                a.this.f54948a.r().setVisibility(0);
            }
            a.this.f54948a.a0(true);
            if (a.this.f54948a.A()) {
                if (a.this.f54951d) {
                    return;
                }
                a.this.f54948a.b0(true);
                a.this.f54948a.Q();
                a.this.f54951d = true;
                return;
            }
            a.this.f54948a.b0(true);
            a.this.f54948a.Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements ValueAnimator.AnimatorUpdateListener {
        h() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int I;
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (!nc.b.g(a.this.f54948a.x(), a.this.f54948a.y()) && (I = a.this.I() - intValue) > 0) {
                if (a.this.f54948a.x() instanceof RecyclerView) {
                    nc.b.j(a.this.f54948a.x(), I);
                } else {
                    nc.b.j(a.this.f54948a.x(), I / 2);
                }
            }
            a.this.f54963p.onAnimationUpdate(valueAnimator);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f54975a;

        i(boolean z10) {
            this.f54975a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f54955h = false;
            a.this.f54948a.a0(false);
            if (this.f54975a && a.this.f54951d && a.this.f54948a.A()) {
                a.this.f54948a.r().getLayoutParams().height = 0;
                a.this.f54948a.r().requestLayout();
                a.this.f54948a.r().setTranslationY(0.0f);
                a.this.f54951d = false;
                a.this.f54948a.Y();
                a.this.f54948a.b0(false);
            }
        }
    }

    /* loaded from: classes4.dex */
    class j extends AnimatorListenerAdapter {
        j() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f54956i = false;
            a.this.f54948a.e0(false);
            if (a.this.f54948a.A()) {
                return;
            }
            a.this.f54948a.f0(false);
            a.this.f54948a.X();
            a.this.f54948a.Z();
        }
    }

    /* loaded from: classes4.dex */
    class k extends AnimatorListenerAdapter {
        k() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f54957j = false;
            a.this.f54948a.a0(false);
            if (a.this.f54948a.A()) {
                return;
            }
            a.this.f54948a.b0(false);
            a.this.f54948a.R();
            a.this.f54948a.Y();
        }
    }

    /* loaded from: classes4.dex */
    class l extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f54979a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f54980b;

        /* renamed from: mc.a$l$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0570a extends AnimatorListenerAdapter {
            C0570a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.f54958k = false;
                a.this.f54959l = false;
            }
        }

        l(int i9, int i10) {
            this.f54979a = i9;
            this.f54980b = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (a.this.f54950c && a.this.f54948a.A() && a.this.f54948a.j0()) {
                a.this.B();
                a.this.f54958k = false;
                a.this.f54959l = false;
                return;
            }
            a aVar = a.this;
            aVar.C(this.f54979a, 0, this.f54980b * 2, aVar.f54964q, new C0570a());
        }
    }

    /* loaded from: classes4.dex */
    class m extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f54983a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f54984b;

        /* renamed from: mc.a$m$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0571a extends AnimatorListenerAdapter {
            C0571a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.f54960m = false;
                a.this.f54961n = false;
            }
        }

        m(int i9, int i10) {
            this.f54983a = i9;
            this.f54984b = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (a.this.f54951d && a.this.f54948a.A() && a.this.f54948a.i0()) {
                a.this.y();
                a.this.f54960m = false;
                a.this.f54961n = false;
                return;
            }
            a aVar = a.this;
            aVar.C(this.f54983a, 0, this.f54984b * 2, aVar.f54965r, new C0571a());
        }
    }

    public a(TwinklingRefreshLayout.d dVar) {
        this.f54948a = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int I() {
        mc.d.a("footer translationY:" + this.f54948a.r().getTranslationY() + "");
        return (int) (this.f54948a.r().getLayoutParams().height - this.f54948a.r().getTranslationY());
    }

    private int J() {
        mc.d.a("header translationY:" + this.f54948a.t().getTranslationY() + ",Visible head height:" + (this.f54948a.t().getLayoutParams().height + this.f54948a.t().getTranslationY()));
        return (int) (this.f54948a.t().getLayoutParams().height + this.f54948a.t().getTranslationY());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(float f10) {
        this.f54948a.r().setTranslationY(this.f54948a.r().getLayoutParams().height - f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(float f10) {
        this.f54948a.t().setTranslationY(f10 - this.f54948a.t().getLayoutParams().height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(int i9) {
        if (this.f54948a.B()) {
            return;
        }
        this.f54948a.q().setTranslationY(i9);
    }

    public void A(int i9) {
        if (this.f54956i) {
            return;
        }
        this.f54956i = true;
        mc.d.a("animHeadHideByVy：vy->" + i9);
        int abs = Math.abs(i9);
        if (abs < 5000) {
            abs = 8000;
        }
        C(J(), 0, Math.abs((J() * 1000) / abs) * 5, this.f54962o, new j());
    }

    public void B() {
        mc.d.a("animHeadToRefresh:");
        this.f54952e = true;
        D(J(), this.f54948a.s(), this.f54962o, new e());
    }

    public void C(int i9, int i10, long j10, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, Animator.AnimatorListener animatorListener) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i9, i10);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.addUpdateListener(animatorUpdateListener);
        ofInt.addListener(animatorListener);
        ofInt.setDuration(j10);
        ofInt.start();
    }

    public void D(int i9, int i10, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, Animator.AnimatorListener animatorListener) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i9, i10);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.addUpdateListener(animatorUpdateListener);
        ofInt.addListener(animatorListener);
        ofInt.setDuration((int) (Math.abs(i9 - i10) * 1.0f));
        ofInt.start();
    }

    public void E(float f10, int i9) {
        mc.d.a("animOverScrollBottom：vy->" + f10 + ",computeTimes->" + i9);
        if (this.f54961n) {
            return;
        }
        this.f54948a.g0();
        int abs = (int) Math.abs((f10 / i9) / 2.0f);
        if (abs > this.f54948a.w()) {
            abs = this.f54948a.w();
        }
        int i10 = abs;
        int i11 = i10 <= 50 ? 115 : (int) ((i10 * 0.3d) + 100.0d);
        if (!this.f54951d && this.f54948a.e()) {
            this.f54948a.k0();
            return;
        }
        this.f54961n = true;
        this.f54960m = true;
        C(0, i10, i11, this.f54965r, new m(i10, i11));
    }

    public void F(float f10, int i9) {
        mc.d.a("animOverScrollTop：vy->" + f10 + ",computeTimes->" + i9);
        if (this.f54959l) {
            return;
        }
        this.f54959l = true;
        this.f54958k = true;
        this.f54948a.h0();
        int abs = (int) Math.abs((f10 / i9) / 2.0f);
        if (abs > this.f54948a.w()) {
            abs = this.f54948a.w();
        }
        int i10 = abs;
        int i11 = i10 <= 50 ? 115 : (int) ((i10 * 0.3d) + 100.0d);
        C(J(), i10, i11, this.f54964q, new l(i10, i11));
    }

    public void G() {
        if (!this.f54948a.J() && this.f54948a.j() && J() >= this.f54948a.s() - this.f54948a.y()) {
            B();
        } else {
            z(false);
        }
    }

    public void H() {
        if (!this.f54948a.J() && this.f54948a.h() && I() >= this.f54948a.p() - this.f54948a.y()) {
            y();
        } else {
            w(false);
        }
    }

    public void K(float f10) {
        float interpolation = (this.f54949b.getInterpolation((f10 / this.f54948a.u()) / 2.0f) * f10) / 2.0f;
        if (!this.f54948a.J() && (this.f54948a.h() || this.f54948a.F())) {
            if (this.f54948a.r().getVisibility() != 0) {
                this.f54948a.r().setVisibility(0);
            }
        } else if (this.f54948a.r().getVisibility() != 8) {
            this.f54948a.r().setVisibility(8);
        }
        if (this.f54951d && this.f54948a.A()) {
            this.f54948a.r().setTranslationY(this.f54948a.r().getLayoutParams().height - interpolation);
        } else {
            this.f54948a.r().setTranslationY(0.0f);
            this.f54948a.r().getLayoutParams().height = (int) Math.abs(interpolation);
            this.f54948a.r().requestLayout();
            this.f54948a.V(-interpolation);
        }
        this.f54948a.x().setTranslationY(-interpolation);
    }

    public void L(float f10) {
        float interpolation = (this.f54949b.getInterpolation((f10 / this.f54948a.v()) / 2.0f) * f10) / 2.0f;
        if (!this.f54948a.J() && (this.f54948a.j() || this.f54948a.G())) {
            if (this.f54948a.t().getVisibility() != 0) {
                this.f54948a.t().setVisibility(0);
            }
        } else if (this.f54948a.t().getVisibility() != 8) {
            this.f54948a.t().setVisibility(8);
        }
        if (this.f54950c && this.f54948a.A()) {
            this.f54948a.t().setTranslationY(interpolation - this.f54948a.t().getLayoutParams().height);
        } else {
            this.f54948a.t().setTranslationY(0.0f);
            this.f54948a.t().getLayoutParams().height = (int) Math.abs(interpolation);
            this.f54948a.t().requestLayout();
            this.f54948a.U(interpolation);
        }
        if (this.f54948a.E()) {
            return;
        }
        this.f54948a.x().setTranslationY(interpolation);
        O((int) interpolation);
    }

    public void w(boolean z10) {
        mc.d.a("animBottomBack：finishLoading?->" + z10);
        this.f54955h = true;
        if (z10 && this.f54951d && this.f54948a.A()) {
            this.f54948a.c0(true);
        }
        D(I(), 0, new h(), new i(z10));
    }

    public void x(int i9) {
        mc.d.a("animBottomHideByVy：vy->" + i9);
        if (this.f54957j) {
            return;
        }
        this.f54957j = true;
        int abs = Math.abs(i9);
        if (abs < 5000) {
            abs = 8000;
        }
        C(I(), 0, ((I() * 5) * 1000) / abs, this.f54963p, new k());
    }

    public void y() {
        mc.d.a("animBottomToLoad");
        this.f54954g = true;
        D(I(), this.f54948a.p(), this.f54963p, new g());
    }

    public void z(boolean z10) {
        mc.d.a("animHeadBack：finishRefresh?->" + z10);
        this.f54953f = true;
        if (z10 && this.f54950c && this.f54948a.A()) {
            this.f54948a.d0(true);
        }
        D(J(), 0, this.f54962o, new f(z10));
    }
}

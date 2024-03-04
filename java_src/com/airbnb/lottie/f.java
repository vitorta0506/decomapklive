package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import l.v;
/* loaded from: classes.dex */
public class f extends Drawable implements Drawable.Callback, Animatable {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f3650a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    private com.airbnb.lottie.d f3651b;

    /* renamed from: c  reason: collision with root package name */
    private final m.e f3652c;

    /* renamed from: d  reason: collision with root package name */
    private float f3653d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3654e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f3655f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3656g;

    /* renamed from: h  reason: collision with root package name */
    private final ArrayList<o> f3657h;

    /* renamed from: i  reason: collision with root package name */
    private final ValueAnimator.AnimatorUpdateListener f3658i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private g.b f3659j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f3660k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private com.airbnb.lottie.b f3661l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private g.a f3662m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f3663n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private com.airbnb.lottie.model.layer.b f3664o;

    /* renamed from: p  reason: collision with root package name */
    private int f3665p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f3666q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f3667r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f3668s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f3669t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f3670u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f3671a;

        a(String str) {
            this.f3671a = str;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.Z(this.f3671a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f3673a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f3674b;

        b(int i9, int i10) {
            this.f3673a = i9;
            this.f3674b = i10;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.Y(this.f3673a, this.f3674b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f3676a;

        c(int i9) {
            this.f3676a = i9;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.R(this.f3676a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f3678a;

        d(float f10) {
            this.f3678a = f10;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.f0(this.f3678a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h.d f3680a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f3681b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ n.c f3682c;

        e(h.d dVar, Object obj, n.c cVar) {
            this.f3680a = dVar;
            this.f3681b = obj;
            this.f3682c = cVar;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.d(this.f3680a, this.f3681b, this.f3682c);
        }
    }

    /* renamed from: com.airbnb.lottie.f$f  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0055f implements ValueAnimator.AnimatorUpdateListener {
        C0055f() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (f.this.f3664o != null) {
                f.this.f3664o.K(f.this.f3652c.i());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements o {
        g() {
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.L();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements o {
        h() {
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.N();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f3687a;

        i(int i9) {
            this.f3687a = i9;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.a0(this.f3687a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f3689a;

        j(float f10) {
            this.f3689a = f10;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.c0(this.f3689a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class k implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f3691a;

        k(int i9) {
            this.f3691a = i9;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.V(this.f3691a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class l implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f3693a;

        l(float f10) {
            this.f3693a = f10;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.X(this.f3693a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class m implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f3695a;

        m(String str) {
            this.f3695a = str;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.b0(this.f3695a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class n implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f3697a;

        n(String str) {
            this.f3697a = str;
        }

        @Override // com.airbnb.lottie.f.o
        public void a(com.airbnb.lottie.d dVar) {
            f.this.W(this.f3697a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface o {
        void a(com.airbnb.lottie.d dVar);
    }

    public f() {
        m.e eVar = new m.e();
        this.f3652c = eVar;
        this.f3653d = 1.0f;
        this.f3654e = true;
        this.f3655f = false;
        this.f3656g = false;
        this.f3657h = new ArrayList<>();
        C0055f c0055f = new C0055f();
        this.f3658i = c0055f;
        this.f3665p = 255;
        this.f3669t = true;
        this.f3670u = false;
        eVar.addUpdateListener(c0055f);
    }

    private boolean e() {
        return this.f3654e || this.f3655f;
    }

    private float f(Rect rect) {
        return rect.width() / rect.height();
    }

    private boolean g() {
        com.airbnb.lottie.d dVar = this.f3651b;
        return dVar == null || getBounds().isEmpty() || f(getBounds()) == f(dVar.b());
    }

    private void h() {
        com.airbnb.lottie.model.layer.b bVar = new com.airbnb.lottie.model.layer.b(this, v.a(this.f3651b), this.f3651b.k(), this.f3651b);
        this.f3664o = bVar;
        if (this.f3667r) {
            bVar.I(true);
        }
    }

    private void k(@NonNull Canvas canvas) {
        if (!g()) {
            l(canvas);
        } else {
            m(canvas);
        }
    }

    private void l(Canvas canvas) {
        float f10;
        if (this.f3664o == null) {
            return;
        }
        int i9 = -1;
        Rect bounds = getBounds();
        float width = bounds.width() / this.f3651b.b().width();
        float height = bounds.height() / this.f3651b.b().height();
        if (this.f3669t) {
            float min = Math.min(width, height);
            if (min < 1.0f) {
                f10 = 1.0f / min;
                width /= f10;
                height /= f10;
            } else {
                f10 = 1.0f;
            }
            if (f10 > 1.0f) {
                i9 = canvas.save();
                float width2 = bounds.width() / 2.0f;
                float height2 = bounds.height() / 2.0f;
                float f11 = width2 * min;
                float f12 = min * height2;
                canvas.translate(width2 - f11, height2 - f12);
                canvas.scale(f10, f10, f11, f12);
            }
        }
        this.f3650a.reset();
        this.f3650a.preScale(width, height);
        this.f3664o.g(canvas, this.f3650a, this.f3665p);
        if (i9 > 0) {
            canvas.restoreToCount(i9);
        }
    }

    private void m(Canvas canvas) {
        float f10;
        if (this.f3664o == null) {
            return;
        }
        float f11 = this.f3653d;
        float y10 = y(canvas);
        if (f11 > y10) {
            f10 = this.f3653d / y10;
        } else {
            y10 = f11;
            f10 = 1.0f;
        }
        int i9 = -1;
        if (f10 > 1.0f) {
            i9 = canvas.save();
            float width = this.f3651b.b().width() / 2.0f;
            float height = this.f3651b.b().height() / 2.0f;
            float f12 = width * y10;
            float f13 = height * y10;
            canvas.translate((E() * width) - f12, (E() * height) - f13);
            canvas.scale(f10, f10, f12, f13);
        }
        this.f3650a.reset();
        this.f3650a.preScale(y10, y10);
        this.f3664o.g(canvas, this.f3650a, this.f3665p);
        if (i9 > 0) {
            canvas.restoreToCount(i9);
        }
    }

    @Nullable
    private Context r() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private g.a s() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f3662m == null) {
            this.f3662m = new g.a(getCallback(), null);
        }
        return this.f3662m;
    }

    private g.b v() {
        if (getCallback() == null) {
            return null;
        }
        g.b bVar = this.f3659j;
        if (bVar != null && !bVar.b(r())) {
            this.f3659j = null;
        }
        if (this.f3659j == null) {
            this.f3659j = new g.b(getCallback(), this.f3660k, this.f3661l, this.f3651b.j());
        }
        return this.f3659j;
    }

    private float y(@NonNull Canvas canvas) {
        return Math.min(canvas.getWidth() / this.f3651b.b().width(), canvas.getHeight() / this.f3651b.b().height());
    }

    @Nullable
    public com.airbnb.lottie.n A() {
        com.airbnb.lottie.d dVar = this.f3651b;
        if (dVar != null) {
            return dVar.n();
        }
        return null;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float B() {
        return this.f3652c.i();
    }

    public int C() {
        return this.f3652c.getRepeatCount();
    }

    public int D() {
        return this.f3652c.getRepeatMode();
    }

    public float E() {
        return this.f3653d;
    }

    public float F() {
        return this.f3652c.n();
    }

    @Nullable
    public p G() {
        return null;
    }

    @Nullable
    public Typeface H(String str, String str2) {
        g.a s10 = s();
        if (s10 != null) {
            return s10.b(str, str2);
        }
        return null;
    }

    public boolean I() {
        m.e eVar = this.f3652c;
        if (eVar == null) {
            return false;
        }
        return eVar.isRunning();
    }

    public boolean J() {
        return this.f3668s;
    }

    public void K() {
        this.f3657h.clear();
        this.f3652c.p();
    }

    @MainThread
    public void L() {
        if (this.f3664o == null) {
            this.f3657h.add(new g());
            return;
        }
        if (e() || C() == 0) {
            this.f3652c.q();
        }
        if (e()) {
            return;
        }
        R((int) (F() < 0.0f ? z() : x()));
        this.f3652c.h();
    }

    public List<h.d> M(h.d dVar) {
        if (this.f3664o == null) {
            m.d.c("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f3664o.e(dVar, 0, arrayList, new h.d(new String[0]));
        return arrayList;
    }

    @MainThread
    public void N() {
        if (this.f3664o == null) {
            this.f3657h.add(new h());
            return;
        }
        if (e() || C() == 0) {
            this.f3652c.u();
        }
        if (e()) {
            return;
        }
        R((int) (F() < 0.0f ? z() : x()));
        this.f3652c.h();
    }

    public void O(boolean z10) {
        this.f3668s = z10;
    }

    public boolean P(com.airbnb.lottie.d dVar) {
        if (this.f3651b == dVar) {
            return false;
        }
        this.f3670u = false;
        j();
        this.f3651b = dVar;
        h();
        this.f3652c.w(dVar);
        f0(this.f3652c.getAnimatedFraction());
        j0(this.f3653d);
        Iterator it = new ArrayList(this.f3657h).iterator();
        while (it.hasNext()) {
            o oVar = (o) it.next();
            if (oVar != null) {
                oVar.a(dVar);
            }
            it.remove();
        }
        this.f3657h.clear();
        dVar.v(this.f3666q);
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
            return true;
        }
        return true;
    }

    public void Q(com.airbnb.lottie.a aVar) {
        g.a aVar2 = this.f3662m;
        if (aVar2 != null) {
            aVar2.c(aVar);
        }
    }

    public void R(int i9) {
        if (this.f3651b == null) {
            this.f3657h.add(new c(i9));
        } else {
            this.f3652c.x(i9);
        }
    }

    public void S(boolean z10) {
        this.f3655f = z10;
    }

    public void T(com.airbnb.lottie.b bVar) {
        this.f3661l = bVar;
        g.b bVar2 = this.f3659j;
        if (bVar2 != null) {
            bVar2.d(bVar);
        }
    }

    public void U(@Nullable String str) {
        this.f3660k = str;
    }

    public void V(int i9) {
        if (this.f3651b == null) {
            this.f3657h.add(new k(i9));
        } else {
            this.f3652c.y(i9 + 0.99f);
        }
    }

    public void W(String str) {
        com.airbnb.lottie.d dVar = this.f3651b;
        if (dVar == null) {
            this.f3657h.add(new n(str));
            return;
        }
        h.g l10 = dVar.l(str);
        if (l10 != null) {
            V((int) (l10.f40234b + l10.f40235c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void X(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        com.airbnb.lottie.d dVar = this.f3651b;
        if (dVar == null) {
            this.f3657h.add(new l(f10));
        } else {
            V((int) m.g.k(dVar.p(), this.f3651b.f(), f10));
        }
    }

    public void Y(int i9, int i10) {
        if (this.f3651b == null) {
            this.f3657h.add(new b(i9, i10));
        } else {
            this.f3652c.z(i9, i10 + 0.99f);
        }
    }

    public void Z(String str) {
        com.airbnb.lottie.d dVar = this.f3651b;
        if (dVar == null) {
            this.f3657h.add(new a(str));
            return;
        }
        h.g l10 = dVar.l(str);
        if (l10 != null) {
            int i9 = (int) l10.f40234b;
            Y(i9, ((int) l10.f40235c) + i9);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void a0(int i9) {
        if (this.f3651b == null) {
            this.f3657h.add(new i(i9));
        } else {
            this.f3652c.A(i9);
        }
    }

    public void b0(String str) {
        com.airbnb.lottie.d dVar = this.f3651b;
        if (dVar == null) {
            this.f3657h.add(new m(str));
            return;
        }
        h.g l10 = dVar.l(str);
        if (l10 != null) {
            a0((int) l10.f40234b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void c(Animator.AnimatorListener animatorListener) {
        this.f3652c.addListener(animatorListener);
    }

    public void c0(float f10) {
        com.airbnb.lottie.d dVar = this.f3651b;
        if (dVar == null) {
            this.f3657h.add(new j(f10));
        } else {
            a0((int) m.g.k(dVar.p(), this.f3651b.f(), f10));
        }
    }

    public <T> void d(h.d dVar, T t10, @Nullable n.c<T> cVar) {
        com.airbnb.lottie.model.layer.b bVar = this.f3664o;
        if (bVar == null) {
            this.f3657h.add(new e(dVar, t10, cVar));
            return;
        }
        boolean z10 = true;
        if (dVar == h.d.f40227c) {
            bVar.c(t10, cVar);
        } else if (dVar.d() != null) {
            dVar.d().c(t10, cVar);
        } else {
            List<h.d> M = M(dVar);
            for (int i9 = 0; i9 < M.size(); i9++) {
                M.get(i9).d().c(t10, cVar);
            }
            z10 = true ^ M.isEmpty();
        }
        if (z10) {
            invalidateSelf();
            if (t10 == com.airbnb.lottie.k.E) {
                f0(B());
            }
        }
    }

    public void d0(boolean z10) {
        if (this.f3667r == z10) {
            return;
        }
        this.f3667r = z10;
        com.airbnb.lottie.model.layer.b bVar = this.f3664o;
        if (bVar != null) {
            bVar.I(z10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f3670u = false;
        com.airbnb.lottie.c.a("Drawable#draw");
        if (this.f3656g) {
            try {
                k(canvas);
            } catch (Throwable th2) {
                m.d.b("Lottie crashed in draw!", th2);
            }
        } else {
            k(canvas);
        }
        com.airbnb.lottie.c.b("Drawable#draw");
    }

    public void e0(boolean z10) {
        this.f3666q = z10;
        com.airbnb.lottie.d dVar = this.f3651b;
        if (dVar != null) {
            dVar.v(z10);
        }
    }

    public void f0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f3651b == null) {
            this.f3657h.add(new d(f10));
            return;
        }
        com.airbnb.lottie.c.a("Drawable#setProgress");
        this.f3652c.x(this.f3651b.h(f10));
        com.airbnb.lottie.c.b("Drawable#setProgress");
    }

    public void g0(int i9) {
        this.f3652c.setRepeatCount(i9);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3665p;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        com.airbnb.lottie.d dVar = this.f3651b;
        if (dVar == null) {
            return -1;
        }
        return (int) (dVar.b().height() * E());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        com.airbnb.lottie.d dVar = this.f3651b;
        if (dVar == null) {
            return -1;
        }
        return (int) (dVar.b().width() * E());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h0(int i9) {
        this.f3652c.setRepeatMode(i9);
    }

    public void i() {
        this.f3657h.clear();
        this.f3652c.cancel();
    }

    public void i0(boolean z10) {
        this.f3656g = z10;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f3670u) {
            return;
        }
        this.f3670u = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return I();
    }

    public void j() {
        if (this.f3652c.isRunning()) {
            this.f3652c.cancel();
        }
        this.f3651b = null;
        this.f3664o = null;
        this.f3659j = null;
        this.f3652c.g();
        invalidateSelf();
    }

    public void j0(float f10) {
        this.f3653d = f10;
    }

    public void k0(float f10) {
        this.f3652c.B(f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l0(Boolean bool) {
        this.f3654e = bool.booleanValue();
    }

    public void m0(p pVar) {
    }

    public void n(boolean z10) {
        if (this.f3663n == z10) {
            return;
        }
        this.f3663n = z10;
        if (this.f3651b != null) {
            h();
        }
    }

    public boolean n0() {
        return this.f3651b.c().size() > 0;
    }

    public boolean o() {
        return this.f3663n;
    }

    @MainThread
    public void p() {
        this.f3657h.clear();
        this.f3652c.h();
    }

    public com.airbnb.lottie.d q() {
        return this.f3651b;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i9) {
        this.f3665p = i9;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        m.d.c("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View) || ((View) callback).isInEditMode()) {
            return;
        }
        L();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        p();
    }

    public int t() {
        return (int) this.f3652c.j();
    }

    @Nullable
    public Bitmap u(String str) {
        g.b v10 = v();
        if (v10 != null) {
            return v10.a(str);
        }
        com.airbnb.lottie.d dVar = this.f3651b;
        com.airbnb.lottie.g gVar = dVar == null ? null : dVar.j().get(str);
        if (gVar != null) {
            return gVar.a();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    @Nullable
    public String w() {
        return this.f3660k;
    }

    public float x() {
        return this.f3652c.l();
    }

    public float z() {
        return this.f3652c.m();
    }
}

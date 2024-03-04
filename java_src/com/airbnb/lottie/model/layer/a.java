package com.airbnb.lottie.model.layer;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.layer.Layer;
import f.a;
import f.h;
import f.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import l.j;
/* loaded from: classes.dex */
public abstract class a implements e.e, a.b, h.e {
    @Nullable
    BlurMaskFilter A;

    /* renamed from: a  reason: collision with root package name */
    private final Path f3823a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final Matrix f3824b = new Matrix();

    /* renamed from: c  reason: collision with root package name */
    private final Paint f3825c = new d.a(1);

    /* renamed from: d  reason: collision with root package name */
    private final Paint f3826d = new d.a(1, PorterDuff.Mode.DST_IN);

    /* renamed from: e  reason: collision with root package name */
    private final Paint f3827e = new d.a(1, PorterDuff.Mode.DST_OUT);

    /* renamed from: f  reason: collision with root package name */
    private final Paint f3828f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f3829g;

    /* renamed from: h  reason: collision with root package name */
    private final RectF f3830h;

    /* renamed from: i  reason: collision with root package name */
    private final RectF f3831i;

    /* renamed from: j  reason: collision with root package name */
    private final RectF f3832j;

    /* renamed from: k  reason: collision with root package name */
    private final RectF f3833k;

    /* renamed from: l  reason: collision with root package name */
    private final String f3834l;

    /* renamed from: m  reason: collision with root package name */
    final Matrix f3835m;

    /* renamed from: n  reason: collision with root package name */
    final com.airbnb.lottie.f f3836n;

    /* renamed from: o  reason: collision with root package name */
    final Layer f3837o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private h f3838p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private f.d f3839q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private a f3840r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private a f3841s;

    /* renamed from: t  reason: collision with root package name */
    private List<a> f3842t;

    /* renamed from: u  reason: collision with root package name */
    private final List<f.a<?, ?>> f3843u;

    /* renamed from: v  reason: collision with root package name */
    final p f3844v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f3845w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f3846x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private Paint f3847y;

    /* renamed from: z  reason: collision with root package name */
    float f3848z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.airbnb.lottie.model.layer.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0056a implements a.b {
        C0056a() {
        }

        @Override // f.a.b
        public void a() {
            a aVar = a.this;
            aVar.L(aVar.f3839q.p() == 1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3850a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f3851b;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            f3851b = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3851b[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3851b[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3851b[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            f3850a = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3850a[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3850a[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3850a[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3850a[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3850a[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3850a[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(com.airbnb.lottie.f fVar, Layer layer) {
        d.a aVar = new d.a(1);
        this.f3828f = aVar;
        this.f3829g = new d.a(PorterDuff.Mode.CLEAR);
        this.f3830h = new RectF();
        this.f3831i = new RectF();
        this.f3832j = new RectF();
        this.f3833k = new RectF();
        this.f3835m = new Matrix();
        this.f3843u = new ArrayList();
        this.f3845w = true;
        this.f3848z = 0.0f;
        this.f3836n = fVar;
        this.f3837o = layer;
        this.f3834l = layer.i() + "#draw";
        if (layer.h() == Layer.MatteType.INVERT) {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        p b10 = layer.w().b();
        this.f3844v = b10;
        b10.b(this);
        if (layer.g() != null && !layer.g().isEmpty()) {
            h hVar = new h(layer.g());
            this.f3838p = hVar;
            for (f.a<j.h, Path> aVar2 : hVar.a()) {
                aVar2.a(this);
            }
            for (f.a<Integer, Integer> aVar3 : this.f3838p.c()) {
                i(aVar3);
                aVar3.a(this);
            }
        }
        M();
    }

    private void B(RectF rectF, Matrix matrix) {
        this.f3831i.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (z()) {
            int size = this.f3838p.b().size();
            for (int i9 = 0; i9 < size; i9++) {
                Mask mask = this.f3838p.b().get(i9);
                this.f3823a.set(this.f3838p.a().get(i9).h());
                this.f3823a.transform(matrix);
                int i10 = b.f3851b[mask.a().ordinal()];
                if (i10 == 1 || i10 == 2) {
                    return;
                }
                if ((i10 == 3 || i10 == 4) && mask.d()) {
                    return;
                }
                this.f3823a.computeBounds(this.f3833k, false);
                if (i9 == 0) {
                    this.f3831i.set(this.f3833k);
                } else {
                    RectF rectF2 = this.f3831i;
                    rectF2.set(Math.min(rectF2.left, this.f3833k.left), Math.min(this.f3831i.top, this.f3833k.top), Math.max(this.f3831i.right, this.f3833k.right), Math.max(this.f3831i.bottom, this.f3833k.bottom));
                }
            }
            if (rectF.intersect(this.f3831i)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void C(RectF rectF, Matrix matrix) {
        if (A() && this.f3837o.h() != Layer.MatteType.INVERT) {
            this.f3832j.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f3840r.d(this.f3832j, matrix, true);
            if (rectF.intersect(this.f3832j)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void D() {
        this.f3836n.invalidateSelf();
    }

    private void E(float f10) {
        this.f3836n.q().n().a(this.f3837o.i(), f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(boolean z10) {
        if (z10 != this.f3845w) {
            this.f3845w = z10;
            D();
        }
    }

    private void M() {
        if (!this.f3837o.e().isEmpty()) {
            f.d dVar = new f.d(this.f3837o.e());
            this.f3839q = dVar;
            dVar.l();
            this.f3839q.a(new C0056a());
            L(this.f3839q.h().floatValue() == 1.0f);
            i(this.f3839q);
            return;
        }
        L(true);
    }

    private void j(Canvas canvas, Matrix matrix, Mask mask, f.a<j.h, Path> aVar, f.a<Integer, Integer> aVar2) {
        this.f3823a.set(aVar.h());
        this.f3823a.transform(matrix);
        this.f3825c.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f3823a, this.f3825c);
    }

    private void k(Canvas canvas, Matrix matrix, Mask mask, f.a<j.h, Path> aVar, f.a<Integer, Integer> aVar2) {
        m.h.m(canvas, this.f3830h, this.f3826d);
        this.f3823a.set(aVar.h());
        this.f3823a.transform(matrix);
        this.f3825c.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f3823a, this.f3825c);
        canvas.restore();
    }

    private void l(Canvas canvas, Matrix matrix, Mask mask, f.a<j.h, Path> aVar, f.a<Integer, Integer> aVar2) {
        m.h.m(canvas, this.f3830h, this.f3825c);
        canvas.drawRect(this.f3830h, this.f3825c);
        this.f3823a.set(aVar.h());
        this.f3823a.transform(matrix);
        this.f3825c.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f3823a, this.f3827e);
        canvas.restore();
    }

    private void m(Canvas canvas, Matrix matrix, Mask mask, f.a<j.h, Path> aVar, f.a<Integer, Integer> aVar2) {
        m.h.m(canvas, this.f3830h, this.f3826d);
        canvas.drawRect(this.f3830h, this.f3825c);
        this.f3827e.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f3823a.set(aVar.h());
        this.f3823a.transform(matrix);
        canvas.drawPath(this.f3823a, this.f3827e);
        canvas.restore();
    }

    private void n(Canvas canvas, Matrix matrix, Mask mask, f.a<j.h, Path> aVar, f.a<Integer, Integer> aVar2) {
        m.h.m(canvas, this.f3830h, this.f3827e);
        canvas.drawRect(this.f3830h, this.f3825c);
        this.f3827e.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f3823a.set(aVar.h());
        this.f3823a.transform(matrix);
        canvas.drawPath(this.f3823a, this.f3827e);
        canvas.restore();
    }

    private void o(Canvas canvas, Matrix matrix) {
        com.airbnb.lottie.c.a("Layer#saveLayer");
        m.h.n(canvas, this.f3830h, this.f3826d, 19);
        if (Build.VERSION.SDK_INT < 28) {
            s(canvas);
        }
        com.airbnb.lottie.c.b("Layer#saveLayer");
        for (int i9 = 0; i9 < this.f3838p.b().size(); i9++) {
            Mask mask = this.f3838p.b().get(i9);
            f.a<j.h, Path> aVar = this.f3838p.a().get(i9);
            f.a<Integer, Integer> aVar2 = this.f3838p.c().get(i9);
            int i10 = b.f3851b[mask.a().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    if (i9 == 0) {
                        this.f3825c.setColor(ViewCompat.MEASURED_STATE_MASK);
                        this.f3825c.setAlpha(255);
                        canvas.drawRect(this.f3830h, this.f3825c);
                    }
                    if (mask.d()) {
                        n(canvas, matrix, mask, aVar, aVar2);
                    } else {
                        p(canvas, matrix, mask, aVar, aVar2);
                    }
                } else if (i10 != 3) {
                    if (i10 == 4) {
                        if (mask.d()) {
                            l(canvas, matrix, mask, aVar, aVar2);
                        } else {
                            j(canvas, matrix, mask, aVar, aVar2);
                        }
                    }
                } else if (mask.d()) {
                    m(canvas, matrix, mask, aVar, aVar2);
                } else {
                    k(canvas, matrix, mask, aVar, aVar2);
                }
            } else if (q()) {
                this.f3825c.setAlpha(255);
                canvas.drawRect(this.f3830h, this.f3825c);
            }
        }
        com.airbnb.lottie.c.a("Layer#restoreLayer");
        canvas.restore();
        com.airbnb.lottie.c.b("Layer#restoreLayer");
    }

    private void p(Canvas canvas, Matrix matrix, Mask mask, f.a<j.h, Path> aVar, f.a<Integer, Integer> aVar2) {
        this.f3823a.set(aVar.h());
        this.f3823a.transform(matrix);
        canvas.drawPath(this.f3823a, this.f3827e);
    }

    private boolean q() {
        if (this.f3838p.a().isEmpty()) {
            return false;
        }
        for (int i9 = 0; i9 < this.f3838p.b().size(); i9++) {
            if (this.f3838p.b().get(i9).a() != Mask.MaskMode.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void r() {
        if (this.f3842t != null) {
            return;
        }
        if (this.f3841s == null) {
            this.f3842t = Collections.emptyList();
            return;
        }
        this.f3842t = new ArrayList();
        for (a aVar = this.f3841s; aVar != null; aVar = aVar.f3841s) {
            this.f3842t.add(aVar);
        }
    }

    private void s(Canvas canvas) {
        com.airbnb.lottie.c.a("Layer#clearLayer");
        RectF rectF = this.f3830h;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f3829g);
        com.airbnb.lottie.c.b("Layer#clearLayer");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static a u(com.airbnb.lottie.model.layer.b bVar, Layer layer, com.airbnb.lottie.f fVar, com.airbnb.lottie.d dVar) {
        switch (b.f3850a[layer.f().ordinal()]) {
            case 1:
                return new e(fVar, layer, bVar);
            case 2:
                return new com.airbnb.lottie.model.layer.b(fVar, layer, dVar.o(layer.m()), dVar);
            case 3:
                return new f(fVar, layer);
            case 4:
                return new c(fVar, layer);
            case 5:
                return new d(fVar, layer);
            case 6:
                return new g(fVar, layer);
            default:
                m.d.c("Unknown layer type " + layer.f());
                return null;
        }
    }

    boolean A() {
        return this.f3840r != null;
    }

    public void F(f.a<?, ?> aVar) {
        this.f3843u.remove(aVar);
    }

    void G(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H(@Nullable a aVar) {
        this.f3840r = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I(boolean z10) {
        if (z10 && this.f3847y == null) {
            this.f3847y = new d.a();
        }
        this.f3846x = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J(@Nullable a aVar) {
        this.f3841s = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f3844v.j(f10);
        if (this.f3838p != null) {
            for (int i9 = 0; i9 < this.f3838p.a().size(); i9++) {
                this.f3838p.a().get(i9).m(f10);
            }
        }
        f.d dVar = this.f3839q;
        if (dVar != null) {
            dVar.m(f10);
        }
        a aVar = this.f3840r;
        if (aVar != null) {
            aVar.K(f10);
        }
        for (int i10 = 0; i10 < this.f3843u.size(); i10++) {
            this.f3843u.get(i10).m(f10);
        }
    }

    @Override // f.a.b
    public void a() {
        D();
    }

    @Override // e.c
    public void b(List<e.c> list, List<e.c> list2) {
    }

    @Override // h.e
    @CallSuper
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        this.f3844v.c(t10, cVar);
    }

    @Override // e.e
    @CallSuper
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        this.f3830h.set(0.0f, 0.0f, 0.0f, 0.0f);
        r();
        this.f3835m.set(matrix);
        if (z10) {
            List<a> list = this.f3842t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f3835m.preConcat(this.f3842t.get(size).f3844v.f());
                }
            } else {
                a aVar = this.f3841s;
                if (aVar != null) {
                    this.f3835m.preConcat(aVar.f3844v.f());
                }
            }
        }
        this.f3835m.preConcat(this.f3844v.f());
    }

    @Override // h.e
    public void e(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        a aVar = this.f3840r;
        if (aVar != null) {
            h.d a10 = dVar2.a(aVar.getName());
            if (dVar.c(this.f3840r.getName(), i9)) {
                list.add(a10.i(this.f3840r));
            }
            if (dVar.h(getName(), i9)) {
                this.f3840r.G(dVar, dVar.e(this.f3840r.getName(), i9) + i9, list, a10);
            }
        }
        if (dVar.g(getName(), i9)) {
            if (!"__container".equals(getName())) {
                dVar2 = dVar2.a(getName());
                if (dVar.c(getName(), i9)) {
                    list.add(dVar2.i(this));
                }
            }
            if (dVar.h(getName(), i9)) {
                G(dVar, i9 + dVar.e(getName(), i9), list, dVar2);
            }
        }
    }

    @Override // e.e
    public void g(Canvas canvas, Matrix matrix, int i9) {
        Paint paint;
        com.airbnb.lottie.c.a(this.f3834l);
        if (this.f3845w && !this.f3837o.x()) {
            r();
            com.airbnb.lottie.c.a("Layer#parentMatrix");
            this.f3824b.reset();
            this.f3824b.set(matrix);
            for (int size = this.f3842t.size() - 1; size >= 0; size--) {
                this.f3824b.preConcat(this.f3842t.get(size).f3844v.f());
            }
            com.airbnb.lottie.c.b("Layer#parentMatrix");
            int intValue = (int) ((((i9 / 255.0f) * (this.f3844v.h() == null ? 100 : this.f3844v.h().h().intValue())) / 100.0f) * 255.0f);
            if (!A() && !z()) {
                this.f3824b.preConcat(this.f3844v.f());
                com.airbnb.lottie.c.a("Layer#drawLayer");
                t(canvas, this.f3824b, intValue);
                com.airbnb.lottie.c.b("Layer#drawLayer");
                E(com.airbnb.lottie.c.b(this.f3834l));
                return;
            }
            com.airbnb.lottie.c.a("Layer#computeBounds");
            d(this.f3830h, this.f3824b, false);
            C(this.f3830h, matrix);
            this.f3824b.preConcat(this.f3844v.f());
            B(this.f3830h, this.f3824b);
            if (!this.f3830h.intersect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight())) {
                this.f3830h.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
            com.airbnb.lottie.c.b("Layer#computeBounds");
            if (this.f3830h.width() >= 1.0f && this.f3830h.height() >= 1.0f) {
                com.airbnb.lottie.c.a("Layer#saveLayer");
                this.f3825c.setAlpha(255);
                m.h.m(canvas, this.f3830h, this.f3825c);
                com.airbnb.lottie.c.b("Layer#saveLayer");
                s(canvas);
                com.airbnb.lottie.c.a("Layer#drawLayer");
                t(canvas, this.f3824b, intValue);
                com.airbnb.lottie.c.b("Layer#drawLayer");
                if (z()) {
                    o(canvas, this.f3824b);
                }
                if (A()) {
                    com.airbnb.lottie.c.a("Layer#drawMatte");
                    com.airbnb.lottie.c.a("Layer#saveLayer");
                    m.h.n(canvas, this.f3830h, this.f3828f, 19);
                    com.airbnb.lottie.c.b("Layer#saveLayer");
                    s(canvas);
                    this.f3840r.g(canvas, matrix, intValue);
                    com.airbnb.lottie.c.a("Layer#restoreLayer");
                    canvas.restore();
                    com.airbnb.lottie.c.b("Layer#restoreLayer");
                    com.airbnb.lottie.c.b("Layer#drawMatte");
                }
                com.airbnb.lottie.c.a("Layer#restoreLayer");
                canvas.restore();
                com.airbnb.lottie.c.b("Layer#restoreLayer");
            }
            if (this.f3846x && (paint = this.f3847y) != null) {
                paint.setStyle(Paint.Style.STROKE);
                this.f3847y.setColor(-251901);
                this.f3847y.setStrokeWidth(4.0f);
                canvas.drawRect(this.f3830h, this.f3847y);
                this.f3847y.setStyle(Paint.Style.FILL);
                this.f3847y.setColor(1357638635);
                canvas.drawRect(this.f3830h, this.f3847y);
            }
            E(com.airbnb.lottie.c.b(this.f3834l));
            return;
        }
        com.airbnb.lottie.c.b(this.f3834l);
    }

    @Override // e.c
    public String getName() {
        return this.f3837o.i();
    }

    public void i(@Nullable f.a<?, ?> aVar) {
        if (aVar == null) {
            return;
        }
        this.f3843u.add(aVar);
    }

    abstract void t(Canvas canvas, Matrix matrix, int i9);

    @Nullable
    public j.a v() {
        return this.f3837o.a();
    }

    public BlurMaskFilter w(float f10) {
        if (this.f3848z == f10) {
            return this.A;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f10 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.A = blurMaskFilter;
        this.f3848z = f10;
        return blurMaskFilter;
    }

    @Nullable
    public j x() {
        return this.f3837o.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Layer y() {
        return this.f3837o;
    }

    boolean z() {
        h hVar = this.f3838p;
        return (hVar == null || hVar.a().isEmpty()) ? false : true;
    }
}

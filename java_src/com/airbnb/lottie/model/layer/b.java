package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.k;
import com.airbnb.lottie.model.layer.Layer;
import f.q;
import java.util.ArrayList;
import java.util.List;
import m.h;
/* loaded from: classes.dex */
public class b extends com.airbnb.lottie.model.layer.a {
    @Nullable
    private f.a<Float, Float> B;
    private final List<com.airbnb.lottie.model.layer.a> C;
    private final RectF D;
    private final RectF E;
    private final Paint F;

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3852a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f3852a = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3852a[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(com.airbnb.lottie.f fVar, Layer layer, List<Layer> list, com.airbnb.lottie.d dVar) {
        super(fVar, layer);
        int i9;
        com.airbnb.lottie.model.layer.a aVar;
        this.C = new ArrayList();
        this.D = new RectF();
        this.E = new RectF();
        this.F = new Paint();
        i.b u10 = layer.u();
        if (u10 != null) {
            f.a<Float, Float> a10 = u10.a();
            this.B = a10;
            i(a10);
            this.B.a(this);
        } else {
            this.B = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(dVar.k().size());
        int size = list.size() - 1;
        com.airbnb.lottie.model.layer.a aVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            Layer layer2 = list.get(size);
            com.airbnb.lottie.model.layer.a u11 = com.airbnb.lottie.model.layer.a.u(this, layer2, fVar, dVar);
            if (u11 != null) {
                longSparseArray.put(u11.y().d(), u11);
                if (aVar2 != null) {
                    aVar2.H(u11);
                    aVar2 = null;
                } else {
                    this.C.add(0, u11);
                    int i10 = a.f3852a[layer2.h().ordinal()];
                    if (i10 == 1 || i10 == 2) {
                        aVar2 = u11;
                    }
                }
            }
            size--;
        }
        for (i9 = 0; i9 < longSparseArray.size(); i9++) {
            com.airbnb.lottie.model.layer.a aVar3 = (com.airbnb.lottie.model.layer.a) longSparseArray.get(longSparseArray.keyAt(i9));
            if (aVar3 != null && (aVar = (com.airbnb.lottie.model.layer.a) longSparseArray.get(aVar3.y().j())) != null) {
                aVar3.J(aVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    protected void G(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        for (int i10 = 0; i10 < this.C.size(); i10++) {
            this.C.get(i10).e(dVar, i9, list, dVar2);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void I(boolean z10) {
        super.I(z10);
        for (com.airbnb.lottie.model.layer.a aVar : this.C) {
            aVar.I(z10);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void K(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        super.K(f10);
        if (this.B != null) {
            f10 = ((this.B.h().floatValue() * this.f3837o.b().i()) - this.f3837o.b().p()) / (this.f3836n.q().e() + 0.01f);
        }
        if (this.B == null) {
            f10 -= this.f3837o.r();
        }
        if (this.f3837o.v() != 0.0f && !"__container".equals(this.f3837o.i())) {
            f10 /= this.f3837o.v();
        }
        for (int size = this.C.size() - 1; size >= 0; size--) {
            this.C.get(size).K(f10);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        super.c(t10, cVar);
        if (t10 == k.E) {
            if (cVar == null) {
                f.a<Float, Float> aVar = this.B;
                if (aVar != null) {
                    aVar.n(null);
                    return;
                }
                return;
            }
            q qVar = new q(cVar);
            this.B = qVar;
            qVar.a(this);
            i(this.B);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        for (int size = this.C.size() - 1; size >= 0; size--) {
            this.D.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.C.get(size).d(this.D, this.f3835m, true);
            rectF.union(this.D);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    void t(Canvas canvas, Matrix matrix, int i9) {
        com.airbnb.lottie.c.a("CompositionLayer#draw");
        this.E.set(0.0f, 0.0f, this.f3837o.l(), this.f3837o.k());
        matrix.mapRect(this.E);
        boolean z10 = this.f3836n.J() && this.C.size() > 1 && i9 != 255;
        if (z10) {
            this.F.setAlpha(i9);
            h.m(canvas, this.E, this.F);
        } else {
            canvas.save();
        }
        if (z10) {
            i9 = 255;
        }
        for (int size = this.C.size() - 1; size >= 0; size--) {
            if (!this.E.isEmpty() ? canvas.clipRect(this.E) : true) {
                this.C.get(size).g(canvas, matrix, i9);
            }
        }
        canvas.restore();
        com.airbnb.lottie.c.b("CompositionLayer#draw");
    }
}

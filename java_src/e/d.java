package e;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import f.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class d implements e, m, a.b, h.e {

    /* renamed from: a  reason: collision with root package name */
    private Paint f38184a;

    /* renamed from: b  reason: collision with root package name */
    private RectF f38185b;

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f38186c;

    /* renamed from: d  reason: collision with root package name */
    private final Path f38187d;

    /* renamed from: e  reason: collision with root package name */
    private final RectF f38188e;

    /* renamed from: f  reason: collision with root package name */
    private final String f38189f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f38190g;

    /* renamed from: h  reason: collision with root package name */
    private final List<c> f38191h;

    /* renamed from: i  reason: collision with root package name */
    private final com.airbnb.lottie.f f38192i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private List<m> f38193j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private f.p f38194k;

    public d(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, j.j jVar) {
        this(fVar, aVar, jVar.c(), jVar.d(), f(fVar, aVar, jVar.b()), h(jVar.b()));
    }

    private static List<c> f(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, List<j.c> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i9 = 0; i9 < list.size(); i9++) {
            c a10 = list.get(i9).a(fVar, aVar);
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        return arrayList;
    }

    @Nullable
    static i.l h(List<j.c> list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            j.c cVar = list.get(i9);
            if (cVar instanceof i.l) {
                return (i.l) cVar;
            }
        }
        return null;
    }

    private boolean k() {
        int i9 = 0;
        for (int i10 = 0; i10 < this.f38191h.size(); i10++) {
            if ((this.f38191h.get(i10) instanceof e) && (i9 = i9 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    @Override // f.a.b
    public void a() {
        this.f38192i.invalidateSelf();
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f38191h.size());
        arrayList.addAll(list);
        for (int size = this.f38191h.size() - 1; size >= 0; size--) {
            c cVar = this.f38191h.get(size);
            cVar.b(arrayList, this.f38191h.subList(0, size));
            arrayList.add(cVar);
        }
    }

    @Override // h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        f.p pVar = this.f38194k;
        if (pVar != null) {
            pVar.c(t10, cVar);
        }
    }

    @Override // e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        this.f38186c.set(matrix);
        f.p pVar = this.f38194k;
        if (pVar != null) {
            this.f38186c.preConcat(pVar.f());
        }
        this.f38188e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f38191h.size() - 1; size >= 0; size--) {
            c cVar = this.f38191h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).d(this.f38188e, this.f38186c, z10);
                rectF.union(this.f38188e);
            }
        }
    }

    @Override // h.e
    public void e(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        if (dVar.g(getName(), i9) || "__container".equals(getName())) {
            if (!"__container".equals(getName())) {
                dVar2 = dVar2.a(getName());
                if (dVar.c(getName(), i9)) {
                    list.add(dVar2.i(this));
                }
            }
            if (dVar.h(getName(), i9)) {
                int e10 = i9 + dVar.e(getName(), i9);
                for (int i10 = 0; i10 < this.f38191h.size(); i10++) {
                    c cVar = this.f38191h.get(i10);
                    if (cVar instanceof h.e) {
                        ((h.e) cVar).e(dVar, e10, list, dVar2);
                    }
                }
            }
        }
    }

    @Override // e.e
    public void g(Canvas canvas, Matrix matrix, int i9) {
        if (this.f38190g) {
            return;
        }
        this.f38186c.set(matrix);
        f.p pVar = this.f38194k;
        if (pVar != null) {
            this.f38186c.preConcat(pVar.f());
            i9 = (int) (((((this.f38194k.h() == null ? 100 : this.f38194k.h().h().intValue()) / 100.0f) * i9) / 255.0f) * 255.0f);
        }
        boolean z10 = this.f38192i.J() && k() && i9 != 255;
        if (z10) {
            this.f38185b.set(0.0f, 0.0f, 0.0f, 0.0f);
            d(this.f38185b, this.f38186c, true);
            this.f38184a.setAlpha(i9);
            m.h.m(canvas, this.f38185b, this.f38184a);
        }
        if (z10) {
            i9 = 255;
        }
        for (int size = this.f38191h.size() - 1; size >= 0; size--) {
            c cVar = this.f38191h.get(size);
            if (cVar instanceof e) {
                ((e) cVar).g(canvas, this.f38186c, i9);
            }
        }
        if (z10) {
            canvas.restore();
        }
    }

    @Override // e.c
    public String getName() {
        return this.f38189f;
    }

    @Override // e.m
    public Path getPath() {
        this.f38186c.reset();
        f.p pVar = this.f38194k;
        if (pVar != null) {
            this.f38186c.set(pVar.f());
        }
        this.f38187d.reset();
        if (this.f38190g) {
            return this.f38187d;
        }
        for (int size = this.f38191h.size() - 1; size >= 0; size--) {
            c cVar = this.f38191h.get(size);
            if (cVar instanceof m) {
                this.f38187d.addPath(((m) cVar).getPath(), this.f38186c);
            }
        }
        return this.f38187d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<m> i() {
        if (this.f38193j == null) {
            this.f38193j = new ArrayList();
            for (int i9 = 0; i9 < this.f38191h.size(); i9++) {
                c cVar = this.f38191h.get(i9);
                if (cVar instanceof m) {
                    this.f38193j.add((m) cVar);
                }
            }
        }
        return this.f38193j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Matrix j() {
        f.p pVar = this.f38194k;
        if (pVar != null) {
            return pVar.f();
        }
        this.f38186c.reset();
        return this.f38186c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, String str, boolean z10, List<c> list, @Nullable i.l lVar) {
        this.f38184a = new d.a();
        this.f38185b = new RectF();
        this.f38186c = new Matrix();
        this.f38187d = new Path();
        this.f38188e = new RectF();
        this.f38189f = str;
        this.f38192i = fVar;
        this.f38190g = z10;
        this.f38191h = list;
        if (lVar != null) {
            f.p b10 = lVar.b();
            this.f38194k = b10;
            b10.a(aVar);
            this.f38194k.b(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof j) {
                arrayList.add((j) cVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((j) arrayList.get(size2)).f(list.listIterator(list.size()));
        }
    }
}

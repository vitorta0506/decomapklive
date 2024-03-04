package e;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import f.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes.dex */
public class p implements e, m, j, a.b, k {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f38278a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    private final Path f38279b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.f f38280c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f38281d;

    /* renamed from: e  reason: collision with root package name */
    private final String f38282e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f38283f;

    /* renamed from: g  reason: collision with root package name */
    private final f.a<Float, Float> f38284g;

    /* renamed from: h  reason: collision with root package name */
    private final f.a<Float, Float> f38285h;

    /* renamed from: i  reason: collision with root package name */
    private final f.p f38286i;

    /* renamed from: j  reason: collision with root package name */
    private d f38287j;

    public p(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, j.g gVar) {
        this.f38280c = fVar;
        this.f38281d = aVar;
        this.f38282e = gVar.c();
        this.f38283f = gVar.f();
        f.a<Float, Float> a10 = gVar.b().a();
        this.f38284g = a10;
        aVar.i(a10);
        a10.a(this);
        f.a<Float, Float> a11 = gVar.d().a();
        this.f38285h = a11;
        aVar.i(a11);
        a11.a(this);
        f.p b10 = gVar.e().b();
        this.f38286i = b10;
        b10.a(aVar);
        b10.b(this);
    }

    @Override // f.a.b
    public void a() {
        this.f38280c.invalidateSelf();
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
        this.f38287j.b(list, list2);
    }

    @Override // h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        if (this.f38286i.c(t10, cVar)) {
            return;
        }
        if (t10 == com.airbnb.lottie.k.f3725u) {
            this.f38284g.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3726v) {
            this.f38285h.n(cVar);
        }
    }

    @Override // e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        this.f38287j.d(rectF, matrix, z10);
    }

    @Override // h.e
    public void e(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        m.g.m(dVar, i9, list, dVar2, this);
    }

    @Override // e.j
    public void f(ListIterator<c> listIterator) {
        if (this.f38287j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f38287j = new d(this.f38280c, this.f38281d, "Repeater", this.f38283f, arrayList, null);
    }

    @Override // e.e
    public void g(Canvas canvas, Matrix matrix, int i9) {
        float floatValue = this.f38284g.h().floatValue();
        float floatValue2 = this.f38285h.h().floatValue();
        float floatValue3 = this.f38286i.i().h().floatValue() / 100.0f;
        float floatValue4 = this.f38286i.e().h().floatValue() / 100.0f;
        for (int i10 = ((int) floatValue) - 1; i10 >= 0; i10--) {
            this.f38278a.set(matrix);
            float f10 = i10;
            this.f38278a.preConcat(this.f38286i.g(f10 + floatValue2));
            this.f38287j.g(canvas, this.f38278a, (int) (i9 * m.g.k(floatValue3, floatValue4, f10 / floatValue)));
        }
    }

    @Override // e.c
    public String getName() {
        return this.f38282e;
    }

    @Override // e.m
    public Path getPath() {
        Path path = this.f38287j.getPath();
        this.f38279b.reset();
        float floatValue = this.f38284g.h().floatValue();
        float floatValue2 = this.f38285h.h().floatValue();
        for (int i9 = ((int) floatValue) - 1; i9 >= 0; i9--) {
            this.f38278a.set(this.f38286i.g(i9 + floatValue2));
            this.f38279b.addPath(path, this.f38278a);
        }
        return this.f38279b;
    }
}

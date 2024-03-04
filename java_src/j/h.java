package j;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final List<h.a> f52852a;

    /* renamed from: b  reason: collision with root package name */
    private PointF f52853b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f52854c;

    public h(PointF pointF, boolean z10, List<h.a> list) {
        this.f52853b = pointF;
        this.f52854c = z10;
        this.f52852a = new ArrayList(list);
    }

    private void e(float f10, float f11) {
        if (this.f52853b == null) {
            this.f52853b = new PointF();
        }
        this.f52853b.set(f10, f11);
    }

    public List<h.a> a() {
        return this.f52852a;
    }

    public PointF b() {
        return this.f52853b;
    }

    public void c(h hVar, h hVar2, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f52853b == null) {
            this.f52853b = new PointF();
        }
        this.f52854c = hVar.d() || hVar2.d();
        if (hVar.a().size() != hVar2.a().size()) {
            m.d.c("Curves must have the same number of control points. Shape 1: " + hVar.a().size() + "\tShape 2: " + hVar2.a().size());
        }
        int min = Math.min(hVar.a().size(), hVar2.a().size());
        if (this.f52852a.size() < min) {
            for (int size = this.f52852a.size(); size < min; size++) {
                this.f52852a.add(new h.a());
            }
        } else if (this.f52852a.size() > min) {
            for (int size2 = this.f52852a.size() - 1; size2 >= min; size2--) {
                List<h.a> list = this.f52852a;
                list.remove(list.size() - 1);
            }
        }
        PointF b10 = hVar.b();
        PointF b11 = hVar2.b();
        e(m.g.k(b10.x, b11.x, f10), m.g.k(b10.y, b11.y, f10));
        for (int size3 = this.f52852a.size() - 1; size3 >= 0; size3--) {
            h.a aVar = hVar.a().get(size3);
            h.a aVar2 = hVar2.a().get(size3);
            PointF a10 = aVar.a();
            PointF b12 = aVar.b();
            PointF c10 = aVar.c();
            PointF a11 = aVar2.a();
            PointF b13 = aVar2.b();
            PointF c11 = aVar2.c();
            this.f52852a.get(size3).d(m.g.k(a10.x, a11.x, f10), m.g.k(a10.y, a11.y, f10));
            this.f52852a.get(size3).e(m.g.k(b12.x, b13.x, f10), m.g.k(b12.y, b13.y, f10));
            this.f52852a.get(size3).f(m.g.k(c10.x, c11.x, f10), m.g.k(c10.y, c11.y, f10));
        }
    }

    public boolean d() {
        return this.f52854c;
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f52852a.size() + "closed=" + this.f52854c + '}';
    }

    public h() {
        this.f52852a = new ArrayList();
    }
}

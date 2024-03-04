package i;

import android.graphics.PointF;
import java.util.List;
/* loaded from: classes.dex */
public class e implements m<PointF, PointF> {

    /* renamed from: a  reason: collision with root package name */
    private final List<n.a<PointF>> f40819a;

    public e(List<n.a<PointF>> list) {
        this.f40819a = list;
    }

    @Override // i.m
    public f.a<PointF, PointF> a() {
        if (this.f40819a.get(0).h()) {
            return new f.k(this.f40819a);
        }
        return new f.j(this.f40819a);
    }

    @Override // i.m
    public List<n.a<PointF>> b() {
        return this.f40819a;
    }

    @Override // i.m
    public boolean c() {
        return this.f40819a.size() == 1 && this.f40819a.get(0).h();
    }
}

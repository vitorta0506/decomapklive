package i;

import android.graphics.PointF;
import java.util.List;
/* loaded from: classes.dex */
public class i implements m<PointF, PointF> {

    /* renamed from: a  reason: collision with root package name */
    private final b f40820a;

    /* renamed from: b  reason: collision with root package name */
    private final b f40821b;

    public i(b bVar, b bVar2) {
        this.f40820a = bVar;
        this.f40821b = bVar2;
    }

    @Override // i.m
    public f.a<PointF, PointF> a() {
        return new f.n(this.f40820a.a(), this.f40821b.a());
    }

    @Override // i.m
    public List<n.a<PointF>> b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // i.m
    public boolean c() {
        return this.f40820a.c() && this.f40821b.c();
    }
}

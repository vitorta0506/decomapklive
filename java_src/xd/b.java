package xd;

import ae.d;
import android.graphics.PointF;
import android.view.View;
import wd.k;
/* loaded from: classes4.dex */
public class b implements k {

    /* renamed from: a  reason: collision with root package name */
    public PointF f59697a;

    /* renamed from: b  reason: collision with root package name */
    public k f59698b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f59699c = true;

    @Override // wd.k
    public boolean a(View view) {
        k kVar = this.f59698b;
        if (kVar != null) {
            return kVar.a(view);
        }
        return d.b(view, this.f59697a);
    }

    @Override // wd.k
    public boolean b(View view) {
        k kVar = this.f59698b;
        if (kVar != null) {
            return kVar.b(view);
        }
        return d.a(view, this.f59697a, this.f59699c);
    }
}

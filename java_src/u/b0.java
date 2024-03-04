package u;

import android.view.View;
import com.beloo.widget.chipslayoutmanager.ChipsLayoutManager;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import t.e0;
/* loaded from: classes.dex */
public class b0 implements m {

    /* renamed from: a  reason: collision with root package name */
    private ChipsLayoutManager f58261a;

    public b0(ChipsLayoutManager chipsLayoutManager) {
        this.f58261a = chipsLayoutManager;
    }

    private l p() {
        return this.f58261a.isLayoutRTL() ? new x() : new r();
    }

    @Override // u.m
    public r.a a() {
        ChipsLayoutManager chipsLayoutManager = this.f58261a;
        return new com.beloo.widget.chipslayoutmanager.anchor.c(chipsLayoutManager, chipsLayoutManager.v());
    }

    @Override // u.m
    public int b(View view) {
        return this.f58261a.getDecoratedBottom(view);
    }

    @Override // u.m
    public int c() {
        return o(this.f58261a.v().g());
    }

    @Override // u.m
    public int d() {
        return this.f58261a.getHeight();
    }

    @Override // u.m
    public int e(AnchorViewState anchorViewState) {
        return anchorViewState.a().top;
    }

    @Override // u.m
    public t f(w.m mVar, x.f fVar) {
        l p10 = p();
        ChipsLayoutManager chipsLayoutManager = this.f58261a;
        return new t(chipsLayoutManager, p10.b(chipsLayoutManager), new v.d(this.f58261a.B(), this.f58261a.z(), this.f58261a.y(), p10.c()), mVar, fVar, new e0(), p10.a().a(this.f58261a.A()));
    }

    @Override // u.m
    public int g() {
        return this.f58261a.getHeight() - this.f58261a.getPaddingBottom();
    }

    @Override // u.m
    public int h() {
        return b(this.f58261a.v().f());
    }

    @Override // u.m
    public int i() {
        return (this.f58261a.getHeight() - this.f58261a.getPaddingTop()) - this.f58261a.getPaddingBottom();
    }

    @Override // u.m
    public com.beloo.widget.chipslayoutmanager.f j() {
        return this.f58261a.K();
    }

    @Override // u.m
    public int k() {
        return this.f58261a.getHeightMode();
    }

    @Override // u.m
    public int l() {
        return this.f58261a.getPaddingTop();
    }

    @Override // u.m
    public g m() {
        return new a0(this.f58261a);
    }

    @Override // u.m
    public w.a n() {
        return y.c.a(this) ? new w.p() : new w.q();
    }

    @Override // u.m
    public int o(View view) {
        return this.f58261a.getDecoratedTop(view);
    }
}

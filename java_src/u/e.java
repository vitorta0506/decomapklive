package u;

import android.view.View;
import com.beloo.widget.chipslayoutmanager.ChipsLayoutManager;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
/* loaded from: classes.dex */
public class e implements m {

    /* renamed from: a  reason: collision with root package name */
    private ChipsLayoutManager f58272a;

    /* renamed from: b  reason: collision with root package name */
    private t.r f58273b = new t.j();

    public e(ChipsLayoutManager chipsLayoutManager) {
        this.f58272a = chipsLayoutManager;
    }

    private t p(w.m mVar, x.f fVar, s.a aVar) {
        ChipsLayoutManager chipsLayoutManager = this.f58272a;
        return new t(chipsLayoutManager, new d(chipsLayoutManager), new v.d(aVar, this.f58272a.z(), this.f58272a.y(), new v.c()), mVar, fVar, new t.i(), this.f58273b.a(this.f58272a.A()));
    }

    @Override // u.m
    public r.a a() {
        ChipsLayoutManager chipsLayoutManager = this.f58272a;
        return new com.beloo.widget.chipslayoutmanager.anchor.b(chipsLayoutManager, chipsLayoutManager.v());
    }

    @Override // u.m
    public int b(View view) {
        return this.f58272a.getDecoratedRight(view);
    }

    @Override // u.m
    public int c() {
        return o(this.f58272a.v().b());
    }

    @Override // u.m
    public int d() {
        return this.f58272a.getWidth();
    }

    @Override // u.m
    public int e(AnchorViewState anchorViewState) {
        return anchorViewState.a().left;
    }

    @Override // u.m
    public t f(w.m mVar, x.f fVar) {
        return p(mVar, fVar, this.f58272a.B());
    }

    @Override // u.m
    public int g() {
        return this.f58272a.getWidth() - this.f58272a.getPaddingRight();
    }

    @Override // u.m
    public int h() {
        return b(this.f58272a.v().e());
    }

    @Override // u.m
    public int i() {
        return (this.f58272a.getWidth() - this.f58272a.getPaddingLeft()) - this.f58272a.getPaddingRight();
    }

    @Override // u.m
    public com.beloo.widget.chipslayoutmanager.f j() {
        return this.f58272a.C();
    }

    @Override // u.m
    public int k() {
        return this.f58272a.getWidthMode();
    }

    @Override // u.m
    public int l() {
        return this.f58272a.getPaddingLeft();
    }

    @Override // u.m
    public g m() {
        return new c(this.f58272a);
    }

    @Override // u.m
    public w.a n() {
        return y.c.a(this) ? new w.p() : new w.b();
    }

    @Override // u.m
    public int o(View view) {
        return this.f58272a.getDecoratedLeft(view);
    }
}

package u;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beloo.widget.chipslayoutmanager.ChipsLayoutManager;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import java.util.ArrayList;
import java.util.List;
import t.f0;
import u.a;
/* loaded from: classes.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private ChipsLayoutManager f58278a;

    /* renamed from: b  reason: collision with root package name */
    private s.a f58279b;

    /* renamed from: c  reason: collision with root package name */
    private List<j> f58280c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private v.g f58281d;

    /* renamed from: e  reason: collision with root package name */
    private w.m f58282e;

    /* renamed from: f  reason: collision with root package name */
    private x.f f58283f;

    /* renamed from: g  reason: collision with root package name */
    private t.p f58284g;

    /* renamed from: h  reason: collision with root package name */
    private t.q f58285h;

    /* renamed from: i  reason: collision with root package name */
    private i f58286i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(ChipsLayoutManager chipsLayoutManager, i iVar, v.g gVar, w.m mVar, x.f fVar, t.p pVar, t.q qVar) {
        this.f58286i = iVar;
        this.f58279b = chipsLayoutManager.B();
        this.f58278a = chipsLayoutManager;
        this.f58281d = gVar;
        this.f58282e = mVar;
        this.f58283f = fVar;
        this.f58284g = pVar;
        this.f58285h = qVar;
    }

    private a.AbstractC0655a c() {
        return this.f58286i.d();
    }

    private g d() {
        return this.f58278a.v();
    }

    private a.AbstractC0655a e() {
        return this.f58286i.c();
    }

    private Rect f(@NonNull AnchorViewState anchorViewState) {
        return this.f58286i.a(anchorViewState);
    }

    private Rect g(AnchorViewState anchorViewState) {
        return this.f58286i.b(anchorViewState);
    }

    @NonNull
    private a.AbstractC0655a h(a.AbstractC0655a abstractC0655a) {
        return abstractC0655a.v(this.f58278a).q(d()).r(this.f58278a.w()).p(this.f58279b).u(this.f58284g).m(this.f58280c);
    }

    @NonNull
    public final h a(@NonNull h hVar) {
        a aVar = (a) hVar;
        aVar.T(this.f58282e.b());
        aVar.U(this.f58283f.b());
        return aVar;
    }

    @NonNull
    public final h b(@NonNull h hVar) {
        a aVar = (a) hVar;
        aVar.T(this.f58282e.a());
        aVar.U(this.f58283f.a());
        return aVar;
    }

    @Nullable
    public final h i(@NonNull AnchorViewState anchorViewState) {
        return h(c()).w(f(anchorViewState)).n(this.f58281d.a()).t(this.f58282e.b()).z(this.f58285h).x(this.f58283f.b()).y(new f(this.f58278a.getItemCount())).o();
    }

    @NonNull
    public final h j(@NonNull AnchorViewState anchorViewState) {
        return h(e()).w(g(anchorViewState)).n(this.f58281d.b()).t(this.f58282e.a()).z(new f0(this.f58285h, !this.f58278a.E())).x(this.f58283f.a()).y(new n(this.f58278a.getItemCount())).o();
    }
}

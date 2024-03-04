package u;

import android.graphics.Rect;
import androidx.recyclerview.widget.RecyclerView;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import u.a;
/* loaded from: classes.dex */
class q implements i {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.LayoutManager f58277a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(RecyclerView.LayoutManager layoutManager) {
        this.f58277a = layoutManager;
    }

    @Override // u.i
    public Rect a(AnchorViewState anchorViewState) {
        Rect a10 = anchorViewState.a();
        return new Rect(0, a10 == null ? 0 : a10.top, a10 == null ? 0 : a10.left, a10 == null ? 0 : a10.bottom);
    }

    @Override // u.i
    public Rect b(AnchorViewState anchorViewState) {
        int i9;
        int i10;
        Rect a10 = anchorViewState.a();
        int paddingLeft = a10 == null ? this.f58277a.getPaddingLeft() : a10.left;
        if (a10 == null) {
            i9 = anchorViewState.c().intValue() == 0 ? this.f58277a.getPaddingTop() : 0;
        } else {
            i9 = a10.top;
        }
        if (a10 == null) {
            i10 = anchorViewState.c().intValue() == 0 ? this.f58277a.getPaddingBottom() : 0;
        } else {
            i10 = a10.bottom;
        }
        return new Rect(paddingLeft, i9, 0, i10);
    }

    @Override // u.i
    public a.AbstractC0655a c() {
        return p.V();
    }

    @Override // u.i
    public a.AbstractC0655a d() {
        return s.V();
    }
}

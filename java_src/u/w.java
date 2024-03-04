package u;

import android.graphics.Rect;
import androidx.recyclerview.widget.RecyclerView;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import u.a;
/* loaded from: classes.dex */
class w implements i {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.LayoutManager f58288a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(RecyclerView.LayoutManager layoutManager) {
        this.f58288a = layoutManager;
    }

    @Override // u.i
    public Rect a(AnchorViewState anchorViewState) {
        Rect a10 = anchorViewState.a();
        return new Rect(a10 == null ? 0 : a10.right, a10 == null ? 0 : a10.top, 0, a10 == null ? 0 : a10.bottom);
    }

    @Override // u.i
    public Rect b(AnchorViewState anchorViewState) {
        int i9;
        int i10;
        Rect a10 = anchorViewState.a();
        if (a10 == null) {
            i9 = anchorViewState.c().intValue() == 0 ? this.f58288a.getPaddingTop() : 0;
        } else {
            i9 = a10.top;
        }
        int paddingRight = a10 == null ? this.f58288a.getPaddingRight() : a10.right;
        if (a10 == null) {
            i10 = anchorViewState.c().intValue() == 0 ? this.f58288a.getPaddingBottom() : 0;
        } else {
            i10 = a10.bottom;
        }
        return new Rect(0, i9, paddingRight, i10);
    }

    @Override // u.i
    public a.AbstractC0655a c() {
        return v.V();
    }

    @Override // u.i
    public a.AbstractC0655a d() {
        return y.V();
    }
}

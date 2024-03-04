package u;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
import u.a;
/* loaded from: classes.dex */
class d implements i {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.LayoutManager f58271a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(RecyclerView.LayoutManager layoutManager) {
        this.f58271a = layoutManager;
    }

    @Override // u.i
    public Rect a(@NonNull AnchorViewState anchorViewState) {
        Rect a10 = anchorViewState.a();
        return new Rect(a10 == null ? 0 : a10.left, 0, a10 == null ? 0 : a10.right, a10 == null ? 0 : a10.top);
    }

    @Override // u.i
    public Rect b(@NonNull AnchorViewState anchorViewState) {
        int i9;
        int i10;
        Rect a10 = anchorViewState.a();
        if (a10 == null) {
            i9 = anchorViewState.c().intValue() == 0 ? this.f58271a.getPaddingLeft() : 0;
        } else {
            i9 = a10.left;
        }
        int paddingTop = a10 == null ? this.f58271a.getPaddingTop() : a10.top;
        if (a10 == null) {
            i10 = anchorViewState.c().intValue() == 0 ? this.f58271a.getPaddingRight() : 0;
        } else {
            i10 = a10.right;
        }
        return new Rect(i9, paddingTop, i10, 0);
    }

    @Override // u.i
    public a.AbstractC0655a c() {
        return z.V();
    }

    @Override // u.i
    public a.AbstractC0655a d() {
        return u.V();
    }
}

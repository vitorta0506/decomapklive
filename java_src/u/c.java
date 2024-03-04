package u;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
class c extends c0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(RecyclerView.LayoutManager layoutManager) {
        super(layoutManager);
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int c() {
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int l() {
        return this.f58262a.getPaddingTop();
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int n() {
        return this.f58262a.getHeight() - this.f58262a.getPaddingBottom();
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int q() {
        return this.f58262a.getWidth();
    }
}

package u;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
class a0 extends c0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(RecyclerView.LayoutManager layoutManager) {
        super(layoutManager);
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int c() {
        return this.f58262a.getPaddingLeft();
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int l() {
        return 0;
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int n() {
        return this.f58262a.getHeight();
    }

    @Override // com.beloo.widget.chipslayoutmanager.d
    public final int q() {
        return this.f58262a.getWidth() - this.f58262a.getPaddingRight();
    }
}

package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public final class AdapterListUpdateCallback implements ListUpdateCallback {
    @NonNull
    private final RecyclerView.Adapter mAdapter;

    public AdapterListUpdateCallback(@NonNull RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i9, int i10, Object obj) {
        this.mAdapter.notifyItemRangeChanged(i9, i10, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i9, int i10) {
        this.mAdapter.notifyItemRangeInserted(i9, i10);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i9, int i10) {
        this.mAdapter.notifyItemMoved(i9, i10);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i9, int i10) {
        this.mAdapter.notifyItemRangeRemoved(i9, i10);
    }
}

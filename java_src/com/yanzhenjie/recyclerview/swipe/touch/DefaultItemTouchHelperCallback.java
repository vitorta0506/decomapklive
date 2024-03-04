package com.yanzhenjie.recyclerview.swipe.touch;

import android.graphics.Canvas;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cg.a;
import cg.b;
import cg.c;
/* loaded from: classes5.dex */
public class DefaultItemTouchHelperCallback extends ItemTouchHelper.Callback {

    /* renamed from: a  reason: collision with root package name */
    private b f37851a;

    /* renamed from: b  reason: collision with root package name */
    private a f37852b;

    /* renamed from: c  reason: collision with root package name */
    private c f37853c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f37854d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f37855e;

    public void a(boolean z10) {
        this.f37854d = z10;
    }

    public void b(boolean z10) {
        this.f37855e = z10;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        c cVar = this.f37853c;
        if (cVar != null) {
            cVar.a(viewHolder, 0);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        b bVar = this.f37851a;
        if (bVar != null) {
            return ItemTouchHelper.Callback.makeMovementFlags(bVar.b(recyclerView, viewHolder), this.f37851a.a(recyclerView, viewHolder));
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            if (((LinearLayoutManager) layoutManager).getOrientation() == 0) {
                return ItemTouchHelper.Callback.makeMovementFlags(15, 3);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(15, 12);
        } else if (layoutManager instanceof LinearLayoutManager) {
            if (((LinearLayoutManager) layoutManager).getOrientation() == 0) {
                return ItemTouchHelper.Callback.makeMovementFlags(12, 3);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(3, 12);
        } else {
            return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isItemViewSwipeEnabled() {
        return this.f37854d;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isLongPressDragEnabled() {
        return this.f37855e;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f10, float f11, int i9, boolean z10) {
        float abs;
        int width;
        if (i9 == 1) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            float f12 = 1.0f;
            if (layoutManager instanceof LinearLayoutManager) {
                int orientation = ((LinearLayoutManager) layoutManager).getOrientation();
                if (orientation == 0) {
                    abs = Math.abs(f11);
                    width = viewHolder.itemView.getHeight();
                } else if (orientation == 1) {
                    abs = Math.abs(f10);
                    width = viewHolder.itemView.getWidth();
                }
                f12 = 1.0f - (abs / width);
            }
            viewHolder.itemView.setAlpha(f12);
        }
        super.onChildDraw(canvas, recyclerView, viewHolder, f10, f11, i9, z10);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        a aVar = this.f37852b;
        if (aVar != null) {
            return aVar.b(viewHolder, viewHolder2);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i9) {
        super.onSelectedChanged(viewHolder, i9);
        c cVar = this.f37853c;
        if (cVar == null || i9 == 0) {
            return;
        }
        cVar.a(viewHolder, i9);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i9) {
        a aVar = this.f37852b;
        if (aVar != null) {
            aVar.a(viewHolder);
        }
    }

    public void setOnItemMoveListener(a aVar) {
        this.f37852b = aVar;
    }

    public void setOnItemMovementListener(b bVar) {
        this.f37851a = bVar;
    }

    public void setOnItemStateChangedListener(c cVar) {
        this.f37853c = cVar;
    }
}

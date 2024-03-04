package com.chad.library.adapter.base.dragswipe;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.R$id;
import com.chad.library.adapter.base.module.BaseDraggableModule;
/* loaded from: classes.dex */
public class DragAndSwipeCallback extends ItemTouchHelper.Callback {

    /* renamed from: a  reason: collision with root package name */
    private BaseDraggableModule f4767a;

    /* renamed from: b  reason: collision with root package name */
    private float f4768b = 0.1f;

    /* renamed from: c  reason: collision with root package name */
    private float f4769c = 0.7f;

    /* renamed from: d  reason: collision with root package name */
    private int f4770d = 15;

    /* renamed from: e  reason: collision with root package name */
    private int f4771e = 32;

    public DragAndSwipeCallback(BaseDraggableModule baseDraggableModule) {
        this.f4767a = baseDraggableModule;
    }

    private boolean a(@NonNull RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        return itemViewType == 268435729 || itemViewType == 268436002 || itemViewType == 268436275 || itemViewType == 268436821;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        if (a(viewHolder)) {
            return;
        }
        View view = viewHolder.itemView;
        int i9 = R$id.BaseQuickAdapter_dragging_support;
        if (view.getTag(i9) != null && ((Boolean) viewHolder.itemView.getTag(i9)).booleanValue()) {
            BaseDraggableModule baseDraggableModule = this.f4767a;
            if (baseDraggableModule != null) {
                baseDraggableModule.onItemDragEnd(viewHolder);
            }
            viewHolder.itemView.setTag(i9, Boolean.FALSE);
        }
        View view2 = viewHolder.itemView;
        int i10 = R$id.BaseQuickAdapter_swiping_support;
        if (view2.getTag(i10) == null || !((Boolean) viewHolder.itemView.getTag(i10)).booleanValue()) {
            return;
        }
        BaseDraggableModule baseDraggableModule2 = this.f4767a;
        if (baseDraggableModule2 != null) {
            baseDraggableModule2.onItemSwipeClear(viewHolder);
        }
        viewHolder.itemView.setTag(i10, Boolean.FALSE);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public float getMoveThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
        return this.f4768b;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
        if (a(viewHolder)) {
            return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
        }
        return ItemTouchHelper.Callback.makeMovementFlags(this.f4770d, this.f4771e);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public float getSwipeThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
        return this.f4769c;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isItemViewSwipeEnabled() {
        BaseDraggableModule baseDraggableModule = this.f4767a;
        if (baseDraggableModule != null) {
            return baseDraggableModule.isSwipeEnabled();
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isLongPressDragEnabled() {
        BaseDraggableModule baseDraggableModule = this.f4767a;
        return (baseDraggableModule == null || !baseDraggableModule.isDragEnabled() || this.f4767a.hasToggleView()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, float f10, float f11, int i9, boolean z10) {
        super.onChildDrawOver(canvas, recyclerView, viewHolder, f10, f11, i9, z10);
        if (i9 != 1 || a(viewHolder)) {
            return;
        }
        View view = viewHolder.itemView;
        canvas.save();
        if (f10 > 0.0f) {
            canvas.clipRect(view.getLeft(), view.getTop(), view.getLeft() + f10, view.getBottom());
            canvas.translate(view.getLeft(), view.getTop());
        } else {
            canvas.clipRect(view.getRight() + f10, view.getTop(), view.getRight(), view.getBottom());
            canvas.translate(view.getRight() + f10, view.getTop());
        }
        BaseDraggableModule baseDraggableModule = this.f4767a;
        if (baseDraggableModule != null) {
            baseDraggableModule.onItemSwiping(canvas, viewHolder, f10, f11, z10);
        }
        canvas.restore();
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
        return viewHolder.getItemViewType() == viewHolder2.getItemViewType();
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onMoved(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, int i9, @NonNull RecyclerView.ViewHolder viewHolder2, int i10, int i11, int i12) {
        super.onMoved(recyclerView, viewHolder, i9, viewHolder2, i10, i11, i12);
        BaseDraggableModule baseDraggableModule = this.f4767a;
        if (baseDraggableModule != null) {
            baseDraggableModule.onItemDragMoving(viewHolder, viewHolder2);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i9) {
        if (i9 == 2 && !a(viewHolder)) {
            BaseDraggableModule baseDraggableModule = this.f4767a;
            if (baseDraggableModule != null) {
                baseDraggableModule.onItemDragStart(viewHolder);
            }
            viewHolder.itemView.setTag(R$id.BaseQuickAdapter_dragging_support, Boolean.TRUE);
        } else if (i9 == 1 && !a(viewHolder)) {
            BaseDraggableModule baseDraggableModule2 = this.f4767a;
            if (baseDraggableModule2 != null) {
                baseDraggableModule2.onItemSwipeStart(viewHolder);
            }
            viewHolder.itemView.setTag(R$id.BaseQuickAdapter_swiping_support, Boolean.TRUE);
        }
        super.onSelectedChanged(viewHolder, i9);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
        BaseDraggableModule baseDraggableModule;
        if (a(viewHolder) || (baseDraggableModule = this.f4767a) == null) {
            return;
        }
        baseDraggableModule.onItemSwiped(viewHolder);
    }
}

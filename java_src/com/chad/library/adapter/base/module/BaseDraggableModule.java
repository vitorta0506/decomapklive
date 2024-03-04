package com.chad.library.adapter.base.module;

import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.R$id;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.dragswipe.DragAndSwipeCallback;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.share.internal.ShareConstants;
import java.util.Collections;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import x0.g;
import x0.i;
@Metadata(bv = {}, d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\b\u0016\u0018\u0000 f2\u00020\u0001:\u0001fB\u0017\u0012\u000e\u0010*\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030)¢\u0006\u0004\bd\u0010eJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\b\u0010\u0010\u001a\u00020\u0006H\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0004J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J4\u0010\"\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0006H\u0016J\u0012\u0010%\u001a\u00020\u00022\b\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010(\u001a\u00020\u00022\b\u0010'\u001a\u0004\u0018\u00010&H\u0016R\u001c\u0010*\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\"\u0010,\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b,\u0010.\"\u0004\b/\u00100R\"\u00101\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010-\u001a\u0004\b1\u0010.\"\u0004\b2\u00100R\"\u00103\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010:\u001a\u0002098\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010A\u001a\u00020@8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR$\u0010H\u001a\u0004\u0018\u00010G8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR$\u0010O\u001a\u0004\u0018\u00010N8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR*\u0010V\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u00068\u0016@VX\u0096\u000e¢\u0006\u0012\n\u0004\bV\u0010-\u001a\u0004\bV\u0010.\"\u0004\bW\u00100R$\u0010X\u001a\u0004\u0018\u00010#8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R$\u0010^\u001a\u0004\u0018\u00010&8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010c¨\u0006g"}, d2 = {"Lcom/chad/library/adapter/base/module/BaseDraggableModule;", "Lx0/a;", "", "initItemTouch", "", "position", "", "inRange", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "initView$com_github_CymChad_brvah", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "initView", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "attachToRecyclerView", "hasToggleView", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "getViewHolderPosition", "onItemDragStart", ShareConstants.FEED_SOURCE_PARAM, TypedValues.AttributesType.S_TARGET, "onItemDragMoving", "onItemDragEnd", "onItemSwipeStart", "onItemSwipeClear", "onItemSwiped", "Landroid/graphics/Canvas;", "canvas", "", "dX", "dY", "isCurrentlyActive", "onItemSwiping", "Lx0/g;", "onItemDragListener", "setOnItemDragListener", "Lx0/i;", "onItemSwipeListener", "setOnItemSwipeListener", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "isDragEnabled", "Z", "()Z", "setDragEnabled", "(Z)V", "isSwipeEnabled", "setSwipeEnabled", "toggleViewId", "I", "getToggleViewId", "()I", "setToggleViewId", "(I)V", "Landroidx/recyclerview/widget/ItemTouchHelper;", "itemTouchHelper", "Landroidx/recyclerview/widget/ItemTouchHelper;", "getItemTouchHelper", "()Landroidx/recyclerview/widget/ItemTouchHelper;", "setItemTouchHelper", "(Landroidx/recyclerview/widget/ItemTouchHelper;)V", "Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;", "itemTouchHelperCallback", "Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;", "getItemTouchHelperCallback", "()Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;", "setItemTouchHelperCallback", "(Lcom/chad/library/adapter/base/dragswipe/DragAndSwipeCallback;)V", "Landroid/view/View$OnTouchListener;", "mOnToggleViewTouchListener", "Landroid/view/View$OnTouchListener;", "getMOnToggleViewTouchListener", "()Landroid/view/View$OnTouchListener;", "setMOnToggleViewTouchListener", "(Landroid/view/View$OnTouchListener;)V", "Landroid/view/View$OnLongClickListener;", "mOnToggleViewLongClickListener", "Landroid/view/View$OnLongClickListener;", "getMOnToggleViewLongClickListener", "()Landroid/view/View$OnLongClickListener;", "setMOnToggleViewLongClickListener", "(Landroid/view/View$OnLongClickListener;)V", "value", "isDragOnLongPressEnabled", "setDragOnLongPressEnabled", "mOnItemDragListener", "Lx0/g;", "getMOnItemDragListener", "()Lx0/g;", "setMOnItemDragListener", "(Lx0/g;)V", "mOnItemSwipeListener", "Lx0/i;", "getMOnItemSwipeListener", "()Lx0/i;", "setMOnItemSwipeListener", "(Lx0/i;)V", "<init>", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "Companion", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public class BaseDraggableModule implements x0.a {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int NO_TOGGLE_VIEW = 0;
    @NotNull
    private final BaseQuickAdapter<?, ?> baseQuickAdapter;
    private boolean isDragEnabled;
    private boolean isDragOnLongPressEnabled;
    private boolean isSwipeEnabled;
    public ItemTouchHelper itemTouchHelper;
    public DragAndSwipeCallback itemTouchHelperCallback;
    @Nullable
    private g mOnItemDragListener;
    @Nullable
    private i mOnItemSwipeListener;
    @Nullable
    private View.OnLongClickListener mOnToggleViewLongClickListener;
    @Nullable
    private View.OnTouchListener mOnToggleViewTouchListener;
    private int toggleViewId;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/chad/library/adapter/base/module/BaseDraggableModule$Companion;", "", "()V", "NO_TOGGLE_VIEW", "", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public BaseDraggableModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        this.baseQuickAdapter = baseQuickAdapter;
        initItemTouch();
        this.isDragOnLongPressEnabled = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _set_isDragOnLongPressEnabled_$lambda-0  reason: not valid java name */
    public static final boolean m33_set_isDragOnLongPressEnabled_$lambda0(BaseDraggableModule this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isDragEnabled()) {
            ItemTouchHelper itemTouchHelper = this$0.getItemTouchHelper();
            Object tag = view.getTag(R$id.BaseQuickAdapter_viewholder_support);
            Objects.requireNonNull(tag, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.ViewHolder");
            itemTouchHelper.startDrag((RecyclerView.ViewHolder) tag);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _set_isDragOnLongPressEnabled_$lambda-1  reason: not valid java name */
    public static final boolean m34_set_isDragOnLongPressEnabled_$lambda1(BaseDraggableModule this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() != 0 || this$0.isDragOnLongPressEnabled()) {
            return false;
        }
        if (this$0.isDragEnabled()) {
            ItemTouchHelper itemTouchHelper = this$0.getItemTouchHelper();
            Object tag = view.getTag(R$id.BaseQuickAdapter_viewholder_support);
            Objects.requireNonNull(tag, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.ViewHolder");
            itemTouchHelper.startDrag((RecyclerView.ViewHolder) tag);
        }
        return true;
    }

    private final boolean inRange(int i9) {
        return i9 >= 0 && i9 < this.baseQuickAdapter.getData().size();
    }

    private final void initItemTouch() {
        setItemTouchHelperCallback(new DragAndSwipeCallback(this));
        setItemTouchHelper(new ItemTouchHelper(getItemTouchHelperCallback()));
    }

    public final void attachToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        getItemTouchHelper().attachToRecyclerView(recyclerView);
    }

    @NotNull
    public final ItemTouchHelper getItemTouchHelper() {
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper != null) {
            return itemTouchHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("itemTouchHelper");
        return null;
    }

    @NotNull
    public final DragAndSwipeCallback getItemTouchHelperCallback() {
        DragAndSwipeCallback dragAndSwipeCallback = this.itemTouchHelperCallback;
        if (dragAndSwipeCallback != null) {
            return dragAndSwipeCallback;
        }
        Intrinsics.throwUninitializedPropertyAccessException("itemTouchHelperCallback");
        return null;
    }

    @Nullable
    protected final g getMOnItemDragListener() {
        return this.mOnItemDragListener;
    }

    @Nullable
    protected final i getMOnItemSwipeListener() {
        return this.mOnItemSwipeListener;
    }

    @Nullable
    protected final View.OnLongClickListener getMOnToggleViewLongClickListener() {
        return this.mOnToggleViewLongClickListener;
    }

    @Nullable
    protected final View.OnTouchListener getMOnToggleViewTouchListener() {
        return this.mOnToggleViewTouchListener;
    }

    public final int getToggleViewId() {
        return this.toggleViewId;
    }

    protected final int getViewHolderPosition(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return viewHolder.getAdapterPosition() - this.baseQuickAdapter.getHeaderLayoutCount();
    }

    public boolean hasToggleView() {
        return this.toggleViewId != 0;
    }

    public final void initView$com_github_CymChad_brvah(@NotNull BaseViewHolder holder) {
        View findViewById;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (this.isDragEnabled && hasToggleView() && (findViewById = holder.itemView.findViewById(this.toggleViewId)) != null) {
            findViewById.setTag(R$id.BaseQuickAdapter_viewholder_support, holder);
            if (isDragOnLongPressEnabled()) {
                findViewById.setOnLongClickListener(this.mOnToggleViewLongClickListener);
            } else {
                findViewById.setOnTouchListener(this.mOnToggleViewTouchListener);
            }
        }
    }

    public final boolean isDragEnabled() {
        return this.isDragEnabled;
    }

    public boolean isDragOnLongPressEnabled() {
        return this.isDragOnLongPressEnabled;
    }

    public final boolean isSwipeEnabled() {
        return this.isSwipeEnabled;
    }

    public void onItemDragEnd(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        g gVar = this.mOnItemDragListener;
        if (gVar == null) {
            return;
        }
        gVar.a(viewHolder, getViewHolderPosition(viewHolder));
    }

    public void onItemDragMoving(@NotNull RecyclerView.ViewHolder source, @NotNull RecyclerView.ViewHolder target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        int viewHolderPosition = getViewHolderPosition(source);
        int viewHolderPosition2 = getViewHolderPosition(target);
        if (inRange(viewHolderPosition) && inRange(viewHolderPosition2)) {
            if (viewHolderPosition >= viewHolderPosition2) {
                int i9 = viewHolderPosition2 + 1;
                if (i9 <= viewHolderPosition) {
                    int i10 = viewHolderPosition;
                    while (true) {
                        int i11 = i10 - 1;
                        Collections.swap(this.baseQuickAdapter.getData(), i10, i10 - 1);
                        if (i10 == i9) {
                            break;
                        }
                        i10 = i11;
                    }
                }
            } else if (viewHolderPosition < viewHolderPosition2) {
                int i12 = viewHolderPosition;
                while (true) {
                    int i13 = i12 + 1;
                    Collections.swap(this.baseQuickAdapter.getData(), i12, i13);
                    if (i13 >= viewHolderPosition2) {
                        break;
                    }
                    i12 = i13;
                }
            }
            this.baseQuickAdapter.notifyItemMoved(source.getAdapterPosition(), target.getAdapterPosition());
        }
        g gVar = this.mOnItemDragListener;
        if (gVar == null) {
            return;
        }
        gVar.b(source, viewHolderPosition, target, viewHolderPosition2);
    }

    public void onItemDragStart(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        g gVar = this.mOnItemDragListener;
        if (gVar == null) {
            return;
        }
        gVar.c(viewHolder, getViewHolderPosition(viewHolder));
    }

    public void onItemSwipeClear(@NotNull RecyclerView.ViewHolder viewHolder) {
        i iVar;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (!this.isSwipeEnabled || (iVar = this.mOnItemSwipeListener) == null) {
            return;
        }
        iVar.c(viewHolder, getViewHolderPosition(viewHolder));
    }

    public void onItemSwipeStart(@NotNull RecyclerView.ViewHolder viewHolder) {
        i iVar;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (!this.isSwipeEnabled || (iVar = this.mOnItemSwipeListener) == null) {
            return;
        }
        iVar.a(viewHolder, getViewHolderPosition(viewHolder));
    }

    public void onItemSwiped(@NotNull RecyclerView.ViewHolder viewHolder) {
        i iVar;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int viewHolderPosition = getViewHolderPosition(viewHolder);
        if (inRange(viewHolderPosition)) {
            this.baseQuickAdapter.getData().remove(viewHolderPosition);
            this.baseQuickAdapter.notifyItemRemoved(viewHolder.getAdapterPosition());
            if (!this.isSwipeEnabled || (iVar = this.mOnItemSwipeListener) == null) {
                return;
            }
            iVar.b(viewHolder, viewHolderPosition);
        }
    }

    public void onItemSwiping(@Nullable Canvas canvas, @Nullable RecyclerView.ViewHolder viewHolder, float f10, float f11, boolean z10) {
        i iVar;
        if (!this.isSwipeEnabled || (iVar = this.mOnItemSwipeListener) == null) {
            return;
        }
        iVar.d(canvas, viewHolder, f10, f11, z10);
    }

    public final void setDragEnabled(boolean z10) {
        this.isDragEnabled = z10;
    }

    public void setDragOnLongPressEnabled(boolean z10) {
        this.isDragOnLongPressEnabled = z10;
        if (z10) {
            this.mOnToggleViewTouchListener = null;
            this.mOnToggleViewLongClickListener = new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.module.a
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m33_set_isDragOnLongPressEnabled_$lambda0;
                    m33_set_isDragOnLongPressEnabled_$lambda0 = BaseDraggableModule.m33_set_isDragOnLongPressEnabled_$lambda0(BaseDraggableModule.this, view);
                    return m33_set_isDragOnLongPressEnabled_$lambda0;
                }
            };
            return;
        }
        this.mOnToggleViewTouchListener = new View.OnTouchListener() { // from class: com.chad.library.adapter.base.module.b
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m34_set_isDragOnLongPressEnabled_$lambda1;
                m34_set_isDragOnLongPressEnabled_$lambda1 = BaseDraggableModule.m34_set_isDragOnLongPressEnabled_$lambda1(BaseDraggableModule.this, view, motionEvent);
                return m34_set_isDragOnLongPressEnabled_$lambda1;
            }
        };
        this.mOnToggleViewLongClickListener = null;
    }

    public final void setItemTouchHelper(@NotNull ItemTouchHelper itemTouchHelper) {
        Intrinsics.checkNotNullParameter(itemTouchHelper, "<set-?>");
        this.itemTouchHelper = itemTouchHelper;
    }

    public final void setItemTouchHelperCallback(@NotNull DragAndSwipeCallback dragAndSwipeCallback) {
        Intrinsics.checkNotNullParameter(dragAndSwipeCallback, "<set-?>");
        this.itemTouchHelperCallback = dragAndSwipeCallback;
    }

    protected final void setMOnItemDragListener(@Nullable g gVar) {
        this.mOnItemDragListener = gVar;
    }

    protected final void setMOnItemSwipeListener(@Nullable i iVar) {
        this.mOnItemSwipeListener = iVar;
    }

    protected final void setMOnToggleViewLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.mOnToggleViewLongClickListener = onLongClickListener;
    }

    protected final void setMOnToggleViewTouchListener(@Nullable View.OnTouchListener onTouchListener) {
        this.mOnToggleViewTouchListener = onTouchListener;
    }

    @Override // x0.a
    public void setOnItemDragListener(@Nullable g gVar) {
        this.mOnItemDragListener = gVar;
    }

    @Override // x0.a
    public void setOnItemSwipeListener(@Nullable i iVar) {
        this.mOnItemSwipeListener = iVar;
    }

    public final void setSwipeEnabled(boolean z10) {
        this.isSwipeEnabled = z10;
    }

    public final void setToggleViewId(int i9) {
        this.toggleViewId = i9;
    }
}

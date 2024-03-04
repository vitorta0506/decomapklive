package com.chad.library.adapter.base;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.binder.BaseItemBinder;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001-B\u0017\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J9\u0010\u0011\u001a\u00020\u0000\"\n\b\u0000\u0010\u0012\u0018\u0001*\u00020\u00022\u0010\u0010\u0013\u001a\f\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\b\u00030\u000e2\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u0002H\u0012\u0018\u00010\nH\u0086\bJF\u0010\u0011\u001a\u00020\u0000\"\b\b\u0000\u0010\u0012*\u00020\u00022\u000e\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00120\t2\u0010\u0010\u0013\u001a\f\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\b\u00030\u000e2\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u0002H\u0012\u0018\u00010\nH\u0007J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0014J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0002H\u0014J&\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00022\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020 H\u0014J\u0014\u0010!\u001a\u00020\u00102\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\tH\u0004J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u0010H\u0014J\u001c\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u001e\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u0018\u0010&\u001a\u00020\u00032\u0006\u0010'\u001a\u00020(2\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0010\u0010)\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u0003H\u0016J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0003H\u0016J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0003H\u0016RB\u0010\u0007\u001a6\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n0\bj\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u0002\u0012\u0002\b\u00030\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u000f\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u00100\bj\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u0010`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/chad/library/adapter/base/BaseBinderAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "list", "", "(Ljava/util/List;)V", "classDiffMap", "Ljava/util/HashMap;", "Ljava/lang/Class;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lkotlin/collections/HashMap;", "mBinderArray", "Landroid/util/SparseArray;", "Lcom/chad/library/adapter/base/binder/BaseItemBinder;", "mTypeMap", "", "addItemBinder", ExifInterface.GPS_DIRECTION_TRUE, "baseItemBinder", "callback", "clazz", "bindChildClick", "", "viewHolder", "viewType", "bindClick", "bindViewClickListener", "convert", "holder", BaseConfig.ITEM, "payloads", "", "findViewType", "getDefItemViewType", "position", "getItemBinder", "getItemBinderOrNull", "onCreateDefViewHolder", "parent", "Landroid/view/ViewGroup;", "onFailedToRecycleView", "", "onViewAttachedToWindow", "onViewDetachedFromWindow", "ItemCallback", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public class BaseBinderAdapter extends BaseQuickAdapter<Object, BaseViewHolder> {
    @NotNull
    private final HashMap<Class<?>, DiffUtil.ItemCallback<Object>> classDiffMap;
    @NotNull
    private final SparseArray<BaseItemBinder<Object, ?>> mBinderArray;
    @NotNull
    private final HashMap<Class<?>, Integer> mTypeMap;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0017J\u0018\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u001a\u0010\t\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcom/chad/library/adapter/base/BaseBinderAdapter$ItemCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "", "(Lcom/chad/library/adapter/base/BaseBinderAdapter;)V", "areContentsTheSame", "", "oldItem", "newItem", "areItemsTheSame", "getChangePayload", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    private final class ItemCallback extends DiffUtil.ItemCallback<Object> {
        final /* synthetic */ BaseBinderAdapter this$0;

        public ItemCallback(BaseBinderAdapter this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(@NotNull Object oldItem, @NotNull Object newItem) {
            DiffUtil.ItemCallback itemCallback;
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            if (!Intrinsics.areEqual(oldItem.getClass(), newItem.getClass()) || (itemCallback = (DiffUtil.ItemCallback) this.this$0.classDiffMap.get(oldItem.getClass())) == null) {
                return true;
            }
            return itemCallback.areContentsTheSame(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(@NotNull Object oldItem, @NotNull Object newItem) {
            DiffUtil.ItemCallback itemCallback;
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            if (Intrinsics.areEqual(oldItem.getClass(), newItem.getClass()) && (itemCallback = (DiffUtil.ItemCallback) this.this$0.classDiffMap.get(oldItem.getClass())) != null) {
                return itemCallback.areItemsTheSame(oldItem, newItem);
            }
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        @Nullable
        public Object getChangePayload(@NotNull Object oldItem, @NotNull Object newItem) {
            DiffUtil.ItemCallback itemCallback;
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            if (!Intrinsics.areEqual(oldItem.getClass(), newItem.getClass()) || (itemCallback = (DiffUtil.ItemCallback) this.this$0.classDiffMap.get(oldItem.getClass())) == null) {
                return null;
            }
            return itemCallback.getChangePayload(oldItem, newItem);
        }
    }

    public BaseBinderAdapter() {
        this(null, 1, null);
    }

    public BaseBinderAdapter(@Nullable List<Object> list) {
        super(0, list);
        this.classDiffMap = new HashMap<>();
        this.mTypeMap = new HashMap<>();
        this.mBinderArray = new SparseArray<>();
        setDiffCallback(new ItemCallback(this));
    }

    public static /* synthetic */ BaseBinderAdapter addItemBinder$default(BaseBinderAdapter baseBinderAdapter, Class cls, BaseItemBinder baseItemBinder, DiffUtil.ItemCallback itemCallback, int i9, Object obj) {
        if (obj == null) {
            if ((i9 & 4) != 0) {
                itemCallback = null;
            }
            return baseBinderAdapter.addItemBinder(cls, baseItemBinder, itemCallback);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addItemBinder");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindChildClick$lambda-11$lambda-10$lambda-9  reason: not valid java name */
    public static final boolean m19bindChildClick$lambda11$lambda10$lambda9(BaseViewHolder viewHolder, BaseBinderAdapter this$0, BaseItemBinder provider, View v10) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(provider, "$provider");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        int headerLayoutCount = bindingAdapterPosition - this$0.getHeaderLayoutCount();
        Intrinsics.checkNotNullExpressionValue(v10, "v");
        return provider.onChildLongClick(viewHolder, v10, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindChildClick$lambda-8$lambda-7$lambda-6  reason: not valid java name */
    public static final void m20bindChildClick$lambda8$lambda7$lambda6(BaseViewHolder viewHolder, BaseBinderAdapter this$0, BaseItemBinder provider, View v10) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(provider, "$provider");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int headerLayoutCount = bindingAdapterPosition - this$0.getHeaderLayoutCount();
        Intrinsics.checkNotNullExpressionValue(v10, "v");
        provider.onChildClick(viewHolder, v10, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindClick$lambda-4  reason: not valid java name */
    public static final void m21bindClick$lambda4(BaseViewHolder viewHolder, BaseBinderAdapter this$0, View it) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int headerLayoutCount = bindingAdapterPosition - this$0.getHeaderLayoutCount();
        BaseItemBinder<Object, BaseViewHolder> itemBinder = this$0.getItemBinder(viewHolder.getItemViewType());
        Intrinsics.checkNotNullExpressionValue(it, "it");
        itemBinder.onClick(viewHolder, it, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindClick$lambda-5  reason: not valid java name */
    public static final boolean m22bindClick$lambda5(BaseViewHolder viewHolder, BaseBinderAdapter this$0, View it) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        int headerLayoutCount = bindingAdapterPosition - this$0.getHeaderLayoutCount();
        BaseItemBinder<Object, BaseViewHolder> itemBinder = this$0.getItemBinder(viewHolder.getItemViewType());
        Intrinsics.checkNotNullExpressionValue(it, "it");
        return itemBinder.onLongClick(viewHolder, it, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }

    @JvmOverloads
    @NotNull
    public final <T> BaseBinderAdapter addItemBinder(@NotNull Class<? extends T> clazz, @NotNull BaseItemBinder<T, ?> baseItemBinder) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(baseItemBinder, "baseItemBinder");
        return addItemBinder$default(this, clazz, baseItemBinder, null, 4, null);
    }

    @JvmOverloads
    @NotNull
    public final <T> BaseBinderAdapter addItemBinder(@NotNull Class<? extends T> clazz, @NotNull BaseItemBinder<T, ?> baseItemBinder, @Nullable DiffUtil.ItemCallback<T> itemCallback) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(baseItemBinder, "baseItemBinder");
        int size = this.mTypeMap.size() + 1;
        this.mTypeMap.put(clazz, Integer.valueOf(size));
        this.mBinderArray.append(size, baseItemBinder);
        baseItemBinder.set_adapter$com_github_CymChad_brvah(this);
        if (itemCallback != null) {
            this.classDiffMap.put(clazz, itemCallback);
        }
        return this;
    }

    protected void bindChildClick(@NotNull final BaseViewHolder viewHolder, int i9) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (getOnItemChildClickListener() == null) {
            final BaseItemBinder<Object, BaseViewHolder> itemBinder = getItemBinder(i9);
            for (Number number : itemBinder.getChildClickViewIds()) {
                View findViewById = viewHolder.itemView.findViewById(number.intValue());
                if (findViewById != null) {
                    if (!findViewById.isClickable()) {
                        findViewById.setClickable(true);
                    }
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.b
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            BaseBinderAdapter.m20bindChildClick$lambda8$lambda7$lambda6(BaseViewHolder.this, this, itemBinder, view);
                        }
                    });
                }
            }
        }
        if (getOnItemChildLongClickListener() == null) {
            final BaseItemBinder<Object, BaseViewHolder> itemBinder2 = getItemBinder(i9);
            for (Number number2 : itemBinder2.getChildLongClickViewIds()) {
                View findViewById2 = viewHolder.itemView.findViewById(number2.intValue());
                if (findViewById2 != null) {
                    if (!findViewById2.isLongClickable()) {
                        findViewById2.setLongClickable(true);
                    }
                    findViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.d
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean m19bindChildClick$lambda11$lambda10$lambda9;
                            m19bindChildClick$lambda11$lambda10$lambda9 = BaseBinderAdapter.m19bindChildClick$lambda11$lambda10$lambda9(BaseViewHolder.this, this, itemBinder2, view);
                            return m19bindChildClick$lambda11$lambda10$lambda9;
                        }
                    });
                }
            }
        }
    }

    protected void bindClick(@NotNull final BaseViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (getOnItemClickListener() == null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseBinderAdapter.m21bindClick$lambda4(BaseViewHolder.this, this, view);
                }
            });
        }
        if (getOnItemLongClickListener() == null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.c
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m22bindClick$lambda5;
                    m22bindClick$lambda5 = BaseBinderAdapter.m22bindClick$lambda5(BaseViewHolder.this, this, view);
                    return m22bindClick$lambda5;
                }
            });
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void bindViewClickListener(@NotNull BaseViewHolder viewHolder, int i9) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.bindViewClickListener(viewHolder, i9);
        bindClick(viewHolder);
        bindChildClick(viewHolder, i9);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(@NotNull BaseViewHolder holder, @NotNull Object item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        getItemBinder(holder.getItemViewType()).convert(holder, item);
    }

    protected final int findViewType(@NotNull Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Integer num = this.mTypeMap.get(clazz);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException(("findViewType: ViewType: " + clazz + " Not Find!").toString());
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int getDefItemViewType(int i9) {
        return findViewType(getData().get(i9).getClass());
    }

    @NotNull
    public BaseItemBinder<Object, BaseViewHolder> getItemBinder(int i9) {
        BaseItemBinder baseItemBinder = this.mBinderArray.get(i9);
        if (baseItemBinder != null) {
            return baseItemBinder;
        }
        throw new IllegalStateException(("getItemBinder: viewType '" + i9 + "' no such Binder found，please use addItemBinder() first!").toString());
    }

    @Nullable
    public BaseItemBinder<Object, BaseViewHolder> getItemBinderOrNull(int i9) {
        BaseItemBinder baseItemBinder = this.mBinderArray.get(i9);
        if (baseItemBinder != null) {
            return baseItemBinder;
        }
        return null;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    protected BaseViewHolder onCreateDefViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseItemBinder<Object, BaseViewHolder> itemBinder = getItemBinder(i9);
        itemBinder.set_context$com_github_CymChad_brvah(getContext());
        return itemBinder.onCreateViewHolder(parent, i9);
    }

    public static /* synthetic */ BaseBinderAdapter addItemBinder$default(BaseBinderAdapter baseBinderAdapter, BaseItemBinder baseItemBinder, DiffUtil.ItemCallback itemCallback, int i9, Object obj) {
        if (obj == null) {
            if ((i9 & 2) != 0) {
                itemCallback = null;
            }
            Intrinsics.checkNotNullParameter(baseItemBinder, "baseItemBinder");
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            baseBinderAdapter.addItemBinder(Object.class, baseItemBinder, itemCallback);
            return baseBinderAdapter;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addItemBinder");
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(@NotNull BaseViewHolder holder, @NotNull Object item, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        getItemBinder(holder.getItemViewType()).convert(holder, item, payloads);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(@NotNull BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        BaseItemBinder<Object, BaseViewHolder> itemBinderOrNull = getItemBinderOrNull(holder.getItemViewType());
        if (itemBinderOrNull == null) {
            return false;
        }
        return itemBinderOrNull.onFailedToRecycleView(holder);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NotNull BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow((BaseBinderAdapter) holder);
        BaseItemBinder<Object, BaseViewHolder> itemBinderOrNull = getItemBinderOrNull(holder.getItemViewType());
        if (itemBinderOrNull == null) {
            return;
        }
        itemBinderOrNull.onViewAttachedToWindow(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NotNull BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow((BaseBinderAdapter) holder);
        BaseItemBinder<Object, BaseViewHolder> itemBinderOrNull = getItemBinderOrNull(holder.getItemViewType());
        if (itemBinderOrNull == null) {
            return;
        }
        itemBinderOrNull.onViewDetachedFromWindow(holder);
    }

    public /* synthetic */ BaseBinderAdapter(List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list);
    }

    public final /* synthetic */ <T> BaseBinderAdapter addItemBinder(BaseItemBinder<T, ?> baseItemBinder, DiffUtil.ItemCallback<T> itemCallback) {
        Intrinsics.checkNotNullParameter(baseItemBinder, "baseItemBinder");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        addItemBinder(Object.class, baseItemBinder, itemCallback);
        return this;
    }
}

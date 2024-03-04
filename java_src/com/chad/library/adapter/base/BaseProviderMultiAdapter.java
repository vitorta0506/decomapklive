package com.chad.library.adapter.base;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u0002B\u0017\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0016J\u0018\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0003H\u0014J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u001d\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010\u001aJ+\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00028\u00002\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0014¢\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u0014H\u0014J\u0018\u0010!\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u001e\u0010\"\u001a\u00020\u00142\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c2\u0006\u0010 \u001a\u00020\u0014H$J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0010\u0010&\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0003H\u0016J\u0010\u0010'\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0003H\u0016R'\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006("}, d2 = {"Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "data", "", "(Ljava/util/List;)V", "mItemProviders", "Landroid/util/SparseArray;", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "getMItemProviders", "()Landroid/util/SparseArray;", "mItemProviders$delegate", "Lkotlin/Lazy;", "addItemProvider", "", "provider", "bindChildClick", "viewHolder", "viewType", "", "bindClick", "bindViewClickListener", "convert", "holder", BaseConfig.ITEM, "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V", "payloads", "", "", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V", "getDefItemViewType", "position", "getItemProvider", "getItemType", "onCreateDefViewHolder", "parent", "Landroid/view/ViewGroup;", "onViewAttachedToWindow", "onViewDetachedFromWindow", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public abstract class BaseProviderMultiAdapter<T> extends BaseQuickAdapter<T, BaseViewHolder> {
    @NotNull
    private final Lazy mItemProviders$delegate;

    public BaseProviderMultiAdapter() {
        this(null, 1, null);
    }

    public /* synthetic */ BaseProviderMultiAdapter(List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindChildClick$lambda-6$lambda-5$lambda-4  reason: not valid java name */
    public static final void m23bindChildClick$lambda6$lambda5$lambda4(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, BaseItemProvider provider, View v10) {
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
    /* renamed from: bindChildClick$lambda-9$lambda-8$lambda-7  reason: not valid java name */
    public static final boolean m24bindChildClick$lambda9$lambda8$lambda7(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, BaseItemProvider provider, View v10) {
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
    /* renamed from: bindClick$lambda-2  reason: not valid java name */
    public static final void m25bindClick$lambda2(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, View it) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        int headerLayoutCount = bindingAdapterPosition - this$0.getHeaderLayoutCount();
        int itemViewType = viewHolder.getItemViewType();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this$0.getMItemProviders().get(itemViewType).onClick(viewHolder, it, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindClick$lambda-3  reason: not valid java name */
    public static final boolean m26bindClick$lambda3(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, View it) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        int headerLayoutCount = bindingAdapterPosition - this$0.getHeaderLayoutCount();
        int itemViewType = viewHolder.getItemViewType();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        return this$0.getMItemProviders().get(itemViewType).onLongClick(viewHolder, it, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }

    private final SparseArray<BaseItemProvider<T>> getMItemProviders() {
        return (SparseArray) this.mItemProviders$delegate.getValue();
    }

    public void addItemProvider(@NotNull BaseItemProvider<T> provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        provider.setAdapter$com_github_CymChad_brvah(this);
        getMItemProviders().put(provider.getItemViewType(), provider);
    }

    protected void bindChildClick(@NotNull final BaseViewHolder viewHolder, int i9) {
        final BaseItemProvider<T> itemProvider;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (getOnItemChildClickListener() == null) {
            final BaseItemProvider<T> itemProvider2 = getItemProvider(i9);
            if (itemProvider2 == null) {
                return;
            }
            for (Number number : itemProvider2.getChildClickViewIds()) {
                View findViewById = viewHolder.itemView.findViewById(number.intValue());
                if (findViewById != null) {
                    if (!findViewById.isClickable()) {
                        findViewById.setClickable(true);
                    }
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.f
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            BaseProviderMultiAdapter.m23bindChildClick$lambda6$lambda5$lambda4(BaseViewHolder.this, this, itemProvider2, view);
                        }
                    });
                }
            }
        }
        if (getOnItemChildLongClickListener() != null || (itemProvider = getItemProvider(i9)) == null) {
            return;
        }
        for (Number number2 : itemProvider.getChildLongClickViewIds()) {
            View findViewById2 = viewHolder.itemView.findViewById(number2.intValue());
            if (findViewById2 != null) {
                if (!findViewById2.isLongClickable()) {
                    findViewById2.setLongClickable(true);
                }
                findViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.h
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        boolean m24bindChildClick$lambda9$lambda8$lambda7;
                        m24bindChildClick$lambda9$lambda8$lambda7 = BaseProviderMultiAdapter.m24bindChildClick$lambda9$lambda8$lambda7(BaseViewHolder.this, this, itemProvider, view);
                        return m24bindChildClick$lambda9$lambda8$lambda7;
                    }
                });
            }
        }
    }

    protected void bindClick(@NotNull final BaseViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (getOnItemClickListener() == null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseProviderMultiAdapter.m25bindClick$lambda2(BaseViewHolder.this, this, view);
                }
            });
        }
        if (getOnItemLongClickListener() == null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.g
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m26bindClick$lambda3;
                    m26bindClick$lambda3 = BaseProviderMultiAdapter.m26bindClick$lambda3(BaseViewHolder.this, this, view);
                    return m26bindClick$lambda3;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void bindViewClickListener(@NotNull BaseViewHolder viewHolder, int i9) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.bindViewClickListener(viewHolder, i9);
        bindClick(viewHolder);
        bindChildClick(viewHolder, i9);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(@NotNull BaseViewHolder holder, T t10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        Intrinsics.checkNotNull(itemProvider);
        itemProvider.convert(holder, t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int getDefItemViewType(int i9) {
        return getItemType(getData(), i9);
    }

    @Nullable
    protected BaseItemProvider<T> getItemProvider(int i9) {
        return getMItemProviders().get(i9);
    }

    protected abstract int getItemType(@NotNull List<? extends T> list, int i9);

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    protected BaseViewHolder onCreateDefViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseItemProvider<T> itemProvider = getItemProvider(i9);
        if (itemProvider != null) {
            Context context = parent.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "parent.context");
            itemProvider.setContext(context);
            BaseViewHolder onCreateViewHolder = itemProvider.onCreateViewHolder(parent, i9);
            itemProvider.onViewHolderCreated(onCreateViewHolder, i9);
            return onCreateViewHolder;
        }
        throw new IllegalStateException(("ViewType: " + i9 + " no such provider found，please use addItemProvider() first!").toString());
    }

    public BaseProviderMultiAdapter(@Nullable List<T> list) {
        super(0, list);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<SparseArray<BaseItemProvider<T>>>() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter$mItemProviders$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SparseArray<BaseItemProvider<T>> invoke() {
                return new SparseArray<>();
            }
        });
        this.mItemProviders$delegate = lazy;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(@NotNull BaseViewHolder holder, T t10, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        Intrinsics.checkNotNull(itemProvider);
        itemProvider.convert(holder, t10, payloads);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NotNull BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow((BaseProviderMultiAdapter<T>) holder);
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        if (itemProvider == null) {
            return;
        }
        itemProvider.onViewAttachedToWindow(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NotNull BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow((BaseProviderMultiAdapter<T>) holder);
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        if (itemProvider == null) {
            return;
        }
        itemProvider.onViewDetachedFromWindow(holder);
    }
}

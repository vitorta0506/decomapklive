package com.guochao.faceshow.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B'\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0014\u0010\u001b\u001a\u00020\u001c2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007J'\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001f\u001a\u00028\u00002\u0006\u0010 \u001a\u00020\tH&¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020\tH\u0016J\u001a\u0010#\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u00032\b\b\u0001\u0010 \u001a\u00020\tH\u0016J\u0018\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\tH\u0016J\u0014\u0010(\u001a\u00020\u001c2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007J\u0010\u0010)\u001a\u00020\u001c2\b\u0010*\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010+\u001a\u00020\u001c2\b\u0010,\u001a\u0004\u0018\u00010\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006-"}, d2 = {"Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", "mContext", "Landroid/content/Context;", "data", "", "layoutId", "", "(Landroid/content/Context;Ljava/util/List;I)V", "mData", "mInflater", "Landroid/view/LayoutInflater;", "mItemClickListener", "Lcom/guochao/faceshow/adapter/OnItemClickListener;", "getMItemClickListener", "()Lcom/guochao/faceshow/adapter/OnItemClickListener;", "setMItemClickListener", "(Lcom/guochao/faceshow/adapter/OnItemClickListener;)V", "mLayoutId", "mLongClickListener", "Lcom/guochao/faceshow/adapter/OnLongClickListener;", "getMLongClickListener", "()Lcom/guochao/faceshow/adapter/OnLongClickListener;", "setMLongClickListener", "(Lcom/guochao/faceshow/adapter/OnLongClickListener;)V", "addData", "", "convert", "holder", BaseConfig.ITEM, "position", "(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/Object;I)V", "getItemCount", "onBindViewHolder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setData", "setOnItemClickListener", "itemClickListener", "setOnLongClickListener", "longClickListener", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class CommonRecyclerAdapter<T> extends RecyclerView.Adapter<BaseViewHolder> {
    @Nullable
    private Context mContext;
    @Nullable
    private List<? extends T> mData;
    @NotNull
    private LayoutInflater mInflater;
    @Nullable
    private OnItemClickListener mItemClickListener;
    private int mLayoutId;
    @Nullable
    private OnLongClickListener mLongClickListener;

    public CommonRecyclerAdapter(@Nullable Context context, @Nullable List<? extends T> list, int i9) {
        this.mContext = context;
        LayoutInflater from = LayoutInflater.from(context);
        Intrinsics.checkNotNullExpressionValue(from, "from(mContext)");
        this.mInflater = from;
        this.mData = list;
        this.mLayoutId = i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-0  reason: not valid java name */
    public static final void m605onBindViewHolder$lambda0(CommonRecyclerAdapter this$0, int i9, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OnItemClickListener onItemClickListener = this$0.mItemClickListener;
        Intrinsics.checkNotNull(onItemClickListener);
        onItemClickListener.onItemClick(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-1  reason: not valid java name */
    public static final boolean m606onBindViewHolder$lambda1(CommonRecyclerAdapter this$0, int i9, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OnLongClickListener onLongClickListener = this$0.mLongClickListener;
        Intrinsics.checkNotNull(onLongClickListener);
        return onLongClickListener.onLongClick(i9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0009, code lost:
        r0 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void addData(@org.jetbrains.annotations.NotNull java.util.List<? extends T> r2) {
        /*
            r1 = this;
            java.lang.String r0 = "data"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.util.List<? extends T> r0 = r1.mData
            if (r0 == 0) goto L12
            java.util.List r0 = kotlin.collections.CollectionsKt.toMutableList(r0)
            if (r0 == 0) goto L12
            r0.addAll(r2)
        L12:
            r1.notifyDataSetChanged()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.adapter.CommonRecyclerAdapter.addData(java.util.List):void");
    }

    public abstract void convert(@Nullable BaseViewHolder baseViewHolder, T t10, int i9);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends T> list = this.mData;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Nullable
    public final OnItemClickListener getMItemClickListener() {
        return this.mItemClickListener;
    }

    @Nullable
    public final OnLongClickListener getMLongClickListener() {
        return this.mLongClickListener;
    }

    public final void setData(@NotNull List<? extends T> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.mData = data;
        notifyDataSetChanged();
    }

    public final void setMItemClickListener(@Nullable OnItemClickListener onItemClickListener) {
        this.mItemClickListener = onItemClickListener;
    }

    public final void setMLongClickListener(@Nullable OnLongClickListener onLongClickListener) {
        this.mLongClickListener = onLongClickListener;
    }

    public final void setOnItemClickListener(@Nullable OnItemClickListener onItemClickListener) {
        this.mItemClickListener = onItemClickListener;
    }

    public final void setOnLongClickListener(@Nullable OnLongClickListener onLongClickListener) {
        this.mLongClickListener = onLongClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, final int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (this.mItemClickListener != null) {
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.adapter.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CommonRecyclerAdapter.m605onBindViewHolder$lambda0(CommonRecyclerAdapter.this, i9, view);
                }
            });
        }
        if (this.mLongClickListener != null) {
            holder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.guochao.faceshow.adapter.b
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m606onBindViewHolder$lambda1;
                    m606onBindViewHolder$lambda1 = CommonRecyclerAdapter.m606onBindViewHolder$lambda1(CommonRecyclerAdapter.this, i9, view);
                    return m606onBindViewHolder$lambda1;
                }
            });
        }
        List<? extends T> list = this.mData;
        if (list != null) {
            convert(holder, list.get(i9), i9);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(this.mInflater.inflate(this.mLayoutId, parent, false));
    }
}

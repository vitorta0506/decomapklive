package com.guochao.faceshow.aaspring.modulars.friend.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B'\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0014\u0010\u000f\u001a\u00020\u00102\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007J'\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\tH&¢\u0006\u0002\u0010\u0015J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007J\b\u0010\u0017\u001a\u00020\tH\u0016J\u001a\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00032\b\b\u0001\u0010\u0014\u001a\u00020\tH\u0016J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\tH\u0016J\u0014\u0010\u001d\u001a\u00020\u00102\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;", "mContext", "Landroid/content/Context;", "data", "", "layoutId", "", "(Landroid/content/Context;Ljava/util/List;I)V", "mData", "mInflater", "Landroid/view/LayoutInflater;", "mLayoutId", "addData", "", "convert", "holder", BaseConfig.ITEM, "position", "(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Ljava/lang/Object;I)V", "getData", "getItemCount", "onBindViewHolder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setData", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class CommonRecyclerAdapter<T> extends RecyclerView.Adapter<BaseViewHolder> {
    @Nullable
    private Context mContext;
    @Nullable
    private List<? extends T> mData;
    @NotNull
    private LayoutInflater mInflater;
    private int mLayoutId;

    public CommonRecyclerAdapter(@Nullable Context context, @Nullable List<? extends T> list, int i9) {
        this.mContext = context;
        LayoutInflater from = LayoutInflater.from(context);
        Intrinsics.checkNotNullExpressionValue(from, "from(mContext)");
        this.mInflater = from;
        this.mData = list;
        this.mLayoutId = i9;
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
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter.addData(java.util.List):void");
    }

    public abstract void convert(@Nullable BaseViewHolder baseViewHolder, T t10, int i9);

    @NotNull
    public final List<T> getData() {
        List list = (List<? extends T>) this.mData;
        return list == null ? new ArrayList() : list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends T> list = this.mData;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final void setData(@NotNull List<? extends T> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.mData = data;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
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

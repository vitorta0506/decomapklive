package com.guochao.faceshow.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B5\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\bH\u0016R\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;", "mContext", "Landroid/content/Context;", "data", "", "layoutId", "", "multiItemTypeSupport", "Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;", "(Landroid/content/Context;Ljava/util/List;ILcom/guochao/faceshow/adapter/MultiItemTypeSupport;)V", "mData", "mInflater", "Landroid/view/LayoutInflater;", "mMultiItemTypeSupport", "getItemViewType", "position", "onCreateViewHolder", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", "parent", "Landroid/view/ViewGroup;", "viewType", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class MultiItemCommonAdapter<T> extends CommonRecyclerAdapter<T> {
    @Nullable
    private List<? extends T> mData;
    @NotNull
    private LayoutInflater mInflater;
    @NotNull
    private MultiItemTypeSupport<T> mMultiItemTypeSupport;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiItemCommonAdapter(@Nullable Context context, @Nullable List<? extends T> list, int i9, @NotNull MultiItemTypeSupport<T> multiItemTypeSupport) {
        super(context, list, i9);
        Intrinsics.checkNotNullParameter(multiItemTypeSupport, "multiItemTypeSupport");
        LayoutInflater from = LayoutInflater.from(context);
        Intrinsics.checkNotNullExpressionValue(from, "from(mContext)");
        this.mInflater = from;
        this.mMultiItemTypeSupport = multiItemTypeSupport;
        this.mData = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        T t10;
        List<? extends T> list = this.mData;
        if (list == null || (t10 = list.get(i9)) == null) {
            return 0;
        }
        return this.mMultiItemTypeSupport.getItemViewType(i9, t10);
    }

    @Override // com.guochao.faceshow.adapter.CommonRecyclerAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(this.mInflater.inflate(this.mMultiItemTypeSupport.getLayoutId(i9), parent, false));
    }
}

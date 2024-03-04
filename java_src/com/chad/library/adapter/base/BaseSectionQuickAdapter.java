package com.chad.library.adapter.base;

import androidx.annotation.LayoutRes;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.entity.SectionEntity;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005B-\b\u0016\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0001\u0010\b\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n¢\u0006\u0002\u0010\u000bB#\b\u0007\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n¢\u0006\u0002\u0010\fJ\u001d\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00028\u0000H$¢\u0006\u0002\u0010\u0011J+\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00028\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\nH\u0014¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0007H\u0014J\u001d\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00028\u00012\u0006\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\u001bJ+\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00028\u00012\u0006\u0010\u001a\u001a\u00020\u00072\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\nH\u0016¢\u0006\u0002\u0010\u001cJ\u0012\u0010\u001d\u001a\u00020\u000e2\b\b\u0001\u0010\b\u001a\u00020\u0007H\u0004R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/chad/library/adapter/base/entity/SectionEntity;", "VH", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", "sectionHeadResId", "", "layoutResId", "data", "", "(IILjava/util/List;)V", "(ILjava/util/List;)V", "convertHeader", "", "helper", BaseConfig.ITEM, "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;)V", "payloads", "", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;Ljava/util/List;)V", "isFixedViewType", "", "type", "onBindViewHolder", "holder", "position", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/util/List;)V", "setNormalLayout", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public abstract class BaseSectionQuickAdapter<T extends SectionEntity, VH extends BaseViewHolder> extends BaseMultiItemQuickAdapter<T, VH> {
    private final int sectionHeadResId;

    @JvmOverloads
    public BaseSectionQuickAdapter(@LayoutRes int i9) {
        this(i9, null, 2, null);
    }

    public /* synthetic */ BaseSectionQuickAdapter(int i9, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : list);
    }

    protected abstract void convertHeader(@NotNull VH vh2, @NotNull T t10);

    protected void convertHeader(@NotNull VH helper, @NotNull T item, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public boolean isFixedViewType(int i9) {
        return super.isFixedViewType(i9) || i9 == -99;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9) {
        onBindViewHolder((BaseSectionQuickAdapter<T, VH>) ((BaseViewHolder) viewHolder), i9);
    }

    protected final void setNormalLayout(@LayoutRes int i9) {
        addItemType(-100, i9);
    }

    @JvmOverloads
    public BaseSectionQuickAdapter(@LayoutRes int i9, @Nullable List<T> list) {
        super(list);
        this.sectionHeadResId = i9;
        addItemType(-99, i9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9, List list) {
        onBindViewHolder((BaseSectionQuickAdapter<T, VH>) ((BaseViewHolder) viewHolder), i9, (List<Object>) list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull VH holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder.getItemViewType() == -99) {
            convertHeader(holder, (SectionEntity) getItem(i9 - getHeaderLayoutCount()));
        } else {
            super.onBindViewHolder((BaseSectionQuickAdapter<T, VH>) holder, i9);
        }
    }

    public /* synthetic */ BaseSectionQuickAdapter(int i9, int i10, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, (i11 & 4) != 0 ? null : list);
    }

    public BaseSectionQuickAdapter(@LayoutRes int i9, @LayoutRes int i10, @Nullable List<T> list) {
        this(i9, list);
        setNormalLayout(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull VH holder, int i9, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder((BaseSectionQuickAdapter<T, VH>) holder, i9);
        } else if (holder.getItemViewType() == -99) {
            convertHeader(holder, (SectionEntity) getItem(i9 - getHeaderLayoutCount()), payloads);
        } else {
            super.onBindViewHolder((BaseSectionQuickAdapter<T, VH>) holder, i9, payloads);
        }
    }
}

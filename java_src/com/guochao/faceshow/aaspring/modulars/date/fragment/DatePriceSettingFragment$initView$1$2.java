package com.guochao.faceshow.aaspring.modulars.date.fragment;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.modulars.date.fragment.DatePriceSettingFragment;
import com.guochao.faceshow.aaspring.modulars.date.model.DatePriceSettingModel;
import com.guochao.faceshow.databinding.ListItemDatePriceBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u001c\u0010\n\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005H\u0016¨\u0006\u000e"}, d2 = {"com/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;", "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DatePriceSettingFragment$initView$1$2 extends RecyclerView.Adapter<DatePriceSettingFragment.DateItemHolder> {
    final /* synthetic */ List<DatePriceSettingModel.DatePriceRoleModel> $list;
    final /* synthetic */ DatePriceSettingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DatePriceSettingFragment$initView$1$2(DatePriceSettingFragment datePriceSettingFragment, List<DatePriceSettingModel.DatePriceRoleModel> list) {
        this.this$0 = datePriceSettingFragment;
        this.$list = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-1$lambda-0  reason: not valid java name */
    public static final void m364onCreateViewHolder$lambda1$lambda0(DatePriceSettingFragment this$0, DatePriceSettingFragment.DateItemHolder this_apply, View view) {
        boolean z10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        z10 = this$0.saving;
        if (z10) {
            return;
        }
        this$0.currentSelectIndex = this_apply.getBindingAdapterPosition();
        RecyclerView.Adapter adapter = this$0.getViewBinding().recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.$list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull DatePriceSettingFragment.DateItemHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        DatePriceSettingModel.DatePriceRoleModel datePriceRoleModel = this.$list.get(i9);
        holder.bind(datePriceRoleModel);
        holder.itemView.setTag(datePriceRoleModel);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public DatePriceSettingFragment.DateItemHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        DatePriceSettingFragment datePriceSettingFragment = this.this$0;
        ListItemDatePriceBinding inflate = ListItemDatePriceBinding.inflate(datePriceSettingFragment.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(layoutInflater)");
        final DatePriceSettingFragment.DateItemHolder dateItemHolder = new DatePriceSettingFragment.DateItemHolder(datePriceSettingFragment, inflate);
        final DatePriceSettingFragment datePriceSettingFragment2 = this.this$0;
        dateItemHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DatePriceSettingFragment$initView$1$2.m364onCreateViewHolder$lambda1$lambda0(DatePriceSettingFragment.this, dateItemHolder, view);
            }
        });
        return dateItemHolder;
    }
}

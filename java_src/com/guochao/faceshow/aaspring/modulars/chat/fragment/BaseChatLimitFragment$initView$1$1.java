package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment$initView$1$1", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BaseChatLimitFragment$initView$1$1 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ RecyclerView $this_apply;
    final /* synthetic */ BaseChatLimitFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseChatLimitFragment$initView$1$1(RecyclerView recyclerView, BaseChatLimitFragment baseChatLimitFragment) {
        this.$this_apply = recyclerView;
        this.this$0 = baseChatLimitFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-0  reason: not valid java name */
    public static final void m348onCreateViewHolder$lambda0(BaseChatLimitFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        this$0.selectItem(((Integer) tag).intValue());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.this$0.getMDataList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.itemView.setTag(Integer.valueOf(i9));
        ResourceListItemBean resourceListItemBean = this.this$0.getMDataList().get(i9);
        Intrinsics.checkNotNullExpressionValue(resourceListItemBean, "mDataList[position]");
        ResourceListItemBean resourceListItemBean2 = resourceListItemBean;
        View view = holder.itemView;
        ResourceListItemBean mSelectItem = this.this$0.getMSelectItem();
        boolean z10 = false;
        if (mSelectItem != null && mSelectItem.getId() == resourceListItemBean2.getId()) {
            z10 = true;
        }
        view.setSelected(z10);
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(DensityUtil.dp2px(i9 == 0 ? 16.0f : 0.0f));
        marginLayoutParams.setMarginEnd(DensityUtil.dp2px(12.0f));
        holder.itemView.setLayoutParams(marginLayoutParams);
        hc.a.j((ImageView) holder.getView(R.id.icon_gift), resourceListItemBean2.getImg());
        ((TextView) holder.getView(R.id.gift_name)).setText(resourceListItemBean2.getName());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("");
        String price = resourceListItemBean2.getPrice();
        Intrinsics.checkNotNullExpressionValue(price, "resourceListItemBean.price");
        sb2.append(Integer.parseInt(price));
        sb2.append(this.this$0.getString(R.string.i_want_to_charge_diamonds));
        ((TextView) holder.getView(R.id.gift_price)).setText(sb2.toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseViewHolder baseViewHolder = new BaseViewHolder(this.$this_apply.getContext(), R.layout.item_chat_limit_normal, parent);
        View view = baseViewHolder.itemView;
        final BaseChatLimitFragment baseChatLimitFragment = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BaseChatLimitFragment$initView$1$1.m348onCreateViewHolder$lambda0(BaseChatLimitFragment.this, view2);
            }
        });
        return baseViewHolder;
    }
}

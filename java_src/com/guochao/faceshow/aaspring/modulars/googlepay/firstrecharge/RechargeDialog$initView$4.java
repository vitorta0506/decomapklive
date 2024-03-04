package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.mine.model.RecharfeModeBean;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$initView$4", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RechargeDialog$initView$4 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ RechargeDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RechargeDialog$initView$4(RechargeDialog rechargeDialog) {
        this.this$0 = rechargeDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-0  reason: not valid java name */
    public static final void m434onCreateViewHolder$lambda0(RechargeDialog this$0, RechargeDialog$initView$4 this$1, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        String sign = this$0.getMDataList().get(((Integer) tag).intValue()).getSign();
        Intrinsics.checkNotNullExpressionValue(sign, "mDataList[position].sign");
        this$0.setMIsSelectId(sign);
        this$1.notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.this$0.getMDataList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (i9 % 3 == 0) {
            if (q7.a.e().j()) {
                ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ((ViewGroup.MarginLayoutParams) layoutParams).setMarginEnd(DensityUtil.dp2px(0.0f));
            } else {
                ViewGroup.LayoutParams layoutParams2 = holder.itemView.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ((ViewGroup.MarginLayoutParams) layoutParams2).setMarginStart(DensityUtil.dp2px(0.0f));
            }
        } else if (q7.a.e().j()) {
            ViewGroup.LayoutParams layoutParams3 = holder.itemView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams3).setMarginEnd(DensityUtil.dp2px(10.0f));
        } else {
            ViewGroup.LayoutParams layoutParams4 = holder.itemView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams4).setMarginStart(DensityUtil.dp2px(10.0f));
        }
        if (i9 < 3) {
            ViewGroup.LayoutParams layoutParams5 = holder.itemView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams5).topMargin = DensityUtil.dp2px(0.0f);
        } else {
            ViewGroup.LayoutParams layoutParams6 = holder.itemView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams6, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams6).topMargin = DensityUtil.dp2px(10.0f);
        }
        holder.itemView.setTag(Integer.valueOf(i9));
        RecharfeModeBean recharfeModeBean = this.this$0.getMDataList().get(i9);
        holder.itemView.setBackgroundResource(this.this$0.getRechargeItemBackground());
        holder.itemView.setSelected(Intrinsics.areEqual(recharfeModeBean.getSign(), this.this$0.getMIsSelectId()));
        if (Intrinsics.areEqual(recharfeModeBean.getSign(), this.this$0.getMIsSelectId())) {
            ((TextView) holder.getView(R.id.diamond_count)).setTextColor(this.this$0.getSelectTextColor());
            ((TextView) holder.getView(R.id.tv_price)).setTextColor(this.this$0.getSelectTextColor());
        } else {
            ((TextView) holder.getView(R.id.diamond_count)).setTextColor(ContextCompat.getColor(holder.itemView.getContext(), R.color.color_ugc_text_level_1));
            ((TextView) holder.getView(R.id.tv_price)).setTextColor(ContextCompat.getColor(holder.itemView.getContext(), R.color.color_ugc_text_level_1));
        }
        ((TextView) holder.getView(R.id.diamond_count)).setText(String.valueOf(recharfeModeBean.getNewNumber()));
        TextView textView = (TextView) holder.getView(R.id.extra_diamond_count);
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(recharfeModeBean.getAwardNumber());
        textView.setText(sb2.toString());
        textView.setVisibility(recharfeModeBean.getAwardNumber() == 0 ? 8 : 0);
        if (recharfeModeBean.isActivity == 1) {
            TextView textView2 = (TextView) holder.getView(R.id.tv_sale_diamond);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(recharfeModeBean.getPreferenCount() == 1 ? "First" : "");
            sb3.append('+');
            sb3.append(recharfeModeBean.getPreferences());
            sb3.append('%');
            textView2.setText(sb3.toString());
            ((TextView) holder.getView(R.id.tv_sale_diamond)).setVisibility(0);
        } else {
            ((TextView) holder.getView(R.id.tv_sale_diamond)).setVisibility(8);
        }
        TextView textView3 = (TextView) holder.getView(R.id.tv_price);
        textView3.setText(recharfeModeBean.getPrice());
        textView3.setAlpha(TextUtils.isEmpty(recharfeModeBean.getPrice()) ? 0.0f : 1.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseViewHolder baseViewHolder = new BaseViewHolder(parent.getContext(), R.layout.item_recharge_dialog, parent);
        View view = baseViewHolder.itemView;
        final RechargeDialog rechargeDialog = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RechargeDialog$initView$4.m434onCreateViewHolder$lambda0(RechargeDialog.this, this, view2);
            }
        });
        return baseViewHolder;
    }
}

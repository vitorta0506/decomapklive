package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.FirstChargeGiftBean;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.List;
/* loaded from: classes3.dex */
public class FirstChargeGiftAdapter extends RecyclerView.Adapter<BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private final Fragment f19224a;

    /* renamed from: b  reason: collision with root package name */
    final List<FirstChargeGiftBean.ItemBean> f19225b;

    /* renamed from: c  reason: collision with root package name */
    private int f19226c;

    /* renamed from: d  reason: collision with root package name */
    int f19227d;

    public FirstChargeGiftAdapter(@NonNull Fragment fragment, @NonNull List<FirstChargeGiftBean.ItemBean> list, int i9) {
        this.f19224a = fragment;
        this.f19225b = list;
        this.f19226c = i9;
        if (i9 == 2) {
            this.f19227d = DensityUtil.dp2px(4.0f);
        } else {
            this.f19227d = DensityUtil.dp2px(6.0f);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<FirstChargeGiftBean.ItemBean> list = this.f19225b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
        FirstChargeGiftBean.ItemBean itemBean = this.f19225b.get(i9);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.icon);
        TextView textView = (TextView) baseViewHolder.getView(R.id.count);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.name);
        CardView cardView = (CardView) baseViewHolder.getView(R.id.card);
        View view = baseViewHolder.getView(R.id.gift_bg);
        if (this.f19226c == 2) {
            cardView.setCardBackgroundColor(-1);
        } else {
            cardView.setCardBackgroundColor(Color.parseColor("#FFF1D7"));
        }
        int itemCount = getItemCount();
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) baseViewHolder.itemView.getLayoutParams();
        if (itemCount > 3) {
            layoutParams.setMarginStart(this.f19227d);
            layoutParams.setMarginEnd(this.f19227d);
        } else {
            layoutParams.setMarginStart(this.f19227d / 2);
            layoutParams.setMarginEnd(this.f19227d / 2);
        }
        if (this.f19226c == 1) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
        int type = itemBean.getType();
        if (type == 1 || type == 2 || type == 3) {
            if (itemBean.getType() == 3) {
                textView2.setText(R.string.i_want_to_charge_shade);
            } else if (itemBean.getType() == 2) {
                textView2.setText(R.string.i_want_to_charge_car);
            } else {
                textView2.setText(R.string.i_want_to_charge_avatar);
            }
            hc.a.k(imageView, itemBean.getUrl(), false);
            textView.setTextColor(Color.parseColor("#79471E"));
            textView.setText(String.format("x%s", itemBean.getNum()));
        } else if (type != 4) {
        } else {
            imageView.setImageResource(R.mipmap.first_charge_icon_zuanshi);
            textView.setTextColor(Color.parseColor("#FF4F17"));
            if (this.f19226c != 1) {
                textView.setText(String.format("x%s", itemBean.getNum()));
                return;
            }
            Fragment fragment = this.f19224a;
            textView.setText(fragment.getString(R.string.i_want_to_charge_up_to, itemBean.getNum() + "%"));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(this.f19224a.getLayoutInflater().inflate(R.layout.layout_first_charge_item, viewGroup, false));
    }
}

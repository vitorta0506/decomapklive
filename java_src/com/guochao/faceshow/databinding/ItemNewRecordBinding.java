package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemNewRecordBinding implements ViewBinding {
    @NonNull
    public final ImageView ivRecordIcon;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvItemDate;
    @NonNull
    public final TextView tvRecordInfo;
    @NonNull
    public final TextView tvRecordMoney;
    @NonNull
    public final TextView tvRecordOrderNo;
    @NonNull
    public final TextView tvRefund;

    private ItemNewRecordBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = frameLayout;
        this.ivRecordIcon = imageView;
        this.tvItemDate = textView;
        this.tvRecordInfo = textView2;
        this.tvRecordMoney = textView3;
        this.tvRecordOrderNo = textView4;
        this.tvRefund = textView5;
    }

    @NonNull
    public static ItemNewRecordBinding bind(@NonNull View view) {
        int i9 = R.id.iv_record_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_record_icon);
        if (imageView != null) {
            i9 = R.id.tv_item_date;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_item_date);
            if (textView != null) {
                i9 = R.id.tv_record_info;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_record_info);
                if (textView2 != null) {
                    i9 = R.id.tv_record_money;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_record_money);
                    if (textView3 != null) {
                        i9 = R.id.tv_record_order_no;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_record_order_no);
                        if (textView4 != null) {
                            i9 = R.id.tv_refund;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_refund);
                            if (textView5 != null) {
                                return new ItemNewRecordBinding((FrameLayout) view, imageView, textView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemNewRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemNewRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_new_record, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}

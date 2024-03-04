package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class TransactionRecordListItemBinding implements ViewBinding {
    @NonNull
    public final ImageView ivTypeImg;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvCreatedTime;
    @NonNull
    public final TextView tvMoney;
    @NonNull
    public final TextView tvStatus;
    @NonNull
    public final TextView tvTips;

    private TransactionRecordListItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.ivTypeImg = imageView;
        this.tvCreatedTime = textView;
        this.tvMoney = textView2;
        this.tvStatus = textView3;
        this.tvTips = textView4;
    }

    @NonNull
    public static TransactionRecordListItemBinding bind(@NonNull View view) {
        int i9 = R.id.ivTypeImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivTypeImg);
        if (imageView != null) {
            i9 = R.id.tvCreatedTime;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvCreatedTime);
            if (textView != null) {
                i9 = R.id.tvMoney;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMoney);
                if (textView2 != null) {
                    i9 = R.id.tvStatus;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvStatus);
                    if (textView3 != null) {
                        i9 = R.id.tvTips;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTips);
                        if (textView4 != null) {
                            return new TransactionRecordListItemBinding((LinearLayout) view, imageView, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static TransactionRecordListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static TransactionRecordListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.transaction_record_list_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}

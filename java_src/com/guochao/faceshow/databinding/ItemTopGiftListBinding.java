package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class ItemTopGiftListBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView civHeader;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final TextView tvNo;
    @NonNull
    public final TextView tvPriceCount;

    private ItemTopGiftListBinding(@NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.civHeader = normalCircleImageView;
        this.tvNickName = textView;
        this.tvNo = textView2;
        this.tvPriceCount = textView3;
    }

    @NonNull
    public static ItemTopGiftListBinding bind(@NonNull View view) {
        int i9 = R.id.civHeader;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.civHeader);
        if (normalCircleImageView != null) {
            i9 = R.id.tvNickName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvNickName);
            if (textView != null) {
                i9 = R.id.tvNo;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNo);
                if (textView2 != null) {
                    i9 = R.id.tvPriceCount;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvPriceCount);
                    if (textView3 != null) {
                        return new ItemTopGiftListBinding((LinearLayout) view, normalCircleImageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemTopGiftListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTopGiftListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_top_gift_list, viewGroup, false);
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

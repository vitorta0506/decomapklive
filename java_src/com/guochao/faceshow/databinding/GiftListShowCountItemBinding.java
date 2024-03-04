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
public final class GiftListShowCountItemBinding implements ViewBinding {
    @NonNull
    public final LinearLayout flItemLayout;
    @NonNull
    public final ImageView ivGiftImg;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvGiftCount;
    @NonNull
    public final TextView tvGiftName;

    private GiftListShowCountItemBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.flItemLayout = linearLayout2;
        this.ivGiftImg = imageView;
        this.tvGiftCount = textView;
        this.tvGiftName = textView2;
    }

    @NonNull
    public static GiftListShowCountItemBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.ivGiftImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivGiftImg);
        if (imageView != null) {
            i9 = R.id.tvGiftCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvGiftCount);
            if (textView != null) {
                i9 = R.id.tvGiftName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvGiftName);
                if (textView2 != null) {
                    return new GiftListShowCountItemBinding(linearLayout, linearLayout, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static GiftListShowCountItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static GiftListShowCountItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.gift_list_show_count_item, viewGroup, false);
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

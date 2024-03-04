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
public final class LayoutGiftAdsAreaBinding implements ViewBinding {
    @NonNull
    public final LinearLayout adsArea;
    @NonNull
    public final ImageView adsImg;
    @NonNull
    public final LinearLayout adsLl;
    @NonNull
    public final TextView adsTips;
    @NonNull
    public final ImageView rankList;
    @NonNull
    private final LinearLayout rootView;

    private LayoutGiftAdsAreaBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.adsArea = linearLayout2;
        this.adsImg = imageView;
        this.adsLl = linearLayout3;
        this.adsTips = textView;
        this.rankList = imageView2;
    }

    @NonNull
    public static LayoutGiftAdsAreaBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.ads_img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ads_img);
        if (imageView != null) {
            i9 = R.id.ads_ll;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ads_ll);
            if (linearLayout2 != null) {
                i9 = R.id.ads_tips;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ads_tips);
                if (textView != null) {
                    i9 = R.id.rank_list;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.rank_list);
                    if (imageView2 != null) {
                        return new LayoutGiftAdsAreaBinding(linearLayout, linearLayout, imageView, linearLayout2, textView, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutGiftAdsAreaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutGiftAdsAreaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_gift_ads_area, viewGroup, false);
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

package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemDiscoveryCountrySettingBinding implements ViewBinding {
    @NonNull
    public final LinearLayout contentView;
    @NonNull
    public final ImageView countryFlag;
    @NonNull
    public final TextView countryName;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView selectIV;

    private ItemDiscoveryCountrySettingBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.contentView = linearLayout;
        this.countryFlag = imageView;
        this.countryName = textView;
        this.selectIV = imageView2;
    }

    @NonNull
    public static ItemDiscoveryCountrySettingBinding bind(@NonNull View view) {
        int i9 = R.id.content_view;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_view);
        if (linearLayout != null) {
            i9 = R.id.country_flag;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.country_flag);
            if (imageView != null) {
                i9 = R.id.country_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.country_name);
                if (textView != null) {
                    i9 = R.id.selectIV;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.selectIV);
                    if (imageView2 != null) {
                        return new ItemDiscoveryCountrySettingBinding((FrameLayout) view, linearLayout, imageView, textView, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemDiscoveryCountrySettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemDiscoveryCountrySettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_discovery_country_setting, viewGroup, false);
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

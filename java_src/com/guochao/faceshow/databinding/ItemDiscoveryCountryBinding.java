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
public final class ItemDiscoveryCountryBinding implements ViewBinding {
    @NonNull
    public final FrameLayout contentView;
    @NonNull
    public final ImageView countryFlag;
    @NonNull
    public final TextView countryName;
    @NonNull
    public final ImageView hotTag;
    @NonNull
    private final FrameLayout rootView;

    private ItemDiscoveryCountryBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.contentView = frameLayout2;
        this.countryFlag = imageView;
        this.countryName = textView;
        this.hotTag = imageView2;
    }

    @NonNull
    public static ItemDiscoveryCountryBinding bind(@NonNull View view) {
        int i9 = R.id.content_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.content_view);
        if (frameLayout != null) {
            i9 = R.id.country_flag;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.country_flag);
            if (imageView != null) {
                i9 = R.id.country_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.country_name);
                if (textView != null) {
                    i9 = R.id.hot_tag;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.hot_tag);
                    if (imageView2 != null) {
                        return new ItemDiscoveryCountryBinding((FrameLayout) view, frameLayout, imageView, textView, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemDiscoveryCountryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemDiscoveryCountryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_discovery_country, viewGroup, false);
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

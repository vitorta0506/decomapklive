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
public final class ItemCountryLiveBinding implements ViewBinding {
    @NonNull
    public final TextView countryName;
    @NonNull
    public final ImageView countrySelect;
    @NonNull
    public final ImageView hotTag;
    @NonNull
    private final FrameLayout rootView;

    private ItemCountryLiveBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.countryName = textView;
        this.countrySelect = imageView;
        this.hotTag = imageView2;
    }

    @NonNull
    public static ItemCountryLiveBinding bind(@NonNull View view) {
        int i9 = R.id.country_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.country_name);
        if (textView != null) {
            i9 = R.id.country_select;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.country_select);
            if (imageView != null) {
                i9 = R.id.hot_tag;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.hot_tag);
                if (imageView2 != null) {
                    return new ItemCountryLiveBinding((FrameLayout) view, textView, imageView, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemCountryLiveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemCountryLiveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_country_live, viewGroup, false);
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

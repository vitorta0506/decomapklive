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
public final class ItemLiveDiscoveryBinding implements ViewBinding {
    @NonNull
    public final ImageView countryFlag;
    @NonNull
    public final TextView countryName;
    @NonNull
    private final LinearLayout rootView;

    private ItemLiveDiscoveryBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.countryFlag = imageView;
        this.countryName = textView;
    }

    @NonNull
    public static ItemLiveDiscoveryBinding bind(@NonNull View view) {
        int i9 = R.id.country_flag;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.country_flag);
        if (imageView != null) {
            i9 = R.id.country_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.country_name);
            if (textView != null) {
                return new ItemLiveDiscoveryBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemLiveDiscoveryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemLiveDiscoveryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_live_discovery, viewGroup, false);
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

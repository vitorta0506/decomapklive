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
public final class ActivityInvaliteWebBinding implements ViewBinding {
    @NonNull
    public final LinearLayout adsLl;
    @NonNull
    public final TextView adsTv;
    @NonNull
    public final FrameLayout fragmentContainer;
    @NonNull
    public final ImageView liveAdvert;
    @NonNull
    public final LinearLayout mainLayout;
    @NonNull
    private final LinearLayout rootView;

    private ActivityInvaliteWebBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.adsLl = linearLayout2;
        this.adsTv = textView;
        this.fragmentContainer = frameLayout;
        this.liveAdvert = imageView;
        this.mainLayout = linearLayout3;
    }

    @NonNull
    public static ActivityInvaliteWebBinding bind(@NonNull View view) {
        int i9 = R.id.ads_ll;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ads_ll);
        if (linearLayout != null) {
            i9 = R.id.ads_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ads_tv);
            if (textView != null) {
                i9 = R.id.fragment_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_container);
                if (frameLayout != null) {
                    i9 = R.id.live_advert;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.live_advert);
                    if (imageView != null) {
                        LinearLayout linearLayout2 = (LinearLayout) view;
                        return new ActivityInvaliteWebBinding(linearLayout2, linearLayout, textView, frameLayout, imageView, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityInvaliteWebBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityInvaliteWebBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_invalite_web, viewGroup, false);
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

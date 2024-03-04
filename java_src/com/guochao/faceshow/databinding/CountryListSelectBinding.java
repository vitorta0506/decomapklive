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
public final class CountryListSelectBinding implements ViewBinding {
    @NonNull
    public final ImageView ivImg;
    @NonNull
    public final FrameLayout rlItemLayout;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvName;
    @NonNull
    public final TextView tvRight;

    private CountryListSelectBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.ivImg = imageView;
        this.rlItemLayout = frameLayout2;
        this.tvName = textView;
        this.tvRight = textView2;
    }

    @NonNull
    public static CountryListSelectBinding bind(@NonNull View view) {
        int i9 = R.id.ivImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivImg);
        if (imageView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i9 = R.id.tvName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvName);
            if (textView != null) {
                i9 = R.id.tvRight;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvRight);
                if (textView2 != null) {
                    return new CountryListSelectBinding(frameLayout, imageView, frameLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static CountryListSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static CountryListSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.country_list_select, viewGroup, false);
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

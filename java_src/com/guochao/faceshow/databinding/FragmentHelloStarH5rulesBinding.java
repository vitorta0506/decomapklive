package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentHelloStarH5rulesBinding implements ViewBinding {
    @NonNull
    public final FrameLayout fragmentContainer;
    @NonNull
    public final ImageView ivBlack;
    @NonNull
    private final LinearLayout rootView;

    private FragmentHelloStarH5rulesBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.fragmentContainer = frameLayout;
        this.ivBlack = imageView;
    }

    @NonNull
    public static FragmentHelloStarH5rulesBinding bind(@NonNull View view) {
        int i9 = R.id.fragment_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_container);
        if (frameLayout != null) {
            i9 = R.id.iv_black;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_black);
            if (imageView != null) {
                return new FragmentHelloStarH5rulesBinding((LinearLayout) view, frameLayout, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentHelloStarH5rulesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentHelloStarH5rulesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_hello_star_h5rules, viewGroup, false);
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

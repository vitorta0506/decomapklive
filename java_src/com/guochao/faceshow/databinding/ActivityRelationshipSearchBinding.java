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
public final class ActivityRelationshipSearchBinding implements ViewBinding {
    @NonNull
    public final ImageView bgConfig;
    @NonNull
    public final FrameLayout confirmLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvConfirm;

    private ActivityRelationshipSearchBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.bgConfig = imageView;
        this.confirmLayout = frameLayout;
        this.tvConfirm = textView;
    }

    @NonNull
    public static ActivityRelationshipSearchBinding bind(@NonNull View view) {
        int i9 = R.id.bg_config;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_config);
        if (imageView != null) {
            i9 = R.id.confirm_layout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.confirm_layout);
            if (frameLayout != null) {
                i9 = R.id.tv_confirm;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_confirm);
                if (textView != null) {
                    return new ActivityRelationshipSearchBinding((LinearLayout) view, imageView, frameLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityRelationshipSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityRelationshipSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_relationship_search, viewGroup, false);
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

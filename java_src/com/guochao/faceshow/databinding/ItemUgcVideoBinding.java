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
public final class ItemUgcVideoBinding implements ViewBinding {
    @NonNull
    public final FrameLayout frmQueue;
    @NonNull
    public final ImageView ivSelected;
    @NonNull
    public final ImageView ivThumb;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvDuration;

    private ItemUgcVideoBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.frmQueue = frameLayout;
        this.ivSelected = imageView;
        this.ivThumb = imageView2;
        this.tvDuration = textView;
    }

    @NonNull
    public static ItemUgcVideoBinding bind(@NonNull View view) {
        int i9 = R.id.frmQueue;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.frmQueue);
        if (frameLayout != null) {
            i9 = R.id.iv_selected;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_selected);
            if (imageView != null) {
                i9 = R.id.iv_thumb;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_thumb);
                if (imageView2 != null) {
                    i9 = R.id.tv_duration;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_duration);
                    if (textView != null) {
                        return new ItemUgcVideoBinding((LinearLayout) view, frameLayout, imageView, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemUgcVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemUgcVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_ugc_video, viewGroup, false);
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

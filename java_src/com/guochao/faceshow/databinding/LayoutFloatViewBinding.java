package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutFloatViewBinding implements ViewBinding {
    @NonNull
    public final ImageView clearHalloween;
    @NonNull
    public final ImageView halloweenGif;
    @NonNull
    public final RelativeLayout ontent;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final RelativeLayout viewContent;

    private LayoutFloatViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3) {
        this.rootView = relativeLayout;
        this.clearHalloween = imageView;
        this.halloweenGif = imageView2;
        this.ontent = relativeLayout2;
        this.viewContent = relativeLayout3;
    }

    @NonNull
    public static LayoutFloatViewBinding bind(@NonNull View view) {
        int i9 = R.id.clear_halloween;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.clear_halloween);
        if (imageView != null) {
            i9 = R.id.halloween_gif;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.halloween_gif);
            if (imageView2 != null) {
                i9 = R.id.ontent;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.ontent);
                if (relativeLayout != null) {
                    i9 = R.id.view_content;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.view_content);
                    if (relativeLayout2 != null) {
                        return new LayoutFloatViewBinding((RelativeLayout) view, imageView, imageView2, relativeLayout, relativeLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFloatViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFloatViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_float_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}

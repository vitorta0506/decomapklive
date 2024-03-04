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
import com.guochao.faceshow.aaspring.views.ExpandableImageTextView;
/* loaded from: classes2.dex */
public final class LayoutVideoTranslateBinding implements ViewBinding {
    @NonNull
    public final ImageView ivExpandable;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView translateBtn;
    @NonNull
    public final FrameLayout translateLay;
    @NonNull
    public final ImageView translateLoading;
    @NonNull
    public final ExpandableImageTextView tvExpandable;
    @NonNull
    public final LinearLayout videoTranslate;

    private LayoutVideoTranslateBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView2, @NonNull ExpandableImageTextView expandableImageTextView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.ivExpandable = imageView;
        this.translateBtn = textView;
        this.translateLay = frameLayout;
        this.translateLoading = imageView2;
        this.tvExpandable = expandableImageTextView;
        this.videoTranslate = linearLayout2;
    }

    @NonNull
    public static LayoutVideoTranslateBinding bind(@NonNull View view) {
        int i9 = R.id.iv_expandable;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_expandable);
        if (imageView != null) {
            i9 = R.id.translate_btn;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.translate_btn);
            if (textView != null) {
                i9 = R.id.translate_lay;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.translate_lay);
                if (frameLayout != null) {
                    i9 = R.id.translate_loading;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.translate_loading);
                    if (imageView2 != null) {
                        i9 = R.id.tv_expandable;
                        ExpandableImageTextView expandableImageTextView = (ExpandableImageTextView) ViewBindings.findChildViewById(view, R.id.tv_expandable);
                        if (expandableImageTextView != null) {
                            LinearLayout linearLayout = (LinearLayout) view;
                            return new LayoutVideoTranslateBinding(linearLayout, imageView, textView, frameLayout, imageView2, expandableImageTextView, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutVideoTranslateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutVideoTranslateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_video_translate, viewGroup, false);
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

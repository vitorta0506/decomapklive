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
public final class LayoutBuyDressSuccessBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final ImageView closeView;
    @NonNull
    public final ImageView dressImage;
    @NonNull
    public final TextView iKnow;
    @NonNull
    public final TextView primaryContent;
    @NonNull
    public final TextView primaryTitle;
    @NonNull
    private final FrameLayout rootView;

    private LayoutBuyDressSuccessBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.closeView = imageView;
        this.dressImage = imageView2;
        this.iKnow = textView;
        this.primaryContent = textView2;
        this.primaryTitle = textView3;
    }

    @NonNull
    public static LayoutBuyDressSuccessBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.close_view;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close_view);
            if (imageView != null) {
                i9 = R.id.dress_image;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.dress_image);
                if (imageView2 != null) {
                    i9 = R.id.i_know;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.i_know);
                    if (textView != null) {
                        i9 = R.id.primary_content;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.primary_content);
                        if (textView2 != null) {
                            i9 = R.id.primary_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.primary_title);
                            if (textView3 != null) {
                                return new LayoutBuyDressSuccessBinding((FrameLayout) view, findChildViewById, imageView, imageView2, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutBuyDressSuccessBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBuyDressSuccessBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_buy_dress_success, viewGroup, false);
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

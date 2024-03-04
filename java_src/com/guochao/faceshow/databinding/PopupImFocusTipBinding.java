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
public final class PopupImFocusTipBinding implements ViewBinding {
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final ImageView ivSanjiao;
    @NonNull
    public final TextView primaryContent;
    @NonNull
    public final TextView primaryTitle;
    @NonNull
    private final LinearLayout rootView;

    private PopupImFocusTipBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.ivClose = imageView;
        this.ivSanjiao = imageView2;
        this.primaryContent = textView;
        this.primaryTitle = textView2;
    }

    @NonNull
    public static PopupImFocusTipBinding bind(@NonNull View view) {
        int i9 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (imageView != null) {
            i9 = R.id.iv_sanjiao;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_sanjiao);
            if (imageView2 != null) {
                i9 = R.id.primary_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.primary_content);
                if (textView != null) {
                    i9 = R.id.primary_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.primary_title);
                    if (textView2 != null) {
                        return new PopupImFocusTipBinding((LinearLayout) view, imageView, imageView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopupImFocusTipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupImFocusTipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.popup_im_focus_tip, viewGroup, false);
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

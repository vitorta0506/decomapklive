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
import com.guochao.faceshow.aaspring.views.TopicAndAtTextView;
/* loaded from: classes2.dex */
public final class LayoutTranslateDynamicBinding implements ViewBinding {
    @NonNull
    public final TextView hideTranslateBtn;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView translateBtn;
    @NonNull
    public final TopicAndAtTextView translateContent;
    @NonNull
    public final LinearLayout translateContentLay;
    @NonNull
    public final FrameLayout translateLayout;
    @NonNull
    public final ImageView translateLoading;

    private LayoutTranslateDynamicBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TopicAndAtTextView topicAndAtTextView, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.hideTranslateBtn = textView;
        this.translateBtn = textView2;
        this.translateContent = topicAndAtTextView;
        this.translateContentLay = linearLayout;
        this.translateLayout = frameLayout2;
        this.translateLoading = imageView;
    }

    @NonNull
    public static LayoutTranslateDynamicBinding bind(@NonNull View view) {
        int i9 = R.id.hide_translate_btn;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.hide_translate_btn);
        if (textView != null) {
            i9 = R.id.translate_btn;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.translate_btn);
            if (textView2 != null) {
                i9 = R.id.translate_content;
                TopicAndAtTextView topicAndAtTextView = (TopicAndAtTextView) ViewBindings.findChildViewById(view, R.id.translate_content);
                if (topicAndAtTextView != null) {
                    i9 = R.id.translate_content_lay;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.translate_content_lay);
                    if (linearLayout != null) {
                        FrameLayout frameLayout = (FrameLayout) view;
                        i9 = R.id.translate_loading;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.translate_loading);
                        if (imageView != null) {
                            return new LayoutTranslateDynamicBinding(frameLayout, textView, textView2, topicAndAtTextView, linearLayout, frameLayout, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutTranslateDynamicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutTranslateDynamicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_translate_dynamic, viewGroup, false);
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

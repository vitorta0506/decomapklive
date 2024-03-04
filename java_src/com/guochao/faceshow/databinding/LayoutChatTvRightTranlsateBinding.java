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
import com.guochao.faceshow.aaspring.views.ControlClickSpanTextView;
/* loaded from: classes2.dex */
public final class LayoutChatTvRightTranlsateBinding implements ViewBinding {
    @NonNull
    public final FrameLayout flTranslate;
    @NonNull
    public final ImageView loadingAnim;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final View tvDivider;
    @NonNull
    public final ControlClickSpanTextView tvMsgContent;
    @NonNull
    public final TextView tvTranslateTarget;
    @NonNull
    public final ControlClickSpanTextView tvTranslation;

    private LayoutChatTvRightTranlsateBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull ControlClickSpanTextView controlClickSpanTextView, @NonNull TextView textView, @NonNull ControlClickSpanTextView controlClickSpanTextView2) {
        this.rootView = linearLayout;
        this.flTranslate = frameLayout;
        this.loadingAnim = imageView;
        this.tvDivider = view;
        this.tvMsgContent = controlClickSpanTextView;
        this.tvTranslateTarget = textView;
        this.tvTranslation = controlClickSpanTextView2;
    }

    @NonNull
    public static LayoutChatTvRightTranlsateBinding bind(@NonNull View view) {
        int i9 = R.id.fl_translate;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_translate);
        if (frameLayout != null) {
            i9 = R.id.loading_anim;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.loading_anim);
            if (imageView != null) {
                i9 = R.id.tv_divider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.tv_divider);
                if (findChildViewById != null) {
                    i9 = R.id.tv_msg_content;
                    ControlClickSpanTextView controlClickSpanTextView = (ControlClickSpanTextView) ViewBindings.findChildViewById(view, R.id.tv_msg_content);
                    if (controlClickSpanTextView != null) {
                        i9 = R.id.tv_translate_target;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_translate_target);
                        if (textView != null) {
                            i9 = R.id.tv_translation;
                            ControlClickSpanTextView controlClickSpanTextView2 = (ControlClickSpanTextView) ViewBindings.findChildViewById(view, R.id.tv_translation);
                            if (controlClickSpanTextView2 != null) {
                                return new LayoutChatTvRightTranlsateBinding((LinearLayout) view, frameLayout, imageView, findChildViewById, controlClickSpanTextView, textView, controlClickSpanTextView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutChatTvRightTranlsateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutChatTvRightTranlsateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_chat_tv_right_tranlsate, viewGroup, false);
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

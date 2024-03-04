package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ListItemChatShadingBinding implements ViewBinding {
    @NonNull
    public final ImageView ivChatShading;
    @NonNull
    public final ImageView ivIsCheck;
    @NonNull
    public final View mask;
    @NonNull
    public final ImageView mvpIV;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView tvChatShadingName;
    @NonNull
    public final TextView tvTimeLimit;

    private ListItemChatShadingBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = constraintLayout;
        this.ivChatShading = imageView;
        this.ivIsCheck = imageView2;
        this.mask = view;
        this.mvpIV = imageView3;
        this.tvChatShadingName = textView;
        this.tvTimeLimit = textView2;
    }

    @NonNull
    public static ListItemChatShadingBinding bind(@NonNull View view) {
        int i9 = R.id.iv_chat_shading;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_chat_shading);
        if (imageView != null) {
            i9 = R.id.iv_is_check;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_is_check);
            if (imageView2 != null) {
                i9 = R.id.mask;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.mask);
                if (findChildViewById != null) {
                    i9 = R.id.mvpIV;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.mvpIV);
                    if (imageView3 != null) {
                        i9 = R.id.tv_chat_shading_name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_chat_shading_name);
                        if (textView != null) {
                            i9 = R.id.tv_time_limit;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time_limit);
                            if (textView2 != null) {
                                return new ListItemChatShadingBinding((ConstraintLayout) view, imageView, imageView2, findChildViewById, imageView3, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemChatShadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemChatShadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_chat_shading, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}

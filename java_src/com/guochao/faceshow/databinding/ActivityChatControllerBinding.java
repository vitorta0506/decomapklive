package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityChatControllerBinding implements ViewBinding {
    @NonNull
    public final ImageView ivAll;
    @NonNull
    public final ImageView ivFollow;
    @NonNull
    public final LinearLayout llAll;
    @NonNull
    public final LinearLayout llFollow;
    @NonNull
    private final LinearLayout rootView;

    private ActivityChatControllerBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.ivAll = imageView;
        this.ivFollow = imageView2;
        this.llAll = linearLayout2;
        this.llFollow = linearLayout3;
    }

    @NonNull
    public static ActivityChatControllerBinding bind(@NonNull View view) {
        int i9 = R.id.iv_all;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_all);
        if (imageView != null) {
            i9 = R.id.iv_follow;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_follow);
            if (imageView2 != null) {
                i9 = R.id.ll_all;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_all);
                if (linearLayout != null) {
                    i9 = R.id.ll_follow;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_follow);
                    if (linearLayout2 != null) {
                        return new ActivityChatControllerBinding((LinearLayout) view, imageView, imageView2, linearLayout, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityChatControllerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChatControllerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_chat_controller, viewGroup, false);
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

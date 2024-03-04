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
public final class PopupNewMessageBinding implements ViewBinding {
    @NonNull
    public final FrameLayout flNewMessage;
    @NonNull
    public final ImageView ivDown;
    @NonNull
    public final LinearLayout llNewMsg;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvNew;

    private PopupNewMessageBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.flNewMessage = frameLayout2;
        this.ivDown = imageView;
        this.llNewMsg = linearLayout;
        this.tvNew = textView;
    }

    @NonNull
    public static PopupNewMessageBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.iv_down;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_down);
        if (imageView != null) {
            i9 = R.id.ll_new_msg;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_new_msg);
            if (linearLayout != null) {
                i9 = R.id.tv_New;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_New);
                if (textView != null) {
                    return new PopupNewMessageBinding(frameLayout, frameLayout, imageView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopupNewMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupNewMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.popup_new_message, viewGroup, false);
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

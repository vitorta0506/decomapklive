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
public final class LiveFirstRechargeCloseTipBinding implements ViewBinding {
    @NonNull
    public final ImageView ivClose;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvConfirm;
    @NonNull
    public final TextView tvContent;

    private LiveFirstRechargeCloseTipBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.ivClose = imageView;
        this.tvConfirm = textView;
        this.tvContent = textView2;
    }

    @NonNull
    public static LiveFirstRechargeCloseTipBinding bind(@NonNull View view) {
        int i9 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (imageView != null) {
            i9 = R.id.tv_confirm;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_confirm);
            if (textView != null) {
                i9 = R.id.tv_content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
                if (textView2 != null) {
                    return new LiveFirstRechargeCloseTipBinding((FrameLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveFirstRechargeCloseTipBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveFirstRechargeCloseTipBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_first_recharge_close_tip, viewGroup, false);
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

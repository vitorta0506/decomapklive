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
public final class DialogFirstRechargeResultBinding implements ViewBinding {
    @NonNull
    public final FrameLayout fragmentContent;
    @NonNull
    public final ImageView ivClose;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvIKnow;

    private DialogFirstRechargeResultBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.fragmentContent = frameLayout2;
        this.ivClose = imageView;
        this.tvIKnow = textView;
    }

    @NonNull
    public static DialogFirstRechargeResultBinding bind(@NonNull View view) {
        int i9 = R.id.fragment_content;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_content);
        if (frameLayout != null) {
            i9 = R.id.iv_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
            if (imageView != null) {
                i9 = R.id.tv_i_know;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_i_know);
                if (textView != null) {
                    return new DialogFirstRechargeResultBinding((FrameLayout) view, frameLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogFirstRechargeResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogFirstRechargeResultBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_first_recharge_result, viewGroup, false);
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

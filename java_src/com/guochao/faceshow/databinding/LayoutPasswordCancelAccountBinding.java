package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutPasswordCancelAccountBinding implements ViewBinding {
    @NonNull
    public final EditText etPwd;
    @NonNull
    public final ImageView ivPwd;
    @NonNull
    public final LinearLayout llPwd;
    @NonNull
    private final LinearLayout rootView;

    private LayoutPasswordCancelAccountBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.etPwd = editText;
        this.ivPwd = imageView;
        this.llPwd = linearLayout2;
    }

    @NonNull
    public static LayoutPasswordCancelAccountBinding bind(@NonNull View view) {
        int i9 = R.id.et_pwd;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_pwd);
        if (editText != null) {
            i9 = R.id.iv_pwd;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pwd);
            if (imageView != null) {
                i9 = R.id.ll_pwd;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_pwd);
                if (linearLayout != null) {
                    return new LayoutPasswordCancelAccountBinding((LinearLayout) view, editText, imageView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutPasswordCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPasswordCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_password_cancel_account, viewGroup, false);
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

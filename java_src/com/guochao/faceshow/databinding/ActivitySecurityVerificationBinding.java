package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivitySecurityVerificationBinding implements ViewBinding {
    @NonNull
    public final TextView btnNext;
    @NonNull
    public final EditText etEmail;
    @NonNull
    public final EditText etPwd;
    @NonNull
    public final ImageView ivEmailState;
    @NonNull
    public final ImageView ivPwdState;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvRetrievePassword;

    private ActivitySecurityVerificationBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.btnNext = textView;
        this.etEmail = editText;
        this.etPwd = editText2;
        this.ivEmailState = imageView;
        this.ivPwdState = imageView2;
        this.tvRetrievePassword = textView2;
    }

    @NonNull
    public static ActivitySecurityVerificationBinding bind(@NonNull View view) {
        int i9 = R.id.btn_next;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_next);
        if (textView != null) {
            i9 = R.id.et_email;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_email);
            if (editText != null) {
                i9 = R.id.et_pwd;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_pwd);
                if (editText2 != null) {
                    i9 = R.id.iv_email_state;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_email_state);
                    if (imageView != null) {
                        i9 = R.id.iv_pwd_state;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pwd_state);
                        if (imageView2 != null) {
                            i9 = R.id.tv_retrieve_password;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_retrieve_password);
                            if (textView2 != null) {
                                return new ActivitySecurityVerificationBinding((LinearLayout) view, textView, editText, editText2, imageView, imageView2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivitySecurityVerificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySecurityVerificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_security_verification, viewGroup, false);
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

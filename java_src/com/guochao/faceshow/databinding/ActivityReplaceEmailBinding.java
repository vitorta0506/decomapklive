package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityReplaceEmailBinding implements ViewBinding {
    @NonNull
    public final TextView btnBind;
    @NonNull
    public final EditText etEmail;
    @NonNull
    public final EditText etVerificationCode;
    @NonNull
    public final ImageView ivVerificationCodeSend;
    @NonNull
    public final RelativeLayout rlVerificationCodeSend;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvVerificationCodeTime;

    private ActivityReplaceEmailBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.btnBind = textView;
        this.etEmail = editText;
        this.etVerificationCode = editText2;
        this.ivVerificationCodeSend = imageView;
        this.rlVerificationCodeSend = relativeLayout;
        this.tvVerificationCodeTime = textView2;
    }

    @NonNull
    public static ActivityReplaceEmailBinding bind(@NonNull View view) {
        int i9 = R.id.btn_bind;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_bind);
        if (textView != null) {
            i9 = R.id.et_email;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_email);
            if (editText != null) {
                i9 = R.id.et_verification_code;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_verification_code);
                if (editText2 != null) {
                    i9 = R.id.iv_verification_code_send;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_verification_code_send);
                    if (imageView != null) {
                        i9 = R.id.rl_verification_code_send;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_verification_code_send);
                        if (relativeLayout != null) {
                            i9 = R.id.tv_verification_code_time;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_verification_code_time);
                            if (textView2 != null) {
                                return new ActivityReplaceEmailBinding((LinearLayout) view, textView, editText, editText2, imageView, relativeLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityReplaceEmailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityReplaceEmailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_replace_email, viewGroup, false);
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

package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
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
public final class LayoutEmailCodeCancelAccountBinding implements ViewBinding {
    @NonNull
    public final EditText etCode;
    @NonNull
    public final TextView etPhone;
    @NonNull
    public final ImageView ivEmail;
    @NonNull
    public final LinearLayout llCode;
    @NonNull
    public final LinearLayout llPhone;
    @NonNull
    public final FrameLayout rlSend;
    @NonNull
    public final FrameLayout rlSendHide;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvCode;

    private LayoutEmailCodeCancelAccountBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.etCode = editText;
        this.etPhone = textView;
        this.ivEmail = imageView;
        this.llCode = linearLayout2;
        this.llPhone = linearLayout3;
        this.rlSend = frameLayout;
        this.rlSendHide = frameLayout2;
        this.tvCode = textView2;
    }

    @NonNull
    public static LayoutEmailCodeCancelAccountBinding bind(@NonNull View view) {
        int i9 = R.id.et_code;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_code);
        if (editText != null) {
            i9 = R.id.et_phone;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.et_phone);
            if (textView != null) {
                i9 = R.id.iv_email;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_email);
                if (imageView != null) {
                    i9 = R.id.ll_code;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_code);
                    if (linearLayout != null) {
                        i9 = R.id.ll_phone;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_phone);
                        if (linearLayout2 != null) {
                            i9 = R.id.rl_send;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_send);
                            if (frameLayout != null) {
                                i9 = R.id.rl_send_hide;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_send_hide);
                                if (frameLayout2 != null) {
                                    i9 = R.id.tv_code;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_code);
                                    if (textView2 != null) {
                                        return new LayoutEmailCodeCancelAccountBinding((LinearLayout) view, editText, textView, imageView, linearLayout, linearLayout2, frameLayout, frameLayout2, textView2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutEmailCodeCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutEmailCodeCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_email_code_cancel_account, viewGroup, false);
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

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
public final class LayoutPhoneCodeCancelAccountBinding implements ViewBinding {
    @NonNull
    public final EditText etCode;
    @NonNull
    public final TextView etPhone;
    @NonNull
    public final ImageView ivNext;
    @NonNull
    public final LinearLayout llCode;
    @NonNull
    public final LinearLayout llCountryHide;
    @NonNull
    public final LinearLayout llPhone;
    @NonNull
    public final FrameLayout rlSend;
    @NonNull
    public final FrameLayout rlSendHide;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView rvCountry;
    @NonNull
    public final TextView tvCode;
    @NonNull
    public final TextView tvCountry;

    private LayoutPhoneCodeCancelAccountBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.etCode = editText;
        this.etPhone = textView;
        this.ivNext = imageView;
        this.llCode = linearLayout2;
        this.llCountryHide = linearLayout3;
        this.llPhone = linearLayout4;
        this.rlSend = frameLayout;
        this.rlSendHide = frameLayout2;
        this.rvCountry = imageView2;
        this.tvCode = textView2;
        this.tvCountry = textView3;
    }

    @NonNull
    public static LayoutPhoneCodeCancelAccountBinding bind(@NonNull View view) {
        int i9 = R.id.et_code;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_code);
        if (editText != null) {
            i9 = R.id.et_phone;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.et_phone);
            if (textView != null) {
                i9 = R.id.iv_next;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_next);
                if (imageView != null) {
                    i9 = R.id.ll_code;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_code);
                    if (linearLayout != null) {
                        i9 = R.id.ll_country_hide;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_country_hide);
                        if (linearLayout2 != null) {
                            i9 = R.id.ll_phone;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_phone);
                            if (linearLayout3 != null) {
                                i9 = R.id.rl_send;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_send);
                                if (frameLayout != null) {
                                    i9 = R.id.rl_send_hide;
                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_send_hide);
                                    if (frameLayout2 != null) {
                                        i9 = R.id.rv_country;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.rv_country);
                                        if (imageView2 != null) {
                                            i9 = R.id.tv_code;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_code);
                                            if (textView2 != null) {
                                                i9 = R.id.tv_country;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_country);
                                                if (textView3 != null) {
                                                    return new LayoutPhoneCodeCancelAccountBinding((LinearLayout) view, editText, textView, imageView, linearLayout, linearLayout2, linearLayout3, frameLayout, frameLayout2, imageView2, textView2, textView3);
                                                }
                                            }
                                        }
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
    public static LayoutPhoneCodeCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPhoneCodeCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_phone_code_cancel_account, viewGroup, false);
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

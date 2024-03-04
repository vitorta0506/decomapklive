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
public final class ActivityPhoneSetLoginPasswordBinding implements ViewBinding {
    @NonNull
    public final TextView btnNext;
    @NonNull
    public final EditText etEmail;
    @NonNull
    public final EditText etPhone;
    @NonNull
    public final ImageView ivNext;
    @NonNull
    public final LinearLayout llCountryHide;
    @NonNull
    public final LinearLayout llEmail;
    @NonNull
    public final LinearLayout llPhone;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView rvCountry;
    @NonNull
    public final TextView tvCountry;
    @NonNull
    public final TextView tvUseEmailOrPhone;
    @NonNull
    public final TextView tvUseEmailOrPhoneTip;

    private ActivityPhoneSetLoginPasswordBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.btnNext = textView;
        this.etEmail = editText;
        this.etPhone = editText2;
        this.ivNext = imageView;
        this.llCountryHide = linearLayout2;
        this.llEmail = linearLayout3;
        this.llPhone = linearLayout4;
        this.rvCountry = imageView2;
        this.tvCountry = textView2;
        this.tvUseEmailOrPhone = textView3;
        this.tvUseEmailOrPhoneTip = textView4;
    }

    @NonNull
    public static ActivityPhoneSetLoginPasswordBinding bind(@NonNull View view) {
        int i9 = R.id.btn_next;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_next);
        if (textView != null) {
            i9 = R.id.et_email;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_email);
            if (editText != null) {
                i9 = R.id.et_phone;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_phone);
                if (editText2 != null) {
                    i9 = R.id.iv_next;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_next);
                    if (imageView != null) {
                        i9 = R.id.ll_country_hide;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_country_hide);
                        if (linearLayout != null) {
                            i9 = R.id.ll_email;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_email);
                            if (linearLayout2 != null) {
                                i9 = R.id.ll_phone;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_phone);
                                if (linearLayout3 != null) {
                                    i9 = R.id.rv_country;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.rv_country);
                                    if (imageView2 != null) {
                                        i9 = R.id.tv_country;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_country);
                                        if (textView2 != null) {
                                            i9 = R.id.tv_use_email_or_phone;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_use_email_or_phone);
                                            if (textView3 != null) {
                                                i9 = R.id.tv_use_email_or_phone_tip;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_use_email_or_phone_tip);
                                                if (textView4 != null) {
                                                    return new ActivityPhoneSetLoginPasswordBinding((LinearLayout) view, textView, editText, editText2, imageView, linearLayout, linearLayout2, linearLayout3, imageView2, textView2, textView3, textView4);
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
    public static ActivityPhoneSetLoginPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPhoneSetLoginPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_phone_set_login_password, viewGroup, false);
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

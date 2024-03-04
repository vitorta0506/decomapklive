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
public final class ActivityChangeLoginPasswordPhoneBinding implements ViewBinding {
    @NonNull
    public final TextView btnOk;
    @NonNull
    public final EditText etCode;
    @NonNull
    public final EditText etPwd;
    @NonNull
    public final ImageView ivEmail;
    @NonNull
    public final ImageView ivNext;
    @NonNull
    public final ImageView ivPwd;
    @NonNull
    public final ImageView ivSend;
    @NonNull
    public final LinearLayout llCode;
    @NonNull
    public final LinearLayout llCountryHide;
    @NonNull
    public final LinearLayout llPhone;
    @NonNull
    public final LinearLayout llPwd;
    @NonNull
    public final RelativeLayout rlSend;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView rvCountry;
    @NonNull
    public final TextView tvCode;
    @NonNull
    public final TextView tvCountry;
    @NonNull
    public final TextView tvPayPwd;
    @NonNull
    public final TextView tvPhone;

    private ActivityChangeLoginPasswordPhoneBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView5, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.btnOk = textView;
        this.etCode = editText;
        this.etPwd = editText2;
        this.ivEmail = imageView;
        this.ivNext = imageView2;
        this.ivPwd = imageView3;
        this.ivSend = imageView4;
        this.llCode = linearLayout2;
        this.llCountryHide = linearLayout3;
        this.llPhone = linearLayout4;
        this.llPwd = linearLayout5;
        this.rlSend = relativeLayout;
        this.rvCountry = imageView5;
        this.tvCode = textView2;
        this.tvCountry = textView3;
        this.tvPayPwd = textView4;
        this.tvPhone = textView5;
    }

    @NonNull
    public static ActivityChangeLoginPasswordPhoneBinding bind(@NonNull View view) {
        int i9 = R.id.btn_ok;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
        if (textView != null) {
            i9 = R.id.et_code;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_code);
            if (editText != null) {
                i9 = R.id.et_pwd;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_pwd);
                if (editText2 != null) {
                    i9 = R.id.iv_email;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_email);
                    if (imageView != null) {
                        i9 = R.id.iv_next;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_next);
                        if (imageView2 != null) {
                            i9 = R.id.iv_pwd;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pwd);
                            if (imageView3 != null) {
                                i9 = R.id.iv_send;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_send);
                                if (imageView4 != null) {
                                    i9 = R.id.ll_code;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_code);
                                    if (linearLayout != null) {
                                        i9 = R.id.ll_country_hide;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_country_hide);
                                        if (linearLayout2 != null) {
                                            i9 = R.id.ll_phone;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_phone);
                                            if (linearLayout3 != null) {
                                                i9 = R.id.ll_pwd;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_pwd);
                                                if (linearLayout4 != null) {
                                                    i9 = R.id.rl_send;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_send);
                                                    if (relativeLayout != null) {
                                                        i9 = R.id.rv_country;
                                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.rv_country);
                                                        if (imageView5 != null) {
                                                            i9 = R.id.tv_code;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_code);
                                                            if (textView2 != null) {
                                                                i9 = R.id.tv_country;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_country);
                                                                if (textView3 != null) {
                                                                    i9 = R.id.tv_pay_pwd;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pay_pwd);
                                                                    if (textView4 != null) {
                                                                        i9 = R.id.tv_phone;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_phone);
                                                                        if (textView5 != null) {
                                                                            return new ActivityChangeLoginPasswordPhoneBinding((LinearLayout) view, textView, editText, editText2, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, linearLayout3, linearLayout4, relativeLayout, imageView5, textView2, textView3, textView4, textView5);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityChangeLoginPasswordPhoneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChangeLoginPasswordPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_change_login_password_phone, viewGroup, false);
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

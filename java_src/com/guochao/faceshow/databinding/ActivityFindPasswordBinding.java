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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.lib_core.databinding.GcBaseTitleBarNoLineBinding;
/* loaded from: classes2.dex */
public final class ActivityFindPasswordBinding implements ViewBinding {
    @NonNull
    public final EditText etCode;
    @NonNull
    public final TextView etPhone;
    @NonNull
    public final EditText etPwd;
    @NonNull
    public final GcBaseTitleBarNoLineBinding includeTitle;
    @NonNull
    public final ImageView ivPwd;
    @NonNull
    public final LinearLayout layContent;
    @NonNull
    public final LinearLayout llCode;
    @NonNull
    public final LinearLayout llPhone;
    @NonNull
    public final LinearLayout llPwd;
    @NonNull
    public final TextView next;
    @NonNull
    public final FrameLayout rlSend;
    @NonNull
    public final FrameLayout rlSendHide;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final ImageView rvCountry;
    @NonNull
    public final TextView tvCode;
    @NonNull
    public final TextView tvCountry;

    private ActivityFindPasswordBinding(@NonNull ConstraintLayout constraintLayout, @NonNull EditText editText, @NonNull TextView textView, @NonNull EditText editText2, @NonNull GcBaseTitleBarNoLineBinding gcBaseTitleBarNoLineBinding, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = constraintLayout;
        this.etCode = editText;
        this.etPhone = textView;
        this.etPwd = editText2;
        this.includeTitle = gcBaseTitleBarNoLineBinding;
        this.ivPwd = imageView;
        this.layContent = linearLayout;
        this.llCode = linearLayout2;
        this.llPhone = linearLayout3;
        this.llPwd = linearLayout4;
        this.next = textView2;
        this.rlSend = frameLayout;
        this.rlSendHide = frameLayout2;
        this.rvCountry = imageView2;
        this.tvCode = textView3;
        this.tvCountry = textView4;
    }

    @NonNull
    public static ActivityFindPasswordBinding bind(@NonNull View view) {
        int i9 = R.id.et_code;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_code);
        if (editText != null) {
            i9 = R.id.et_phone;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.et_phone);
            if (textView != null) {
                i9 = R.id.et_pwd;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_pwd);
                if (editText2 != null) {
                    i9 = R.id.include_title;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.include_title);
                    if (findChildViewById != null) {
                        GcBaseTitleBarNoLineBinding bind = GcBaseTitleBarNoLineBinding.bind(findChildViewById);
                        i9 = R.id.iv_pwd;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pwd);
                        if (imageView != null) {
                            i9 = R.id.lay_content;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_content);
                            if (linearLayout != null) {
                                i9 = R.id.ll_code;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_code);
                                if (linearLayout2 != null) {
                                    i9 = R.id.ll_phone;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_phone);
                                    if (linearLayout3 != null) {
                                        i9 = R.id.ll_pwd;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_pwd);
                                        if (linearLayout4 != null) {
                                            i9 = R.id.next;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.next);
                                            if (textView2 != null) {
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
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_code);
                                                            if (textView3 != null) {
                                                                i9 = R.id.tv_country;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_country);
                                                                if (textView4 != null) {
                                                                    return new ActivityFindPasswordBinding((ConstraintLayout) view, editText, textView, editText2, bind, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView2, frameLayout, frameLayout2, imageView2, textView3, textView4);
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
    public static ActivityFindPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityFindPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_find_password, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}

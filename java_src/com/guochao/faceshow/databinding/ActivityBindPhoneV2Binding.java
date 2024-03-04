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
public final class ActivityBindPhoneV2Binding implements ViewBinding {
    @NonNull
    public final TextView btnConfirm;
    @NonNull
    public final EditText etCode;
    @NonNull
    public final EditText etPhone;
    @NonNull
    public final ImageView ivNext;
    @NonNull
    public final FrameLayout rlSend;
    @NonNull
    public final FrameLayout rlSendHide;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final ImageView rvCountry;
    @NonNull
    public final TextView tvBindPhoneTip;
    @NonNull
    public final TextView tvCode;
    @NonNull
    public final TextView tvCountry;

    private ActivityBindPhoneV2Binding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.btnConfirm = textView;
        this.etCode = editText;
        this.etPhone = editText2;
        this.ivNext = imageView;
        this.rlSend = frameLayout;
        this.rlSendHide = frameLayout2;
        this.rvCountry = imageView2;
        this.tvBindPhoneTip = textView2;
        this.tvCode = textView3;
        this.tvCountry = textView4;
    }

    @NonNull
    public static ActivityBindPhoneV2Binding bind(@NonNull View view) {
        int i9 = R.id.btn_confirm;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_confirm);
        if (textView != null) {
            i9 = R.id.et_code;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_code);
            if (editText != null) {
                i9 = R.id.et_phone;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_phone);
                if (editText2 != null) {
                    i9 = R.id.iv_next;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_next);
                    if (imageView != null) {
                        i9 = R.id.rl_send;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_send);
                        if (frameLayout != null) {
                            i9 = R.id.rl_send_hide;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rl_send_hide);
                            if (frameLayout2 != null) {
                                i9 = R.id.rv_country;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.rv_country);
                                if (imageView2 != null) {
                                    i9 = R.id.tv_bind_phone_tip;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bind_phone_tip);
                                    if (textView2 != null) {
                                        i9 = R.id.tv_code;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_code);
                                        if (textView3 != null) {
                                            i9 = R.id.tv_country;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_country);
                                            if (textView4 != null) {
                                                return new ActivityBindPhoneV2Binding((LinearLayout) view, textView, editText, editText2, imageView, frameLayout, frameLayout2, imageView2, textView2, textView3, textView4);
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
    public static ActivityBindPhoneV2Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityBindPhoneV2Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_bind_phone_v2, viewGroup, false);
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

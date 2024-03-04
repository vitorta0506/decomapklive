package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPaymentPasswordRememberBinding implements ViewBinding {
    @NonNull
    public final TextView btnNext;
    @NonNull
    public final TextView etPwd1;
    @NonNull
    public final TextView etPwd2;
    @NonNull
    public final TextView etPwd3;
    @NonNull
    public final TextView etPwd4;
    @NonNull
    public final TextView etPwd5;
    @NonNull
    public final TextView etPwd6;
    @NonNull
    public final EditText etPwdReal;
    @NonNull
    public final FrameLayout fragmentPassword;
    @NonNull
    public final LinearLayout llBaseLayout;
    @NonNull
    private final LinearLayout rootView;

    private ActivityPaymentPasswordRememberBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull EditText editText, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.btnNext = textView;
        this.etPwd1 = textView2;
        this.etPwd2 = textView3;
        this.etPwd3 = textView4;
        this.etPwd4 = textView5;
        this.etPwd5 = textView6;
        this.etPwd6 = textView7;
        this.etPwdReal = editText;
        this.fragmentPassword = frameLayout;
        this.llBaseLayout = linearLayout2;
    }

    @NonNull
    public static ActivityPaymentPasswordRememberBinding bind(@NonNull View view) {
        int i9 = R.id.btnNext;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnNext);
        if (textView != null) {
            i9 = R.id.etPwd1;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd1);
            if (textView2 != null) {
                i9 = R.id.etPwd2;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd2);
                if (textView3 != null) {
                    i9 = R.id.etPwd3;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd3);
                    if (textView4 != null) {
                        i9 = R.id.etPwd4;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd4);
                        if (textView5 != null) {
                            i9 = R.id.etPwd5;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd5);
                            if (textView6 != null) {
                                i9 = R.id.etPwd6;
                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.etPwd6);
                                if (textView7 != null) {
                                    i9 = R.id.etPwdReal;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.etPwdReal);
                                    if (editText != null) {
                                        i9 = R.id.fragment_password;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_password);
                                        if (frameLayout != null) {
                                            LinearLayout linearLayout = (LinearLayout) view;
                                            return new ActivityPaymentPasswordRememberBinding(linearLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7, editText, frameLayout, linearLayout);
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
    public static ActivityPaymentPasswordRememberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPaymentPasswordRememberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_payment_password_remember, viewGroup, false);
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

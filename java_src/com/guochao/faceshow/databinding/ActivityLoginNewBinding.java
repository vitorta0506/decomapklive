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
public final class ActivityLoginNewBinding implements ViewBinding {
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
    public final LinearLayout llPhone;
    @NonNull
    public final LinearLayout llPwd;
    @NonNull
    public final FrameLayout otherArea;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final ImageView rvCountry;
    @NonNull
    public final TextView tvAlertred;
    @NonNull
    public final TextView tvCountry;
    @NonNull
    public final TextView tvEnterFacecast;

    private ActivityLoginNewBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull GcBaseTitleBarNoLineBinding gcBaseTitleBarNoLineBinding, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = constraintLayout;
        this.etPhone = textView;
        this.etPwd = editText;
        this.includeTitle = gcBaseTitleBarNoLineBinding;
        this.ivPwd = imageView;
        this.layContent = linearLayout;
        this.llPhone = linearLayout2;
        this.llPwd = linearLayout3;
        this.otherArea = frameLayout;
        this.rvCountry = imageView2;
        this.tvAlertred = textView2;
        this.tvCountry = textView3;
        this.tvEnterFacecast = textView4;
    }

    @NonNull
    public static ActivityLoginNewBinding bind(@NonNull View view) {
        int i9 = R.id.et_phone;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.et_phone);
        if (textView != null) {
            i9 = R.id.et_pwd;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_pwd);
            if (editText != null) {
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
                            i9 = R.id.ll_phone;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_phone);
                            if (linearLayout2 != null) {
                                i9 = R.id.ll_pwd;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_pwd);
                                if (linearLayout3 != null) {
                                    i9 = R.id.other_area;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.other_area);
                                    if (frameLayout != null) {
                                        i9 = R.id.rv_country;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.rv_country);
                                        if (imageView2 != null) {
                                            i9 = R.id.tv_alertred;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_alertred);
                                            if (textView2 != null) {
                                                i9 = R.id.tv_country;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_country);
                                                if (textView3 != null) {
                                                    i9 = R.id.tv_enter_facecast;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_enter_facecast);
                                                    if (textView4 != null) {
                                                        return new ActivityLoginNewBinding((ConstraintLayout) view, textView, editText, bind, imageView, linearLayout, linearLayout2, linearLayout3, frameLayout, imageView2, textView2, textView3, textView4);
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
    public static ActivityLoginNewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityLoginNewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_login_new, viewGroup, false);
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

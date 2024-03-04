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
public final class ActivityPhoneLoginRegisteredBinding implements ViewBinding {
    @NonNull
    public final EditText etPhone;
    @NonNull
    public final GcBaseTitleBarNoLineBinding includeTitle;
    @NonNull
    public final ImageView ivNext;
    @NonNull
    public final LinearLayout llCountryHide;
    @NonNull
    public final TextView next;
    @NonNull
    public final FrameLayout otherArea;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final ImageView rvCountry;
    @NonNull
    public final TextView tvCountry;

    private ActivityPhoneLoginRegisteredBinding(@NonNull ConstraintLayout constraintLayout, @NonNull EditText editText, @NonNull GcBaseTitleBarNoLineBinding gcBaseTitleBarNoLineBinding, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.rootView = constraintLayout;
        this.etPhone = editText;
        this.includeTitle = gcBaseTitleBarNoLineBinding;
        this.ivNext = imageView;
        this.llCountryHide = linearLayout;
        this.next = textView;
        this.otherArea = frameLayout;
        this.rvCountry = imageView2;
        this.tvCountry = textView2;
    }

    @NonNull
    public static ActivityPhoneLoginRegisteredBinding bind(@NonNull View view) {
        int i9 = R.id.et_phone;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_phone);
        if (editText != null) {
            i9 = R.id.include_title;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.include_title);
            if (findChildViewById != null) {
                GcBaseTitleBarNoLineBinding bind = GcBaseTitleBarNoLineBinding.bind(findChildViewById);
                i9 = R.id.iv_next;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_next);
                if (imageView != null) {
                    i9 = R.id.ll_country_hide;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_country_hide);
                    if (linearLayout != null) {
                        i9 = R.id.next;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.next);
                        if (textView != null) {
                            i9 = R.id.other_area;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.other_area);
                            if (frameLayout != null) {
                                i9 = R.id.rv_country;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.rv_country);
                                if (imageView2 != null) {
                                    i9 = R.id.tv_country;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_country);
                                    if (textView2 != null) {
                                        return new ActivityPhoneLoginRegisteredBinding((ConstraintLayout) view, editText, bind, imageView, linearLayout, textView, frameLayout, imageView2, textView2);
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
    public static ActivityPhoneLoginRegisteredBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPhoneLoginRegisteredBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_phone_login_registered, viewGroup, false);
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

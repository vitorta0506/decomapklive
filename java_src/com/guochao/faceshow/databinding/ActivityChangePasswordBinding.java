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
public final class ActivityChangePasswordBinding implements ViewBinding {
    @NonNull
    public final TextView btnChangePassword;
    @NonNull
    public final EditText etNewPassword;
    @NonNull
    public final EditText etNewPasswordAgain;
    @NonNull
    public final EditText etOldPassword;
    @NonNull
    public final ImageView ivSuccess;
    @NonNull
    public final LinearLayout rlContentLayout;
    @NonNull
    public final LinearLayout rlSuccessLayout;
    @NonNull
    private final LinearLayout rootView;

    private ActivityChangePasswordBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull EditText editText3, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.btnChangePassword = textView;
        this.etNewPassword = editText;
        this.etNewPasswordAgain = editText2;
        this.etOldPassword = editText3;
        this.ivSuccess = imageView;
        this.rlContentLayout = linearLayout2;
        this.rlSuccessLayout = linearLayout3;
    }

    @NonNull
    public static ActivityChangePasswordBinding bind(@NonNull View view) {
        int i9 = R.id.btnChangePassword;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnChangePassword);
        if (textView != null) {
            i9 = R.id.etNewPassword;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.etNewPassword);
            if (editText != null) {
                i9 = R.id.etNewPasswordAgain;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.etNewPasswordAgain);
                if (editText2 != null) {
                    i9 = R.id.etOldPassword;
                    EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.etOldPassword);
                    if (editText3 != null) {
                        i9 = R.id.ivSuccess;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivSuccess);
                        if (imageView != null) {
                            i9 = R.id.rlContentLayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rlContentLayout);
                            if (linearLayout != null) {
                                i9 = R.id.rlSuccessLayout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rlSuccessLayout);
                                if (linearLayout2 != null) {
                                    return new ActivityChangePasswordBinding((LinearLayout) view, textView, editText, editText2, editText3, imageView, linearLayout, linearLayout2);
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
    public static ActivityChangePasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChangePasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_change_password, viewGroup, false);
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

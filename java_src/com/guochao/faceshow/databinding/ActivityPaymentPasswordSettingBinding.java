package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityPaymentPasswordSettingBinding implements ViewBinding {
    @NonNull
    public final TextView btnChangePassword;
    @NonNull
    public final EditText etPaymentPassword;
    @NonNull
    public final EditText etPaymentPasswordAgain;
    @NonNull
    private final LinearLayout rootView;

    private ActivityPaymentPasswordSettingBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2) {
        this.rootView = linearLayout;
        this.btnChangePassword = textView;
        this.etPaymentPassword = editText;
        this.etPaymentPasswordAgain = editText2;
    }

    @NonNull
    public static ActivityPaymentPasswordSettingBinding bind(@NonNull View view) {
        int i9 = R.id.btnChangePassword;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnChangePassword);
        if (textView != null) {
            i9 = R.id.etPaymentPassword;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.etPaymentPassword);
            if (editText != null) {
                i9 = R.id.etPaymentPasswordAgain;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.etPaymentPasswordAgain);
                if (editText2 != null) {
                    return new ActivityPaymentPasswordSettingBinding((LinearLayout) view, textView, editText, editText2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPaymentPasswordSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPaymentPasswordSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_payment_password_setting, viewGroup, false);
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

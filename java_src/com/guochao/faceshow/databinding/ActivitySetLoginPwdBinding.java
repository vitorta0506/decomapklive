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
public final class ActivitySetLoginPwdBinding implements ViewBinding {
    @NonNull
    public final TextView btnOk;
    @NonNull
    public final EditText etConfirmPwd;
    @NonNull
    public final EditText etLoginPwd;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvModeName;
    @NonNull
    public final TextView tvPayPwd;

    private ActivitySetLoginPwdBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.btnOk = textView;
        this.etConfirmPwd = editText;
        this.etLoginPwd = editText2;
        this.tvModeName = textView2;
        this.tvPayPwd = textView3;
    }

    @NonNull
    public static ActivitySetLoginPwdBinding bind(@NonNull View view) {
        int i9 = R.id.btn_ok;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
        if (textView != null) {
            i9 = R.id.et_confirm_pwd;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_confirm_pwd);
            if (editText != null) {
                i9 = R.id.et_login_pwd;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_login_pwd);
                if (editText2 != null) {
                    i9 = R.id.tv_mode_name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mode_name);
                    if (textView2 != null) {
                        i9 = R.id.tv_pay_pwd;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_pay_pwd);
                        if (textView3 != null) {
                            return new ActivitySetLoginPwdBinding((LinearLayout) view, textView, editText, editText2, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivitySetLoginPwdBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivitySetLoginPwdBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_set_login_pwd, viewGroup, false);
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

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
public final class ActivityChangeLoginPasswordBinding implements ViewBinding {
    @NonNull
    public final TextView btnOk;
    @NonNull
    public final EditText etNewPwd;
    @NonNull
    public final EditText etOriginalPwd;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvRetrievePassword;

    private ActivityChangeLoginPasswordBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.btnOk = textView;
        this.etNewPwd = editText;
        this.etOriginalPwd = editText2;
        this.tvRetrievePassword = textView2;
    }

    @NonNull
    public static ActivityChangeLoginPasswordBinding bind(@NonNull View view) {
        int i9 = R.id.btn_ok;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
        if (textView != null) {
            i9 = R.id.et_new_pwd;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_new_pwd);
            if (editText != null) {
                i9 = R.id.et_original_pwd;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_original_pwd);
                if (editText2 != null) {
                    i9 = R.id.tv_retrieve_password;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_retrieve_password);
                    if (textView2 != null) {
                        return new ActivityChangeLoginPasswordBinding((LinearLayout) view, textView, editText, editText2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityChangeLoginPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityChangeLoginPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_change_login_password, viewGroup, false);
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

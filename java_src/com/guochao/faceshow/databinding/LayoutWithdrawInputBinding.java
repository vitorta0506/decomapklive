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
public final class LayoutWithdrawInputBinding implements ViewBinding {
    @NonNull
    public final EditText etUsdt;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout selectArea;
    @NonNull
    public final TextView usdtTv;

    private LayoutWithdrawInputBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.etUsdt = editText;
        this.selectArea = linearLayout2;
        this.usdtTv = textView;
    }

    @NonNull
    public static LayoutWithdrawInputBinding bind(@NonNull View view) {
        int i9 = R.id.et_usdt;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_usdt);
        if (editText != null) {
            i9 = R.id.select_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.select_area);
            if (linearLayout != null) {
                i9 = R.id.usdt_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.usdt_tv);
                if (textView != null) {
                    return new LayoutWithdrawInputBinding((LinearLayout) view, editText, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutWithdrawInputBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutWithdrawInputBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_withdraw_input, viewGroup, false);
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

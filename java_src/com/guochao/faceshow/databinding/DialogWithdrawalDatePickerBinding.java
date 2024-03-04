package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.WithdrawalDatePickerView;
/* loaded from: classes2.dex */
public final class DialogWithdrawalDatePickerBinding implements ViewBinding {
    @NonNull
    public final TextView commonDialogCancel;
    @NonNull
    public final TextView commonDialogSubmit;
    @NonNull
    public final WithdrawalDatePickerView datePicker;
    @NonNull
    private final LinearLayout rootView;

    private DialogWithdrawalDatePickerBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull WithdrawalDatePickerView withdrawalDatePickerView) {
        this.rootView = linearLayout;
        this.commonDialogCancel = textView;
        this.commonDialogSubmit = textView2;
        this.datePicker = withdrawalDatePickerView;
    }

    @NonNull
    public static DialogWithdrawalDatePickerBinding bind(@NonNull View view) {
        int i9 = R.id.common_dialog_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_cancel);
        if (textView != null) {
            i9 = R.id.common_dialog_submit;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.common_dialog_submit);
            if (textView2 != null) {
                i9 = R.id.date_picker;
                WithdrawalDatePickerView withdrawalDatePickerView = (WithdrawalDatePickerView) ViewBindings.findChildViewById(view, R.id.date_picker);
                if (withdrawalDatePickerView != null) {
                    return new DialogWithdrawalDatePickerBinding((LinearLayout) view, textView, textView2, withdrawalDatePickerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogWithdrawalDatePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogWithdrawalDatePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_withdrawal_date_picker, viewGroup, false);
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

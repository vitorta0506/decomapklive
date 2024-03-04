package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.WithdrawalDatePickerView;
/* loaded from: classes3.dex */
public class WithdrawalDatePickerDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private WithdrawalDatePickerDialog f21333b;

    @UiThread
    public WithdrawalDatePickerDialog_ViewBinding(WithdrawalDatePickerDialog withdrawalDatePickerDialog, View view) {
        this.f21333b = withdrawalDatePickerDialog;
        withdrawalDatePickerDialog.mConfirm = (TextView) butterknife.internal.c.d(view, R.id.common_dialog_submit, "field 'mConfirm'", TextView.class);
        withdrawalDatePickerDialog.mCancel = (TextView) butterknife.internal.c.d(view, R.id.common_dialog_cancel, "field 'mCancel'", TextView.class);
        withdrawalDatePickerDialog.mDatePickerView = (WithdrawalDatePickerView) butterknife.internal.c.d(view, R.id.date_picker, "field 'mDatePickerView'", WithdrawalDatePickerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WithdrawalDatePickerDialog withdrawalDatePickerDialog = this.f21333b;
        if (withdrawalDatePickerDialog != null) {
            this.f21333b = null;
            withdrawalDatePickerDialog.mConfirm = null;
            withdrawalDatePickerDialog.mCancel = null;
            withdrawalDatePickerDialog.mDatePickerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

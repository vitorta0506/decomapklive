package com.guochao.faceshow.aaspring.views;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.loopView.LoopView;
/* loaded from: classes3.dex */
public class WithdrawalDatePickerView_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private WithdrawalDatePickerView f24164b;

    @UiThread
    public WithdrawalDatePickerView_ViewBinding(WithdrawalDatePickerView withdrawalDatePickerView, View view) {
        this.f24164b = withdrawalDatePickerView;
        withdrawalDatePickerView.mWheelViewYear = (LoopView) butterknife.internal.c.d(view, R.id.wv_birth_year, "field 'mWheelViewYear'", LoopView.class);
        withdrawalDatePickerView.mWheelViewMonth = (LoopView) butterknife.internal.c.d(view, R.id.wv_birth_month, "field 'mWheelViewMonth'", LoopView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WithdrawalDatePickerView withdrawalDatePickerView = this.f24164b;
        if (withdrawalDatePickerView != null) {
            this.f24164b = null;
            withdrawalDatePickerView.mWheelViewYear = null;
            withdrawalDatePickerView.mWheelViewMonth = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

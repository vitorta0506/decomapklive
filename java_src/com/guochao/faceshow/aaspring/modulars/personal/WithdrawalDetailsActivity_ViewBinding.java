package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class WithdrawalDetailsActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private WithdrawalDetailsActivity f21338c;

    @UiThread
    public WithdrawalDetailsActivity_ViewBinding(WithdrawalDetailsActivity withdrawalDetailsActivity, View view) {
        super(withdrawalDetailsActivity, view);
        this.f21338c = withdrawalDetailsActivity;
        withdrawalDetailsActivity.tvWithdrawalMoney = (TextView) butterknife.internal.c.d(view, R.id.tv_withdrawal_money, "field 'tvWithdrawalMoney'", TextView.class);
        withdrawalDetailsActivity.tvWithdrawalState = (TextView) butterknife.internal.c.d(view, R.id.tv_withdrawal_state, "field 'tvWithdrawalState'", TextView.class);
        withdrawalDetailsActivity.tvDeductFb = (TextView) butterknife.internal.c.d(view, R.id.tv_deduct_fb, "field 'tvDeductFb'", TextView.class);
        withdrawalDetailsActivity.rcvProgress = (RecyclerView) butterknife.internal.c.d(view, R.id.rcv_progress, "field 'rcvProgress'", RecyclerView.class);
        withdrawalDetailsActivity.tvAccountMode = (TextView) butterknife.internal.c.d(view, R.id.tv_account_mode, "field 'tvAccountMode'", TextView.class);
        withdrawalDetailsActivity.tvAccount = (TextView) butterknife.internal.c.d(view, R.id.tv_account, "field 'tvAccount'", TextView.class);
        withdrawalDetailsActivity.tvName = (TextView) butterknife.internal.c.d(view, R.id.tv_name, "field 'tvName'", TextView.class);
        withdrawalDetailsActivity.tvUSDT = (TextView) butterknife.internal.c.d(view, R.id.tv_usdt, "field 'tvUSDT'", TextView.class);
        withdrawalDetailsActivity.llModeZfb = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_mode_zfb, "field 'llModeZfb'", LinearLayout.class);
        withdrawalDetailsActivity.llModeUsdt = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_mode_usdt, "field 'llModeUsdt'", LinearLayout.class);
        withdrawalDetailsActivity.tvBankCode = (TextView) butterknife.internal.c.d(view, R.id.tv_bank_code, "field 'tvBankCode'", TextView.class);
        withdrawalDetailsActivity.tvAccountHolder = (TextView) butterknife.internal.c.d(view, R.id.tv_account_holder, "field 'tvAccountHolder'", TextView.class);
        withdrawalDetailsActivity.tvBankName = (TextView) butterknife.internal.c.d(view, R.id.tv_bank_name, "field 'tvBankName'", TextView.class);
        withdrawalDetailsActivity.tvBankAddress = (TextView) butterknife.internal.c.d(view, R.id.tv_bank_address, "field 'tvBankAddress'", TextView.class);
        withdrawalDetailsActivity.llModeBank = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_mode_bank, "field 'llModeBank'", LinearLayout.class);
        withdrawalDetailsActivity.tvCause = (TextView) butterknife.internal.c.d(view, R.id.tv_cause, "field 'tvCause'", TextView.class);
        withdrawalDetailsActivity.llCause = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_cause, "field 'llCause'", LinearLayout.class);
        withdrawalDetailsActivity.tvAccountTip = (TextView) butterknife.internal.c.d(view, R.id.tv_account_tip, "field 'tvAccountTip'", TextView.class);
        withdrawalDetailsActivity.llName = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_name, "field 'llName'", LinearLayout.class);
        withdrawalDetailsActivity.tvWithdrawalTip = (TextView) butterknife.internal.c.d(view, R.id.tv_withdrawal_tip, "field 'tvWithdrawalTip'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WithdrawalDetailsActivity withdrawalDetailsActivity = this.f21338c;
        if (withdrawalDetailsActivity != null) {
            this.f21338c = null;
            withdrawalDetailsActivity.tvWithdrawalMoney = null;
            withdrawalDetailsActivity.tvWithdrawalState = null;
            withdrawalDetailsActivity.tvDeductFb = null;
            withdrawalDetailsActivity.rcvProgress = null;
            withdrawalDetailsActivity.tvAccountMode = null;
            withdrawalDetailsActivity.tvAccount = null;
            withdrawalDetailsActivity.tvName = null;
            withdrawalDetailsActivity.tvUSDT = null;
            withdrawalDetailsActivity.llModeZfb = null;
            withdrawalDetailsActivity.llModeUsdt = null;
            withdrawalDetailsActivity.tvBankCode = null;
            withdrawalDetailsActivity.tvAccountHolder = null;
            withdrawalDetailsActivity.tvBankName = null;
            withdrawalDetailsActivity.tvBankAddress = null;
            withdrawalDetailsActivity.llModeBank = null;
            withdrawalDetailsActivity.tvCause = null;
            withdrawalDetailsActivity.llCause = null;
            withdrawalDetailsActivity.tvAccountTip = null;
            withdrawalDetailsActivity.llName = null;
            withdrawalDetailsActivity.tvWithdrawalTip = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

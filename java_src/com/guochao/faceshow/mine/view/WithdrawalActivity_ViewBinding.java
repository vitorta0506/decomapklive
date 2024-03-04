package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class WithdrawalActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private WithdrawalActivity f25953c;

    /* renamed from: d  reason: collision with root package name */
    private View f25954d;

    /* loaded from: classes4.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalActivity f25955a;

        a(WithdrawalActivity withdrawalActivity) {
            this.f25955a = withdrawalActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25955a.onViewClicked();
        }
    }

    @UiThread
    public WithdrawalActivity_ViewBinding(WithdrawalActivity withdrawalActivity, View view) {
        super(withdrawalActivity, view);
        this.f25953c = withdrawalActivity;
        withdrawalActivity.tvSelectAccount = (TextView) c.d(view, R.id.tvSelectAccount, "field 'tvSelectAccount'", TextView.class);
        withdrawalActivity.etAccount = (EditText) c.d(view, R.id.etAccount, "field 'etAccount'", EditText.class);
        withdrawalActivity.tvAmount = (TextView) c.d(view, R.id.tvAmount, "field 'tvAmount'", TextView.class);
        withdrawalActivity.tvSymbol = (TextView) c.d(view, R.id.tvSymbol, "field 'tvSymbol'", TextView.class);
        withdrawalActivity.btnWithdrawal = c.c(view, R.id.btnWithdrawal, "field 'btnWithdrawal'");
        withdrawalActivity.etBankCardNo = (EditText) c.d(view, R.id.etBankCardNo, "field 'etBankCardNo'", EditText.class);
        withdrawalActivity.etAccountHolder = (EditText) c.d(view, R.id.etAccountHolder, "field 'etAccountHolder'", EditText.class);
        withdrawalActivity.ivArrowRight = (ImageView) c.d(view, R.id.ivArrowRight, "field 'ivArrowRight'", ImageView.class);
        withdrawalActivity.tvBankName = (TextView) c.d(view, R.id.tvBankName, "field 'tvBankName'", TextView.class);
        withdrawalActivity.rlBankNameLayout = (RelativeLayout) c.d(view, R.id.rlBankNameLayout, "field 'rlBankNameLayout'", RelativeLayout.class);
        withdrawalActivity.etBankAddress = (EditText) c.d(view, R.id.etBankAddress, "field 'etBankAddress'", EditText.class);
        withdrawalActivity.enterPayName = (EditText) c.d(view, R.id.enter_pay_name, "field 'enterPayName'", EditText.class);
        View c10 = c.c(view, R.id.fl_region, "field 'flRegion' and method 'onViewClicked'");
        withdrawalActivity.flRegion = (LinearLayout) c.a(c10, R.id.fl_region, "field 'flRegion'", LinearLayout.class);
        this.f25954d = c10;
        c10.setOnClickListener(new a(withdrawalActivity));
        withdrawalActivity.tvRegion = (TextView) c.d(view, R.id.tv_region, "field 'tvRegion'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WithdrawalActivity withdrawalActivity = this.f25953c;
        if (withdrawalActivity != null) {
            this.f25953c = null;
            withdrawalActivity.tvSelectAccount = null;
            withdrawalActivity.etAccount = null;
            withdrawalActivity.tvAmount = null;
            withdrawalActivity.tvSymbol = null;
            withdrawalActivity.btnWithdrawal = null;
            withdrawalActivity.etBankCardNo = null;
            withdrawalActivity.etAccountHolder = null;
            withdrawalActivity.ivArrowRight = null;
            withdrawalActivity.tvBankName = null;
            withdrawalActivity.rlBankNameLayout = null;
            withdrawalActivity.etBankAddress = null;
            withdrawalActivity.enterPayName = null;
            withdrawalActivity.flRegion = null;
            withdrawalActivity.tvRegion = null;
            this.f25954d.setOnClickListener(null);
            this.f25954d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

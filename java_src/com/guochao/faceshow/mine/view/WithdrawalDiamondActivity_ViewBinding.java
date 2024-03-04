package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.views.MeasureListView;
/* loaded from: classes4.dex */
public class WithdrawalDiamondActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private WithdrawalDiamondActivity f25963c;

    @UiThread
    public WithdrawalDiamondActivity_ViewBinding(WithdrawalDiamondActivity withdrawalDiamondActivity, View view) {
        super(withdrawalDiamondActivity, view);
        this.f25963c = withdrawalDiamondActivity;
        withdrawalDiamondActivity.tvDiamondCount = (TextView) c.d(view, R.id.tvDiamondCount, "field 'tvDiamondCount'", TextView.class);
        withdrawalDiamondActivity.topLayout = (LinearLayout) c.d(view, R.id.topLayout, "field 'topLayout'", LinearLayout.class);
        withdrawalDiamondActivity.lvWithdrawalList = (MeasureListView) c.d(view, R.id.lvRechargeList, "field 'lvWithdrawalList'", MeasureListView.class);
        withdrawalDiamondActivity.tvAgreement = (TextView) c.d(view, R.id.tvAgreement, "field 'tvAgreement'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WithdrawalDiamondActivity withdrawalDiamondActivity = this.f25963c;
        if (withdrawalDiamondActivity != null) {
            this.f25963c = null;
            withdrawalDiamondActivity.tvDiamondCount = null;
            withdrawalDiamondActivity.topLayout = null;
            withdrawalDiamondActivity.lvWithdrawalList = null;
            withdrawalDiamondActivity.tvAgreement = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

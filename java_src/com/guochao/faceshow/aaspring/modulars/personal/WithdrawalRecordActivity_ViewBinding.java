package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class WithdrawalRecordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private WithdrawalRecordActivity f21449c;

    /* renamed from: d  reason: collision with root package name */
    private View f21450d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalRecordActivity f21451a;

        a(WithdrawalRecordActivity withdrawalRecordActivity) {
            this.f21451a = withdrawalRecordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21451a.onViewClicked();
        }
    }

    @UiThread
    public WithdrawalRecordActivity_ViewBinding(WithdrawalRecordActivity withdrawalRecordActivity, View view) {
        super(withdrawalRecordActivity, view);
        this.f21449c = withdrawalRecordActivity;
        withdrawalRecordActivity.tvAllRmb = (TextView) butterknife.internal.c.d(view, R.id.tv_all_rmb, "field 'tvAllRmb'", TextView.class);
        withdrawalRecordActivity.tvAllUsd = (TextView) butterknife.internal.c.d(view, R.id.tv_all_usd, "field 'tvAllUsd'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.tv_select_interval, "field 'tvSelectInterval' and method 'onViewClicked'");
        withdrawalRecordActivity.tvSelectInterval = (TextView) butterknife.internal.c.a(c10, R.id.tv_select_interval, "field 'tvSelectInterval'", TextView.class);
        this.f21450d = c10;
        c10.setOnClickListener(new a(withdrawalRecordActivity));
        withdrawalRecordActivity.llTitleContent = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_title_content, "field 'llTitleContent'", LinearLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WithdrawalRecordActivity withdrawalRecordActivity = this.f21449c;
        if (withdrawalRecordActivity != null) {
            this.f21449c = null;
            withdrawalRecordActivity.tvAllRmb = null;
            withdrawalRecordActivity.tvAllUsd = null;
            withdrawalRecordActivity.tvSelectInterval = null;
            withdrawalRecordActivity.llTitleContent = null;
            this.f21450d.setOnClickListener(null);
            this.f21450d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

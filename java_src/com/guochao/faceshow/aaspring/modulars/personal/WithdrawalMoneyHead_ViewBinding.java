package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class WithdrawalMoneyHead_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private WithdrawalMoneyHead f21373b;

    @UiThread
    public WithdrawalMoneyHead_ViewBinding(WithdrawalMoneyHead withdrawalMoneyHead, View view) {
        this.f21373b = withdrawalMoneyHead;
        withdrawalMoneyHead.tvFCount = (TextView) butterknife.internal.c.d(view, R.id.tv_f_count, "field 'tvFCount'", TextView.class);
        withdrawalMoneyHead.spaceWeight = butterknife.internal.c.c(view, R.id.space_weight, "field 'spaceWeight'");
        withdrawalMoneyHead.tvFtip = (TextView) butterknife.internal.c.d(view, R.id.tv_f_tip, "field 'tvFtip'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WithdrawalMoneyHead withdrawalMoneyHead = this.f21373b;
        if (withdrawalMoneyHead != null) {
            this.f21373b = null;
            withdrawalMoneyHead.tvFCount = null;
            withdrawalMoneyHead.spaceWeight = null;
            withdrawalMoneyHead.tvFtip = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

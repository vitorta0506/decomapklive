package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class PaymentPasswordSettingActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PaymentPasswordSettingActivity f25674c;

    /* renamed from: d  reason: collision with root package name */
    private View f25675d;

    /* loaded from: classes4.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PaymentPasswordSettingActivity f25676a;

        a(PaymentPasswordSettingActivity paymentPasswordSettingActivity) {
            this.f25676a = paymentPasswordSettingActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25676a.onViewClicked();
        }
    }

    @UiThread
    public PaymentPasswordSettingActivity_ViewBinding(PaymentPasswordSettingActivity paymentPasswordSettingActivity, View view) {
        super(paymentPasswordSettingActivity, view);
        this.f25674c = paymentPasswordSettingActivity;
        paymentPasswordSettingActivity.etPaymentPassword = (EditText) c.d(view, R.id.etPaymentPassword, "field 'etPaymentPassword'", EditText.class);
        paymentPasswordSettingActivity.etPaymentPasswordAgain = (EditText) c.d(view, R.id.etPaymentPasswordAgain, "field 'etPaymentPasswordAgain'", EditText.class);
        View c10 = c.c(view, R.id.btnChangePassword, "field 'btnChangePassword' and method 'onViewClicked'");
        paymentPasswordSettingActivity.btnChangePassword = c10;
        this.f25675d = c10;
        c10.setOnClickListener(new a(paymentPasswordSettingActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PaymentPasswordSettingActivity paymentPasswordSettingActivity = this.f25674c;
        if (paymentPasswordSettingActivity != null) {
            this.f25674c = null;
            paymentPasswordSettingActivity.etPaymentPassword = null;
            paymentPasswordSettingActivity.etPaymentPasswordAgain = null;
            paymentPasswordSettingActivity.btnChangePassword = null;
            this.f25675d.setOnClickListener(null);
            this.f25675d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

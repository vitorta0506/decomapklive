package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class PaymentPasswordRememberActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PaymentPasswordRememberActivity f25662c;

    /* renamed from: d  reason: collision with root package name */
    private View f25663d;

    /* loaded from: classes4.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PaymentPasswordRememberActivity f25664a;

        a(PaymentPasswordRememberActivity paymentPasswordRememberActivity) {
            this.f25664a = paymentPasswordRememberActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25664a.onViewClicked();
        }
    }

    @UiThread
    public PaymentPasswordRememberActivity_ViewBinding(PaymentPasswordRememberActivity paymentPasswordRememberActivity, View view) {
        super(paymentPasswordRememberActivity, view);
        this.f25662c = paymentPasswordRememberActivity;
        paymentPasswordRememberActivity.etPwd1 = (TextView) c.d(view, R.id.etPwd1, "field 'etPwd1'", TextView.class);
        paymentPasswordRememberActivity.etPwd2 = (TextView) c.d(view, R.id.etPwd2, "field 'etPwd2'", TextView.class);
        paymentPasswordRememberActivity.etPwd3 = (TextView) c.d(view, R.id.etPwd3, "field 'etPwd3'", TextView.class);
        paymentPasswordRememberActivity.etPwd4 = (TextView) c.d(view, R.id.etPwd4, "field 'etPwd4'", TextView.class);
        paymentPasswordRememberActivity.etPwd5 = (TextView) c.d(view, R.id.etPwd5, "field 'etPwd5'", TextView.class);
        paymentPasswordRememberActivity.etPwd6 = (TextView) c.d(view, R.id.etPwd6, "field 'etPwd6'", TextView.class);
        paymentPasswordRememberActivity.etPwdReal = (EditText) c.d(view, R.id.etPwdReal, "field 'etPwdReal'", EditText.class);
        paymentPasswordRememberActivity.fragmentPassword = (FrameLayout) c.d(view, R.id.fragment_password, "field 'fragmentPassword'", FrameLayout.class);
        View c10 = c.c(view, R.id.btnNext, "field 'btnNext' and method 'onViewClicked'");
        paymentPasswordRememberActivity.btnNext = c10;
        this.f25663d = c10;
        c10.setOnClickListener(new a(paymentPasswordRememberActivity));
        paymentPasswordRememberActivity.llBaseLayout = (LinearLayout) c.d(view, R.id.llBaseLayout, "field 'llBaseLayout'", LinearLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PaymentPasswordRememberActivity paymentPasswordRememberActivity = this.f25662c;
        if (paymentPasswordRememberActivity != null) {
            this.f25662c = null;
            paymentPasswordRememberActivity.etPwd1 = null;
            paymentPasswordRememberActivity.etPwd2 = null;
            paymentPasswordRememberActivity.etPwd3 = null;
            paymentPasswordRememberActivity.etPwd4 = null;
            paymentPasswordRememberActivity.etPwd5 = null;
            paymentPasswordRememberActivity.etPwd6 = null;
            paymentPasswordRememberActivity.etPwdReal = null;
            paymentPasswordRememberActivity.fragmentPassword = null;
            paymentPasswordRememberActivity.btnNext = null;
            paymentPasswordRememberActivity.llBaseLayout = null;
            this.f25663d.setOnClickListener(null);
            this.f25663d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

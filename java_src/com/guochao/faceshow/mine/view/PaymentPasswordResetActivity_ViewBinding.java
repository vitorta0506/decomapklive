package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class PaymentPasswordResetActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PaymentPasswordResetActivity f25666c;

    /* renamed from: d  reason: collision with root package name */
    private View f25667d;

    /* renamed from: e  reason: collision with root package name */
    private View f25668e;

    /* loaded from: classes4.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PaymentPasswordResetActivity f25669a;

        a(PaymentPasswordResetActivity paymentPasswordResetActivity) {
            this.f25669a = paymentPasswordResetActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25669a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PaymentPasswordResetActivity f25671a;

        b(PaymentPasswordResetActivity paymentPasswordResetActivity) {
            this.f25671a = paymentPasswordResetActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25671a.onViewClicked(view);
        }
    }

    @UiThread
    public PaymentPasswordResetActivity_ViewBinding(PaymentPasswordResetActivity paymentPasswordResetActivity, View view) {
        super(paymentPasswordResetActivity, view);
        this.f25666c = paymentPasswordResetActivity;
        View c10 = c.c(view, R.id.tvRemember, "field 'tvRemember' and method 'onViewClicked'");
        paymentPasswordResetActivity.tvRemember = (TextView) c.a(c10, R.id.tvRemember, "field 'tvRemember'", TextView.class);
        this.f25667d = c10;
        c10.setOnClickListener(new a(paymentPasswordResetActivity));
        View c11 = c.c(view, R.id.tvForget, "field 'tvForget' and method 'onViewClicked'");
        paymentPasswordResetActivity.tvForget = (TextView) c.a(c11, R.id.tvForget, "field 'tvForget'", TextView.class);
        this.f25668e = c11;
        c11.setOnClickListener(new b(paymentPasswordResetActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PaymentPasswordResetActivity paymentPasswordResetActivity = this.f25666c;
        if (paymentPasswordResetActivity != null) {
            this.f25666c = null;
            paymentPasswordResetActivity.tvRemember = null;
            paymentPasswordResetActivity.tvForget = null;
            this.f25667d.setOnClickListener(null);
            this.f25667d = null;
            this.f25668e.setOnClickListener(null);
            this.f25668e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

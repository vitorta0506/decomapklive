package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class PayoneerBindActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PayoneerBindActivity f21223c;

    /* renamed from: d  reason: collision with root package name */
    private View f21224d;

    /* renamed from: e  reason: collision with root package name */
    private View f21225e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PayoneerBindActivity f21226a;

        a(PayoneerBindActivity payoneerBindActivity) {
            this.f21226a = payoneerBindActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21226a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PayoneerBindActivity f21228a;

        b(PayoneerBindActivity payoneerBindActivity) {
            this.f21228a = payoneerBindActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21228a.onViewClicked(view);
        }
    }

    @UiThread
    public PayoneerBindActivity_ViewBinding(PayoneerBindActivity payoneerBindActivity, View view) {
        super(payoneerBindActivity, view);
        this.f21223c = payoneerBindActivity;
        payoneerBindActivity.tvPayoneerAccountUnreviewed = (TextView) butterknife.internal.c.d(view, R.id.tv_payoneer_account_unreviewed, "field 'tvPayoneerAccountUnreviewed'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.tv_login, "method 'onViewClicked'");
        this.f21224d = c10;
        c10.setOnClickListener(new a(payoneerBindActivity));
        View c11 = butterknife.internal.c.c(view, R.id.tv_registered, "method 'onViewClicked'");
        this.f21225e = c11;
        c11.setOnClickListener(new b(payoneerBindActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PayoneerBindActivity payoneerBindActivity = this.f21223c;
        if (payoneerBindActivity != null) {
            this.f21223c = null;
            payoneerBindActivity.tvPayoneerAccountUnreviewed = null;
            this.f21224d.setOnClickListener(null);
            this.f21224d = null;
            this.f21225e.setOnClickListener(null);
            this.f21225e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

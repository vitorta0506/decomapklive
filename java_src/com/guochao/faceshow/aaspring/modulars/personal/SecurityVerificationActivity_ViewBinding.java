package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class SecurityVerificationActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private SecurityVerificationActivity f21302c;

    /* renamed from: d  reason: collision with root package name */
    private View f21303d;

    /* renamed from: e  reason: collision with root package name */
    private View f21304e;

    /* renamed from: f  reason: collision with root package name */
    private View f21305f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SecurityVerificationActivity f21306a;

        a(SecurityVerificationActivity securityVerificationActivity) {
            this.f21306a = securityVerificationActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21306a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SecurityVerificationActivity f21308a;

        b(SecurityVerificationActivity securityVerificationActivity) {
            this.f21308a = securityVerificationActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21308a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SecurityVerificationActivity f21310a;

        c(SecurityVerificationActivity securityVerificationActivity) {
            this.f21310a = securityVerificationActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21310a.onViewClicked(view);
        }
    }

    @UiThread
    public SecurityVerificationActivity_ViewBinding(SecurityVerificationActivity securityVerificationActivity, View view) {
        super(securityVerificationActivity, view);
        this.f21302c = securityVerificationActivity;
        securityVerificationActivity.etEmail = (EditText) butterknife.internal.c.d(view, R.id.et_email, "field 'etEmail'", EditText.class);
        securityVerificationActivity.etPwd = (EditText) butterknife.internal.c.d(view, R.id.et_pwd, "field 'etPwd'", EditText.class);
        View c10 = butterknife.internal.c.c(view, R.id.iv_pwd_state, "field 'ivPwdState' and method 'onViewClicked'");
        securityVerificationActivity.ivPwdState = (ImageView) butterknife.internal.c.a(c10, R.id.iv_pwd_state, "field 'ivPwdState'", ImageView.class);
        this.f21303d = c10;
        c10.setOnClickListener(new a(securityVerificationActivity));
        View c11 = butterknife.internal.c.c(view, R.id.tv_retrieve_password, "field 'tvRetrievePassword' and method 'onViewClicked'");
        securityVerificationActivity.tvRetrievePassword = (TextView) butterknife.internal.c.a(c11, R.id.tv_retrieve_password, "field 'tvRetrievePassword'", TextView.class);
        this.f21304e = c11;
        c11.setOnClickListener(new b(securityVerificationActivity));
        View c12 = butterknife.internal.c.c(view, R.id.btn_next, "field 'btnNext' and method 'onViewClicked'");
        securityVerificationActivity.btnNext = c12;
        this.f21305f = c12;
        c12.setOnClickListener(new c(securityVerificationActivity));
        securityVerificationActivity.ivEmailState = (ImageView) butterknife.internal.c.d(view, R.id.iv_email_state, "field 'ivEmailState'", ImageView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        SecurityVerificationActivity securityVerificationActivity = this.f21302c;
        if (securityVerificationActivity != null) {
            this.f21302c = null;
            securityVerificationActivity.etEmail = null;
            securityVerificationActivity.etPwd = null;
            securityVerificationActivity.ivPwdState = null;
            securityVerificationActivity.tvRetrievePassword = null;
            securityVerificationActivity.btnNext = null;
            securityVerificationActivity.ivEmailState = null;
            this.f21303d.setOnClickListener(null);
            this.f21303d = null;
            this.f21304e.setOnClickListener(null);
            this.f21304e = null;
            this.f21305f.setOnClickListener(null);
            this.f21305f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

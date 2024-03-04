package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class RetrievePasswordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private RetrievePasswordActivity f21287c;

    /* renamed from: d  reason: collision with root package name */
    private View f21288d;

    /* renamed from: e  reason: collision with root package name */
    private View f21289e;

    /* renamed from: f  reason: collision with root package name */
    private View f21290f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RetrievePasswordActivity f21291a;

        a(RetrievePasswordActivity retrievePasswordActivity) {
            this.f21291a = retrievePasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21291a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RetrievePasswordActivity f21293a;

        b(RetrievePasswordActivity retrievePasswordActivity) {
            this.f21293a = retrievePasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21293a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RetrievePasswordActivity f21295a;

        c(RetrievePasswordActivity retrievePasswordActivity) {
            this.f21295a = retrievePasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21295a.onViewClicked(view);
        }
    }

    @UiThread
    public RetrievePasswordActivity_ViewBinding(RetrievePasswordActivity retrievePasswordActivity, View view) {
        super(retrievePasswordActivity, view);
        this.f21287c = retrievePasswordActivity;
        retrievePasswordActivity.etEmail = (EditText) butterknife.internal.c.d(view, R.id.et_email, "field 'etEmail'", EditText.class);
        retrievePasswordActivity.ivEmailState = (ImageView) butterknife.internal.c.d(view, R.id.iv_email_state, "field 'ivEmailState'", ImageView.class);
        retrievePasswordActivity.etVerificationCode = (EditText) butterknife.internal.c.d(view, R.id.et_verification_code, "field 'etVerificationCode'", EditText.class);
        retrievePasswordActivity.ivVerificationCodeSend = (ImageView) butterknife.internal.c.d(view, R.id.iv_verification_code_send, "field 'ivVerificationCodeSend'", ImageView.class);
        retrievePasswordActivity.tvVerificationCodeTime = (TextView) butterknife.internal.c.d(view, R.id.tv_verification_code_time, "field 'tvVerificationCodeTime'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.rl_verification_code_send, "field 'rlVerificationCodeSend' and method 'onViewClicked'");
        retrievePasswordActivity.rlVerificationCodeSend = (RelativeLayout) butterknife.internal.c.a(c10, R.id.rl_verification_code_send, "field 'rlVerificationCodeSend'", RelativeLayout.class);
        this.f21288d = c10;
        c10.setOnClickListener(new a(retrievePasswordActivity));
        retrievePasswordActivity.etPwd = (EditText) butterknife.internal.c.d(view, R.id.et_pwd, "field 'etPwd'", EditText.class);
        View c11 = butterknife.internal.c.c(view, R.id.iv_pwd_state, "field 'ivPwdState' and method 'onViewClicked'");
        retrievePasswordActivity.ivPwdState = (ImageView) butterknife.internal.c.a(c11, R.id.iv_pwd_state, "field 'ivPwdState'", ImageView.class);
        this.f21289e = c11;
        c11.setOnClickListener(new b(retrievePasswordActivity));
        View c12 = butterknife.internal.c.c(view, R.id.btn_next, "field 'btnNext' and method 'onViewClicked'");
        retrievePasswordActivity.btnNext = (TextView) butterknife.internal.c.a(c12, R.id.btn_next, "field 'btnNext'", TextView.class);
        this.f21290f = c12;
        c12.setOnClickListener(new c(retrievePasswordActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        RetrievePasswordActivity retrievePasswordActivity = this.f21287c;
        if (retrievePasswordActivity != null) {
            this.f21287c = null;
            retrievePasswordActivity.etEmail = null;
            retrievePasswordActivity.ivEmailState = null;
            retrievePasswordActivity.etVerificationCode = null;
            retrievePasswordActivity.ivVerificationCodeSend = null;
            retrievePasswordActivity.tvVerificationCodeTime = null;
            retrievePasswordActivity.rlVerificationCodeSend = null;
            retrievePasswordActivity.etPwd = null;
            retrievePasswordActivity.ivPwdState = null;
            retrievePasswordActivity.btnNext = null;
            this.f21288d.setOnClickListener(null);
            this.f21288d = null;
            this.f21289e.setOnClickListener(null);
            this.f21289e = null;
            this.f21290f.setOnClickListener(null);
            this.f21290f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

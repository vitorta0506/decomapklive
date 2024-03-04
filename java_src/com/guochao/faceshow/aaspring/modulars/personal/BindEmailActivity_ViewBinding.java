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
public class BindEmailActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BindEmailActivity f21103c;

    /* renamed from: d  reason: collision with root package name */
    private View f21104d;

    /* renamed from: e  reason: collision with root package name */
    private View f21105e;

    /* renamed from: f  reason: collision with root package name */
    private View f21106f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindEmailActivity f21107a;

        a(BindEmailActivity bindEmailActivity) {
            this.f21107a = bindEmailActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21107a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindEmailActivity f21109a;

        b(BindEmailActivity bindEmailActivity) {
            this.f21109a = bindEmailActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21109a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindEmailActivity f21111a;

        c(BindEmailActivity bindEmailActivity) {
            this.f21111a = bindEmailActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21111a.onViewClicked(view);
        }
    }

    @UiThread
    public BindEmailActivity_ViewBinding(BindEmailActivity bindEmailActivity, View view) {
        super(bindEmailActivity, view);
        this.f21103c = bindEmailActivity;
        bindEmailActivity.ivVerificationCodeSend = (ImageView) butterknife.internal.c.d(view, R.id.iv_verification_code_send, "field 'ivVerificationCodeSend'", ImageView.class);
        bindEmailActivity.tvVerificationCodeTime = (TextView) butterknife.internal.c.d(view, R.id.tv_verification_code_time, "field 'tvVerificationCodeTime'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.rl_verification_code_send, "field 'rlVerificationCodeSend' and method 'onViewClicked'");
        bindEmailActivity.rlVerificationCodeSend = (RelativeLayout) butterknife.internal.c.a(c10, R.id.rl_verification_code_send, "field 'rlVerificationCodeSend'", RelativeLayout.class);
        this.f21104d = c10;
        c10.setOnClickListener(new a(bindEmailActivity));
        View c11 = butterknife.internal.c.c(view, R.id.iv_pwd_state, "field 'ivPwdState' and method 'onViewClicked'");
        bindEmailActivity.ivPwdState = (ImageView) butterknife.internal.c.a(c11, R.id.iv_pwd_state, "field 'ivPwdState'", ImageView.class);
        this.f21105e = c11;
        c11.setOnClickListener(new b(bindEmailActivity));
        View c12 = butterknife.internal.c.c(view, R.id.btn_next, "field 'btnNext' and method 'onViewClicked'");
        bindEmailActivity.btnNext = c12;
        this.f21106f = c12;
        c12.setOnClickListener(new c(bindEmailActivity));
        bindEmailActivity.etEmail = (EditText) butterknife.internal.c.d(view, R.id.et_email, "field 'etEmail'", EditText.class);
        bindEmailActivity.etVerificationCode = (EditText) butterknife.internal.c.d(view, R.id.et_verification_code, "field 'etVerificationCode'", EditText.class);
        bindEmailActivity.etPwd = (EditText) butterknife.internal.c.d(view, R.id.et_pwd, "field 'etPwd'", EditText.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BindEmailActivity bindEmailActivity = this.f21103c;
        if (bindEmailActivity != null) {
            this.f21103c = null;
            bindEmailActivity.ivVerificationCodeSend = null;
            bindEmailActivity.tvVerificationCodeTime = null;
            bindEmailActivity.rlVerificationCodeSend = null;
            bindEmailActivity.ivPwdState = null;
            bindEmailActivity.btnNext = null;
            bindEmailActivity.etEmail = null;
            bindEmailActivity.etVerificationCode = null;
            bindEmailActivity.etPwd = null;
            this.f21104d.setOnClickListener(null);
            this.f21104d = null;
            this.f21105e.setOnClickListener(null);
            this.f21105e = null;
            this.f21106f.setOnClickListener(null);
            this.f21106f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

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
public class BindEmailV2Activity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BindEmailV2Activity f21121c;

    /* renamed from: d  reason: collision with root package name */
    private View f21122d;

    /* renamed from: e  reason: collision with root package name */
    private View f21123e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindEmailV2Activity f21124a;

        a(BindEmailV2Activity bindEmailV2Activity) {
            this.f21124a = bindEmailV2Activity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21124a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindEmailV2Activity f21126a;

        b(BindEmailV2Activity bindEmailV2Activity) {
            this.f21126a = bindEmailV2Activity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21126a.onViewClicked(view);
        }
    }

    @UiThread
    public BindEmailV2Activity_ViewBinding(BindEmailV2Activity bindEmailV2Activity, View view) {
        super(bindEmailV2Activity, view);
        this.f21121c = bindEmailV2Activity;
        bindEmailV2Activity.etEmail = (EditText) butterknife.internal.c.d(view, R.id.et_email, "field 'etEmail'", EditText.class);
        bindEmailV2Activity.etVerificationCode = (EditText) butterknife.internal.c.d(view, R.id.et_verification_code, "field 'etVerificationCode'", EditText.class);
        bindEmailV2Activity.ivVerificationCodeSend = (ImageView) butterknife.internal.c.d(view, R.id.iv_verification_code_send, "field 'ivVerificationCodeSend'", ImageView.class);
        bindEmailV2Activity.tvVerificationCodeTime = (TextView) butterknife.internal.c.d(view, R.id.tv_verification_code_time, "field 'tvVerificationCodeTime'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.rl_verification_code_send, "field 'rlVerificationCodeSend' and method 'onViewClicked'");
        bindEmailV2Activity.rlVerificationCodeSend = (RelativeLayout) butterknife.internal.c.a(c10, R.id.rl_verification_code_send, "field 'rlVerificationCodeSend'", RelativeLayout.class);
        this.f21122d = c10;
        c10.setOnClickListener(new a(bindEmailV2Activity));
        View c11 = butterknife.internal.c.c(view, R.id.btn_bind, "field 'btnBind' and method 'onViewClicked'");
        bindEmailV2Activity.btnBind = c11;
        this.f21123e = c11;
        c11.setOnClickListener(new b(bindEmailV2Activity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BindEmailV2Activity bindEmailV2Activity = this.f21121c;
        if (bindEmailV2Activity != null) {
            this.f21121c = null;
            bindEmailV2Activity.etEmail = null;
            bindEmailV2Activity.etVerificationCode = null;
            bindEmailV2Activity.ivVerificationCodeSend = null;
            bindEmailV2Activity.tvVerificationCodeTime = null;
            bindEmailV2Activity.rlVerificationCodeSend = null;
            bindEmailV2Activity.btnBind = null;
            this.f21122d.setOnClickListener(null);
            this.f21122d = null;
            this.f21123e.setOnClickListener(null);
            this.f21123e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

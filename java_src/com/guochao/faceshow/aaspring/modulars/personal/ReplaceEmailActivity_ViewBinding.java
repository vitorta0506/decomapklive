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
public class ReplaceEmailActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ReplaceEmailActivity f21270c;

    /* renamed from: d  reason: collision with root package name */
    private View f21271d;

    /* renamed from: e  reason: collision with root package name */
    private View f21272e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ReplaceEmailActivity f21273a;

        a(ReplaceEmailActivity replaceEmailActivity) {
            this.f21273a = replaceEmailActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21273a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ReplaceEmailActivity f21275a;

        b(ReplaceEmailActivity replaceEmailActivity) {
            this.f21275a = replaceEmailActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21275a.onViewClicked(view);
        }
    }

    @UiThread
    public ReplaceEmailActivity_ViewBinding(ReplaceEmailActivity replaceEmailActivity, View view) {
        super(replaceEmailActivity, view);
        this.f21270c = replaceEmailActivity;
        replaceEmailActivity.etEmail = (EditText) butterknife.internal.c.d(view, R.id.et_email, "field 'etEmail'", EditText.class);
        replaceEmailActivity.etVerificationCode = (EditText) butterknife.internal.c.d(view, R.id.et_verification_code, "field 'etVerificationCode'", EditText.class);
        replaceEmailActivity.ivVerificationCodeSend = (ImageView) butterknife.internal.c.d(view, R.id.iv_verification_code_send, "field 'ivVerificationCodeSend'", ImageView.class);
        replaceEmailActivity.tvVerificationCodeTime = (TextView) butterknife.internal.c.d(view, R.id.tv_verification_code_time, "field 'tvVerificationCodeTime'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.rl_verification_code_send, "field 'rlVerificationCodeSend' and method 'onViewClicked'");
        replaceEmailActivity.rlVerificationCodeSend = (RelativeLayout) butterknife.internal.c.a(c10, R.id.rl_verification_code_send, "field 'rlVerificationCodeSend'", RelativeLayout.class);
        this.f21271d = c10;
        c10.setOnClickListener(new a(replaceEmailActivity));
        View c11 = butterknife.internal.c.c(view, R.id.btn_bind, "field 'btnBind' and method 'onViewClicked'");
        replaceEmailActivity.btnBind = c11;
        this.f21272e = c11;
        c11.setOnClickListener(new b(replaceEmailActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ReplaceEmailActivity replaceEmailActivity = this.f21270c;
        if (replaceEmailActivity != null) {
            this.f21270c = null;
            replaceEmailActivity.etEmail = null;
            replaceEmailActivity.etVerificationCode = null;
            replaceEmailActivity.ivVerificationCodeSend = null;
            replaceEmailActivity.tvVerificationCodeTime = null;
            replaceEmailActivity.rlVerificationCodeSend = null;
            replaceEmailActivity.btnBind = null;
            this.f21271d.setOnClickListener(null);
            this.f21271d = null;
            this.f21272e.setOnClickListener(null);
            this.f21272e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

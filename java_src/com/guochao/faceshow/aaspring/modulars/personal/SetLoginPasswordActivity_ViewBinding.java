package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class SetLoginPasswordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private SetLoginPasswordActivity f21322c;

    /* renamed from: d  reason: collision with root package name */
    private View f21323d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SetLoginPasswordActivity f21324a;

        a(SetLoginPasswordActivity setLoginPasswordActivity) {
            this.f21324a = setLoginPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21324a.onclick();
        }
    }

    @UiThread
    public SetLoginPasswordActivity_ViewBinding(SetLoginPasswordActivity setLoginPasswordActivity, View view) {
        super(setLoginPasswordActivity, view);
        this.f21322c = setLoginPasswordActivity;
        setLoginPasswordActivity.tvModeName = (TextView) butterknife.internal.c.d(view, R.id.tv_mode_name, "field 'tvModeName'", TextView.class);
        setLoginPasswordActivity.etLoginPwd = (EditText) butterknife.internal.c.d(view, R.id.et_login_pwd, "field 'etLoginPwd'", EditText.class);
        setLoginPasswordActivity.etConfirmPwd = (EditText) butterknife.internal.c.d(view, R.id.et_confirm_pwd, "field 'etConfirmPwd'", EditText.class);
        setLoginPasswordActivity.tvPayPwd = (TextView) butterknife.internal.c.d(view, R.id.tv_pay_pwd, "field 'tvPayPwd'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.btn_ok, "field 'btnOk' and method 'onclick'");
        setLoginPasswordActivity.btnOk = (TextView) butterknife.internal.c.a(c10, R.id.btn_ok, "field 'btnOk'", TextView.class);
        this.f21323d = c10;
        c10.setOnClickListener(new a(setLoginPasswordActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        SetLoginPasswordActivity setLoginPasswordActivity = this.f21322c;
        if (setLoginPasswordActivity != null) {
            this.f21322c = null;
            setLoginPasswordActivity.tvModeName = null;
            setLoginPasswordActivity.etLoginPwd = null;
            setLoginPasswordActivity.etConfirmPwd = null;
            setLoginPasswordActivity.tvPayPwd = null;
            setLoginPasswordActivity.btnOk = null;
            this.f21323d.setOnClickListener(null);
            this.f21323d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

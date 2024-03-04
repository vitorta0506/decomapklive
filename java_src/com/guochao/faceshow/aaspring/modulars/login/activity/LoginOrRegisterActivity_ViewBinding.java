package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
/* loaded from: classes3.dex */
public class LoginOrRegisterActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private LoginOrRegisterActivity f20343c;

    /* renamed from: d  reason: collision with root package name */
    private View f20344d;

    /* renamed from: e  reason: collision with root package name */
    private View f20345e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginOrRegisterActivity f20346a;

        a(LoginOrRegisterActivity loginOrRegisterActivity) {
            this.f20346a = loginOrRegisterActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20346a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginOrRegisterActivity f20348a;

        b(LoginOrRegisterActivity loginOrRegisterActivity) {
            this.f20348a = loginOrRegisterActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20348a.onClick(view);
        }
    }

    @UiThread
    public LoginOrRegisterActivity_ViewBinding(LoginOrRegisterActivity loginOrRegisterActivity, View view) {
        super(loginOrRegisterActivity, view);
        this.f20343c = loginOrRegisterActivity;
        View c10 = c.c(view, R.id.ll_country_hide, "field 'll_country_hide' and method 'onClick'");
        loginOrRegisterActivity.ll_country_hide = (LinearLayout) c.a(c10, R.id.ll_country_hide, "field 'll_country_hide'", LinearLayout.class);
        this.f20344d = c10;
        c10.setOnClickListener(new a(loginOrRegisterActivity));
        loginOrRegisterActivity.rv_country = (ImageView) c.d(view, R.id.rv_country, "field 'rv_country'", ImageView.class);
        loginOrRegisterActivity.tv_country = (TextView) c.d(view, R.id.tv_country, "field 'tv_country'", TextView.class);
        View c11 = c.c(view, R.id.next, "field 'next' and method 'onClick'");
        loginOrRegisterActivity.next = (TextView) c.a(c11, R.id.next, "field 'next'", TextView.class);
        this.f20345e = c11;
        c11.setOnClickListener(new b(loginOrRegisterActivity));
        loginOrRegisterActivity.et_phone = (EditText) c.d(view, R.id.et_phone, "field 'et_phone'", EditText.class);
        loginOrRegisterActivity.animationView = (LoginAnimationView) c.d(view, R.id.animationView, "field 'animationView'", LoginAnimationView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LoginOrRegisterActivity loginOrRegisterActivity = this.f20343c;
        if (loginOrRegisterActivity != null) {
            this.f20343c = null;
            loginOrRegisterActivity.ll_country_hide = null;
            loginOrRegisterActivity.rv_country = null;
            loginOrRegisterActivity.tv_country = null;
            loginOrRegisterActivity.next = null;
            loginOrRegisterActivity.et_phone = null;
            loginOrRegisterActivity.animationView = null;
            this.f20344d.setOnClickListener(null);
            this.f20344d = null;
            this.f20345e.setOnClickListener(null);
            this.f20345e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

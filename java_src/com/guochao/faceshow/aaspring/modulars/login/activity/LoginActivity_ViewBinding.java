package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
/* loaded from: classes3.dex */
public class LoginActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private LoginActivity f20320c;

    /* renamed from: d  reason: collision with root package name */
    private View f20321d;

    /* renamed from: e  reason: collision with root package name */
    private View f20322e;

    /* renamed from: f  reason: collision with root package name */
    private View f20323f;

    /* renamed from: g  reason: collision with root package name */
    private View f20324g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginActivity f20325a;

        a(LoginActivity loginActivity) {
            this.f20325a = loginActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20325a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginActivity f20327a;

        b(LoginActivity loginActivity) {
            this.f20327a = loginActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20327a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginActivity f20329a;

        c(LoginActivity loginActivity) {
            this.f20329a = loginActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20329a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoginActivity f20331a;

        d(LoginActivity loginActivity) {
            this.f20331a = loginActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20331a.onClick(view);
        }
    }

    @UiThread
    public LoginActivity_ViewBinding(LoginActivity loginActivity, View view) {
        super(loginActivity, view);
        this.f20320c = loginActivity;
        View c10 = butterknife.internal.c.c(view, R.id.rv_country, "field 'rv_country' and method 'onClick'");
        loginActivity.rv_country = (ImageView) butterknife.internal.c.a(c10, R.id.rv_country, "field 'rv_country'", ImageView.class);
        this.f20321d = c10;
        c10.setOnClickListener(new a(loginActivity));
        loginActivity.tv_country = (TextView) butterknife.internal.c.d(view, R.id.tv_country, "field 'tv_country'", TextView.class);
        loginActivity.et_phone = (TextView) butterknife.internal.c.d(view, R.id.et_phone, "field 'et_phone'", TextView.class);
        loginActivity.et_pwd = (EditText) butterknife.internal.c.d(view, R.id.et_pwd, "field 'et_pwd'", EditText.class);
        View c11 = butterknife.internal.c.c(view, R.id.iv_pwd, "field 'iv_pwd' and method 'onClick'");
        loginActivity.iv_pwd = (ImageView) butterknife.internal.c.a(c11, R.id.iv_pwd, "field 'iv_pwd'", ImageView.class);
        this.f20322e = c11;
        c11.setOnClickListener(new b(loginActivity));
        View c12 = butterknife.internal.c.c(view, R.id.tv_enter_facecast, "field 'enterFacecast' and method 'onClick'");
        loginActivity.enterFacecast = (TextView) butterknife.internal.c.a(c12, R.id.tv_enter_facecast, "field 'enterFacecast'", TextView.class);
        this.f20323f = c12;
        c12.setOnClickListener(new c(loginActivity));
        loginActivity.animationView = (LoginAnimationView) butterknife.internal.c.d(view, R.id.animationView, "field 'animationView'", LoginAnimationView.class);
        loginActivity.lay_content = (LinearLayout) butterknife.internal.c.d(view, R.id.lay_content, "field 'lay_content'", LinearLayout.class);
        View c13 = butterknife.internal.c.c(view, R.id.tv_alertred, "method 'onClick'");
        this.f20324g = c13;
        c13.setOnClickListener(new d(loginActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LoginActivity loginActivity = this.f20320c;
        if (loginActivity != null) {
            this.f20320c = null;
            loginActivity.rv_country = null;
            loginActivity.tv_country = null;
            loginActivity.et_phone = null;
            loginActivity.et_pwd = null;
            loginActivity.iv_pwd = null;
            loginActivity.enterFacecast = null;
            loginActivity.animationView = null;
            loginActivity.lay_content = null;
            this.f20321d.setOnClickListener(null);
            this.f20321d = null;
            this.f20322e.setOnClickListener(null);
            this.f20322e = null;
            this.f20323f.setOnClickListener(null);
            this.f20323f = null;
            this.f20324g.setOnClickListener(null);
            this.f20324g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

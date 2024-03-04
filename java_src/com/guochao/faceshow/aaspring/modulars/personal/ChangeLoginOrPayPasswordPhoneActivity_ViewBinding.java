package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class ChangeLoginOrPayPasswordPhoneActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ChangeLoginOrPayPasswordPhoneActivity f21186c;

    /* renamed from: d  reason: collision with root package name */
    private View f21187d;

    /* renamed from: e  reason: collision with root package name */
    private View f21188e;

    /* renamed from: f  reason: collision with root package name */
    private View f21189f;

    /* renamed from: g  reason: collision with root package name */
    private View f21190g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChangeLoginOrPayPasswordPhoneActivity f21191a;

        a(ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity) {
            this.f21191a = changeLoginOrPayPasswordPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21191a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChangeLoginOrPayPasswordPhoneActivity f21193a;

        b(ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity) {
            this.f21193a = changeLoginOrPayPasswordPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21193a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChangeLoginOrPayPasswordPhoneActivity f21195a;

        c(ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity) {
            this.f21195a = changeLoginOrPayPasswordPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21195a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChangeLoginOrPayPasswordPhoneActivity f21197a;

        d(ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity) {
            this.f21197a = changeLoginOrPayPasswordPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21197a.onClick(view);
        }
    }

    @UiThread
    public ChangeLoginOrPayPasswordPhoneActivity_ViewBinding(ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity, View view) {
        super(changeLoginOrPayPasswordPhoneActivity, view);
        this.f21186c = changeLoginOrPayPasswordPhoneActivity;
        changeLoginOrPayPasswordPhoneActivity.rvCountry = (ImageView) butterknife.internal.c.d(view, R.id.rv_country, "field 'rvCountry'", ImageView.class);
        changeLoginOrPayPasswordPhoneActivity.tvCountry = (TextView) butterknife.internal.c.d(view, R.id.tv_country, "field 'tvCountry'", TextView.class);
        changeLoginOrPayPasswordPhoneActivity.tvPhone = (TextView) butterknife.internal.c.d(view, R.id.tv_phone, "field 'tvPhone'", TextView.class);
        changeLoginOrPayPasswordPhoneActivity.etCode = (EditText) butterknife.internal.c.d(view, R.id.et_code, "field 'etCode'", EditText.class);
        View c10 = butterknife.internal.c.c(view, R.id.rl_send, "field 'rl_send' and method 'onClick'");
        changeLoginOrPayPasswordPhoneActivity.rl_send = (RelativeLayout) butterknife.internal.c.a(c10, R.id.rl_send, "field 'rl_send'", RelativeLayout.class);
        this.f21187d = c10;
        c10.setOnClickListener(new a(changeLoginOrPayPasswordPhoneActivity));
        changeLoginOrPayPasswordPhoneActivity.ivSend = (ImageView) butterknife.internal.c.d(view, R.id.iv_send, "field 'ivSend'", ImageView.class);
        changeLoginOrPayPasswordPhoneActivity.tvCode = (TextView) butterknife.internal.c.d(view, R.id.tv_code, "field 'tvCode'", TextView.class);
        changeLoginOrPayPasswordPhoneActivity.etPwd = (EditText) butterknife.internal.c.d(view, R.id.et_pwd, "field 'etPwd'", EditText.class);
        View c11 = butterknife.internal.c.c(view, R.id.iv_pwd, "field 'ivPwd' and method 'onClick'");
        changeLoginOrPayPasswordPhoneActivity.ivPwd = (ImageView) butterknife.internal.c.a(c11, R.id.iv_pwd, "field 'ivPwd'", ImageView.class);
        this.f21188e = c11;
        c11.setOnClickListener(new b(changeLoginOrPayPasswordPhoneActivity));
        View c12 = butterknife.internal.c.c(view, R.id.btn_ok, "field 'btnOk' and method 'onClick'");
        changeLoginOrPayPasswordPhoneActivity.btnOk = (TextView) butterknife.internal.c.a(c12, R.id.btn_ok, "field 'btnOk'", TextView.class);
        this.f21189f = c12;
        c12.setOnClickListener(new c(changeLoginOrPayPasswordPhoneActivity));
        changeLoginOrPayPasswordPhoneActivity.tvPayPwd = (TextView) butterknife.internal.c.d(view, R.id.tv_pay_pwd, "field 'tvPayPwd'", TextView.class);
        changeLoginOrPayPasswordPhoneActivity.ivEmail = (ImageView) butterknife.internal.c.d(view, R.id.iv_email, "field 'ivEmail'", ImageView.class);
        View c13 = butterknife.internal.c.c(view, R.id.ll_country_hide, "field 'llCountryHide' and method 'onClick'");
        changeLoginOrPayPasswordPhoneActivity.llCountryHide = (LinearLayout) butterknife.internal.c.a(c13, R.id.ll_country_hide, "field 'llCountryHide'", LinearLayout.class);
        this.f21190g = c13;
        c13.setOnClickListener(new d(changeLoginOrPayPasswordPhoneActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity = this.f21186c;
        if (changeLoginOrPayPasswordPhoneActivity != null) {
            this.f21186c = null;
            changeLoginOrPayPasswordPhoneActivity.rvCountry = null;
            changeLoginOrPayPasswordPhoneActivity.tvCountry = null;
            changeLoginOrPayPasswordPhoneActivity.tvPhone = null;
            changeLoginOrPayPasswordPhoneActivity.etCode = null;
            changeLoginOrPayPasswordPhoneActivity.rl_send = null;
            changeLoginOrPayPasswordPhoneActivity.ivSend = null;
            changeLoginOrPayPasswordPhoneActivity.tvCode = null;
            changeLoginOrPayPasswordPhoneActivity.etPwd = null;
            changeLoginOrPayPasswordPhoneActivity.ivPwd = null;
            changeLoginOrPayPasswordPhoneActivity.btnOk = null;
            changeLoginOrPayPasswordPhoneActivity.tvPayPwd = null;
            changeLoginOrPayPasswordPhoneActivity.ivEmail = null;
            changeLoginOrPayPasswordPhoneActivity.llCountryHide = null;
            this.f21187d.setOnClickListener(null);
            this.f21187d = null;
            this.f21188e.setOnClickListener(null);
            this.f21188e = null;
            this.f21189f.setOnClickListener(null);
            this.f21189f = null;
            this.f21190g.setOnClickListener(null);
            this.f21190g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

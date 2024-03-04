package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
/* loaded from: classes3.dex */
public class RegisteredActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private RegisteredActivity f20368c;

    /* renamed from: d  reason: collision with root package name */
    private View f20369d;

    /* renamed from: e  reason: collision with root package name */
    private View f20370e;

    /* renamed from: f  reason: collision with root package name */
    private View f20371f;

    /* renamed from: g  reason: collision with root package name */
    private View f20372g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RegisteredActivity f20373a;

        a(RegisteredActivity registeredActivity) {
            this.f20373a = registeredActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20373a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RegisteredActivity f20375a;

        b(RegisteredActivity registeredActivity) {
            this.f20375a = registeredActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20375a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RegisteredActivity f20377a;

        c(RegisteredActivity registeredActivity) {
            this.f20377a = registeredActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20377a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RegisteredActivity f20379a;

        d(RegisteredActivity registeredActivity) {
            this.f20379a = registeredActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20379a.onClick(view);
        }
    }

    @UiThread
    public RegisteredActivity_ViewBinding(RegisteredActivity registeredActivity, View view) {
        super(registeredActivity, view);
        this.f20368c = registeredActivity;
        View c10 = butterknife.internal.c.c(view, R.id.rv_country, "field 'rv_country' and method 'onClick'");
        registeredActivity.rv_country = (ImageView) butterknife.internal.c.a(c10, R.id.rv_country, "field 'rv_country'", ImageView.class);
        this.f20369d = c10;
        c10.setOnClickListener(new a(registeredActivity));
        registeredActivity.tv_country = (TextView) butterknife.internal.c.d(view, R.id.tv_country, "field 'tv_country'", TextView.class);
        registeredActivity.et_phone = (TextView) butterknife.internal.c.d(view, R.id.et_phone, "field 'et_phone'", TextView.class);
        registeredActivity.et_code = (EditText) butterknife.internal.c.d(view, R.id.et_code, "field 'et_code'", EditText.class);
        View c11 = butterknife.internal.c.c(view, R.id.rl_send, "field 'rl_send' and method 'onClick'");
        registeredActivity.rl_send = (FrameLayout) butterknife.internal.c.a(c11, R.id.rl_send, "field 'rl_send'", FrameLayout.class);
        this.f20370e = c11;
        c11.setOnClickListener(new b(registeredActivity));
        registeredActivity.ivSend = (ImageView) butterknife.internal.c.d(view, R.id.iv_send, "field 'ivSend'", ImageView.class);
        registeredActivity.tv_code = (TextView) butterknife.internal.c.d(view, R.id.tv_code, "field 'tv_code'", TextView.class);
        registeredActivity.et_pwd = (EditText) butterknife.internal.c.d(view, R.id.et_pwd, "field 'et_pwd'", EditText.class);
        View c12 = butterknife.internal.c.c(view, R.id.iv_pwd, "field 'iv_pwd' and method 'onClick'");
        registeredActivity.iv_pwd = (ImageView) butterknife.internal.c.a(c12, R.id.iv_pwd, "field 'iv_pwd'", ImageView.class);
        this.f20371f = c12;
        c12.setOnClickListener(new c(registeredActivity));
        View c13 = butterknife.internal.c.c(view, R.id.next, "field 'next' and method 'onClick'");
        registeredActivity.next = (TextView) butterknife.internal.c.a(c13, R.id.next, "field 'next'", TextView.class);
        this.f20372g = c13;
        c13.setOnClickListener(new d(registeredActivity));
        registeredActivity.animationViewPro = (LoginAnimationView) butterknife.internal.c.d(view, R.id.animationView, "field 'animationViewPro'", LoginAnimationView.class);
        registeredActivity.lay_content = (LinearLayout) butterknife.internal.c.d(view, R.id.lay_content, "field 'lay_content'", LinearLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        RegisteredActivity registeredActivity = this.f20368c;
        if (registeredActivity != null) {
            this.f20368c = null;
            registeredActivity.rv_country = null;
            registeredActivity.tv_country = null;
            registeredActivity.et_phone = null;
            registeredActivity.et_code = null;
            registeredActivity.rl_send = null;
            registeredActivity.ivSend = null;
            registeredActivity.tv_code = null;
            registeredActivity.et_pwd = null;
            registeredActivity.iv_pwd = null;
            registeredActivity.next = null;
            registeredActivity.animationViewPro = null;
            registeredActivity.lay_content = null;
            this.f20369d.setOnClickListener(null);
            this.f20369d = null;
            this.f20370e.setOnClickListener(null);
            this.f20370e = null;
            this.f20371f.setOnClickListener(null);
            this.f20371f = null;
            this.f20372g.setOnClickListener(null);
            this.f20372g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

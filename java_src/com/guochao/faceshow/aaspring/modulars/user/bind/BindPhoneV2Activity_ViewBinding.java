package com.guochao.faceshow.aaspring.modulars.user.bind;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class BindPhoneV2Activity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BindPhoneV2Activity f23191c;

    /* renamed from: d  reason: collision with root package name */
    private View f23192d;

    /* renamed from: e  reason: collision with root package name */
    private View f23193e;

    /* renamed from: f  reason: collision with root package name */
    private View f23194f;

    /* renamed from: g  reason: collision with root package name */
    private View f23195g;

    /* renamed from: h  reason: collision with root package name */
    private View f23196h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindPhoneV2Activity f23197a;

        a(BindPhoneV2Activity bindPhoneV2Activity) {
            this.f23197a = bindPhoneV2Activity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23197a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindPhoneV2Activity f23199a;

        b(BindPhoneV2Activity bindPhoneV2Activity) {
            this.f23199a = bindPhoneV2Activity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23199a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindPhoneV2Activity f23201a;

        c(BindPhoneV2Activity bindPhoneV2Activity) {
            this.f23201a = bindPhoneV2Activity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23201a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindPhoneV2Activity f23203a;

        d(BindPhoneV2Activity bindPhoneV2Activity) {
            this.f23203a = bindPhoneV2Activity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23203a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindPhoneV2Activity f23205a;

        e(BindPhoneV2Activity bindPhoneV2Activity) {
            this.f23205a = bindPhoneV2Activity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f23205a.onViewClicked(view);
        }
    }

    @UiThread
    public BindPhoneV2Activity_ViewBinding(BindPhoneV2Activity bindPhoneV2Activity, View view) {
        super(bindPhoneV2Activity, view);
        this.f23191c = bindPhoneV2Activity;
        View c10 = butterknife.internal.c.c(view, R.id.rv_country, "field 'rvCountry' and method 'onViewClicked'");
        bindPhoneV2Activity.rvCountry = (ImageView) butterknife.internal.c.a(c10, R.id.rv_country, "field 'rvCountry'", ImageView.class);
        this.f23192d = c10;
        c10.setOnClickListener(new a(bindPhoneV2Activity));
        View c11 = butterknife.internal.c.c(view, R.id.tv_country, "field 'tvCountry' and method 'onViewClicked'");
        bindPhoneV2Activity.tvCountry = (TextView) butterknife.internal.c.a(c11, R.id.tv_country, "field 'tvCountry'", TextView.class);
        this.f23193e = c11;
        c11.setOnClickListener(new b(bindPhoneV2Activity));
        bindPhoneV2Activity.etPhone = (EditText) butterknife.internal.c.d(view, R.id.et_phone, "field 'etPhone'", EditText.class);
        bindPhoneV2Activity.etCode = (EditText) butterknife.internal.c.d(view, R.id.et_code, "field 'etCode'", EditText.class);
        View c12 = butterknife.internal.c.c(view, R.id.rl_send, "field 'rlSend' and method 'onViewClicked'");
        bindPhoneV2Activity.rlSend = (FrameLayout) butterknife.internal.c.a(c12, R.id.rl_send, "field 'rlSend'", FrameLayout.class);
        this.f23194f = c12;
        c12.setOnClickListener(new c(bindPhoneV2Activity));
        bindPhoneV2Activity.tvCode = (TextView) butterknife.internal.c.d(view, R.id.tv_code, "field 'tvCode'", TextView.class);
        bindPhoneV2Activity.rlSendHide = (FrameLayout) butterknife.internal.c.d(view, R.id.rl_send_hide, "field 'rlSendHide'", FrameLayout.class);
        View c13 = butterknife.internal.c.c(view, R.id.btn_confirm, "field 'btnConfirm' and method 'onViewClicked'");
        bindPhoneV2Activity.btnConfirm = (TextView) butterknife.internal.c.a(c13, R.id.btn_confirm, "field 'btnConfirm'", TextView.class);
        this.f23195g = c13;
        c13.setOnClickListener(new d(bindPhoneV2Activity));
        View c14 = butterknife.internal.c.c(view, R.id.iv_next, "field 'ivNext' and method 'onViewClicked'");
        bindPhoneV2Activity.ivNext = (ImageView) butterknife.internal.c.a(c14, R.id.iv_next, "field 'ivNext'", ImageView.class);
        this.f23196h = c14;
        c14.setOnClickListener(new e(bindPhoneV2Activity));
        bindPhoneV2Activity.tvBindPhoneTip = (TextView) butterknife.internal.c.d(view, R.id.tv_bind_phone_tip, "field 'tvBindPhoneTip'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BindPhoneV2Activity bindPhoneV2Activity = this.f23191c;
        if (bindPhoneV2Activity != null) {
            this.f23191c = null;
            bindPhoneV2Activity.rvCountry = null;
            bindPhoneV2Activity.tvCountry = null;
            bindPhoneV2Activity.etPhone = null;
            bindPhoneV2Activity.etCode = null;
            bindPhoneV2Activity.rlSend = null;
            bindPhoneV2Activity.tvCode = null;
            bindPhoneV2Activity.rlSendHide = null;
            bindPhoneV2Activity.btnConfirm = null;
            bindPhoneV2Activity.ivNext = null;
            bindPhoneV2Activity.tvBindPhoneTip = null;
            this.f23192d.setOnClickListener(null);
            this.f23192d = null;
            this.f23193e.setOnClickListener(null);
            this.f23193e = null;
            this.f23194f.setOnClickListener(null);
            this.f23194f = null;
            this.f23195g.setOnClickListener(null);
            this.f23195g = null;
            this.f23196h.setOnClickListener(null);
            this.f23196h = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class PhoneOrEmailSetLoginPasswordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PhoneOrEmailSetLoginPasswordActivity f21245c;

    /* renamed from: d  reason: collision with root package name */
    private View f21246d;

    /* renamed from: e  reason: collision with root package name */
    private View f21247e;

    /* renamed from: f  reason: collision with root package name */
    private View f21248f;

    /* renamed from: g  reason: collision with root package name */
    private View f21249g;

    /* renamed from: h  reason: collision with root package name */
    private View f21250h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PhoneOrEmailSetLoginPasswordActivity f21251a;

        a(PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity) {
            this.f21251a = phoneOrEmailSetLoginPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21251a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PhoneOrEmailSetLoginPasswordActivity f21253a;

        b(PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity) {
            this.f21253a = phoneOrEmailSetLoginPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21253a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PhoneOrEmailSetLoginPasswordActivity f21255a;

        c(PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity) {
            this.f21255a = phoneOrEmailSetLoginPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21255a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PhoneOrEmailSetLoginPasswordActivity f21257a;

        d(PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity) {
            this.f21257a = phoneOrEmailSetLoginPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21257a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PhoneOrEmailSetLoginPasswordActivity f21259a;

        e(PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity) {
            this.f21259a = phoneOrEmailSetLoginPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21259a.onViewClicked(view);
        }
    }

    @UiThread
    public PhoneOrEmailSetLoginPasswordActivity_ViewBinding(PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity, View view) {
        super(phoneOrEmailSetLoginPasswordActivity, view);
        this.f21245c = phoneOrEmailSetLoginPasswordActivity;
        phoneOrEmailSetLoginPasswordActivity.llEmail = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_email, "field 'llEmail'", LinearLayout.class);
        phoneOrEmailSetLoginPasswordActivity.llPhone = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_phone, "field 'llPhone'", LinearLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.rv_country, "field 'rvCountry' and method 'onViewClicked'");
        phoneOrEmailSetLoginPasswordActivity.rvCountry = (ImageView) butterknife.internal.c.a(c10, R.id.rv_country, "field 'rvCountry'", ImageView.class);
        this.f21246d = c10;
        c10.setOnClickListener(new a(phoneOrEmailSetLoginPasswordActivity));
        View c11 = butterknife.internal.c.c(view, R.id.tv_country, "field 'tvCountry' and method 'onViewClicked'");
        phoneOrEmailSetLoginPasswordActivity.tvCountry = (TextView) butterknife.internal.c.a(c11, R.id.tv_country, "field 'tvCountry'", TextView.class);
        this.f21247e = c11;
        c11.setOnClickListener(new b(phoneOrEmailSetLoginPasswordActivity));
        phoneOrEmailSetLoginPasswordActivity.etEmail = (EditText) butterknife.internal.c.d(view, R.id.et_email, "field 'etEmail'", EditText.class);
        phoneOrEmailSetLoginPasswordActivity.etPhone = (EditText) butterknife.internal.c.d(view, R.id.et_phone, "field 'etPhone'", EditText.class);
        View c12 = butterknife.internal.c.c(view, R.id.btn_next, "field 'btnNext' and method 'onViewClicked'");
        phoneOrEmailSetLoginPasswordActivity.btnNext = (TextView) butterknife.internal.c.a(c12, R.id.btn_next, "field 'btnNext'", TextView.class);
        this.f21248f = c12;
        c12.setOnClickListener(new c(phoneOrEmailSetLoginPasswordActivity));
        phoneOrEmailSetLoginPasswordActivity.tvUseEmailOrPhoneTip = (TextView) butterknife.internal.c.d(view, R.id.tv_use_email_or_phone_tip, "field 'tvUseEmailOrPhoneTip'", TextView.class);
        View c13 = butterknife.internal.c.c(view, R.id.tv_use_email_or_phone, "field 'tvUseEmailOrPhone' and method 'onViewClicked'");
        phoneOrEmailSetLoginPasswordActivity.tvUseEmailOrPhone = (TextView) butterknife.internal.c.a(c13, R.id.tv_use_email_or_phone, "field 'tvUseEmailOrPhone'", TextView.class);
        this.f21249g = c13;
        c13.setOnClickListener(new d(phoneOrEmailSetLoginPasswordActivity));
        View c14 = butterknife.internal.c.c(view, R.id.iv_next, "method 'onViewClicked'");
        this.f21250h = c14;
        c14.setOnClickListener(new e(phoneOrEmailSetLoginPasswordActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity = this.f21245c;
        if (phoneOrEmailSetLoginPasswordActivity != null) {
            this.f21245c = null;
            phoneOrEmailSetLoginPasswordActivity.llEmail = null;
            phoneOrEmailSetLoginPasswordActivity.llPhone = null;
            phoneOrEmailSetLoginPasswordActivity.rvCountry = null;
            phoneOrEmailSetLoginPasswordActivity.tvCountry = null;
            phoneOrEmailSetLoginPasswordActivity.etEmail = null;
            phoneOrEmailSetLoginPasswordActivity.etPhone = null;
            phoneOrEmailSetLoginPasswordActivity.btnNext = null;
            phoneOrEmailSetLoginPasswordActivity.tvUseEmailOrPhoneTip = null;
            phoneOrEmailSetLoginPasswordActivity.tvUseEmailOrPhone = null;
            this.f21246d.setOnClickListener(null);
            this.f21246d = null;
            this.f21247e.setOnClickListener(null);
            this.f21247e = null;
            this.f21248f.setOnClickListener(null);
            this.f21248f = null;
            this.f21249g.setOnClickListener(null);
            this.f21249g = null;
            this.f21250h.setOnClickListener(null);
            this.f21250h = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

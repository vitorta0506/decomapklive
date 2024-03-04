package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class BindPhoneToSetPayPasswordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BindPhoneToSetPayPasswordActivity f21136c;

    /* renamed from: d  reason: collision with root package name */
    private View f21137d;

    /* renamed from: e  reason: collision with root package name */
    private View f21138e;

    /* renamed from: f  reason: collision with root package name */
    private View f21139f;

    /* renamed from: g  reason: collision with root package name */
    private View f21140g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindPhoneToSetPayPasswordActivity f21141a;

        a(BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity) {
            this.f21141a = bindPhoneToSetPayPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21141a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindPhoneToSetPayPasswordActivity f21143a;

        b(BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity) {
            this.f21143a = bindPhoneToSetPayPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21143a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindPhoneToSetPayPasswordActivity f21145a;

        c(BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity) {
            this.f21145a = bindPhoneToSetPayPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21145a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindPhoneToSetPayPasswordActivity f21147a;

        d(BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity) {
            this.f21147a = bindPhoneToSetPayPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21147a.onViewClicked(view);
        }
    }

    @UiThread
    public BindPhoneToSetPayPasswordActivity_ViewBinding(BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity, View view) {
        super(bindPhoneToSetPayPasswordActivity, view);
        this.f21136c = bindPhoneToSetPayPasswordActivity;
        View c10 = butterknife.internal.c.c(view, R.id.rv_country, "field 'rvCountry' and method 'onViewClicked'");
        bindPhoneToSetPayPasswordActivity.rvCountry = (ImageView) butterknife.internal.c.a(c10, R.id.rv_country, "field 'rvCountry'", ImageView.class);
        this.f21137d = c10;
        c10.setOnClickListener(new a(bindPhoneToSetPayPasswordActivity));
        View c11 = butterknife.internal.c.c(view, R.id.tv_country, "field 'tvCountry' and method 'onViewClicked'");
        bindPhoneToSetPayPasswordActivity.tvCountry = (TextView) butterknife.internal.c.a(c11, R.id.tv_country, "field 'tvCountry'", TextView.class);
        this.f21138e = c11;
        c11.setOnClickListener(new b(bindPhoneToSetPayPasswordActivity));
        bindPhoneToSetPayPasswordActivity.etPhone = (EditText) butterknife.internal.c.d(view, R.id.et_phone, "field 'etPhone'", EditText.class);
        View c12 = butterknife.internal.c.c(view, R.id.btn_next, "field 'btnNext' and method 'onViewClicked'");
        bindPhoneToSetPayPasswordActivity.btnNext = (TextView) butterknife.internal.c.a(c12, R.id.btn_next, "field 'btnNext'", TextView.class);
        this.f21139f = c12;
        c12.setOnClickListener(new c(bindPhoneToSetPayPasswordActivity));
        View c13 = butterknife.internal.c.c(view, R.id.iv_next, "method 'onViewClicked'");
        this.f21140g = c13;
        c13.setOnClickListener(new d(bindPhoneToSetPayPasswordActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity = this.f21136c;
        if (bindPhoneToSetPayPasswordActivity != null) {
            this.f21136c = null;
            bindPhoneToSetPayPasswordActivity.rvCountry = null;
            bindPhoneToSetPayPasswordActivity.tvCountry = null;
            bindPhoneToSetPayPasswordActivity.etPhone = null;
            bindPhoneToSetPayPasswordActivity.btnNext = null;
            this.f21137d.setOnClickListener(null);
            this.f21137d = null;
            this.f21138e.setOnClickListener(null);
            this.f21138e = null;
            this.f21139f.setOnClickListener(null);
            this.f21139f = null;
            this.f21140g.setOnClickListener(null);
            this.f21140g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

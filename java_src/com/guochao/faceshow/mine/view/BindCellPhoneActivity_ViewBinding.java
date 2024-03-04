package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class BindCellPhoneActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BindCellPhoneActivity f25509c;

    /* renamed from: d  reason: collision with root package name */
    private View f25510d;

    /* renamed from: e  reason: collision with root package name */
    private View f25511e;

    /* renamed from: f  reason: collision with root package name */
    private View f25512f;

    /* renamed from: g  reason: collision with root package name */
    private View f25513g;

    /* renamed from: h  reason: collision with root package name */
    private View f25514h;

    /* renamed from: i  reason: collision with root package name */
    private View f25515i;

    /* renamed from: j  reason: collision with root package name */
    private View f25516j;

    /* renamed from: k  reason: collision with root package name */
    private View f25517k;

    /* loaded from: classes4.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindCellPhoneActivity f25518a;

        a(BindCellPhoneActivity bindCellPhoneActivity) {
            this.f25518a = bindCellPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25518a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindCellPhoneActivity f25520a;

        b(BindCellPhoneActivity bindCellPhoneActivity) {
            this.f25520a = bindCellPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25520a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindCellPhoneActivity f25522a;

        c(BindCellPhoneActivity bindCellPhoneActivity) {
            this.f25522a = bindCellPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25522a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindCellPhoneActivity f25524a;

        d(BindCellPhoneActivity bindCellPhoneActivity) {
            this.f25524a = bindCellPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25524a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindCellPhoneActivity f25526a;

        e(BindCellPhoneActivity bindCellPhoneActivity) {
            this.f25526a = bindCellPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25526a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindCellPhoneActivity f25528a;

        f(BindCellPhoneActivity bindCellPhoneActivity) {
            this.f25528a = bindCellPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25528a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class g extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindCellPhoneActivity f25530a;

        g(BindCellPhoneActivity bindCellPhoneActivity) {
            this.f25530a = bindCellPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25530a.onViewClicked(view);
        }
    }

    /* loaded from: classes4.dex */
    class h extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BindCellPhoneActivity f25532a;

        h(BindCellPhoneActivity bindCellPhoneActivity) {
            this.f25532a = bindCellPhoneActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25532a.onViewClicked(view);
        }
    }

    @UiThread
    public BindCellPhoneActivity_ViewBinding(BindCellPhoneActivity bindCellPhoneActivity, View view) {
        super(bindCellPhoneActivity, view);
        this.f25509c = bindCellPhoneActivity;
        bindCellPhoneActivity.tvHasBindNumber = (TextView) butterknife.internal.c.d(view, R.id.tvHasBindNumber, "field 'tvHasBindNumber'", TextView.class);
        bindCellPhoneActivity.etPhoneNumber = (EditText) butterknife.internal.c.d(view, R.id.etPhoneNumber, "field 'etPhoneNumber'", EditText.class);
        bindCellPhoneActivity.etVerificationCode = (EditText) butterknife.internal.c.d(view, R.id.etVerificationCode, "field 'etVerificationCode'", EditText.class);
        View c10 = butterknife.internal.c.c(view, R.id.btnSendVerificationCode, "field 'btnSendVerificationCode' and method 'onViewClicked'");
        bindCellPhoneActivity.btnSendVerificationCode = (TextView) butterknife.internal.c.a(c10, R.id.btnSendVerificationCode, "field 'btnSendVerificationCode'", TextView.class);
        this.f25510d = c10;
        c10.setOnClickListener(new a(bindCellPhoneActivity));
        View c11 = butterknife.internal.c.c(view, R.id.btnBind, "field 'btnBind' and method 'onViewClicked'");
        bindCellPhoneActivity.btnBind = c11;
        this.f25511e = c11;
        c11.setOnClickListener(new b(bindCellPhoneActivity));
        bindCellPhoneActivity.flVerificationLayout = (RelativeLayout) butterknife.internal.c.d(view, R.id.flVerificationLayout, "field 'flVerificationLayout'", RelativeLayout.class);
        bindCellPhoneActivity.etNewPhoneNumber = (EditText) butterknife.internal.c.d(view, R.id.etNewPhoneNumber, "field 'etNewPhoneNumber'", EditText.class);
        View c12 = butterknife.internal.c.c(view, R.id.btnChange, "field 'btnChange' and method 'onViewClicked'");
        bindCellPhoneActivity.btnChange = c12;
        this.f25512f = c12;
        c12.setOnClickListener(new c(bindCellPhoneActivity));
        View c13 = butterknife.internal.c.c(view, R.id.btnNext, "field 'btnNext' and method 'onViewClicked'");
        bindCellPhoneActivity.btnNext = c13;
        this.f25513g = c13;
        c13.setOnClickListener(new d(bindCellPhoneActivity));
        bindCellPhoneActivity.etNewPhoneNumber_rl = (RelativeLayout) butterknife.internal.c.d(view, R.id.etNewPhoneNumber_rl, "field 'etNewPhoneNumber_rl'", RelativeLayout.class);
        bindCellPhoneActivity.etPhoneNumber_rl = (RelativeLayout) butterknife.internal.c.d(view, R.id.etPhoneNumber_rl, "field 'etPhoneNumber_rl'", RelativeLayout.class);
        View c14 = butterknife.internal.c.c(view, R.id.national_flag, "field 'national_flag' and method 'onViewClicked'");
        bindCellPhoneActivity.national_flag = (ImageView) butterknife.internal.c.a(c14, R.id.national_flag, "field 'national_flag'", ImageView.class);
        this.f25514h = c14;
        c14.setOnClickListener(new e(bindCellPhoneActivity));
        View c15 = butterknife.internal.c.c(view, R.id.national_txt, "field 'national_txt' and method 'onViewClicked'");
        bindCellPhoneActivity.national_txt = (TextView) butterknife.internal.c.a(c15, R.id.national_txt, "field 'national_txt'", TextView.class);
        this.f25515i = c15;
        c15.setOnClickListener(new f(bindCellPhoneActivity));
        View c16 = butterknife.internal.c.c(view, R.id.national_flag1, "field 'national_flag1' and method 'onViewClicked'");
        bindCellPhoneActivity.national_flag1 = (ImageView) butterknife.internal.c.a(c16, R.id.national_flag1, "field 'national_flag1'", ImageView.class);
        this.f25516j = c16;
        c16.setOnClickListener(new g(bindCellPhoneActivity));
        View c17 = butterknife.internal.c.c(view, R.id.national_txt1, "field 'national_txt1' and method 'onViewClicked'");
        bindCellPhoneActivity.national_txt1 = (TextView) butterknife.internal.c.a(c17, R.id.national_txt1, "field 'national_txt1'", TextView.class);
        this.f25517k = c17;
        c17.setOnClickListener(new h(bindCellPhoneActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BindCellPhoneActivity bindCellPhoneActivity = this.f25509c;
        if (bindCellPhoneActivity != null) {
            this.f25509c = null;
            bindCellPhoneActivity.tvHasBindNumber = null;
            bindCellPhoneActivity.etPhoneNumber = null;
            bindCellPhoneActivity.etVerificationCode = null;
            bindCellPhoneActivity.btnSendVerificationCode = null;
            bindCellPhoneActivity.btnBind = null;
            bindCellPhoneActivity.flVerificationLayout = null;
            bindCellPhoneActivity.etNewPhoneNumber = null;
            bindCellPhoneActivity.btnChange = null;
            bindCellPhoneActivity.btnNext = null;
            bindCellPhoneActivity.etNewPhoneNumber_rl = null;
            bindCellPhoneActivity.etPhoneNumber_rl = null;
            bindCellPhoneActivity.national_flag = null;
            bindCellPhoneActivity.national_txt = null;
            bindCellPhoneActivity.national_flag1 = null;
            bindCellPhoneActivity.national_txt1 = null;
            this.f25510d.setOnClickListener(null);
            this.f25510d = null;
            this.f25511e.setOnClickListener(null);
            this.f25511e = null;
            this.f25512f.setOnClickListener(null);
            this.f25512f = null;
            this.f25513g.setOnClickListener(null);
            this.f25513g = null;
            this.f25514h.setOnClickListener(null);
            this.f25514h = null;
            this.f25515i.setOnClickListener(null);
            this.f25515i = null;
            this.f25516j.setOnClickListener(null);
            this.f25516j = null;
            this.f25517k.setOnClickListener(null);
            this.f25517k = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

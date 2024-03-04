package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
/* loaded from: classes3.dex */
public class FindPasswordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private FindPasswordActivity f20280c;

    /* renamed from: d  reason: collision with root package name */
    private View f20281d;

    /* renamed from: e  reason: collision with root package name */
    private View f20282e;

    /* renamed from: f  reason: collision with root package name */
    private View f20283f;

    /* renamed from: g  reason: collision with root package name */
    private View f20284g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindPasswordActivity f20285a;

        a(FindPasswordActivity findPasswordActivity) {
            this.f20285a = findPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20285a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindPasswordActivity f20287a;

        b(FindPasswordActivity findPasswordActivity) {
            this.f20287a = findPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20287a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindPasswordActivity f20289a;

        c(FindPasswordActivity findPasswordActivity) {
            this.f20289a = findPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20289a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindPasswordActivity f20291a;

        d(FindPasswordActivity findPasswordActivity) {
            this.f20291a = findPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20291a.onClick(view);
        }
    }

    @UiThread
    public FindPasswordActivity_ViewBinding(FindPasswordActivity findPasswordActivity, View view) {
        super(findPasswordActivity, view);
        this.f20280c = findPasswordActivity;
        findPasswordActivity.rv_country = (ImageView) butterknife.internal.c.d(view, R.id.rv_country, "field 'rv_country'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.tv_country, "field 'tv_country' and method 'onClick'");
        findPasswordActivity.tv_country = (TextView) butterknife.internal.c.a(c10, R.id.tv_country, "field 'tv_country'", TextView.class);
        this.f20281d = c10;
        c10.setOnClickListener(new a(findPasswordActivity));
        findPasswordActivity.et_phone = (TextView) butterknife.internal.c.d(view, R.id.et_phone, "field 'et_phone'", TextView.class);
        findPasswordActivity.et_code = (EditText) butterknife.internal.c.d(view, R.id.et_code, "field 'et_code'", EditText.class);
        View c11 = butterknife.internal.c.c(view, R.id.rl_send, "field 'rl_send' and method 'onClick'");
        findPasswordActivity.rl_send = (ViewGroup) butterknife.internal.c.a(c11, R.id.rl_send, "field 'rl_send'", ViewGroup.class);
        this.f20282e = c11;
        c11.setOnClickListener(new b(findPasswordActivity));
        findPasswordActivity.rl_send_hide = (ViewGroup) butterknife.internal.c.d(view, R.id.rl_send_hide, "field 'rl_send_hide'", ViewGroup.class);
        findPasswordActivity.tv_code = (TextView) butterknife.internal.c.d(view, R.id.tv_code, "field 'tv_code'", TextView.class);
        findPasswordActivity.et_pwd = (EditText) butterknife.internal.c.d(view, R.id.et_pwd, "field 'et_pwd'", EditText.class);
        View c12 = butterknife.internal.c.c(view, R.id.iv_pwd, "field 'iv_pwd' and method 'onClick'");
        findPasswordActivity.iv_pwd = (ImageView) butterknife.internal.c.a(c12, R.id.iv_pwd, "field 'iv_pwd'", ImageView.class);
        this.f20283f = c12;
        c12.setOnClickListener(new c(findPasswordActivity));
        View c13 = butterknife.internal.c.c(view, R.id.next, "field 'next' and method 'onClick'");
        findPasswordActivity.next = (TextView) butterknife.internal.c.a(c13, R.id.next, "field 'next'", TextView.class);
        this.f20284g = c13;
        c13.setOnClickListener(new d(findPasswordActivity));
        findPasswordActivity.animationView = (LoginAnimationView) butterknife.internal.c.d(view, R.id.animationView, "field 'animationView'", LoginAnimationView.class);
        findPasswordActivity.lay_content = (LinearLayout) butterknife.internal.c.d(view, R.id.lay_content, "field 'lay_content'", LinearLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        FindPasswordActivity findPasswordActivity = this.f20280c;
        if (findPasswordActivity != null) {
            this.f20280c = null;
            findPasswordActivity.rv_country = null;
            findPasswordActivity.tv_country = null;
            findPasswordActivity.et_phone = null;
            findPasswordActivity.et_code = null;
            findPasswordActivity.rl_send = null;
            findPasswordActivity.rl_send_hide = null;
            findPasswordActivity.tv_code = null;
            findPasswordActivity.et_pwd = null;
            findPasswordActivity.iv_pwd = null;
            findPasswordActivity.next = null;
            findPasswordActivity.animationView = null;
            findPasswordActivity.lay_content = null;
            this.f20281d.setOnClickListener(null);
            this.f20281d = null;
            this.f20282e.setOnClickListener(null);
            this.f20282e = null;
            this.f20283f.setOnClickListener(null);
            this.f20283f = null;
            this.f20284g.setOnClickListener(null);
            this.f20284g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
/* loaded from: classes3.dex */
public class ChooseLoginTypeActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ChooseLoginTypeActivity f20196c;

    /* renamed from: d  reason: collision with root package name */
    private View f20197d;

    /* renamed from: e  reason: collision with root package name */
    private View f20198e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChooseLoginTypeActivity f20199a;

        a(ChooseLoginTypeActivity chooseLoginTypeActivity) {
            this.f20199a = chooseLoginTypeActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20199a.loginWithFaceBook(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChooseLoginTypeActivity f20201a;

        b(ChooseLoginTypeActivity chooseLoginTypeActivity) {
            this.f20201a = chooseLoginTypeActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20201a.loginWithGoogle(view);
        }
    }

    @UiThread
    public ChooseLoginTypeActivity_ViewBinding(ChooseLoginTypeActivity chooseLoginTypeActivity, View view) {
        super(chooseLoginTypeActivity, view);
        this.f20196c = chooseLoginTypeActivity;
        chooseLoginTypeActivity.animationViewPro = (LoginAnimationView) c.d(view, R.id.animationView, "field 'animationViewPro'", LoginAnimationView.class);
        chooseLoginTypeActivity.lay_login = (LinearLayout) c.d(view, R.id.lay_login, "field 'lay_login'", LinearLayout.class);
        View c10 = c.c(view, R.id.phone_login, "method 'loginWithFaceBook'");
        this.f20197d = c10;
        c10.setOnClickListener(new a(chooseLoginTypeActivity));
        View c11 = c.c(view, R.id.google_login, "method 'loginWithGoogle'");
        this.f20198e = c11;
        c11.setOnClickListener(new b(chooseLoginTypeActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ChooseLoginTypeActivity chooseLoginTypeActivity = this.f20196c;
        if (chooseLoginTypeActivity != null) {
            this.f20196c = null;
            chooseLoginTypeActivity.animationViewPro = null;
            chooseLoginTypeActivity.lay_login = null;
            this.f20197d.setOnClickListener(null);
            this.f20197d = null;
            this.f20198e.setOnClickListener(null);
            this.f20198e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

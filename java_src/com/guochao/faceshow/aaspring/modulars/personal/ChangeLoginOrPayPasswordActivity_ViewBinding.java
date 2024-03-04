package com.guochao.faceshow.aaspring.modulars.personal;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class ChangeLoginOrPayPasswordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ChangeLoginOrPayPasswordActivity f21157c;

    /* renamed from: d  reason: collision with root package name */
    private View f21158d;

    /* renamed from: e  reason: collision with root package name */
    private View f21159e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChangeLoginOrPayPasswordActivity f21160a;

        a(ChangeLoginOrPayPasswordActivity changeLoginOrPayPasswordActivity) {
            this.f21160a = changeLoginOrPayPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21160a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChangeLoginOrPayPasswordActivity f21162a;

        b(ChangeLoginOrPayPasswordActivity changeLoginOrPayPasswordActivity) {
            this.f21162a = changeLoginOrPayPasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21162a.onViewClicked(view);
        }
    }

    @UiThread
    public ChangeLoginOrPayPasswordActivity_ViewBinding(ChangeLoginOrPayPasswordActivity changeLoginOrPayPasswordActivity, View view) {
        super(changeLoginOrPayPasswordActivity, view);
        this.f21157c = changeLoginOrPayPasswordActivity;
        changeLoginOrPayPasswordActivity.etOriginalPwd = (EditText) butterknife.internal.c.d(view, R.id.et_original_pwd, "field 'etOriginalPwd'", EditText.class);
        changeLoginOrPayPasswordActivity.etNewlPwd = (EditText) butterknife.internal.c.d(view, R.id.et_new_pwd, "field 'etNewlPwd'", EditText.class);
        View c10 = butterknife.internal.c.c(view, R.id.tv_retrieve_password, "field 'tvRetrievePassword' and method 'onViewClicked'");
        changeLoginOrPayPasswordActivity.tvRetrievePassword = (TextView) butterknife.internal.c.a(c10, R.id.tv_retrieve_password, "field 'tvRetrievePassword'", TextView.class);
        this.f21158d = c10;
        c10.setOnClickListener(new a(changeLoginOrPayPasswordActivity));
        View c11 = butterknife.internal.c.c(view, R.id.btn_ok, "field 'btnOk' and method 'onViewClicked'");
        changeLoginOrPayPasswordActivity.btnOk = (TextView) butterknife.internal.c.a(c11, R.id.btn_ok, "field 'btnOk'", TextView.class);
        this.f21159e = c11;
        c11.setOnClickListener(new b(changeLoginOrPayPasswordActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ChangeLoginOrPayPasswordActivity changeLoginOrPayPasswordActivity = this.f21157c;
        if (changeLoginOrPayPasswordActivity != null) {
            this.f21157c = null;
            changeLoginOrPayPasswordActivity.etOriginalPwd = null;
            changeLoginOrPayPasswordActivity.etNewlPwd = null;
            changeLoginOrPayPasswordActivity.tvRetrievePassword = null;
            changeLoginOrPayPasswordActivity.btnOk = null;
            this.f21158d.setOnClickListener(null);
            this.f21158d = null;
            this.f21159e.setOnClickListener(null);
            this.f21159e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

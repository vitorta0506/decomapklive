package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class ChangePasswordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ChangePasswordActivity f25547c;

    /* renamed from: d  reason: collision with root package name */
    private View f25548d;

    /* loaded from: classes4.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChangePasswordActivity f25549a;

        a(ChangePasswordActivity changePasswordActivity) {
            this.f25549a = changePasswordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f25549a.onViewClicked();
        }
    }

    @UiThread
    public ChangePasswordActivity_ViewBinding(ChangePasswordActivity changePasswordActivity, View view) {
        super(changePasswordActivity, view);
        this.f25547c = changePasswordActivity;
        changePasswordActivity.etOldPassword = (EditText) c.d(view, R.id.etOldPassword, "field 'etOldPassword'", EditText.class);
        changePasswordActivity.etNewPassword = (EditText) c.d(view, R.id.etNewPassword, "field 'etNewPassword'", EditText.class);
        changePasswordActivity.etNewPasswordAgain = (EditText) c.d(view, R.id.etNewPasswordAgain, "field 'etNewPasswordAgain'", EditText.class);
        View c10 = c.c(view, R.id.btnChangePassword, "field 'btnChangePassword' and method 'onViewClicked'");
        changePasswordActivity.btnChangePassword = (TextView) c.a(c10, R.id.btnChangePassword, "field 'btnChangePassword'", TextView.class);
        this.f25548d = c10;
        c10.setOnClickListener(new a(changePasswordActivity));
        changePasswordActivity.rlContentLayout = (LinearLayout) c.d(view, R.id.rlContentLayout, "field 'rlContentLayout'", LinearLayout.class);
        changePasswordActivity.ivSuccess = (ImageView) c.d(view, R.id.ivSuccess, "field 'ivSuccess'", ImageView.class);
        changePasswordActivity.rlSuccessLayout = (LinearLayout) c.d(view, R.id.rlSuccessLayout, "field 'rlSuccessLayout'", LinearLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ChangePasswordActivity changePasswordActivity = this.f25547c;
        if (changePasswordActivity != null) {
            this.f25547c = null;
            changePasswordActivity.etOldPassword = null;
            changePasswordActivity.etNewPassword = null;
            changePasswordActivity.etNewPasswordAgain = null;
            changePasswordActivity.btnChangePassword = null;
            changePasswordActivity.rlContentLayout = null;
            changePasswordActivity.ivSuccess = null;
            changePasswordActivity.rlSuccessLayout = null;
            this.f25548d.setOnClickListener(null);
            this.f25548d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}

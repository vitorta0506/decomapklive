package com.guochao.faceshow.mine.view;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Tools;
import com.guochao.faceshow.views.h;
/* loaded from: classes4.dex */
public class ChangePasswordActivity extends BaseActivity {
    @BindView
    TextView btnChangePassword;
    @BindView
    EditText etNewPassword;
    @BindView
    EditText etNewPasswordAgain;
    @BindView
    EditText etOldPassword;
    @BindView
    ImageView ivSuccess;
    @BindView
    LinearLayout rlContentLayout;
    @BindView
    LinearLayout rlSuccessLayout;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends c<String> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            h.a(ChangePasswordActivity.this.getActivity(), aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ChangePasswordActivity changePasswordActivity = ChangePasswordActivity.this;
            ToastUtils.showToast(changePasswordActivity, changePasswordActivity.getResources().getString(R.string.group_data_setting_change_success));
            ChangePasswordActivity.this.finish();
        }
    }

    private void b0(String str, String str2, String str3) {
        post(Contants.UPDATE_PASSWORD).D("oldPwd", str2).D("newPwd", str3).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_change_password;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.setting_password_modification);
    }

    @OnClick
    public void onViewClicked() {
        if (TextUtils.isEmpty(this.etOldPassword.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.update_password_empty));
        } else if (TextUtils.isEmpty(this.etNewPassword.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.update_password_empty));
        } else if (TextUtils.isEmpty(this.etNewPasswordAgain.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.update_password_empty));
        } else if (!Tools.isPasword(this.etNewPassword.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.update_password_wrong));
        } else if (!this.etNewPassword.getText().toString().trim().equals(this.etNewPasswordAgain.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.update_password_different));
        } else if (this.etOldPassword.getText().toString().trim().equals(this.etNewPassword.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.update_password_same));
        } else {
            b0(SpUtils.getStr(this, Contants.USER_ID), this.etOldPassword.getText().toString().trim(), this.etNewPassword.getText().toString().trim());
        }
    }
}

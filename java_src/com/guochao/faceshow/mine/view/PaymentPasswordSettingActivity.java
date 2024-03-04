package com.guochao.faceshow.mine.view;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
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
/* loaded from: classes4.dex */
public class PaymentPasswordSettingActivity extends BaseActivity {
    @BindView
    View btnChangePassword;
    @BindView
    EditText etPaymentPassword;
    @BindView
    EditText etPaymentPasswordAgain;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends c<String> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            PaymentPasswordSettingActivity paymentPasswordSettingActivity = PaymentPasswordSettingActivity.this;
            ToastUtils.showToast(paymentPasswordSettingActivity, paymentPasswordSettingActivity.getResources().getString(R.string.common_do_success));
            SpUtils.setStr(PaymentPasswordSettingActivity.this, Contants.payPassword, "1");
            PaymentPasswordSettingActivity.this.finish();
        }
    }

    private void b0(String str, String str2) {
        post(Contants.UPDATE_PAY_PASSWORD).D(Contants.USER_ID, str).D("pasword", str2).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_payment_password_setting;
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
        setTitle(R.string.setting_payment_password_setting);
    }

    @OnClick
    public void onViewClicked() {
        if (TextUtils.isEmpty(this.etPaymentPassword.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.setting_payment_password_empty));
        } else if (TextUtils.isEmpty(this.etPaymentPasswordAgain.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.setting_payment_password_empty));
        } else if (!this.etPaymentPassword.getText().toString().trim().equals(this.etPaymentPasswordAgain.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.setting_payment_password_same));
        } else {
            b0(SpUtils.getStr(this, Contants.USER_ID), this.etPaymentPassword.getText().toString().trim());
        }
    }
}

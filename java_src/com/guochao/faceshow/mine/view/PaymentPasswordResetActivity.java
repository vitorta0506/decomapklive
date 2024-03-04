package com.guochao.faceshow.mine.view;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
/* loaded from: classes4.dex */
public class PaymentPasswordResetActivity extends BaseActivity {
    @BindView
    TextView tvForget;
    @BindView
    TextView tvRemember;

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_payment_password_reset;
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
        setTitle(R.string.setting_payment_password_reset);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 != R.id.tvForget) {
            if (id2 != R.id.tvRemember) {
                return;
            }
            startActivity(PaymentPasswordRememberActivity.class);
            finish();
        } else if (TextUtils.isEmpty(getCurrentUser().mobile)) {
            ToastUtils.showToast(this, getResources().getString(R.string.accout_security_bind_phone));
        } else {
            Intent intent = new Intent(this, BindCellPhoneActivity.class);
            intent.putExtra("from", 3);
            startActivity(intent);
            finish();
        }
    }
}

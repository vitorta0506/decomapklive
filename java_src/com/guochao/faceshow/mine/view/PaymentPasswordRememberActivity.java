package com.guochao.faceshow.mine.view;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
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
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
/* loaded from: classes4.dex */
public class PaymentPasswordRememberActivity extends BaseActivity {
    @BindView
    View btnNext;
    @BindView
    TextView etPwd1;
    @BindView
    TextView etPwd2;
    @BindView
    TextView etPwd3;
    @BindView
    TextView etPwd4;
    @BindView
    TextView etPwd5;
    @BindView
    TextView etPwd6;
    @BindView
    EditText etPwdReal;
    @BindView
    FrameLayout fragmentPassword;
    @BindView
    LinearLayout llBaseLayout;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String trim = editable.toString().trim();
            if (PaymentPasswordRememberActivity.this.etPwdReal.getId() == R.id.etPwdReal) {
                char[] charArray = trim.toCharArray();
                for (int i9 = 0; i9 < charArray.length; i9++) {
                    if (i9 == 0) {
                        PaymentPasswordRememberActivity.this.etPwd1.setText("●");
                    } else if (i9 == 1) {
                        PaymentPasswordRememberActivity.this.etPwd2.setText("●");
                    } else if (i9 == 2) {
                        PaymentPasswordRememberActivity.this.etPwd3.setText("●");
                    } else if (i9 == 3) {
                        PaymentPasswordRememberActivity.this.etPwd4.setText("●");
                    } else if (i9 == 4) {
                        PaymentPasswordRememberActivity.this.etPwd5.setText("●");
                    } else if (i9 == 5) {
                        PaymentPasswordRememberActivity.this.etPwd6.setText("●");
                    }
                }
                PaymentPasswordRememberActivity paymentPasswordRememberActivity = PaymentPasswordRememberActivity.this;
                paymentPasswordRememberActivity.b0(charArray.length, paymentPasswordRememberActivity.etPwd1, paymentPasswordRememberActivity.etPwd2, paymentPasswordRememberActivity.etPwd3, paymentPasswordRememberActivity.etPwd4, paymentPasswordRememberActivity.etPwd5, paymentPasswordRememberActivity.etPwd6);
                if (charArray.length == 6) {
                    PaymentPasswordRememberActivity paymentPasswordRememberActivity2 = PaymentPasswordRememberActivity.this;
                    SoftKeyBoardUtils.closeSoftKeyBoard(paymentPasswordRememberActivity2, paymentPasswordRememberActivity2.etPwdReal);
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends c<String> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (aVar.a() == -1) {
                PaymentPasswordRememberActivity paymentPasswordRememberActivity = PaymentPasswordRememberActivity.this;
                ToastUtils.showToast(paymentPasswordRememberActivity, paymentPasswordRememberActivity.getResources().getString(R.string.password_forzen));
                return;
            }
            PaymentPasswordRememberActivity paymentPasswordRememberActivity2 = PaymentPasswordRememberActivity.this;
            ToastUtils.showToast(paymentPasswordRememberActivity2, paymentPasswordRememberActivity2.getResources().getString(R.string.password_wrong));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            PaymentPasswordRememberActivity.this.startActivity(PaymentPasswordSettingActivity.class);
            PaymentPasswordRememberActivity.this.finish();
        }
    }

    private void d0() {
        this.etPwdReal.addTextChangedListener(new a());
    }

    private void e0(String str, String str2) {
        post(Contants.MATCH_OLD_PAY_PASSWORD).D(Contants.USER_ID, str).D("pasword", str2).M(new b());
    }

    void b0(int i9, TextView... textViewArr) {
        for (int i10 = 0; i10 < 6; i10++) {
            if (i10 > i9 - 1) {
                textViewArr[i10].setText("");
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_payment_password_remember;
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
        d0();
        SoftKeyBoardUtils.openSoftKeyBoard(this.etPwdReal);
    }

    @OnClick
    public void onViewClicked() {
        if (this.etPwdReal.getText().toString().trim().isEmpty() || this.etPwdReal.getText().toString().trim().length() != 6) {
            return;
        }
        e0(SpUtils.getStr(this, Contants.USER_ID), this.etPwdReal.getText().toString().trim());
    }
}

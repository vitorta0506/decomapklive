package com.guochao.faceshow.aaspring.modulars.personal;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.gson.Gson;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.EmailBean;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
/* loaded from: classes3.dex */
public class SecurityVerificationActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f21297a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f21298b;
    @BindView
    View btnNext;
    @BindView
    EditText etEmail;
    @BindView
    EditText etPwd;
    @BindView
    ImageView ivEmailState;
    @BindView
    ImageView ivPwdState;
    @BindView
    TextView tvRetrievePassword;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() >= 6 && SecurityVerificationActivity.this.etPwd.getText().toString().length() >= 6) {
                SecurityVerificationActivity.this.btnNext.setEnabled(true);
                SecurityVerificationActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_verification_code_send);
                return;
            }
            SecurityVerificationActivity.this.btnNext.setEnabled(false);
            SecurityVerificationActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_next_invalid);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() >= 6 && SecurityVerificationActivity.this.etEmail.getText().toString().length() >= 6) {
                SecurityVerificationActivity.this.btnNext.setEnabled(true);
                SecurityVerificationActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_verification_code_send);
                return;
            }
            SecurityVerificationActivity.this.btnNext.setEnabled(false);
            SecurityVerificationActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_next_invalid);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            SecurityVerificationActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            SecurityVerificationActivity.this.dismissProgressDialog();
            if (((g7.a) new Gson().fromJson(str, (Class<Object>) g7.a.class)).a() == 1) {
                SecurityVerificationActivity.this.startActivity(ReplaceEmailActivity.class);
                return;
            }
            SecurityVerificationActivity securityVerificationActivity = SecurityVerificationActivity.this;
            securityVerificationActivity.showToast(securityVerificationActivity.getString(R.string.pass_word_error));
        }
    }

    private void b0(String str) {
        showProgressDialog(null);
        EmailBean emailBean = new EmailBean();
        emailBean.setPwd(str);
        post("tokens/user/info/checkPwd").u(emailBean).M(new c());
    }

    private void d0(boolean z10) {
        int selectionStart = this.etPwd.getSelectionStart();
        if (z10) {
            this.etPwd.setTransformationMethod(PasswordTransformationMethod.getInstance());
            this.ivPwdState.setImageResource(R.mipmap.password_hiding);
            this.f21298b = false;
        } else {
            this.etPwd.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            this.ivPwdState.setImageResource(R.mipmap.password_visible);
            this.f21298b = true;
        }
        this.etPwd.setSelection(selectionStart);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_security_verification;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.security_verification);
        this.etPwd.setFocusable(true);
        this.etPwd.setFocusableInTouchMode(true);
        this.etPwd.requestFocus();
        EditTextUtils.setEditTextInputSpace(this.etPwd);
        showKeyboard(this.etPwd);
        this.tvRetrievePassword.getPaint().setFlags(8);
        this.tvRetrievePassword.getPaint().setAntiAlias(true);
        String str = SpUtils.getStr(this, "email");
        this.f21297a = str;
        if (!TextUtils.isEmpty(str)) {
            this.etEmail.setFocusableInTouchMode(false);
            this.etEmail.setText(this.f21297a);
        }
        this.etEmail.addTextChangedListener(new a());
        this.etPwd.addTextChangedListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.btn_next) {
            if (this.etPwd.getText().toString().length() > 20) {
                showToast(R.string.Password_support_6_to_20_bits);
            } else {
                b0(this.etPwd.getText().toString());
            }
        } else if (id2 == R.id.iv_pwd_state) {
            d0(this.f21298b);
        } else if (id2 != R.id.tv_retrieve_password) {
        } else {
            startActivity(RetrievePasswordActivity.class);
        }
    }
}

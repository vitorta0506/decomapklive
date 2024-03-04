package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
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
import com.guochao.faceshow.aaspring.modulars.login.fragment.VerificationCodeHelper;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.u;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.SystemUtil;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class RetrievePasswordActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f21277a;

    /* renamed from: b  reason: collision with root package name */
    private u f21278b;
    @BindView
    TextView btnNext;

    /* renamed from: c  reason: collision with root package name */
    private boolean f21279c;

    /* renamed from: d  reason: collision with root package name */
    private int f21280d;
    @BindView
    EditText etEmail;
    @BindView
    EditText etPwd;
    @BindView
    EditText etVerificationCode;
    @BindView
    ImageView ivEmailState;
    @BindView
    ImageView ivPwdState;
    @BindView
    ImageView ivVerificationCodeSend;
    @BindView
    RelativeLayout rlVerificationCodeSend;
    @BindView
    TextView tvVerificationCodeTime;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() >= 4 && RetrievePasswordActivity.this.etPwd.getText().toString().length() >= 6) {
                RetrievePasswordActivity.this.btnNext.setEnabled(true);
                RetrievePasswordActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_verification_code_send);
                return;
            }
            RetrievePasswordActivity.this.btnNext.setEnabled(false);
            if (RetrievePasswordActivity.this.f21280d == 1) {
                RetrievePasswordActivity.this.btnNext.setBackgroundResource(R.drawable.bg_account_next_invalid);
            } else {
                RetrievePasswordActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_next_invalid);
            }
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
            String obj = RetrievePasswordActivity.this.etVerificationCode.getText().toString();
            if (editable.length() >= 6 && obj.length() >= 4) {
                RetrievePasswordActivity.this.btnNext.setEnabled(true);
                RetrievePasswordActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_verification_code_send);
                return;
            }
            RetrievePasswordActivity.this.btnNext.setEnabled(false);
            if (RetrievePasswordActivity.this.f21280d == 1) {
                RetrievePasswordActivity.this.btnNext.setBackgroundResource(R.drawable.bg_account_next_invalid);
            } else {
                RetrievePasswordActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_next_invalid);
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
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            RetrievePasswordActivity.this.f21278b.start();
            g7.a aVar = (g7.a) new Gson().fromJson(str, (Class<Object>) g7.a.class);
            if (aVar.a() == 1) {
                RetrievePasswordActivity.this.showToast(R.string.Validation_email_sent);
            } else {
                RetrievePasswordActivity.this.showToast(aVar.c());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (aVar.a() == 40011) {
                RetrievePasswordActivity.this.showToast(R.string.code_has_been_limited);
            } else if (aVar.a() != -1 && aVar.a() != -2) {
                RetrievePasswordActivity.this.showToast(aVar.c());
            } else {
                RetrievePasswordActivity.this.showToast(R.string.phone_bound_other_accounts);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            RetrievePasswordActivity.this.f21278b.start();
            RetrievePasswordActivity.this.showToast(R.string.Validation_email_sent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21285a;

        e(String str) {
            this.f21285a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<String> aVar) {
            RetrievePasswordActivity.this.dismissProgressDialog();
            if (aVar.a() == -1) {
                RetrievePasswordActivity retrievePasswordActivity = RetrievePasswordActivity.this;
                retrievePasswordActivity.showToast(retrievePasswordActivity.getString(R.string.verification_code_error));
            } else if (aVar.a() == 0) {
                RetrievePasswordActivity retrievePasswordActivity2 = RetrievePasswordActivity.this;
                retrievePasswordActivity2.showToast(retrievePasswordActivity2.getResources().getString(R.string.email_bound_other_accounts));
            } else {
                ToastUtils.showToast(RetrievePasswordActivity.this.getActivity(), aVar.c());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable String str, @NonNull @NotNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            RetrievePasswordActivity.this.dismissProgressDialog();
            RetrievePasswordActivity retrievePasswordActivity = RetrievePasswordActivity.this;
            retrievePasswordActivity.showToast(retrievePasswordActivity.getResources().getString(R.string.set_login_password_success));
            SpUtils.setStr(RetrievePasswordActivity.this, "email", this.f21285a);
            SpUtils.setStr(RetrievePasswordActivity.this.getActivity(), Contants.payPassword, "1");
            UserBean c10 = b8.e.g().c();
            c10.email = this.f21285a;
            b8.e.g().a(c10, false);
            Intent intent = new Intent(RetrievePasswordActivity.this, AccountSecurityActivity.class);
            intent.setFlags(67108864);
            RetrievePasswordActivity.this.startActivity(intent);
        }
    }

    private void e0(String str) {
        post("tokens/user/info/changeUserBindInfo").B("sendType", 1).B("type", 1).D("email", StringUtils.convertNumberToNormalNumber(str)).D("pwd", this.etPwd.getText().toString().trim()).D("code", StringUtils.convertNumberToNormalNumber(this.etVerificationCode.getText().toString())).D("deviceId", SystemUtil.getDeviceId()).M(new e(str));
    }

    private void g0(String str) {
        EmailBean emailBean = new EmailBean();
        emailBean.setEmail(StringUtils.convertNumberToNormalNumber(str));
        emailBean.setType(2);
        post("tokens/user/info/sendCodeByType").u(emailBean).M(new c());
    }

    private void i0(String str) {
        post("tokens/user/info/checkIfBindAndSend").B("sendType", 1).B("type", 1).D("email", StringUtils.convertNumberToNormalNumber(str)).M(new d());
    }

    private void k0(boolean z10) {
        int selectionStart = this.etPwd.getSelectionStart();
        if (z10) {
            this.etPwd.setTransformationMethod(PasswordTransformationMethod.getInstance());
            if (this.f21280d == 1) {
                this.ivPwdState.setImageResource(R.mipmap.icon_account_password_hiding);
            } else {
                this.ivPwdState.setImageResource(R.mipmap.password_hiding);
            }
            this.f21279c = false;
        } else {
            this.etPwd.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            if (this.f21280d == 1) {
                this.ivPwdState.setImageResource(R.mipmap.icon_account_password_show);
            } else {
                this.ivPwdState.setImageResource(R.mipmap.password_visible);
            }
            this.f21279c = true;
        }
        this.etPwd.setSelection(selectionStart);
    }

    public static void l0(Context context, int i9) {
        Intent intent = new Intent(context, RetrievePasswordActivity.class);
        intent.putExtra("mode", i9);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        int intExtra = getIntent().getIntExtra("mode", 0);
        this.f21280d = intExtra;
        return intExtra == 1 ? R.layout.activity_account_retrieve_password : R.layout.activity_retrieve_password;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (this.f21280d == 1) {
            setTitle(R.string.set_login_password);
            this.ivPwdState.setImageResource(R.mipmap.icon_account_password_hiding);
        } else {
            setTitle(R.string.Retrieve_password);
            this.ivPwdState.setImageResource(R.mipmap.password_hiding);
        }
        this.etVerificationCode.setFocusable(true);
        this.etVerificationCode.setFocusableInTouchMode(true);
        this.etVerificationCode.requestFocus();
        EditTextUtils.setEditTextInputSpace(this.etPwd);
        ImageView imageView = this.ivVerificationCodeSend;
        TextView textView = this.tvVerificationCodeTime;
        RelativeLayout relativeLayout = this.rlVerificationCodeSend;
        VerificationCodeHelper.Companion companion = VerificationCodeHelper.Companion;
        this.f21278b = new u(this, imageView, textView, relativeLayout, companion.getInstance().getRetrievePassWord(), 1000L, 3);
        if (companion.getInstance().getRetrievePassWord() > 999 && companion.getInstance().getRetrievePassWord() < 60000) {
            this.f21278b.start();
        }
        String str = SpUtils.getStr(this, "email");
        this.f21277a = str;
        if (!TextUtils.isEmpty(str)) {
            this.etEmail.setFocusableInTouchMode(false);
            this.etEmail.setText(StringUtils.setEncryptionEmail(this.f21277a));
            if (this.f21280d == 1) {
                this.ivEmailState.setVisibility(8);
            } else {
                this.ivEmailState.setVisibility(0);
            }
        } else {
            this.ivEmailState.setVisibility(8);
        }
        this.etVerificationCode.addTextChangedListener(new a());
        this.etPwd.addTextChangedListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f21278b = null;
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.btn_next) {
            if (TextUtils.isEmpty(this.etEmail.getText().toString().trim())) {
                ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_email_empty));
            } else if (this.etPwd.getText().toString().length() > 20) {
                showToast(R.string.Password_support_6_to_20_bits);
            } else if (this.f21277a.contains("@")) {
                e0(this.f21277a);
            } else {
                ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_email_wrong));
            }
        } else if (id2 == R.id.iv_pwd_state) {
            k0(this.f21279c);
        } else if (id2 != R.id.rl_verification_code_send) {
        } else {
            if (this.f21277a.contains("@")) {
                VerificationCodeHelper.Companion.getInstance().setRetrievePassWord(60000L);
                if (BaseConfig.isChinese()) {
                    g0(this.f21277a);
                    return;
                } else {
                    i0(this.f21277a);
                    return;
                }
            }
            showToast(R.string.Email_mistaken);
        }
    }
}

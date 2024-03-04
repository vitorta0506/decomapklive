package com.guochao.faceshow.aaspring.modulars.personal;

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
import com.guochao.faceshow.aaspring.modulars.login.bean.LoginOrRegisterBean;
import com.guochao.faceshow.aaspring.modulars.login.fragment.VerificationCodeHelper;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.u;
import com.guochao.faceshow.bean.UserBean;
/* loaded from: classes3.dex */
public class BindEmailActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private u f21091a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f21092b;
    @BindView
    View btnNext;
    @BindView
    EditText etEmail;
    @BindView
    EditText etPwd;
    @BindView
    EditText etVerificationCode;
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
            if (editable.length() >= 6 && BindEmailActivity.this.etPwd.getText().toString().length() >= 6 && BindEmailActivity.this.etVerificationCode.getText().toString().length() >= 4) {
                BindEmailActivity.this.btnNext.setEnabled(true);
                BindEmailActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_verification_code_send);
                return;
            }
            BindEmailActivity.this.btnNext.setEnabled(false);
            BindEmailActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_next_invalid);
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
            if (editable.length() >= 4 && BindEmailActivity.this.etPwd.getText().toString().length() >= 6 && BindEmailActivity.this.etEmail.getText().toString().length() >= 6) {
                BindEmailActivity.this.btnNext.setEnabled(true);
                BindEmailActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_verification_code_send);
                return;
            }
            BindEmailActivity.this.btnNext.setEnabled(false);
            BindEmailActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_next_invalid);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String obj = BindEmailActivity.this.etVerificationCode.getText().toString();
            if (editable.length() >= 6 && obj.length() >= 4 && BindEmailActivity.this.etEmail.getText().toString().length() >= 6) {
                BindEmailActivity.this.btnNext.setEnabled(true);
                BindEmailActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_verification_code_send);
                return;
            }
            BindEmailActivity.this.btnNext.setEnabled(false);
            BindEmailActivity.this.btnNext.setBackgroundResource(R.drawable.bg_personal_next_invalid);
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
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<LoginOrRegisterBean> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LoginOrRegisterBean loginOrRegisterBean, @NonNull FaceCastBaseResponse<LoginOrRegisterBean> faceCastBaseResponse) {
            if (loginOrRegisterBean.getExistUser() == 1) {
                BindEmailActivity.this.dismissProgressDialog();
                BindEmailActivity bindEmailActivity = BindEmailActivity.this;
                bindEmailActivity.showToast(bindEmailActivity.getString(R.string.email_bound_other_accounts));
                return;
            }
            BindEmailActivity bindEmailActivity2 = BindEmailActivity.this;
            bindEmailActivity2.e0(bindEmailActivity2.etEmail.getText().toString().trim(), BindEmailActivity.this.etVerificationCode.getText().toString().trim(), BindEmailActivity.this.etPwd.getText().toString());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LoginOrRegisterBean> aVar) {
            BindEmailActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (FileUtils.isNetworkConnected(BindEmailActivity.this)) {
                BindEmailActivity bindEmailActivity = BindEmailActivity.this;
                bindEmailActivity.showToast(bindEmailActivity.getString(R.string.Error_in_mailbox_or_validation_code));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (((g7.a) new Gson().fromJson(str, (Class<Object>) g7.a.class)).a() == 1) {
                BindEmailActivity.this.showToast(R.string.Validation_email_sent);
                return;
            }
            BindEmailActivity bindEmailActivity = BindEmailActivity.this;
            bindEmailActivity.showToast(bindEmailActivity.getString(R.string.verification_code_error));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21098a;

        f(String str) {
            this.f21098a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            BindEmailActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            BindEmailActivity.this.dismissProgressDialog();
            if (((g7.a) new Gson().fromJson(str, (Class<Object>) g7.a.class)).a() == 1) {
                BindEmailActivity bindEmailActivity = BindEmailActivity.this;
                bindEmailActivity.showToast(bindEmailActivity.getString(R.string.email_successful_account_can_be_used_to_log_in_later));
                SpUtils.setStr(BindEmailActivity.this, "email", this.f21098a);
                UserBean c10 = b8.e.g().c();
                c10.email = this.f21098a;
                b8.e.g().a(c10, false);
                BindEmailActivity.this.finish();
                return;
            }
            BindEmailActivity bindEmailActivity2 = BindEmailActivity.this;
            bindEmailActivity2.showToast(bindEmailActivity2.getString(R.string.email_bound_other_accounts));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21100a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f21101b;

        g(String str, String str2) {
            this.f21100a = str;
            this.f21101b = str2;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            BindEmailActivity.this.dismissProgressDialog();
            if (FileUtils.isNetworkConnected(BindEmailActivity.this)) {
                BindEmailActivity bindEmailActivity = BindEmailActivity.this;
                bindEmailActivity.showToast(bindEmailActivity.getString(R.string.verification_code_error));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            BindEmailActivity.this.l0(this.f21100a, this.f21101b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(String str, String str2, String str3) {
        EmailBean emailBean = new EmailBean();
        emailBean.setCode(StringUtils.convertNumberToNormalNumber(str2));
        emailBean.setEmail(StringUtils.convertNumberToNormalNumber(str));
        emailBean.setType(1);
        post("tokens/user/info/v3/checkCodeByEmail").u(emailBean).M(new g(str, str3));
    }

    private void g0(String str) {
        post("api/user/verification/exist/email").D("email", str).M(new d());
    }

    private void i0(String str) {
        EmailBean emailBean = new EmailBean();
        emailBean.setEmail(StringUtils.convertNumberToNormalNumber(str));
        emailBean.setType(1);
        post("tokens/user/info/sendCodeByType").u(emailBean).M(new e());
    }

    private void k0(boolean z10) {
        int selectionStart = this.etPwd.getSelectionStart();
        if (z10) {
            this.etPwd.setTransformationMethod(PasswordTransformationMethod.getInstance());
            this.ivPwdState.setImageResource(R.mipmap.password_hiding);
            this.f21092b = false;
        } else {
            this.etPwd.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            this.ivPwdState.setImageResource(R.mipmap.password_visible);
            this.f21092b = true;
        }
        this.etPwd.setSelection(selectionStart);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(String str, String str2) {
        post("tokens/user/info/updateUserInfo").D("email", StringUtils.convertNumberToNormalNumber(str)).D("pwd", str2).M(new f(str));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_bind_email_new;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.setting_bind_email);
        this.etEmail.setFocusable(true);
        this.etEmail.setFocusableInTouchMode(true);
        this.etEmail.requestFocus();
        EditTextUtils.setEditTextInputSpace(this.etPwd);
        showKeyboard(this.etEmail);
        ImageView imageView = this.ivVerificationCodeSend;
        TextView textView = this.tvVerificationCodeTime;
        RelativeLayout relativeLayout = this.rlVerificationCodeSend;
        VerificationCodeHelper.Companion companion = VerificationCodeHelper.Companion;
        this.f21091a = new u(this, imageView, textView, relativeLayout, companion.getInstance().getEmailTime(), 1000L, 0);
        if (companion.getInstance().getEmailTime() > 999 && companion.getInstance().getEmailTime() < 60000) {
            this.f21091a.start();
        }
        this.etEmail.addTextChangedListener(new a());
        this.etVerificationCode.addTextChangedListener(new b());
        this.etPwd.addTextChangedListener(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f21091a = null;
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 != R.id.btn_next) {
            if (id2 == R.id.iv_pwd_state) {
                k0(this.f21092b);
            } else if (id2 != R.id.rl_verification_code_send) {
            } else {
                String obj = this.etEmail.getText().toString();
                if (this.etEmail.getText().toString().contains("@")) {
                    VerificationCodeHelper.Companion.getInstance().setEmailTime(60000L);
                    this.f21091a.start();
                    i0(obj);
                    return;
                }
                showToast(R.string.Email_mistaken);
            }
        } else if (TextUtils.isEmpty(this.etEmail.getText().toString().trim())) {
            ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_email_empty));
        } else if (!this.etEmail.getText().toString().contains("@")) {
            showToast(R.string.Email_mistaken);
        } else if (this.etPwd.getText().toString().length() > 20) {
            showToast(R.string.Password_support_6_to_20_bits);
        } else if (this.etEmail.getText().toString().contains("@")) {
            showProgressDialog(null);
            g0(this.etEmail.getText().toString().trim());
        } else {
            ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_email_wrong));
        }
    }
}

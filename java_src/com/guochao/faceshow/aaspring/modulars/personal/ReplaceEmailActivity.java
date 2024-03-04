package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
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
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.u;
import com.guochao.faceshow.bean.UserBean;
/* loaded from: classes3.dex */
public class ReplaceEmailActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private u f21261a;
    @BindView
    View btnBind;
    @BindView
    EditText etEmail;
    @BindView
    EditText etVerificationCode;
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
            if (editable.length() >= 6 && ReplaceEmailActivity.this.etVerificationCode.getText().toString().length() >= 4) {
                ReplaceEmailActivity.this.btnBind.setEnabled(true);
                ReplaceEmailActivity.this.btnBind.setBackgroundResource(R.drawable.bg_personal_verification_code_send);
                return;
            }
            ReplaceEmailActivity.this.btnBind.setEnabled(false);
            ReplaceEmailActivity.this.btnBind.setBackgroundResource(R.drawable.bg_personal_next_invalid);
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
            if (editable.length() >= 4 && ReplaceEmailActivity.this.etEmail.getText().toString().length() >= 6) {
                ReplaceEmailActivity.this.btnBind.setEnabled(true);
                ReplaceEmailActivity.this.btnBind.setBackgroundResource(R.drawable.bg_personal_verification_code_send);
                return;
            }
            ReplaceEmailActivity.this.btnBind.setEnabled(false);
            ReplaceEmailActivity.this.btnBind.setBackgroundResource(R.drawable.bg_personal_next_invalid);
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
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<LoginOrRegisterBean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LoginOrRegisterBean loginOrRegisterBean, @NonNull FaceCastBaseResponse<LoginOrRegisterBean> faceCastBaseResponse) {
            if (loginOrRegisterBean.getExistUser() == 1) {
                ReplaceEmailActivity.this.dismissProgressDialog();
                ReplaceEmailActivity replaceEmailActivity = ReplaceEmailActivity.this;
                replaceEmailActivity.showToast(replaceEmailActivity.getString(R.string.email_bound_other_accounts));
                return;
            }
            ReplaceEmailActivity replaceEmailActivity2 = ReplaceEmailActivity.this;
            replaceEmailActivity2.e0(replaceEmailActivity2.etEmail.getText().toString().trim(), ReplaceEmailActivity.this.etVerificationCode.getText().toString().trim());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LoginOrRegisterBean> aVar) {
            ReplaceEmailActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (((g7.a) new Gson().fromJson(str, (Class<Object>) g7.a.class)).a() == 1) {
                ReplaceEmailActivity.this.showToast(R.string.Validation_email_sent);
                return;
            }
            ReplaceEmailActivity replaceEmailActivity = ReplaceEmailActivity.this;
            replaceEmailActivity.showToast(replaceEmailActivity.getString(R.string.verification_code_error));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21266a;

        e(String str) {
            this.f21266a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            ReplaceEmailActivity.this.dismissProgressDialog();
            if (FileUtils.isNetworkConnected(ReplaceEmailActivity.this)) {
                ReplaceEmailActivity replaceEmailActivity = ReplaceEmailActivity.this;
                replaceEmailActivity.showToast(replaceEmailActivity.getString(R.string.Error_in_mailbox_or_validation_code));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ReplaceEmailActivity.this.k0(this.f21266a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21268a;

        f(String str) {
            this.f21268a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            ReplaceEmailActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ReplaceEmailActivity.this.dismissProgressDialog();
            if (((g7.a) new Gson().fromJson(str, (Class<Object>) g7.a.class)).a() == 1) {
                ReplaceEmailActivity replaceEmailActivity = ReplaceEmailActivity.this;
                replaceEmailActivity.showToast(replaceEmailActivity.getResources().getString(R.string.email_successful_account_can_be_used_to_log_in_later));
                SpUtils.setStr(ReplaceEmailActivity.this, "email", this.f21268a);
                UserBean c10 = b8.e.g().c();
                c10.email = this.f21268a;
                b8.e.g().a(c10, false);
                Intent intent = new Intent(ReplaceEmailActivity.this, AccountSecurityActivity.class);
                intent.setFlags(67108864);
                ReplaceEmailActivity.this.startActivity(intent);
                return;
            }
            ReplaceEmailActivity replaceEmailActivity2 = ReplaceEmailActivity.this;
            replaceEmailActivity2.showToast(replaceEmailActivity2.getResources().getString(R.string.email_bound_other_accounts));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(String str, String str2) {
        EmailBean emailBean = new EmailBean();
        emailBean.setCode(StringUtils.convertNumberToNormalNumber(str2));
        emailBean.setEmail(StringUtils.convertNumberToNormalNumber(str));
        emailBean.setType(1);
        post("tokens/user/info/v3/checkCodeByEmail").u(emailBean).M(new e(str));
    }

    private void g0(String str) {
        post("api/user/verification/exist/email").D("email", str).M(new c());
    }

    private void i0(String str) {
        EmailBean emailBean = new EmailBean();
        emailBean.setEmail(StringUtils.convertNumberToNormalNumber(str));
        emailBean.setType(1);
        post("tokens/user/info/sendCodeByType").u(emailBean).M(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(String str) {
        post("tokens/user/info/updateUserInfo").D("email", StringUtils.convertNumberToNormalNumber(str)).M(new f(str));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_replace_email;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.setting_bind_email);
        this.etEmail.setFocusable(true);
        this.etEmail.setFocusableInTouchMode(true);
        this.etEmail.requestFocus();
        showKeyboard(this.etEmail);
        ImageView imageView = this.ivVerificationCodeSend;
        TextView textView = this.tvVerificationCodeTime;
        RelativeLayout relativeLayout = this.rlVerificationCodeSend;
        VerificationCodeHelper.Companion companion = VerificationCodeHelper.Companion;
        this.f21261a = new u(this, imageView, textView, relativeLayout, companion.getInstance().getReplaceEmailTime(), 1000L, 1);
        if (companion.getInstance().getReplaceEmailTime() > 999 && companion.getInstance().getReplaceEmailTime() < 60000) {
            this.f21261a.start();
        }
        this.etEmail.addTextChangedListener(new a());
        this.etVerificationCode.addTextChangedListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f21261a = null;
    }

    @OnClick
    public void onViewClicked(View view) {
        String obj = this.etEmail.getText().toString();
        int id2 = view.getId();
        if (id2 != R.id.btn_bind) {
            if (id2 != R.id.rl_verification_code_send) {
                return;
            }
            if (obj.contains("@")) {
                VerificationCodeHelper.Companion.getInstance().setReplaceEmailTime(60000L);
                this.f21261a.start();
                i0(obj);
                return;
            }
            showToast(R.string.Email_mistaken);
        } else if (!obj.contains("@")) {
            showToast(R.string.Email_mistaken);
        } else if (obj.contains("@")) {
            showProgressDialog(null);
            g0(obj);
        } else {
            ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_email_wrong));
        }
    }
}

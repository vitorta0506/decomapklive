package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Context;
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
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.login.fragment.VerificationCodeHelper;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.u;
import com.guochao.faceshow.utils.SystemUtil;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class BindEmailV2Activity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private u f21113a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f21114b;
    @BindView
    View btnBind;

    /* renamed from: c  reason: collision with root package name */
    private int f21115c;
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
            String obj = BindEmailV2Activity.this.etEmail.getText().toString();
            if (obj.contains("@")) {
                BindEmailV2Activity.this.rlVerificationCodeSend.setEnabled(true);
            } else {
                BindEmailV2Activity.this.rlVerificationCodeSend.setEnabled(false);
            }
            if (obj.contains("@") && BindEmailV2Activity.this.etVerificationCode.getText().toString().length() == 6) {
                BindEmailV2Activity.this.btnBind.setEnabled(true);
            } else {
                BindEmailV2Activity.this.btnBind.setEnabled(false);
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
            if (editable.length() == 6 && BindEmailV2Activity.this.etEmail.getText().toString().contains("@")) {
                BindEmailV2Activity.this.btnBind.setEnabled(true);
            } else {
                BindEmailV2Activity.this.btnBind.setEnabled(false);
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

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21118a;

        c(String str) {
            this.f21118a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<String> aVar) {
            BindEmailV2Activity.this.dismissProgressDialog();
            if (aVar.a() == -1) {
                BindEmailV2Activity bindEmailV2Activity = BindEmailV2Activity.this;
                bindEmailV2Activity.showToast(bindEmailV2Activity.getString(R.string.verification_code_error));
            } else if (aVar.a() == 0) {
                BindEmailV2Activity bindEmailV2Activity2 = BindEmailV2Activity.this;
                bindEmailV2Activity2.showToast(bindEmailV2Activity2.getString(R.string.email_bound_other_accounts));
            } else {
                BindEmailV2Activity.this.showToast(aVar.c());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable String str, @NonNull @NotNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            BindEmailV2Activity.this.dismissProgressDialog();
            SpUtils.setStr(BindEmailV2Activity.this, "email", this.f21118a);
            if (BindEmailV2Activity.this.f21114b) {
                BindEmailV2Activity.this.startActivity(SetLoginPasswordActivity.class);
                BindEmailV2Activity.this.finish();
                return;
            }
            if (BindEmailV2Activity.this.f21115c == 0) {
                BindEmailV2Activity bindEmailV2Activity = BindEmailV2Activity.this;
                bindEmailV2Activity.showToast(bindEmailV2Activity.getString(R.string.email_bind_success));
            } else {
                BindEmailV2Activity bindEmailV2Activity2 = BindEmailV2Activity.this;
                bindEmailV2Activity2.showToast(bindEmailV2Activity2.getString(R.string.email_change_successful));
            }
            Intent intent = new Intent(BindEmailV2Activity.this, AccountSecurityActivity.class);
            intent.setFlags(67108864);
            BindEmailV2Activity.this.startActivity(intent);
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
                BindEmailV2Activity.this.showToast(R.string.code_has_been_limited);
            } else if (aVar.a() != -1 && aVar.a() != -2) {
                BindEmailV2Activity.this.showToast(aVar.c());
            } else {
                BindEmailV2Activity.this.showToast(R.string.email_bound_other_accounts);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            BindEmailV2Activity.this.f21113a.start();
            BindEmailV2Activity.this.showToast(R.string.Validation_email_sent);
        }
    }

    private void g0(String str) {
        post("tokens/user/info/changeUserBindInfo").B("sendType", 1).B("type", 0).D("oldEmail", StringUtils.convertNumberToNormalNumber(SpUtils.getStr(this, "email"))).D("email", StringUtils.convertNumberToNormalNumber(str)).D("code", StringUtils.convertNumberToNormalNumber(this.etVerificationCode.getText().toString())).D("deviceId", SystemUtil.getDeviceId()).M(new c(str));
    }

    private void i0(String str) {
        post("tokens/user/info/checkIfBindAndSend").B("sendType", 1).B("type", 0).D("email", StringUtils.convertNumberToNormalNumber(str)).M(new d());
    }

    public static void k0(Context context, int i9, boolean z10) {
        Intent intent = new Intent(context, BindEmailV2Activity.class);
        intent.putExtra("bindType", i9);
        intent.putExtra("checkPwd", z10);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_bind_email_v2;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f21114b = getIntent().getBooleanExtra("checkPwd", false);
        this.f21115c = getIntent().getIntExtra("bindType", 0);
        setTitle(R.string.setting_bind_email);
        this.rlVerificationCodeSend.setEnabled(false);
        this.etEmail.setFocusable(true);
        this.etEmail.setFocusableInTouchMode(true);
        this.etEmail.requestFocus();
        showKeyboard(this.etEmail);
        ImageView imageView = this.ivVerificationCodeSend;
        TextView textView = this.tvVerificationCodeTime;
        RelativeLayout relativeLayout = this.rlVerificationCodeSend;
        VerificationCodeHelper.Companion companion = VerificationCodeHelper.Companion;
        this.f21113a = new u(this, imageView, textView, relativeLayout, companion.getInstance().getReplaceEmailTime(), 1000L, 1);
        if (companion.getInstance().getReplaceEmailTime() > 999 && companion.getInstance().getReplaceEmailTime() < 60000) {
            this.f21113a.start();
        }
        this.etEmail.addTextChangedListener(new a());
        this.etVerificationCode.addTextChangedListener(new b());
        this.mTitleBarHelper.f();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        u uVar = this.f21113a;
        if (uVar != null) {
            uVar.cancel();
        }
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

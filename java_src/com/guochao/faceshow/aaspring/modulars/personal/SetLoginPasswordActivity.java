package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class SetLoginPasswordActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private int f21312a;

    /* renamed from: b  reason: collision with root package name */
    private int f21313b;
    @BindView
    TextView btnOk;

    /* renamed from: c  reason: collision with root package name */
    private String f21314c;

    /* renamed from: d  reason: collision with root package name */
    private String f21315d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f21316e;
    @BindView
    EditText etConfirmPwd;
    @BindView
    EditText etLoginPwd;

    /* renamed from: f  reason: collision with root package name */
    private boolean f21317f;

    /* renamed from: g  reason: collision with root package name */
    TextWatcher f21318g = new a();
    @BindView
    TextView tvModeName;
    @BindView
    TextView tvPayPwd;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String obj = SetLoginPasswordActivity.this.etLoginPwd.getText().toString();
            String obj2 = SetLoginPasswordActivity.this.etConfirmPwd.getText().toString();
            if (obj.length() >= 6 && obj.length() <= 20 && obj2.length() >= 6 && obj2.length() <= 20) {
                SetLoginPasswordActivity.this.btnOk.setEnabled(true);
            } else {
                SetLoginPasswordActivity.this.btnOk.setEnabled(false);
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
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (aVar.a() == 0) {
                ToastUtils.showToast(SetLoginPasswordActivity.this.getActivity(), SetLoginPasswordActivity.this.getString(R.string.old_pwd_err));
            } else if (aVar.a() == -1) {
                ToastUtils.showToast(SetLoginPasswordActivity.this.getActivity(), SetLoginPasswordActivity.this.getString(R.string.update_password_same));
            } else {
                ToastUtils.showToast(SetLoginPasswordActivity.this.getActivity(), aVar.c());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ToastUtils.showToast(SetLoginPasswordActivity.this.getActivity(), SetLoginPasswordActivity.this.getResources().getString(R.string.set_pay_password_success));
            SpUtils.setStr(SetLoginPasswordActivity.this.getActivity(), Contants.payPassword, "1");
            if (SetLoginPasswordActivity.this.f21313b == 1) {
                SetLoginPasswordActivity.this.finish();
                return;
            }
            Intent intent = new Intent(SetLoginPasswordActivity.this.getActivity(), AccountSecurityActivity.class);
            intent.setFlags(67108864);
            SetLoginPasswordActivity.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (aVar.a() == 0) {
                ToastUtils.showToast(SetLoginPasswordActivity.this.getActivity(), SetLoginPasswordActivity.this.getString(R.string.old_pwd_err));
            } else if (aVar.a() == -1) {
                ToastUtils.showToast(SetLoginPasswordActivity.this.getActivity(), SetLoginPasswordActivity.this.getString(R.string.update_password_same));
            } else {
                ToastUtils.showToast(SetLoginPasswordActivity.this.getActivity(), aVar.c());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ToastUtils.showToast(SetLoginPasswordActivity.this.getActivity(), SetLoginPasswordActivity.this.getResources().getString(R.string.set_login_password_success));
            SpUtils.setStr(SetLoginPasswordActivity.this.getActivity(), Contants.USER_PWD, "1");
            Intent intent = new Intent(SetLoginPasswordActivity.this.getActivity(), AccountSecurityActivity.class);
            intent.setFlags(67108864);
            SetLoginPasswordActivity.this.startActivity(intent);
        }
    }

    private void e0() {
        post("tokens/user/info/changeUserPwd").B("type", 0).D("oldPwd", this.etLoginPwd.getText().toString()).D("pwd", this.etConfirmPwd.getText().toString()).M(new c());
    }

    private void g0() {
        post("tokens/user/info/changeUserPwd").B("type", 0).D("oldPayPassword", this.etLoginPwd.getText().toString()).D(Contants.payPassword, this.etConfirmPwd.getText().toString()).M(new b());
    }

    public static void i0(Context context, int i9) {
        Intent intent = new Intent(context, SetLoginPasswordActivity.class);
        intent.putExtra("mode", i9);
        context.startActivity(intent);
    }

    public static void k0(Context context, int i9, int i10) {
        Intent intent = new Intent(context, SetLoginPasswordActivity.class);
        intent.putExtra("mode", i9);
        intent.putExtra(ShareConstants.FEED_SOURCE_PARAM, i10);
        context.startActivity(intent);
    }

    public void d0() {
        this.f21315d = SpUtils.getStr(this, "phone");
        this.f21314c = SpUtils.getStr(this, "email");
        this.f21316e = !TextUtils.isEmpty(this.f21315d);
        this.f21317f = !TextUtils.isEmpty(this.f21314c);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_set_login_pwd;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f21312a = getIntent().getIntExtra("mode", 0);
        this.f21313b = getIntent().getIntExtra(ShareConstants.FEED_SOURCE_PARAM, 0);
        if (this.f21312a == 0) {
            setTitle(getString(R.string.set_login_password));
            this.tvPayPwd.setVisibility(8);
            this.tvModeName.setText(getString(R.string.set_login_pwd));
            InputFilter[] inputFilterArr = {new InputFilter.LengthFilter(20)};
            this.etLoginPwd.setFilters(inputFilterArr);
            this.etConfirmPwd.setFilters(inputFilterArr);
            this.etLoginPwd.setHint(getString(R.string.set_login_password));
            this.etConfirmPwd.setHint(getString(R.string.set_enter_login_password_again));
            this.etLoginPwd.setInputType(128);
            this.etConfirmPwd.setInputType(128);
        } else {
            setTitle(getString(R.string.set_setpayment_password));
            this.tvPayPwd.setVisibility(0);
            this.tvModeName.setText(getString(R.string.setting_payment_password));
            InputFilter[] inputFilterArr2 = {new InputFilter.LengthFilter(6)};
            this.etLoginPwd.setFilters(inputFilterArr2);
            this.etConfirmPwd.setFilters(inputFilterArr2);
            this.etLoginPwd.setHint(getString(R.string.set_setpayment_password));
            this.etConfirmPwd.setHint(getString(R.string.set_pay_password_again));
            this.etLoginPwd.setInputType(18);
            this.etConfirmPwd.setInputType(18);
        }
        this.etLoginPwd.addTextChangedListener(this.f21318g);
        this.etConfirmPwd.addTextChangedListener(this.f21318g);
        d0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @OnClick
    public void onclick() {
        if (!this.etLoginPwd.getText().toString().equals(this.etConfirmPwd.getText().toString())) {
            showToast(getString(R.string.update_password_different));
        } else if (this.f21312a == 0) {
            e0();
        } else {
            g0();
        }
    }
}

package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class ChangeLoginOrPayPasswordActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    TextWatcher f21149a = new a();

    /* renamed from: b  reason: collision with root package name */
    private String f21150b;
    @BindView
    TextView btnOk;

    /* renamed from: c  reason: collision with root package name */
    private int f21151c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f21152d;
    @BindView
    EditText etNewlPwd;
    @BindView
    EditText etOriginalPwd;
    @BindView
    TextView tvRetrievePassword;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String obj = ChangeLoginOrPayPasswordActivity.this.etOriginalPwd.getText().toString();
            String obj2 = ChangeLoginOrPayPasswordActivity.this.etNewlPwd.getText().toString();
            if (obj.length() >= 6 && obj.length() <= 20 && obj2.length() >= 6 && obj2.length() <= 20) {
                ChangeLoginOrPayPasswordActivity.this.btnOk.setEnabled(true);
            } else {
                ChangeLoginOrPayPasswordActivity.this.btnOk.setEnabled(false);
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
            if (aVar.a() == -1) {
                ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), ChangeLoginOrPayPasswordActivity.this.getResources().getString(R.string.password_forzen));
            } else {
                ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), ChangeLoginOrPayPasswordActivity.this.getResources().getString(R.string.password_wrong));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ChangeLoginOrPayPasswordActivity.this.e0();
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
                ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), ChangeLoginOrPayPasswordActivity.this.getString(R.string.old_pwd_err));
            } else if (aVar.a() == -1) {
                ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), ChangeLoginOrPayPasswordActivity.this.getString(R.string.update_password_same));
            } else {
                ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), aVar.c());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), ChangeLoginOrPayPasswordActivity.this.getResources().getString(R.string.set_pay_password_success));
            SpUtils.setStr(ChangeLoginOrPayPasswordActivity.this.getActivity(), Contants.payPassword, "1");
            ChangeLoginOrPayPasswordActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (aVar.a() == 0) {
                ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), ChangeLoginOrPayPasswordActivity.this.getString(R.string.old_pwd_err));
            } else if (aVar.a() == -1) {
                ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), ChangeLoginOrPayPasswordActivity.this.getString(R.string.update_password_same));
            } else {
                ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), aVar.c());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ToastUtils.showToast(ChangeLoginOrPayPasswordActivity.this.getActivity(), ChangeLoginOrPayPasswordActivity.this.getResources().getString(R.string.set_login_password_success));
            SpUtils.setStr(ChangeLoginOrPayPasswordActivity.this.getActivity(), Contants.USER_PWD, "1");
            ChangeLoginOrPayPasswordActivity.this.finish();
        }
    }

    private void d0() {
        post(Contants.MATCH_OLD_PAY_PASSWORD).D(Contants.USER_ID, getCurrentUser().getUserId()).D("pasword", this.etOriginalPwd.getText().toString()).M(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0() {
        post("tokens/user/info/changeUserPwd").B("type", 1).D("oldPayPassword", this.etOriginalPwd.getText().toString()).D(Contants.payPassword, this.etNewlPwd.getText().toString()).M(new c());
    }

    public static void g0(Context context, int i9) {
        Intent intent = new Intent(context, ChangeLoginOrPayPasswordActivity.class);
        intent.putExtra("mode", i9);
        context.startActivity(intent);
    }

    private void i0() {
        post("tokens/user/info/changeUserPwd").B("type", 1).D("oldPwd", this.etOriginalPwd.getText().toString()).D("pwd", this.etNewlPwd.getText().toString()).M(new d());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_change_login_password;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        int intExtra = getIntent().getIntExtra("mode", 0);
        this.f21151c = intExtra;
        if (intExtra == 0) {
            setTitle(getString(R.string.change_login_password));
            InputFilter[] inputFilterArr = {new InputFilter.LengthFilter(20)};
            this.etOriginalPwd.setFilters(inputFilterArr);
            this.etNewlPwd.setFilters(inputFilterArr);
            this.etOriginalPwd.setHint(getString(R.string.set_enter_old_login_password));
            this.etNewlPwd.setHint(getString(R.string.set_enter_new_login_password));
            this.etOriginalPwd.setInputType(128);
            this.etNewlPwd.setInputType(128);
        } else {
            setTitle(getString(R.string.change_payment_password));
            InputFilter[] inputFilterArr2 = {new InputFilter.LengthFilter(6)};
            this.etOriginalPwd.setFilters(inputFilterArr2);
            this.etNewlPwd.setFilters(inputFilterArr2);
            this.etOriginalPwd.setInputType(18);
            this.etNewlPwd.setInputType(18);
            this.etOriginalPwd.setHint(getString(R.string.setting_payment_password_reset_tips));
            this.etNewlPwd.setHint(getString(R.string.set_enter_pay_password));
        }
        String str = SpUtils.getStr(this, "phone");
        this.f21150b = str;
        this.f21152d = !TextUtils.isEmpty(str);
        this.etOriginalPwd.addTextChangedListener(this.f21149a);
        this.etNewlPwd.addTextChangedListener(this.f21149a);
        this.mTitleBarHelper.f();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.btn_ok) {
            if (this.f21151c == 0) {
                i0();
            } else {
                d0();
            }
        } else if (id2 != R.id.tv_retrieve_password) {
        } else {
            if (this.f21152d) {
                ChangeLoginOrPayPasswordPhoneActivity.v0(getActivity(), this.f21151c, 0, 1, false, this.f21150b, null, null, null);
            } else if (this.f21151c == 0) {
                RetrievePasswordActivity.l0(getActivity(), 1);
            } else {
                startActivity(BindPhoneToSetPayPasswordActivity.class);
            }
        }
    }
}

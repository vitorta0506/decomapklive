package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog;
import com.guochao.faceshow.aaspring.modulars.login.utils.e;
import com.guochao.faceshow.aaspring.modulars.login.utils.j;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class LoginActivity extends BaseLoginActivity implements KeyboardHeightObserver {
    @BindView
    LoginAnimationView animationView;
    @BindView
    TextView enterFacecast;
    @BindView
    TextView et_phone;
    @BindView
    EditText et_pwd;

    /* renamed from: i  reason: collision with root package name */
    KeyboardHeightProvider f20313i;
    @BindView
    ImageView iv_pwd;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private FaceCastBaseResponse<UserBean> f20314j;
    @BindView
    LinearLayout lay_content;
    @BindView
    ImageView rv_country;
    @BindView
    TextView tv_country;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (LoginActivity.this.isDestroyed() || LoginActivity.this.isFinishing()) {
                return;
            }
            LoginActivity.this.f20313i.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (LoginActivity.this.et_pwd.getText().toString().trim().length() >= 6) {
                LoginActivity.this.enterFacecast.setEnabled(true);
            } else {
                LoginActivity.this.enterFacecast.setEnabled(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<UserBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements LoginCancelAccountDialog.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ FaceCastBaseResponse f20318a;

            a(FaceCastBaseResponse faceCastBaseResponse) {
                this.f20318a = faceCastBaseResponse;
            }

            @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog.b
            public void onConfirm() {
                e.e(LoginActivity.this.getActivity(), this.f20318a);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog.b
            public void onDismiss() {
                LoginActivity.this.dismissLoading();
            }
        }

        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(UserBean userBean, @NonNull FaceCastBaseResponse<UserBean> faceCastBaseResponse) {
            LoginActivity.this.f20314j = faceCastBaseResponse;
            BaseApplication.getInstance().normalLogined = true;
            LoginActivity.this.dismissProgressDialog();
            Bundle bundle = new Bundle();
            bundle.putString(EventTrackingUtils.CONTENT_TYPE, SpUtils.getLogoutReason());
            if (LoginActivity.this.f20182d == 2) {
                SpUtils.setInt(BaseApplication.getInstance(), SpUtils.SP_LAST_LOGIN_TYPE, LoginActivity.this.f20182d);
                EventTrackingUtils.getInstance().track("mail_sigin_success_2737", bundle);
                j.e().z(Constants.ThirdPartyLogin.EMAIL);
            } else {
                SpUtils.setInt(BaseApplication.getInstance(), SpUtils.SP_LAST_LOGIN_TYPE, LoginActivity.this.f20182d);
                EventTrackingUtils.getInstance().track("phone_sigin_success_2737", bundle);
                j.e().z(Constants.ThirdPartyLogin.PHONE);
            }
            LogUtils.i("FaceCast:" + LoginActivity.class.getName(), userBean.getToken());
            if (e.g((BaseActivity) LoginActivity.this.getActivity(), userBean, faceCastBaseResponse.getResult().logoutStatus, new a(faceCastBaseResponse))) {
                return;
            }
            e.e(LoginActivity.this.getActivity(), faceCastBaseResponse);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            LoginActivity loginActivity = LoginActivity.this;
            loginActivity.f20180b.removeCallbacks(loginActivity.f20179a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserBean> aVar) {
            LoginActivity.this.dismissProgressDialog();
            e.d(LoginActivity.this.getActivity(), aVar);
        }
    }

    private void m0(String str, String str2) {
        HashMap hashMap = new HashMap();
        int i9 = this.f20182d;
        if (i9 == 2) {
            hashMap.put("email", StringUtils.convertNumberToNormalNumber(str2));
        } else if (i9 == 3) {
            hashMap.put("mobile", StringUtils.convertNumberToNormalNumber(str2));
        }
        hashMap.put("type", StringUtils.convertNumberToNormalNumber(String.valueOf(this.f20182d)));
        hashMap.put("pwd", str);
        showProgressDialog("");
        this.f20180b.postDelayed(this.f20179a, 15000L);
        post("api/sys/login/v2").E(hashMap).M(new c());
    }

    private void o0() {
        this.et_pwd.addTextChangedListener(new b());
    }

    private void p0() {
        int selectionStart = this.et_pwd.getSelectionStart();
        if (!this.iv_pwd.isSelected()) {
            this.et_pwd.setTransformationMethod(PasswordTransformationMethod.getInstance());
            this.iv_pwd.setSelected(true);
        } else {
            this.et_pwd.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            this.iv_pwd.setSelected(false);
        }
        this.et_pwd.setSelection(selectionStart);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_login_new;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        EditTextUtils.setEditTextInputSpace(this.et_pwd);
        EditTextUtils.disableEditTextLongClick(this.et_pwd);
        p0();
        o0();
        if (this.f20182d == 2) {
            setTitle(getString(R.string.Mailbox_login));
            this.et_phone.setText(j.e().f());
            this.rv_country.setVisibility(8);
            this.tv_country.setVisibility(8);
        } else {
            setTitle(getString(R.string.Mobile_login));
            if (BaseConfig.isChinese()) {
                this.rv_country.setImageResource(R.mipmap.icon_flag);
                this.tv_country.setText("+86");
            } else {
                hc.a.h(this.rv_country, j.e().i(), R.mipmap.ic_earth);
                TextView textView = this.tv_country;
                textView.setText("+" + j.e().d());
            }
            this.et_phone.setText(j.e().j());
        }
        SoftKeyBoardUtils.openSoftKeyBoard(this.et_pwd);
        getLifecycle().addObserver(this.animationView);
        this.f20313i = new KeyboardHeightProvider(this, getWindow().getDecorView());
        getWindow().getDecorView().post(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 1001 && i10 == -1) {
            e.e(getActivity(), this.f20314j);
        } else if (intent == null || i9 != 99) {
        } else {
            String stringExtra = intent.getStringExtra("country_num");
            String stringExtra2 = intent.getStringExtra("logo");
            j.e().v(stringExtra2);
            j.e().s(stringExtra);
            hc.a.h(this.rv_country, stringExtra2, R.mipmap.ic_earth);
            this.tv_country.setText(String.format("+%s", stringExtra));
        }
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_pwd /* 2131363274 */:
                p0();
                return;
            case R.id.rv_country /* 2131364332 */:
                AreaSelectActivity.start(getActivity(), LoginActivity.class.getSimpleName(), 99);
                overridePendingTransition(R.anim.fragment_enter, R.anim.do_nothing);
                return;
            case R.id.tv_alertred /* 2131364930 */:
                startActivity(new Intent(getActivity(), FindPasswordActivity.class));
                return;
            case R.id.tv_enter_facecast /* 2131364986 */:
                String trim = this.et_phone.getText().toString().trim();
                String trim2 = this.et_pwd.getText().toString().trim();
                if (!StringUtils.isPhoneNumberValid(trim)) {
                    showToast(R.string.zaime_phone_invalid);
                    return;
                } else if (trim2.length() > 20) {
                    showToast(getString(R.string.Password_support_6_to_20_bits));
                    return;
                } else {
                    m0(trim2, trim);
                    return;
                }
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f20313i.close();
        super.onDestroy();
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10) {
        if (i9 > 0) {
            int[] iArr = new int[2];
            this.enterFacecast.getLocationOnScreen(iArr);
            if (((iArr[1] + this.enterFacecast.getMeasuredHeight()) - 40) + i9 > ScreenTools.getScreenRealHeight(this)) {
                ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, -1);
                layoutParams.bottomToBottom = 0;
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = StatusBarHelper.getStatusbarHeight(this);
                this.lay_content.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(-1, 0);
        layoutParams2.matchConstraintPercentHeight = 0.75f;
        layoutParams2.bottomToBottom = 0;
        this.lay_content.setLayoutParams(layoutParams2);
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public /* synthetic */ void onKeyboardHeightChanged(int i9, int i10, int i11) {
        com.guochao.faceshow.aaspring.utils.e.a(this, i9, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f20313i.setKeyboardHeightObserver(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f20313i.setKeyboardHeightObserver(this);
    }
}

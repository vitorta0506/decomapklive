package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.content.Intent;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog;
import com.guochao.faceshow.aaspring.modulars.login.activity.FindPasswordActivity;
import com.guochao.faceshow.aaspring.modulars.login.fragment.RecaptchaDialogFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.TimeoutRunnable;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.thumbplayer.api.TPOptionalID;
import g8.c;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class FindPasswordActivity extends BaseCountDownActivity implements WebViewFragment.d, KeyboardHeightObserver {
    @BindView
    LoginAnimationView animationView;
    @BindView
    EditText et_code;
    @BindView
    TextView et_phone;
    @BindView
    EditText et_pwd;
    @BindView
    ImageView iv_pwd;

    /* renamed from: l  reason: collision with root package name */
    public int f20264l;
    @BindView
    LinearLayout lay_content;

    /* renamed from: n  reason: collision with root package name */
    RecaptchaHandle f20266n;
    @BindView
    TextView next;

    /* renamed from: o  reason: collision with root package name */
    RecaptchaDialogFragment f20267o;

    /* renamed from: q  reason: collision with root package name */
    KeyboardHeightProvider f20269q;
    @BindView
    ViewGroup rl_send;
    @BindView
    ViewGroup rl_send_hide;
    @BindView
    ImageView rv_country;
    @BindView
    TextView tv_code;
    @BindView
    TextView tv_country;

    /* renamed from: j  reason: collision with root package name */
    TimeoutRunnable f20262j = new TimeoutRunnable();

    /* renamed from: k  reason: collision with root package name */
    Handler f20263k = new Handler();

    /* renamed from: m  reason: collision with root package name */
    private com.guochao.faceshow.aaspring.modulars.login.utils.j f20265m = com.guochao.faceshow.aaspring.modulars.login.utils.j.e();

    /* renamed from: p  reason: collision with root package name */
    TextWatcher f20268p = new b();

    /* loaded from: classes3.dex */
    class a implements HalloweenJSAction.OnCallBack {
        a() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void getReCaptChaToken(Object obj) {
            RecaptchaDialogFragment recaptchaDialogFragment = FindPasswordActivity.this.f20267o;
            if (recaptchaDialogFragment != null) {
                recaptchaDialogFragment.dismiss();
            }
            String str = (String) obj;
            FindPasswordActivity.this.debugAlert(str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            FindPasswordActivity.this.E0(str, true);
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void onInviteClick() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public /* synthetic */ void onInviteClick(Object obj) {
            com.guochao.faceshow.web.jsinterface.a.b(this, obj);
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public /* synthetic */ void playWinAnimation() {
            com.guochao.faceshow.web.jsinterface.a.c(this);
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
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
            FindPasswordActivity.this.u0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements com.guochao.faceshow.aaspring.modulars.login.utils.h {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void a(Exception exc) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void b(RecaptchaHandle recaptchaHandle) {
            FindPasswordActivity.this.f20266n = recaptchaHandle;
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FindPasswordActivity.this.isDestroyed() || FindPasswordActivity.this.isFinishing()) {
                return;
            }
            FindPasswordActivity.this.f20269q.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements com.guochao.faceshow.aaspring.modulars.login.utils.g {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void a(Exception exc) {
            FindPasswordActivity.this.f20267o = new RecaptchaDialogFragment();
            FindPasswordActivity findPasswordActivity = FindPasswordActivity.this;
            findPasswordActivity.f20267o.show(findPasswordActivity.getSupportFragmentManager(), "RecaptchaDialogFragment");
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void b(String str) {
            FindPasswordActivity.this.E0(str, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            FindPasswordActivity findPasswordActivity = FindPasswordActivity.this;
            findPasswordActivity.f20263k.removeCallbacks(findPasswordActivity.f20262j);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            if (aVar.a() == 40011) {
                FindPasswordActivity.this.showToast(R.string.code_has_been_limited);
            } else if (aVar.a() == 40018) {
                FindPasswordActivity.this.showToast(aVar.c());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            FindPasswordActivity.this.o0();
            FindPasswordActivity findPasswordActivity = FindPasswordActivity.this;
            findPasswordActivity.showToast(findPasswordActivity.getString(R.string.code_has_been_sented));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            FindPasswordActivity findPasswordActivity = FindPasswordActivity.this;
            findPasswordActivity.f20263k.removeCallbacks(findPasswordActivity.f20262j);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            FindPasswordActivity.this.o0();
            FindPasswordActivity.this.showToast(R.string.Validation_email_sent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            FindPasswordActivity findPasswordActivity = FindPasswordActivity.this;
            findPasswordActivity.f20263k.removeCallbacks(findPasswordActivity.f20262j);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            FindPasswordActivity.this.dismissProgressDialog();
            FindPasswordActivity.this.showToast(R.string.Error_in_mailbox_or_validation_code);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            FindPasswordActivity findPasswordActivity = FindPasswordActivity.this;
            findPasswordActivity.p0(findPasswordActivity.et_pwd.getText().toString().trim(), FindPasswordActivity.this.et_phone.getText().toString().trim());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        i() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            FindPasswordActivity findPasswordActivity = FindPasswordActivity.this;
            findPasswordActivity.f20263k.removeCallbacks(findPasswordActivity.f20262j);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            FindPasswordActivity.this.dismissProgressDialog();
            FindPasswordActivity.this.showToast(R.string.Error_in_mobile_phone_number_or_verification_number);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            FindPasswordActivity findPasswordActivity = FindPasswordActivity.this;
            findPasswordActivity.p0(findPasswordActivity.et_pwd.getText().toString().trim(), FindPasswordActivity.this.et_phone.getText().toString().trim());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<UserBean> {
        j() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(FaceCastBaseResponse faceCastBaseResponse) {
            com.guochao.faceshow.aaspring.modulars.login.utils.e.e(FindPasswordActivity.this.getActivity(), faceCastBaseResponse);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: c */
        public void onResponse(UserBean userBean, @NonNull final FaceCastBaseResponse<UserBean> faceCastBaseResponse) {
            BaseApplication.getInstance().normalLogined = true;
            FindPasswordActivity.this.dismissProgressDialog();
            if (com.guochao.faceshow.aaspring.modulars.login.utils.e.g((BaseActivity) FindPasswordActivity.this.getActivity(), userBean, faceCastBaseResponse.getResult().logoutStatus, new LoginCancelAccountDialog.b() { // from class: com.guochao.faceshow.aaspring.modulars.login.activity.a
                @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog.b
                public final void onConfirm() {
                    FindPasswordActivity.j.this.b(faceCastBaseResponse);
                }

                @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog.b
                public /* synthetic */ void onDismiss() {
                    c.a(this);
                }
            })) {
                return;
            }
            com.guochao.faceshow.aaspring.modulars.login.utils.e.e(FindPasswordActivity.this.getActivity(), faceCastBaseResponse);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            FindPasswordActivity findPasswordActivity = FindPasswordActivity.this;
            findPasswordActivity.f20263k.removeCallbacks(findPasswordActivity.f20262j);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserBean> aVar) {
            FindPasswordActivity.this.dismissProgressDialog();
            com.guochao.faceshow.aaspring.modulars.login.utils.e.d(FindPasswordActivity.this.getActivity(), aVar);
        }
    }

    private void A0() {
        int i9 = this.f20264l;
        if (i9 == 2) {
            B0();
        } else if (i9 != 3) {
        } else {
            com.guochao.faceshow.aaspring.modulars.login.utils.i.d().c(this, this.f20266n, new e());
        }
    }

    private void B0() {
        this.f20263k.postDelayed(this.f20262j, 15000L);
        HashMap hashMap = new HashMap();
        hashMap.put("email", StringUtils.convertNumberToNormalNumber(this.et_phone.getText().toString().trim()));
        getHttpClient().b(this, "api/user/register/email/retrievePwd/sendCodeByEmail/V2", hashMap, new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0(String str, boolean z10) {
        this.f20263k.postDelayed(this.f20262j, 15000L);
        HashMap hashMap = new HashMap();
        hashMap.put("recaptchaToken", str);
        hashMap.put("mobile", this.et_phone.getText().toString().trim());
        hashMap.put("areaCode", com.guochao.faceshow.aaspring.modulars.login.utils.j.e().d());
        if (z10) {
            hashMap.put("beFrom", "webs");
        }
        getHttpClient().b(this, "api/user/register/phone/retrievePwd/sendCodeByPhone/V2", hashMap, new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(String str, String str2) {
        HashMap hashMap = new HashMap();
        int type = this.f20265m.m().getType();
        if (type == 2) {
            hashMap.put("email", StringUtils.convertNumberToNormalNumber(str2));
        } else if (type == 3) {
            hashMap.put("mobile", StringUtils.convertNumberToNormalNumber(str2));
        }
        this.f20263k.postDelayed(this.f20262j, 15000L);
        hashMap.put("type", StringUtils.convertNumberToNormalNumber(String.valueOf(this.f20265m.m().getType())));
        hashMap.put("pwd", str);
        getHttpClient().b(this, "api/sys/login/v2", hashMap, new j());
    }

    private void t0() {
        int i9 = this.f20264l;
        if (i9 == 2) {
            v0();
        } else if (i9 != 3) {
        } else {
            y0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0() {
        this.next.setEnabled(this.et_code.getText().toString().trim().length() >= 4 && this.et_pwd.getText().toString().trim().length() >= 6);
    }

    private void v0() {
        showProgressDialog("");
        HashMap hashMap = new HashMap();
        hashMap.put("email", StringUtils.convertNumberToNormalNumber(this.et_phone.getText().toString().trim()));
        hashMap.put("code", StringUtils.convertNumberToNormalNumber(this.et_code.getText().toString().trim()));
        hashMap.put("pwd", this.et_pwd.getText().toString().trim());
        this.f20263k.postDelayed(this.f20262j, 15000L);
        getHttpClient().b(this, "api/user/register/email/retrievePwd/V2", hashMap, new h());
    }

    private void y0() {
        showProgressDialog("");
        HashMap hashMap = new HashMap();
        hashMap.put("areaCode", StringUtils.convertNumberToNormalNumber(com.guochao.faceshow.aaspring.modulars.login.utils.j.e().d()));
        hashMap.put("mobile", StringUtils.convertNumberToNormalNumber(this.et_phone.getText().toString().trim()));
        hashMap.put("code", StringUtils.convertNumberToNormalNumber(this.et_code.getText().toString().trim()));
        hashMap.put("pwd", this.et_pwd.getText().toString().trim());
        this.f20263k.postDelayed(this.f20262j, 15000L);
        getHttpClient().b(this, "api/user/register/phone/retrievePwd/V2", hashMap, new i());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.q.b
    public void N(int i9) {
        TextView textView = this.tv_code;
        textView.setText(i9 + NotifyType.SOUND);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_find_password;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.rl_send_hide.setEnabled(false);
        if (com.guochao.faceshow.aaspring.modulars.login.utils.j.e().m() != null) {
            int type = com.guochao.faceshow.aaspring.modulars.login.utils.j.e().m().getType();
            this.f20264l = type;
            if (type == 3) {
                com.guochao.faceshow.aaspring.modulars.login.utils.i.d().e(this, new c());
            }
        }
        setTitle(getString(R.string.Retrieve_password));
        this.next.setText(getString(R.string.Enter_FaceCast));
        EditTextUtils.setEditTextInputSpace(this.et_pwd);
        EditTextUtils.disableEditTextLongClick(this.et_pwd);
        this.et_code.addTextChangedListener(this.f20268p);
        this.et_pwd.addTextChangedListener(this.f20268p);
        if (this.f20264l == 2) {
            this.rv_country.setVisibility(8);
            this.tv_country.setVisibility(8);
        } else {
            if (BaseConfig.isChinese()) {
                this.rv_country.setImageResource(R.mipmap.icon_flag);
            } else {
                hc.a.h(this.rv_country, com.guochao.faceshow.aaspring.modulars.login.utils.j.e().i(), R.mipmap.ic_earth);
            }
            TextView textView = this.tv_country;
            textView.setText("+" + com.guochao.faceshow.aaspring.modulars.login.utils.j.e().d());
            this.et_phone.setText(com.guochao.faceshow.aaspring.modulars.login.utils.j.e().j());
        }
        if (this.f20264l == 2) {
            this.et_phone.setText(this.f20265m.f());
        } else {
            this.et_phone.setText(this.f20265m.j());
        }
        getLifecycle().addObserver(this.animationView);
        this.f20269q = new KeyboardHeightProvider(this, getWindow().getDecorView());
        getWindow().getDecorView().post(new d());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseCountDownActivity
    public int m0() {
        return this.f20264l == 2 ? 2 : 3;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseCountDownActivity
    protected void n0(boolean z10) {
        if (z10) {
            this.rl_send.setVisibility(8);
            this.rl_send_hide.setVisibility(0);
            return;
        }
        this.rl_send.setVisibility(0);
        this.rl_send_hide.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (intent == null || i9 != 99) {
            return;
        }
        String stringExtra = intent.getStringExtra("country_num");
        String stringExtra2 = intent.getStringExtra("logo");
        com.guochao.faceshow.aaspring.modulars.login.utils.j.e().v(stringExtra2);
        com.guochao.faceshow.aaspring.modulars.login.utils.j.e().s(stringExtra);
        hc.a.h(this.rv_country, stringExtra2, R.mipmap.ic_earth);
        this.tv_country.setText(String.format("+%s", stringExtra));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onBindWebView(WebView webView) {
        RecaptchaDialogFragment recaptchaDialogFragment = this.f20267o;
        if (recaptchaDialogFragment != null) {
            ((HalloweenJSAction) recaptchaDialogFragment.getJSAction()).setOnCallBack(new a());
        }
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_pwd /* 2131363274 */:
                if (this.et_pwd.getInputType() == 129) {
                    this.iv_pwd.setImageResource(R.mipmap.password_visible);
                    this.et_pwd.setInputType(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
                } else {
                    this.iv_pwd.setImageResource(R.mipmap.password_hiding);
                    this.et_pwd.setInputType(129);
                }
                EditText editText = this.et_pwd;
                editText.setSelection(editText.getText().toString().length());
                return;
            case R.id.next /* 2131363841 */:
                if (this.et_pwd.getText().toString().trim().length() > 20) {
                    showToast(getString(R.string.Password_support_6_to_20_bits));
                    return;
                } else {
                    t0();
                    return;
                }
            case R.id.rl_send /* 2131364298 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    A0();
                    return;
                }
                return;
            case R.id.tv_country /* 2131364966 */:
                AreaSelectActivity.start(getActivity(), FindPasswordActivity.class.getSimpleName(), 99);
                overridePendingTransition(R.anim.fragment_enter, R.anim.do_nothing);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseCountDownActivity, com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f20269q.close();
        super.onDestroy();
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().b(this, this.f20266n);
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10) {
        if (i9 > 0) {
            int[] iArr = new int[2];
            this.next.getLocationOnScreen(iArr);
            if (((iArr[1] + this.next.getMeasuredHeight()) - 40) + i9 > ScreenTools.getScreenRealHeight(this)) {
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

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onLoadErr(int i9, String str, String str2) {
        showToast(str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public /* synthetic */ void onPageFinished(WebView webView, String str) {
        com.guochao.faceshow.aaspring.base.fragment.f.a(this, webView, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f20269q.setKeyboardHeightObserver(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f20269q.setKeyboardHeightObserver(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public boolean onShouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return false;
    }
}

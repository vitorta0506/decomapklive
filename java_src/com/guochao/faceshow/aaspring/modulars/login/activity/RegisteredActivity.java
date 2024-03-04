package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.modulars.login.fragment.RecaptchaDialogFragment;
import com.guochao.faceshow.aaspring.modulars.login.fragment.VerificationCodeHelper;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
import com.guochao.faceshow.aaspring.views.u;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Md5;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class RegisteredActivity extends BaseCountDownActivity implements WebViewFragment.d, KeyboardHeightObserver {
    @BindView
    LoginAnimationView animationViewPro;
    @BindView
    EditText et_code;
    @BindView
    TextView et_phone;
    @BindView
    EditText et_pwd;
    @BindView
    ImageView ivSend;
    @BindView
    ImageView iv_pwd;

    /* renamed from: j  reason: collision with root package name */
    private boolean f20350j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f20351k = false;

    /* renamed from: l  reason: collision with root package name */
    private String f20352l = System.currentTimeMillis() + "";
    @BindView
    LinearLayout lay_content;

    /* renamed from: m  reason: collision with root package name */
    private String f20353m;

    /* renamed from: n  reason: collision with root package name */
    private u f20354n;
    @BindView
    TextView next;

    /* renamed from: o  reason: collision with root package name */
    RecaptchaHandle f20355o;

    /* renamed from: p  reason: collision with root package name */
    RecaptchaDialogFragment f20356p;

    /* renamed from: q  reason: collision with root package name */
    KeyboardHeightProvider f20357q;
    @BindView
    FrameLayout rl_send;
    @BindView
    ImageView rv_country;
    @BindView
    TextView tv_code;
    @BindView
    TextView tv_country;

    /* loaded from: classes3.dex */
    class a implements HalloweenJSAction.OnCallBack {
        a() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void getReCaptChaToken(Object obj) {
            RecaptchaDialogFragment recaptchaDialogFragment = RegisteredActivity.this.f20356p;
            if (recaptchaDialogFragment != null) {
                recaptchaDialogFragment.dismiss();
            }
            String str = (String) obj;
            RegisteredActivity.this.debugAlert(str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            RegisteredActivity.this.E0(str, true);
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
    class b implements com.guochao.faceshow.aaspring.modulars.login.utils.h {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void a(Exception exc) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void b(RecaptchaHandle recaptchaHandle) {
            RegisteredActivity.this.f20355o = recaptchaHandle;
        }
    }

    /* loaded from: classes3.dex */
    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (RegisteredActivity.this.et_code.getText().toString().trim().length() >= 4) {
                RegisteredActivity.this.f20350j = true;
            } else {
                RegisteredActivity.this.f20350j = false;
            }
            RegisteredActivity.this.B0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements TextWatcher {
        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (RegisteredActivity.this.et_pwd.getText().toString().trim().length() >= 6) {
                RegisteredActivity.this.f20351k = true;
            } else {
                RegisteredActivity.this.f20351k = false;
            }
            RegisteredActivity.this.B0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RegisteredActivity.this.isDestroyed() || RegisteredActivity.this.isFinishing()) {
                return;
            }
            RegisteredActivity.this.f20357q.start();
        }
    }

    /* loaded from: classes3.dex */
    class f implements com.guochao.faceshow.aaspring.modulars.login.utils.g {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void a(Exception exc) {
            RegisteredActivity.this.f20356p = new RecaptchaDialogFragment();
            RegisteredActivity registeredActivity = RegisteredActivity.this;
            registeredActivity.f20356p.show(registeredActivity.getSupportFragmentManager(), "RecaptchaDialogFragment");
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void b(String str) {
            RegisteredActivity.this.E0(str, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            RegisteredActivity registeredActivity = RegisteredActivity.this;
            registeredActivity.f20180b.removeCallbacks(registeredActivity.f20179a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Object> aVar) {
            if (aVar.a() == 40018) {
                RegisteredActivity.this.showToast(aVar.c());
            }
            Bundle bundle = new Bundle();
            bundle.putString(EventTrackingUtils.CONTENT_TYPE, "失败");
            EventTrackingUtils.getInstance().track("mail_verification_send_result_2737", bundle);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            VerificationCodeHelper.Companion companion = VerificationCodeHelper.Companion;
            companion.getInstance().setRegisterAccount(60000L);
            RegisteredActivity registeredActivity = RegisteredActivity.this;
            GCCoreActivity activity = RegisteredActivity.this.getActivity();
            RegisteredActivity registeredActivity2 = RegisteredActivity.this;
            registeredActivity.f20354n = new u(activity, registeredActivity2.ivSend, registeredActivity2.tv_code, registeredActivity2.rl_send, companion.getInstance().getRegisterAccount(), 1000L, 2);
            RegisteredActivity.this.f20354n.start();
            RegisteredActivity.this.showToast(R.string.Validation_email_sent);
            Bundle bundle = new Bundle();
            bundle.putString(EventTrackingUtils.CONTENT_TYPE, "成功");
            EventTrackingUtils.getInstance().track("mail_verification_send_result_2737", bundle);
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
            RegisteredActivity registeredActivity = RegisteredActivity.this;
            registeredActivity.f20180b.removeCallbacks(registeredActivity.f20179a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            if (aVar.a() == 40011) {
                RegisteredActivity.this.showToast(R.string.code_has_been_limited);
            } else if (aVar.a() == 40018) {
                RegisteredActivity.this.showToast(aVar.c());
            }
            Bundle bundle = new Bundle();
            bundle.putString(EventTrackingUtils.CONTENT_TYPE, "失败");
            EventTrackingUtils.getInstance().track("phone_verification_send_result_2737", bundle);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            VerificationCodeHelper.Companion companion = VerificationCodeHelper.Companion;
            companion.getInstance().setRegisterAccount(60000L);
            RegisteredActivity registeredActivity = RegisteredActivity.this;
            GCCoreActivity activity = RegisteredActivity.this.getActivity();
            RegisteredActivity registeredActivity2 = RegisteredActivity.this;
            registeredActivity.f20354n = new u(activity, registeredActivity2.ivSend, registeredActivity2.tv_code, registeredActivity2.rl_send, companion.getInstance().getRegisterAccount(), 1000L, 2);
            RegisteredActivity.this.f20354n.start();
            RegisteredActivity registeredActivity3 = RegisteredActivity.this;
            registeredActivity3.showToast(registeredActivity3.getString(R.string.code_has_been_sented));
            Bundle bundle = new Bundle();
            bundle.putString(EventTrackingUtils.CONTENT_TYPE, "成功");
            EventTrackingUtils.getInstance().track("phone_verification_send_result_2737", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        i() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            RegisteredActivity registeredActivity = RegisteredActivity.this;
            registeredActivity.f20180b.removeCallbacks(registeredActivity.f20179a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Object> aVar) {
            RegisteredActivity.this.dismissProgressDialog();
            RegisteredActivity.this.showToast(R.string.Error_in_mailbox_or_validation_code);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            RegisteredActivity.this.dismissProgressDialog();
            com.guochao.faceshow.aaspring.modulars.login.utils.j.e().y(RegisteredActivity.this.et_pwd.getText().toString().trim());
            RegisteredActivity.this.startActivity(new Intent(RegisteredActivity.this.getActivity(), CompletePersonalInfoActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            RegisteredActivity registeredActivity = RegisteredActivity.this;
            registeredActivity.f20180b.removeCallbacks(registeredActivity.f20179a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            RegisteredActivity.this.dismissProgressDialog();
            RegisteredActivity.this.showToast(R.string.Error_in_mobile_phone_number_or_verification_number);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            RegisteredActivity.this.dismissProgressDialog();
            com.guochao.faceshow.aaspring.modulars.login.utils.j.e().y(RegisteredActivity.this.et_pwd.getText().toString().trim());
            com.guochao.faceshow.aaspring.modulars.login.utils.j.e().w(RegisteredActivity.this.et_phone.getText().toString().trim());
            RegisteredActivity.this.startActivityForResult(new Intent(RegisteredActivity.this.getActivity(), CompletePersonalInfoActivity.class), 10023);
        }
    }

    public RegisteredActivity() {
        Md5 md5 = new Md5();
        this.f20353m = md5.getMD5Str(this.f20352l + Contants.salt).toUpperCase();
    }

    private void A0() {
        showProgressDialog("");
        HashMap hashMap = new HashMap();
        hashMap.put("mobile", StringUtils.convertNumberToNormalNumber(this.et_phone.getText().toString().trim()));
        hashMap.put("code", StringUtils.convertNumberToNormalNumber(this.et_code.getText().toString().trim()));
        this.f20180b.postDelayed(this.f20179a, 15000L);
        getHttpClient().b(this, "api/user/register/checkCodeByMobile", hashMap, new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0() {
        if (this.f20350j && this.f20351k) {
            this.next.setEnabled(true);
        } else {
            this.next.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0(String str, boolean z10) {
        int i9 = this.f20181c;
        if (i9 == 2) {
            F0(str, z10);
        } else if (i9 != 3) {
        } else {
            G0(str, z10);
        }
    }

    private void F0(String str, boolean z10) {
        this.f20180b.postDelayed(this.f20179a, 15000L);
        HashMap hashMap = new HashMap();
        hashMap.put("recaptchaToken", str);
        hashMap.put("email", StringUtils.convertNumberToNormalNumber(this.et_phone.getText().toString().trim()));
        if (z10) {
            hashMap.put("beFrom", "webs");
        }
        getHttpClient().b(this, "api/user/register/sendCodeByEmail/V2", hashMap, new g());
    }

    private void G0(String str, boolean z10) {
        HashMap hashMap = new HashMap();
        hashMap.put("recaptchaToken", str);
        hashMap.put("mobile", this.et_phone.getText().toString().trim());
        hashMap.put("type", "0");
        hashMap.put("areaCode", com.guochao.faceshow.aaspring.modulars.login.utils.j.e().d());
        hashMap.put("unixtime", this.f20352l);
        hashMap.put("key", this.f20353m);
        if (z10) {
            hashMap.put("beFrom", "webs");
        }
        this.f20180b.postDelayed(this.f20179a, 15000L);
        getHttpClient().b(this, "api/user/register/sendCodeByMobile", hashMap, new h());
    }

    private void H0() {
        if (this.et_pwd.getInputType() == 129) {
            this.iv_pwd.setImageResource(R.mipmap.password_visible);
            this.et_pwd.setInputType(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
        } else {
            this.iv_pwd.setImageResource(R.mipmap.password_hiding);
            this.et_pwd.setInputType(129);
        }
        EditText editText = this.et_pwd;
        editText.setSelection(editText.getText().toString().length());
    }

    private void v0() {
        int i9 = this.f20181c;
        if (i9 == 2) {
            y0();
            EventTrackingUtils.getInstance().track("mail_next_verification_page_click_2737");
        } else if (i9 != 3) {
        } else {
            A0();
            EventTrackingUtils.getInstance().track("phone_next_verification_page_click_2737");
        }
    }

    private void y0() {
        showProgressDialog("");
        HashMap hashMap = new HashMap();
        hashMap.put("email", StringUtils.convertNumberToNormalNumber(this.et_phone.getText().toString().trim()));
        hashMap.put("code", StringUtils.convertNumberToNormalNumber(this.et_code.getText().toString().trim()));
        this.f20180b.postDelayed(this.f20179a, 15000L);
        getHttpClient().b(this, "api/user/register/checkCodeByEmail/V2", hashMap, new i());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.q.b
    public void N(int i9) {
        TextView textView = this.tv_code;
        textView.setText(i9 + NotifyType.SOUND);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_phone_registered;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().e(this, new b());
        EditTextUtils.setEditTextInputSpace(this.et_pwd);
        VerificationCodeHelper.Companion companion = VerificationCodeHelper.Companion;
        if (companion.getInstance().getRegisterAccount() > 999 && companion.getInstance().getRegisterAccount() < 60000) {
            u uVar = new u(this, this.ivSend, this.tv_code, this.rl_send, companion.getInstance().getRegisterAccount(), 1000L, 2);
            this.f20354n = uVar;
            uVar.start();
        }
        EditTextUtils.disableEditTextLongClick(this.et_pwd);
        this.et_code.addTextChangedListener(new c());
        this.et_pwd.addTextChangedListener(new d());
        if (this.f20181c == 2) {
            this.rv_country.setVisibility(8);
            this.tv_country.setVisibility(8);
            this.et_phone.setText(com.guochao.faceshow.aaspring.modulars.login.utils.j.e().f());
            setTitle(getString(R.string.Mailbox_registration));
            this.next.setText(getString(R.string.Next_step));
        } else {
            if (BaseConfig.isChinese()) {
                this.tv_country.setText("+86");
                this.rv_country.setImageResource(R.mipmap.icon_flag);
            } else {
                hc.a.h(this.rv_country, com.guochao.faceshow.aaspring.modulars.login.utils.j.e().i(), R.mipmap.ic_earth);
                TextView textView = this.tv_country;
                textView.setText("+" + com.guochao.faceshow.aaspring.modulars.login.utils.j.e().d());
            }
            this.et_phone.setText(com.guochao.faceshow.aaspring.modulars.login.utils.j.e().j());
            setTitle(getString(R.string.Mobile_phone_registration));
            this.next.setText(getString(R.string.Next_step));
        }
        getLifecycle().addObserver(this.animationViewPro);
        H0();
        H0();
        this.f20357q = new KeyboardHeightProvider(this, getWindow().getDecorView());
        getWindow().getDecorView().post(new e());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseCountDownActivity
    public int m0() {
        return this.f20181c == 2 ? 1 : 0;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseCountDownActivity
    protected void n0(boolean z10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i10 == 10023 && intent != null && intent.getIntExtra("type", 0) == 1) {
            this.et_code.setText("");
        }
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
        RecaptchaDialogFragment recaptchaDialogFragment = this.f20356p;
        if (recaptchaDialogFragment != null) {
            ((HalloweenJSAction) recaptchaDialogFragment.getJSAction()).setOnCallBack(new a());
        }
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_pwd /* 2131363274 */:
                H0();
                return;
            case R.id.next /* 2131363841 */:
                if (this.et_pwd.getText().toString().trim().length() > 20) {
                    showToast(getString(R.string.Password_support_6_to_20_bits));
                    return;
                } else {
                    v0();
                    return;
                }
            case R.id.rl_send /* 2131364298 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    int i9 = this.f20181c;
                    if (i9 == 2) {
                        EventTrackingUtils.getInstance().track("mail_verification_click_2737");
                    } else if (i9 == 3) {
                        EventTrackingUtils.getInstance().track("phone_verification_click_2737");
                    }
                    com.guochao.faceshow.aaspring.modulars.login.utils.i.d().c(this, this.f20355o, new f());
                    return;
                }
                return;
            case R.id.rv_country /* 2131364332 */:
                AreaSelectActivity.start(getActivity(), RegisteredActivity.class.getSimpleName(), 99);
                overridePendingTransition(R.anim.fragment_enter, R.anim.do_nothing);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseCountDownActivity, com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f20357q.close();
        super.onDestroy();
        this.f20354n = null;
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().b(getActivity(), this.f20355o);
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
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = StatusBarHelper.getStatusbarHeight(this);
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
        this.f20357q.setKeyboardHeightObserver(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f20357q.setKeyboardHeightObserver(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public boolean onShouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return false;
    }
}

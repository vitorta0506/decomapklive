package com.guochao.faceshow.aaspring.modulars.user.bind;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import butterknife.BindView;
import butterknife.OnClick;
import cn.jpush.android.api.JPushInterface;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.login.activity.AreaSelectActivity;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.modulars.login.fragment.RecaptchaDialogFragment;
import com.guochao.faceshow.aaspring.modulars.login.utils.h;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Md5;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.SystemUtil;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class BindPhoneV2Activity extends BaseActivity implements WebViewFragment.d {

    /* renamed from: a  reason: collision with root package name */
    private String f23168a;

    /* renamed from: b  reason: collision with root package name */
    private String f23169b;
    @BindView
    TextView btnConfirm;

    /* renamed from: c  reason: collision with root package name */
    private String f23170c;

    /* renamed from: d  reason: collision with root package name */
    private String f23171d;

    /* renamed from: e  reason: collision with root package name */
    private CountDownTimer f23172e;
    @BindView
    EditText etCode;
    @BindView
    EditText etPhone;

    /* renamed from: f  reason: collision with root package name */
    private int f23173f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f23174g;

    /* renamed from: h  reason: collision with root package name */
    RecaptchaHandle f23175h;

    /* renamed from: i  reason: collision with root package name */
    RecaptchaDialogFragment f23176i;
    @BindView
    ImageView ivNext;

    /* renamed from: j  reason: collision with root package name */
    private boolean f23177j;

    /* renamed from: k  reason: collision with root package name */
    TextWatcher f23178k = new a();
    @BindView
    FrameLayout rlSend;
    @BindView
    FrameLayout rlSendHide;
    @BindView
    ImageView rvCountry;
    @BindView
    TextView tvBindPhoneTip;
    @BindView
    TextView tvCode;
    @BindView
    TextView tvCountry;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            String trim = BindPhoneV2Activity.this.etCode.getText().toString().trim();
            int length = BindPhoneV2Activity.this.etPhone.getText().toString().trim().length();
            String trim2 = BindPhoneV2Activity.this.etPhone.getText().toString().trim();
            if (BaseConfig.isChinese()) {
                if (length == 11 && StringUtils.isPhoneNumberValid(trim2)) {
                    BindPhoneV2Activity.this.rlSend.setEnabled(true);
                } else {
                    BindPhoneV2Activity.this.rlSend.setEnabled(false);
                }
                if (!TextUtils.isEmpty(trim2) && !TextUtils.isEmpty(trim) && trim.length() == 6 && StringUtils.isPhoneNumberValid(trim2)) {
                    BindPhoneV2Activity.this.btnConfirm.setEnabled(true);
                    return;
                } else {
                    BindPhoneV2Activity.this.btnConfirm.setEnabled(false);
                    return;
                }
            }
            if (length >= 6 && StringUtils.isPhoneNumberValid(trim2)) {
                BindPhoneV2Activity.this.rlSend.setEnabled(true);
            } else {
                BindPhoneV2Activity.this.rlSend.setEnabled(false);
            }
            if (length >= 6 && StringUtils.isPhoneNumberValid(trim2) && trim.length() == 6 && StringUtils.isPhoneNumberValid(trim2)) {
                BindPhoneV2Activity.this.btnConfirm.setEnabled(true);
            } else {
                BindPhoneV2Activity.this.btnConfirm.setEnabled(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements h {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void a(Exception exc) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void b(RecaptchaHandle recaptchaHandle) {
            BindPhoneV2Activity.this.f23175h = recaptchaHandle;
        }
    }

    /* loaded from: classes3.dex */
    class c implements CountryUtils.NationalFlagAndCodeCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f23181a;

        /* loaded from: classes3.dex */
        class a implements CountryUtils.CountryCallBack {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
            public void onResponse(@Nullable List<CountryData> list) {
                if (BindPhoneV2Activity.this.tvCountry == null || list == null) {
                    return;
                }
                for (CountryData countryData : list) {
                    if (countryData.getCoding().equalsIgnoreCase(c.this.f23181a)) {
                        BindPhoneV2Activity.this.f23168a = countryData.getCountryNum();
                        BindPhoneV2Activity.this.f23169b = countryData.getLogo();
                        BindPhoneV2Activity bindPhoneV2Activity = BindPhoneV2Activity.this;
                        hc.a.h(bindPhoneV2Activity.rvCountry, bindPhoneV2Activity.f23169b, R.mipmap.ic_earth);
                        BindPhoneV2Activity bindPhoneV2Activity2 = BindPhoneV2Activity.this;
                        bindPhoneV2Activity2.tvCountry.setText(String.format("+%s", bindPhoneV2Activity2.f23168a));
                        return;
                    }
                }
            }
        }

        c(String str) {
            this.f23181a = str;
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.NationalFlagAndCodeCallBack
        public void onResponse(@Nullable CountryData countryData) {
            if (countryData != null) {
                BindPhoneV2Activity.this.f23168a = countryData.getCountryNum();
                BindPhoneV2Activity.this.f23169b = countryData.getLogo();
                BindPhoneV2Activity bindPhoneV2Activity = BindPhoneV2Activity.this;
                if (bindPhoneV2Activity.rvCountry != null) {
                    if ("1".equals(bindPhoneV2Activity.f23168a) && !TextUtils.isEmpty(countryData.getCoding())) {
                        if (countryData.getCoding().equalsIgnoreCase("US")) {
                            BindPhoneV2Activity.this.rvCountry.setImageResource(R.mipmap.ic_country_america);
                        } else {
                            BindPhoneV2Activity.this.rvCountry.setImageResource(R.mipmap.ic_country_canada);
                        }
                    } else {
                        BindPhoneV2Activity bindPhoneV2Activity2 = BindPhoneV2Activity.this;
                        hc.a.h(bindPhoneV2Activity2.rvCountry, bindPhoneV2Activity2.f23169b, R.mipmap.ic_earth);
                    }
                }
                BindPhoneV2Activity bindPhoneV2Activity3 = BindPhoneV2Activity.this;
                TextView textView = bindPhoneV2Activity3.tvCountry;
                if (textView != null) {
                    textView.setText(String.format("+%s", bindPhoneV2Activity3.f23168a));
                    return;
                }
                return;
            }
            CountryUtils.getCountryData(BindPhoneV2Activity.this, new a());
        }
    }

    /* loaded from: classes3.dex */
    class d implements com.guochao.faceshow.aaspring.modulars.login.utils.g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f23184a;

        d(String str) {
            this.f23184a = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void a(Exception exc) {
            BindPhoneV2Activity.this.f23176i = new RecaptchaDialogFragment();
            BindPhoneV2Activity bindPhoneV2Activity = BindPhoneV2Activity.this;
            bindPhoneV2Activity.f23176i.show(bindPhoneV2Activity.getSupportFragmentManager(), "RecaptchaDialogFragment");
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void b(String str) {
            BindPhoneV2Activity bindPhoneV2Activity = BindPhoneV2Activity.this;
            bindPhoneV2Activity.r0(this.f23184a, bindPhoneV2Activity.getCurrentUser().getUserId(), str, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f23186a;

        e(String str) {
            this.f23186a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (BaseConfig.isChinese()) {
                if (aVar.a() == 2) {
                    ToastUtils.showToast(BindPhoneV2Activity.this.getActivity(), BindPhoneV2Activity.this.getString(R.string.zaime_get_verification_code_error));
                }
            } else if (aVar.a() == -1) {
                BindPhoneV2Activity bindPhoneV2Activity = BindPhoneV2Activity.this;
                bindPhoneV2Activity.showToast(bindPhoneV2Activity.getString(R.string.verification_code_error));
            } else if (aVar.a() == 0) {
                if (BindPhoneV2Activity.this.f23177j) {
                    BindPhoneV2Activity.this.showToast(R.string.phone_bound_other_accounts_main);
                } else {
                    BindPhoneV2Activity.this.showToast(R.string.phone_bound_other_accounts);
                }
            } else {
                BindPhoneV2Activity.this.showToast(aVar.c());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (faceCastBaseResponse.getCode() != 1) {
                onFailure(new g7.a<>(new Exception(), faceCastBaseResponse.getCode()));
                return;
            }
            SpUtils.setStr(BindPhoneV2Activity.this, "phone", this.f23186a);
            if (BindPhoneV2Activity.this.f23174g) {
                com.guochao.faceshow.aaspring.modulars.personal.b.j((BaseActivity) BindPhoneV2Activity.this.getActivity());
                BindPhoneV2Activity.this.finish();
                return;
            }
            if (BindPhoneV2Activity.this.f23173f == 0) {
                BindPhoneV2Activity bindPhoneV2Activity = BindPhoneV2Activity.this;
                bindPhoneV2Activity.showToast(bindPhoneV2Activity.getString(R.string.phone_bind_success));
            } else {
                BindPhoneV2Activity bindPhoneV2Activity2 = BindPhoneV2Activity.this;
                bindPhoneV2Activity2.showToast(bindPhoneV2Activity2.getString(R.string.phone_change_success));
            }
            if (BaseConfig.isChinese()) {
                i.u().s().setIsBindMobile(1);
            }
            SpUtils.setStr(BindPhoneV2Activity.this.getActivity(), "phone", this.f23186a);
            BindPhoneV2Activity.this.getCurrentUser().mobile = this.f23186a;
            BindPhoneV2Activity.this.setResult(-1);
            BindPhoneV2Activity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends CountDownTimer {
            a(long j10, long j11) {
                super(j10, j11);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                BindPhoneV2Activity.this.f23172e.cancel();
                BindPhoneV2Activity.this.s0(true);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j10) {
                TextView textView = BindPhoneV2Activity.this.tvCode;
                textView.setText((j10 / 1000) + NotifyType.SOUND);
            }
        }

        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (BaseConfig.isChinese()) {
                if (aVar.a() == 2) {
                    ToastUtils.showToast(BindPhoneV2Activity.this.getActivity(), BindPhoneV2Activity.this.getString(R.string.zaime_phone_has_been_registed));
                }
            } else if (aVar.a() == 40011) {
                BindPhoneV2Activity.this.showToast(R.string.code_has_been_limited);
            } else if (aVar.a() != -1 && aVar.a() != -2) {
                BindPhoneV2Activity.this.showToast(aVar.c());
            } else if (BindPhoneV2Activity.this.f23177j) {
                BindPhoneV2Activity.this.showToast(R.string.phone_bound_other_accounts_main);
            } else {
                BindPhoneV2Activity.this.showToast(R.string.phone_bound_other_accounts);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (faceCastBaseResponse.getCode() != 1) {
                onFailure(new g7.a<>(new Exception(), faceCastBaseResponse.getCode()));
                return;
            }
            BindPhoneV2Activity.this.s0(false);
            if (BindPhoneV2Activity.this.f23172e == null) {
                BindPhoneV2Activity.this.f23172e = new a(60000L, 1000L);
            }
            BindPhoneV2Activity.this.f23172e.start();
            BindPhoneV2Activity bindPhoneV2Activity = BindPhoneV2Activity.this;
            ToastUtils.showToast(bindPhoneV2Activity, bindPhoneV2Activity.getResources().getString(R.string.code_has_been_sented));
        }
    }

    /* loaded from: classes3.dex */
    class g implements HalloweenJSAction.OnCallBack {
        g() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void getReCaptChaToken(Object obj) {
            RecaptchaDialogFragment recaptchaDialogFragment = BindPhoneV2Activity.this.f23176i;
            if (recaptchaDialogFragment != null) {
                recaptchaDialogFragment.dismiss();
            }
            String str = (String) obj;
            BindPhoneV2Activity.this.debugAlert(str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String trim = BindPhoneV2Activity.this.etPhone.getText().toString().trim();
            BindPhoneV2Activity bindPhoneV2Activity = BindPhoneV2Activity.this;
            bindPhoneV2Activity.r0(trim, bindPhoneV2Activity.getCurrentUser().getUserId(), str, true);
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

    private void q0(String str, String str2) {
        PostRequest D;
        if (BaseConfig.isChinese()) {
            D = post("tokens/bind/bindMobile").y("mobile", str).y("code", str2);
        } else {
            D = post("tokens/user/info/changeUserBindInfo").B("sendType", 0).B("type", 0).D("mobile", StringUtils.convertNumberToNormalNumber(str)).D("code", StringUtils.convertNumberToNormalNumber(str2)).D("deviceId", SystemUtil.getDeviceId());
        }
        D.M(new e(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r0(String str, String str2, String str3, boolean z10) {
        PostRequest D;
        if (BaseConfig.isChinese()) {
            D = post("api/user/register/sendCodeByMobile").D("mobile", str).D("type", "3").D("recaptchaToken", str3).D("key", this.f23171d).D("areaCode", this.f23168a).D("unixtime", this.f23170c);
        } else {
            D = new PostRequest().O(this).Q("tokens/user/info/checkIfBindAndSend").B("sendType", 0).B("type", 0).D("recaptchaToken", str3).D("beFrom", z10 ? "webs" : "").D("mobile", str).D("areaCode", this.f23168a);
        }
        D.M(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0(boolean z10) {
        if (z10) {
            this.rlSend.setVisibility(0);
            this.rlSendHide.setVisibility(8);
            return;
        }
        this.rlSend.setVisibility(8);
        this.rlSendHide.setVisibility(0);
    }

    public static void t0(Context context, int i9, boolean z10) {
        Intent intent = new Intent(context, BindPhoneV2Activity.class);
        intent.putExtra("type", i9);
        intent.putExtra("checkPwd", z10);
        context.startActivity(intent);
    }

    public static void u0(BaseActivity baseActivity, int i9, String str, int i10) {
        Intent intent = new Intent(baseActivity, BindPhoneV2Activity.class);
        intent.putExtra("type", i9);
        intent.putExtra("from", str);
        baseActivity.startActivityForResult(intent, i10);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_bind_phone_v2;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (MainActivity.class.getSimpleName().equalsIgnoreCase(getIntent().getStringExtra("from"))) {
            this.f23177j = true;
        }
        if (this.f23177j) {
            this.tvBindPhoneTip.setVisibility(0);
            setTitle(getString(R.string.bind_phone_phone_title));
            this.rlSend.setEnabled(false);
            this.btnConfirm.setText(getString(R.string.bind_phone_save));
        } else {
            if (BaseConfig.isChinese()) {
                setTitle(getString(R.string.setting_account_safe));
            } else {
                setTitle(getString(R.string.setting_bind_phone));
                this.rlSend.setEnabled(false);
            }
            this.btnConfirm.setText(getString(R.string.personal_immediately_binding));
        }
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().e(this, new b());
        this.f23174g = getIntent().getBooleanExtra("checkPwd", false);
        this.etPhone.setInputType(2);
        this.f23173f = getIntent().getIntExtra("type", 0);
        if (BaseConfig.isChinese()) {
            this.ivNext.setVisibility(8);
            this.tvCountry.setText("+86");
            this.rvCountry.setImageResource(R.mipmap.icon_flag);
            this.f23168a = "86";
        } else {
            String str = "US";
            if (Build.VERSION.SDK_INT >= 24) {
                LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
                if (!TextUtils.isEmpty(locales.get(0).getCountry())) {
                    str = locales.get(0).getCountry();
                }
            } else if (!TextUtils.isEmpty(Locale.getDefault().getCountry())) {
                str = Locale.getDefault().getCountry();
            }
            CountryUtils.getNationalFlagAndCode(this, new c(str));
        }
        if (BaseConfig.isChinese()) {
            this.rlSend.setEnabled(false);
            this.etCode.addTextChangedListener(this.f23178k);
        }
        this.etPhone.addTextChangedListener(this.f23178k);
        this.etCode.addTextChangedListener(this.f23178k);
        s0(true);
        this.mTitleBarHelper.f();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (intent == null || i9 != 99) {
            return;
        }
        this.f23168a = intent.getStringExtra("country_num");
        String stringExtra = intent.getStringExtra("logo");
        this.f23169b = stringExtra;
        hc.a.h(this.rvCountry, stringExtra, R.mipmap.ic_earth);
        this.tvCountry.setText(String.format("+%s", this.f23168a));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f23177j) {
            JPushInterface.deleteAlias(this, PushUtils.sSequence);
            startActivity(ChooseLoginTypeActivity.class);
            b8.e.g().a(null, false);
            AppManager.getInstance().killActivity(MainActivity.class);
        }
        super.onBackPressed();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onBindWebView(WebView webView) {
        RecaptchaDialogFragment recaptchaDialogFragment = this.f23176i;
        if (recaptchaDialogFragment != null) {
            ((HalloweenJSAction) recaptchaDialogFragment.getJSAction()).setOnCallBack(new g());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        CountDownTimer countDownTimer = this.f23172e;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().b(this, this.f23175h);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onLoadErr(int i9, String str, String str2) {
        showToast(str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public /* synthetic */ void onPageFinished(WebView webView, String str) {
        com.guochao.faceshow.aaspring.base.fragment.f.a(this, webView, str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public boolean onShouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return false;
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.btn_confirm /* 2131362182 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    if (TextUtils.isEmpty(this.etPhone.getText().toString().trim())) {
                        ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_empty));
                        return;
                    } else if (TextUtils.isEmpty(this.etCode.getText().toString().trim())) {
                        ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_code_empty));
                        return;
                    } else {
                        q0(this.etPhone.getText().toString().trim(), this.etCode.getText().toString().trim());
                        return;
                    }
                }
                return;
            case R.id.iv_next /* 2131363264 */:
            case R.id.rv_country /* 2131364332 */:
            case R.id.tv_country /* 2131364966 */:
                if (BaseConfig.isChinese()) {
                    return;
                }
                if (!BaseConfig.isChinese() && "+00".equals(this.tvCountry.getText().toString())) {
                    showToast("Please choose country");
                    return;
                }
                AreaSelectActivity.start(getActivity(), BindPhoneV2Activity.class.getSimpleName(), 99);
                overridePendingTransition(R.anim.fragment_enter, R.anim.do_nothing);
                return;
            case R.id.rl_send /* 2131364298 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    if (TextUtils.isEmpty(this.etPhone.getText().toString().trim())) {
                        ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_empty));
                        return;
                    } else if (BaseConfig.isChinese() && !StringUtils.isPhoneNumberValid(this.etPhone.getText().toString().trim())) {
                        com.guochao.faceshow.aaspring.modulars.personal.b.e(getActivity());
                        return;
                    } else {
                        this.f23170c = System.currentTimeMillis() + "";
                        Md5 md5 = new Md5();
                        this.f23171d = md5.getMD5Str(this.f23170c + Contants.salt).toUpperCase();
                        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().c(this, this.f23175h, new d(this.etPhone.getText().toString().trim()));
                        return;
                    }
                }
                return;
            default:
                return;
        }
    }
}

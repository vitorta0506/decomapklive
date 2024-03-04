package com.guochao.faceshow.mine.view;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.login.activity.AreaSelectActivity;
import com.guochao.faceshow.aaspring.modulars.login.fragment.RecaptchaDialogFragment;
import com.guochao.faceshow.aaspring.modulars.user.bind.BindPhoneV2Activity;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.CountDownTimerUtils;
import com.guochao.faceshow.utils.Md5;
import com.guochao.faceshow.utils.Tools;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4.dex */
public class BindCellPhoneActivity extends BaseActivity implements WebViewFragment.d {
    @BindView
    View btnBind;
    @BindView
    View btnChange;
    @BindView
    View btnNext;
    @BindView
    TextView btnSendVerificationCode;

    /* renamed from: e  reason: collision with root package name */
    private String f25490e;
    @BindView
    EditText etNewPhoneNumber;
    @BindView
    RelativeLayout etNewPhoneNumber_rl;
    @BindView
    EditText etPhoneNumber;
    @BindView
    RelativeLayout etPhoneNumber_rl;
    @BindView
    EditText etVerificationCode;

    /* renamed from: f  reason: collision with root package name */
    private String f25491f;
    @BindView
    RelativeLayout flVerificationLayout;

    /* renamed from: g  reason: collision with root package name */
    private String f25492g;

    /* renamed from: h  reason: collision with root package name */
    private String f25493h;

    /* renamed from: i  reason: collision with root package name */
    private String f25494i;

    /* renamed from: j  reason: collision with root package name */
    RecaptchaHandle f25495j;

    /* renamed from: k  reason: collision with root package name */
    RecaptchaDialogFragment f25496k;
    @BindView
    ImageView national_flag;
    @BindView
    ImageView national_flag1;
    @BindView
    TextView national_txt;
    @BindView
    TextView national_txt1;
    @BindView
    TextView tvHasBindNumber;

    /* renamed from: a  reason: collision with root package name */
    private int f25486a = 1;

    /* renamed from: b  reason: collision with root package name */
    private String f25487b = "";

    /* renamed from: c  reason: collision with root package name */
    private boolean f25488c = false;

    /* renamed from: d  reason: collision with root package name */
    private String f25489d = "";

    /* renamed from: l  reason: collision with root package name */
    TextWatcher f25497l = new c();

    /* loaded from: classes4.dex */
    class a implements com.guochao.faceshow.aaspring.modulars.login.utils.h {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void a(Exception exc) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void b(RecaptchaHandle recaptchaHandle) {
            BindCellPhoneActivity.this.f25495j = recaptchaHandle;
        }
    }

    /* loaded from: classes4.dex */
    class b implements CountryUtils.NationalFlagAndCodeCallBack {

        /* loaded from: classes4.dex */
        class a implements CountryUtils.CountryCallBack {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
            public void onResponse(@Nullable List<CountryData> list) {
                ImageView imageView;
                if (BindCellPhoneActivity.this.national_txt1 == null || list == null) {
                    return;
                }
                for (CountryData countryData : list) {
                    if (countryData.getCoding().equalsIgnoreCase(BindCellPhoneActivity.this.f25494i)) {
                        BindCellPhoneActivity.this.f25489d = countryData.getCountryNum();
                        BindCellPhoneActivity.this.f25490e = countryData.getLogo();
                        BindCellPhoneActivity bindCellPhoneActivity = BindCellPhoneActivity.this;
                        if (bindCellPhoneActivity.national_txt1 == null || bindCellPhoneActivity.national_txt == null || (imageView = bindCellPhoneActivity.national_flag1) == null || bindCellPhoneActivity.national_flag == null) {
                            return;
                        }
                        hc.a.h(imageView, bindCellPhoneActivity.f25490e, R.mipmap.ic_earth);
                        TextView textView = BindCellPhoneActivity.this.national_txt1;
                        textView.setText("+" + BindCellPhoneActivity.this.f25489d);
                        BindCellPhoneActivity bindCellPhoneActivity2 = BindCellPhoneActivity.this;
                        hc.a.h(bindCellPhoneActivity2.national_flag, bindCellPhoneActivity2.f25490e, R.mipmap.ic_earth);
                        TextView textView2 = BindCellPhoneActivity.this.national_txt;
                        textView2.setText("+" + BindCellPhoneActivity.this.f25489d);
                        return;
                    }
                }
            }
        }

        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.NationalFlagAndCodeCallBack
        public void onResponse(@Nullable CountryData countryData) {
            if (countryData != null) {
                BindCellPhoneActivity.this.f25489d = countryData.getCountryNum();
                BindCellPhoneActivity.this.f25490e = countryData.getLogo();
                BindCellPhoneActivity bindCellPhoneActivity = BindCellPhoneActivity.this;
                if (bindCellPhoneActivity.national_txt1 == null || bindCellPhoneActivity.national_txt == null || bindCellPhoneActivity.national_flag1 == null || bindCellPhoneActivity.national_flag == null) {
                    return;
                }
                if ("1".equals(bindCellPhoneActivity.f25489d) && !TextUtils.isEmpty(countryData.getCoding())) {
                    if (countryData.getCoding().equalsIgnoreCase("US")) {
                        BindCellPhoneActivity.this.national_flag1.setImageResource(R.mipmap.ic_country_america);
                        BindCellPhoneActivity.this.national_flag.setImageResource(R.mipmap.ic_country_america);
                    } else {
                        BindCellPhoneActivity.this.national_flag1.setImageResource(R.mipmap.ic_country_canada);
                        BindCellPhoneActivity.this.national_flag.setImageResource(R.mipmap.ic_country_america);
                    }
                } else {
                    BindCellPhoneActivity bindCellPhoneActivity2 = BindCellPhoneActivity.this;
                    hc.a.h(bindCellPhoneActivity2.national_flag1, bindCellPhoneActivity2.f25490e, R.mipmap.ic_earth);
                    BindCellPhoneActivity bindCellPhoneActivity3 = BindCellPhoneActivity.this;
                    hc.a.h(bindCellPhoneActivity3.national_flag, bindCellPhoneActivity3.f25490e, R.mipmap.ic_earth);
                }
                TextView textView = BindCellPhoneActivity.this.national_txt1;
                textView.setText("+" + BindCellPhoneActivity.this.f25489d);
                TextView textView2 = BindCellPhoneActivity.this.national_txt;
                textView2.setText("+" + BindCellPhoneActivity.this.f25489d);
                return;
            }
            CountryUtils.getCountryData(BindCellPhoneActivity.this, new a());
        }
    }

    /* loaded from: classes4.dex */
    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String trim = BindCellPhoneActivity.this.etNewPhoneNumber.getText().toString().trim();
            String trim2 = BindCellPhoneActivity.this.etVerificationCode.getText().toString().trim();
            if (trim.length() == 11) {
                if (BaseConfig.isChinese()) {
                    if (StringUtils.isPhoneNumberValid(trim)) {
                        BindCellPhoneActivity.this.btnSendVerificationCode.setEnabled(true);
                        BindCellPhoneActivity.this.btnSendVerificationCode.setBackgroundResource(R.drawable.btn_login_blue_light);
                    } else {
                        BindCellPhoneActivity.this.btnSendVerificationCode.setEnabled(false);
                        BindCellPhoneActivity.this.btnSendVerificationCode.setBackgroundResource(R.drawable.bg_bindphone_normal);
                    }
                } else {
                    BindCellPhoneActivity.this.btnSendVerificationCode.setEnabled(true);
                    BindCellPhoneActivity.this.btnSendVerificationCode.setBackgroundResource(R.drawable.btn_login_blue_light);
                }
            } else {
                BindCellPhoneActivity.this.btnSendVerificationCode.setEnabled(false);
                BindCellPhoneActivity.this.btnSendVerificationCode.setBackgroundResource(R.drawable.bg_bindphone_normal);
            }
            if (!TextUtils.isEmpty(trim) && !TextUtils.isEmpty(trim2) && trim2.length() == 6) {
                if (BaseConfig.isChinese()) {
                    if (StringUtils.isPhoneNumberValid(trim)) {
                        BindCellPhoneActivity.this.btnChange.setEnabled(true);
                        BindCellPhoneActivity.this.btnChange.setBackgroundResource(R.drawable.btn_login_blue_light);
                        return;
                    }
                    BindCellPhoneActivity.this.btnChange.setEnabled(false);
                    BindCellPhoneActivity.this.btnChange.setBackgroundResource(R.drawable.bg_bindphone_normal);
                    return;
                }
                BindCellPhoneActivity.this.btnChange.setEnabled(true);
                BindCellPhoneActivity.this.btnChange.setBackgroundResource(R.drawable.btn_login_blue_light);
                return;
            }
            BindCellPhoneActivity.this.btnChange.setEnabled(false);
            BindCellPhoneActivity.this.btnChange.setBackgroundResource(R.drawable.bg_bindphone_normal);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes4.dex */
    class d implements com.guochao.faceshow.aaspring.modulars.login.utils.g {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void a(Exception exc) {
            BindCellPhoneActivity.this.f25496k = new RecaptchaDialogFragment();
            BindCellPhoneActivity bindCellPhoneActivity = BindCellPhoneActivity.this;
            bindCellPhoneActivity.f25496k.show(bindCellPhoneActivity.getSupportFragmentManager(), "RecaptchaDialogFragment");
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void b(String str) {
            BindCellPhoneActivity bindCellPhoneActivity = BindCellPhoneActivity.this;
            bindCellPhoneActivity.o0(bindCellPhoneActivity.f25487b, 2, str, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (BaseConfig.isChinese()) {
                if (aVar.a() == 2) {
                    ToastUtils.showToast(BindCellPhoneActivity.this.getActivity(), BindCellPhoneActivity.this.getString(R.string.zaime_phone_has_been_registed));
                    return;
                }
                return;
            }
            com.guochao.faceshow.views.h.a(BindCellPhoneActivity.this.getActivity(), aVar.c() == null ? "" : aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            new CountDownTimerUtils(BindCellPhoneActivity.this.getActivity(), BindCellPhoneActivity.this.btnSendVerificationCode, 60000L, 1000L).start();
            BindCellPhoneActivity bindCellPhoneActivity = BindCellPhoneActivity.this;
            ToastUtils.showToast(bindCellPhoneActivity, bindCellPhoneActivity.getResources().getString(R.string.send_success));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (BaseConfig.isChinese()) {
                if (aVar.a() == 2) {
                    ToastUtils.showToast(BindCellPhoneActivity.this.getActivity(), BindCellPhoneActivity.this.getString(R.string.zaime_phone_has_been_registed));
                    return;
                }
                return;
            }
            com.guochao.faceshow.views.h.a(BindCellPhoneActivity.this.getActivity(), aVar.c() == null ? "" : aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (faceCastBaseResponse.getCode() != 1) {
                onFailure(new g7.a<>(new Exception(), faceCastBaseResponse.getCode()));
                return;
            }
            BindCellPhoneActivity bindCellPhoneActivity = BindCellPhoneActivity.this;
            new CountDownTimerUtils(bindCellPhoneActivity, bindCellPhoneActivity.btnSendVerificationCode, 60000L, 1000L).start();
            BindCellPhoneActivity bindCellPhoneActivity2 = BindCellPhoneActivity.this;
            ToastUtils.showToast(bindCellPhoneActivity2, bindCellPhoneActivity2.getResources().getString(R.string.send_success));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f25505a;

        g(String str) {
            this.f25505a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (BaseConfig.isChinese()) {
                if (aVar.a() == 2) {
                    ToastUtils.showToast(BindCellPhoneActivity.this.getActivity(), BindCellPhoneActivity.this.getString(R.string.zaime_get_verification_code_error));
                    return;
                }
                return;
            }
            com.guochao.faceshow.views.h.a(BindCellPhoneActivity.this.getActivity(), aVar.c() == null ? "" : aVar.c());
            com.guochao.faceshow.views.h.a(BindCellPhoneActivity.this.getActivity(), aVar.c() != null ? aVar.c() : "");
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (faceCastBaseResponse.getCode() != 1) {
                onFailure(new g7.a<>(new Exception(), faceCastBaseResponse.getCode()));
                return;
            }
            BindCellPhoneActivity bindCellPhoneActivity = BindCellPhoneActivity.this;
            ToastUtils.showToast(bindCellPhoneActivity, bindCellPhoneActivity.getResources().getString(R.string.common_do_success));
            SpUtils.setStr(BindCellPhoneActivity.this, "phone", this.f25505a);
            BindCellPhoneActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            com.guochao.faceshow.views.h.a(BindCellPhoneActivity.this.getActivity(), aVar.c() == null ? "" : aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (faceCastBaseResponse.getCode() != 1) {
                onFailure(new g7.a<>(new Exception(), faceCastBaseResponse.getCode()));
                return;
            }
            BindCellPhoneActivity.this.startActivity(PaymentPasswordSettingActivity.class);
            BindCellPhoneActivity.this.finish();
        }
    }

    /* loaded from: classes4.dex */
    class i implements HalloweenJSAction.OnCallBack {
        i() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void getReCaptChaToken(Object obj) {
            RecaptchaDialogFragment recaptchaDialogFragment = BindCellPhoneActivity.this.f25496k;
            if (recaptchaDialogFragment != null) {
                recaptchaDialogFragment.dismiss();
            }
            String str = (String) obj;
            BindCellPhoneActivity.this.debugAlert(str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            BindCellPhoneActivity bindCellPhoneActivity = BindCellPhoneActivity.this;
            bindCellPhoneActivity.o0(bindCellPhoneActivity.f25487b, 2, str, true);
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

    private void initData() {
        int intExtra = getIntent().getIntExtra("from", 1);
        this.f25486a = intExtra;
        if (intExtra == 1) {
            this.tvHasBindNumber.setVisibility(8);
            this.etNewPhoneNumber_rl.setVisibility(8);
            this.etPhoneNumber_rl.setVisibility(0);
            this.flVerificationLayout.setVisibility(0);
            this.btnChange.setVisibility(8);
            this.btnNext.setVisibility(8);
            this.btnBind.setVisibility(0);
        } else if (intExtra == 2) {
            this.tvHasBindNumber.setVisibility(0);
            this.etNewPhoneNumber_rl.setVisibility(0);
            this.etPhoneNumber_rl.setVisibility(8);
            this.flVerificationLayout.setVisibility(0);
            this.btnChange.setVisibility(0);
            this.btnNext.setVisibility(8);
            this.btnBind.setVisibility(8);
            if (BaseConfig.isChinese()) {
                this.btnSendVerificationCode.setEnabled(false);
                this.btnChange.setEnabled(false);
                com.guochao.faceshow.aaspring.modulars.personal.b.d(this.btnSendVerificationCode, this.btnChange);
                this.etNewPhoneNumber.addTextChangedListener(this.f25497l);
                this.etVerificationCode.addTextChangedListener(this.f25497l);
            }
        } else if (intExtra == 3) {
            this.tvHasBindNumber.setVisibility(0);
            this.etNewPhoneNumber_rl.setVisibility(8);
            this.etPhoneNumber_rl.setVisibility(8);
            this.flVerificationLayout.setVisibility(0);
            this.btnChange.setVisibility(8);
            this.btnNext.setVisibility(0);
            this.btnBind.setVisibility(8);
        }
        String str = SpUtils.getStr(this, "phone");
        this.f25487b = str;
        if (TextUtils.isEmpty(str)) {
            this.f25488c = false;
            return;
        }
        this.f25488c = true;
        if (this.f25487b.length() >= 6) {
            StringBuilder sb2 = new StringBuilder();
            for (int i9 = 0; i9 < this.f25487b.length(); i9++) {
                char charAt = this.f25487b.charAt(i9);
                if (i9 >= 3 && i9 <= 6) {
                    sb2.append('*');
                } else {
                    sb2.append(charAt);
                }
            }
            if (this.tvHasBindNumber.getVisibility() == 0) {
                this.tvHasBindNumber.setText(sb2.toString());
            }
        } else if (this.tvHasBindNumber.getVisibility() == 0) {
            this.tvHasBindNumber.setText(this.f25487b);
        }
    }

    private void m0(String str, String str2) {
        PostRequest D;
        if (BaseConfig.isChinese()) {
            D = post("tokens/bind/bindMobile").y("mobile", str).y("code", str2);
        } else {
            D = post(Contants.BIND_PHONE_NUMBER).D("mobile", StringUtils.convertNumberToNormalNumber(str)).D("code", StringUtils.convertNumberToNormalNumber(str2));
        }
        D.M(new g(str));
    }

    private void n0() {
        post(Contants.checkCodeByMobile).D("mobile", StringUtils.convertNumberToNormalNumber(this.f25487b)).D("code", StringUtils.convertNumberToNormalNumber(this.f25493h)).M(new h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(String str, int i9, String str2, boolean z10) {
        this.f25491f = System.currentTimeMillis() + "";
        Md5 md5 = new Md5();
        this.f25492g = md5.getMD5Str(this.f25491f + Contants.salt).toUpperCase();
        PostRequest D = new PostRequest().O(this).Q("api/user/register/sendCodeByMobile").D("recaptchaToken", str2).D("mobile", str).D("type", String.valueOf(i9)).D("unixtime", this.f25491f).D("key", this.f25492g).D("areaCode", this.f25489d);
        if (z10) {
            D.D("beFrom", "webs");
        }
        D.M(new e());
    }

    private void p0(String str, String str2) {
        PostRequest D;
        if (BaseConfig.isChinese()) {
            D = post("api/user/register/sendCodeByMobile").D("mobile", str).D("type", "3").D("key", this.f25492g).D("areaCode", this.f25489d).D("unixtime", this.f25491f);
        } else {
            D = post(Contants.SEND_PHONE_CODE).D("mobile", str).D(Contants.USER_ID, str2).D("areaCode", this.f25489d).D("unixtime", this.f25491f).D("key", this.f25492g);
        }
        D.M(new f());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_bind_phone;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().e(this, new a());
        if (BaseConfig.isChinese()) {
            this.national_txt1.setText("+86");
            this.national_flag1.setImageResource(R.mipmap.icon_flag);
            this.national_txt.setText("+86");
            this.national_flag.setImageResource(R.mipmap.icon_flag);
            this.f25489d = "86";
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            this.f25494i = TextUtils.isEmpty(locales.get(0).getCountry()) ? "" : locales.get(0).getCountry();
        } else {
            this.f25494i = TextUtils.isEmpty(Locale.getDefault().getCountry()) ? "" : Locale.getDefault().getCountry();
        }
        if (TextUtils.isEmpty(this.f25494i)) {
            this.national_txt1.setText("+00");
            this.national_flag1.setImageResource(R.mipmap.ic_earth);
            this.national_txt.setText("+00");
            this.national_flag.setImageResource(R.mipmap.ic_earth);
            return;
        }
        CountryUtils.getNationalFlagAndCode(this, new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (intent == null) {
            return;
        }
        this.f25489d = intent.getStringExtra("country_num");
        String stringExtra = intent.getStringExtra("logo");
        this.f25490e = stringExtra;
        int i11 = this.f25486a;
        if (i11 == 1) {
            hc.a.l(stringExtra, this.national_flag1, R.mipmap.ic_earth, this);
            TextView textView = this.national_txt1;
            textView.setText("+" + this.f25489d);
        } else if (i11 != 2) {
        } else {
            hc.a.l(stringExtra, this.national_flag, R.mipmap.ic_earth, this);
            TextView textView2 = this.national_txt;
            textView2.setText("+" + this.f25489d);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onBindWebView(WebView webView) {
        RecaptchaDialogFragment recaptchaDialogFragment = this.f25496k;
        if (recaptchaDialogFragment != null) {
            ((HalloweenJSAction) recaptchaDialogFragment.getJSAction()).setOnCallBack(new i());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.setting_account_safe);
        initData();
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
            case R.id.btnBind /* 2131362157 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    if (TextUtils.isEmpty(this.etPhoneNumber.getText().toString().trim())) {
                        ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_empty));
                        return;
                    } else if (TextUtils.isEmpty(this.etVerificationCode.getText().toString().trim())) {
                        ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_code_empty));
                        return;
                    } else {
                        m0(this.etPhoneNumber.getText().toString().trim(), this.etVerificationCode.getText().toString().trim());
                        return;
                    }
                }
                return;
            case R.id.btnChange /* 2131362159 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    if (TextUtils.isEmpty(this.etNewPhoneNumber.getText().toString().trim())) {
                        ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_empty));
                        return;
                    } else if (TextUtils.isEmpty(this.etVerificationCode.getText().toString().trim())) {
                        ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_code_empty));
                        return;
                    } else {
                        m0(this.etNewPhoneNumber.getText().toString().trim(), this.etVerificationCode.getText().toString().trim());
                        return;
                    }
                }
                return;
            case R.id.btnNext /* 2131362164 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    String trim = this.etVerificationCode.getText().toString().trim();
                    this.f25493h = trim;
                    if (TextUtils.isEmpty(trim)) {
                        ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_code_empty));
                        return;
                    } else {
                        n0();
                        return;
                    }
                }
                return;
            case R.id.btnSendVerificationCode /* 2131362168 */:
                if (!BaseConfig.isChinese() && TextUtils.isEmpty(this.f25494i) && TextUtils.isEmpty(this.f25489d)) {
                    ToastUtils.showToast(this, "Please choose country");
                    return;
                } else if (DisableDoubleClickUtils.canClick(view)) {
                    if (this.f25486a == 3) {
                        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().c(this, this.f25495j, new d());
                        return;
                    } else if (this.f25488c) {
                        if (TextUtils.isEmpty(this.etNewPhoneNumber.getText().toString().trim())) {
                            ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_empty));
                            return;
                        } else if (!Tools.isNumber(this.etNewPhoneNumber.getText().toString().trim()).booleanValue()) {
                            ToastUtils.showToast(this, getString(R.string.email_phone_error));
                            return;
                        } else if (BaseConfig.isChinese() && !StringUtils.isPhoneNumberValid(this.etNewPhoneNumber.getText().toString().trim())) {
                            com.guochao.faceshow.aaspring.modulars.personal.b.e(getActivity());
                            return;
                        } else {
                            this.f25491f = System.currentTimeMillis() + "";
                            Md5 md5 = new Md5();
                            this.f25492g = md5.getMD5Str(this.f25491f + Contants.salt).toUpperCase();
                            p0(this.etNewPhoneNumber.getText().toString().trim(), SpUtils.getStr(this, Contants.USER_ID));
                            return;
                        }
                    } else if (TextUtils.isEmpty(this.etPhoneNumber.getText().toString().trim())) {
                        ToastUtils.showToast(this, getResources().getString(R.string.setting_bind_phone_empty));
                        return;
                    } else {
                        this.f25491f = System.currentTimeMillis() + "";
                        Md5 md52 = new Md5();
                        this.f25492g = md52.getMD5Str(this.f25491f + Contants.salt).toUpperCase();
                        p0(this.etPhoneNumber.getText().toString().trim(), SpUtils.getStr(this, Contants.USER_ID));
                        return;
                    }
                } else {
                    return;
                }
            case R.id.national_flag /* 2131363821 */:
            case R.id.national_flag1 /* 2131363822 */:
            case R.id.national_txt /* 2131363823 */:
            case R.id.national_txt1 /* 2131363824 */:
                if (BaseConfig.isChinese()) {
                    return;
                }
                AreaSelectActivity.start(this, BindPhoneV2Activity.class.getSimpleName(), 99);
                return;
            default:
                return;
        }
    }
}

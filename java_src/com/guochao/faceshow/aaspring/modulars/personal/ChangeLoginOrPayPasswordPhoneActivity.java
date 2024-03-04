package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.modulars.login.activity.AreaSelectActivity;
import com.guochao.faceshow.aaspring.modulars.login.fragment.RecaptchaDialogFragment;
import com.guochao.faceshow.aaspring.modulars.login.fragment.VerificationCodeHelper;
import com.guochao.faceshow.aaspring.modulars.login.utils.i;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.u;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.SystemUtil;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.util.List;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class ChangeLoginOrPayPasswordPhoneActivity extends BaseActivity implements WebViewFragment.d {

    /* renamed from: a  reason: collision with root package name */
    private u f21164a;

    /* renamed from: b  reason: collision with root package name */
    private String f21165b;
    @BindView
    TextView btnOk;

    /* renamed from: c  reason: collision with root package name */
    private int f21166c;

    /* renamed from: d  reason: collision with root package name */
    private int f21167d;

    /* renamed from: e  reason: collision with root package name */
    private int f21168e;
    @BindView
    EditText etCode;
    @BindView
    EditText etPwd;

    /* renamed from: f  reason: collision with root package name */
    private String f21169f;

    /* renamed from: g  reason: collision with root package name */
    private String f21170g;

    /* renamed from: h  reason: collision with root package name */
    private String f21171h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f21172i;
    @BindView
    ImageView ivEmail;
    @BindView
    ImageView ivPwd;
    @BindView
    ImageView ivSend;

    /* renamed from: j  reason: collision with root package name */
    private int f21173j;

    /* renamed from: k  reason: collision with root package name */
    RecaptchaHandle f21174k;

    /* renamed from: l  reason: collision with root package name */
    RecaptchaDialogFragment f21175l;
    @BindView
    LinearLayout llCountryHide;
    @BindView
    RelativeLayout rl_send;
    @BindView
    ImageView rvCountry;
    @BindView
    TextView tvCode;
    @BindView
    TextView tvCountry;
    @BindView
    TextView tvPayPwd;
    @BindView
    TextView tvPhone;

    /* loaded from: classes3.dex */
    class a implements com.guochao.faceshow.aaspring.modulars.login.utils.h {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void a(Exception exc) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void b(RecaptchaHandle recaptchaHandle) {
            ChangeLoginOrPayPasswordPhoneActivity.this.f21174k = recaptchaHandle;
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() == 6) {
                if (ChangeLoginOrPayPasswordPhoneActivity.this.f21166c == 0) {
                    ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity = ChangeLoginOrPayPasswordPhoneActivity.this;
                    TextView textView = changeLoginOrPayPasswordPhoneActivity.btnOk;
                    if (changeLoginOrPayPasswordPhoneActivity.etPwd.getText().toString().length() >= 6 && ChangeLoginOrPayPasswordPhoneActivity.this.etPwd.getText().toString().length() <= 20) {
                        r0 = true;
                    }
                    textView.setEnabled(r0);
                    return;
                }
                ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity2 = ChangeLoginOrPayPasswordPhoneActivity.this;
                changeLoginOrPayPasswordPhoneActivity2.btnOk.setEnabled(changeLoginOrPayPasswordPhoneActivity2.etPwd.getText().toString().length() == 6);
                return;
            }
            ChangeLoginOrPayPasswordPhoneActivity.this.btnOk.setEnabled(false);
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
            boolean z10 = true;
            if (ChangeLoginOrPayPasswordPhoneActivity.this.f21166c == 0) {
                ChangeLoginOrPayPasswordPhoneActivity.this.btnOk.setEnabled((editable.length() < 6 || editable.length() > 20 || ChangeLoginOrPayPasswordPhoneActivity.this.etCode.getText().toString().length() != 6) ? false : false);
            } else {
                ChangeLoginOrPayPasswordPhoneActivity.this.btnOk.setEnabled((editable.length() == 6 && ChangeLoginOrPayPasswordPhoneActivity.this.etCode.getText().toString().length() == 6) ? false : false);
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
    public class d implements CountryUtils.NationalFlagAndCodeCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21179a;

        /* loaded from: classes3.dex */
        class a implements CountryUtils.CountryCallBack {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
            public void onResponse(@Nullable List<CountryData> list) {
                if (ChangeLoginOrPayPasswordPhoneActivity.this.tvCountry == null || list == null) {
                    return;
                }
                for (CountryData countryData : list) {
                    if (countryData.getCoding().equalsIgnoreCase(d.this.f21179a)) {
                        ChangeLoginOrPayPasswordPhoneActivity.this.f21169f = countryData.getCountryNum();
                        ChangeLoginOrPayPasswordPhoneActivity.this.f21170g = countryData.getLogo();
                        ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity = ChangeLoginOrPayPasswordPhoneActivity.this;
                        hc.a.h(changeLoginOrPayPasswordPhoneActivity.rvCountry, changeLoginOrPayPasswordPhoneActivity.f21170g, R.mipmap.ic_earth);
                        ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity2 = ChangeLoginOrPayPasswordPhoneActivity.this;
                        changeLoginOrPayPasswordPhoneActivity2.tvCountry.setText(String.format("+%s", changeLoginOrPayPasswordPhoneActivity2.f21169f));
                        return;
                    }
                }
            }
        }

        d(String str) {
            this.f21179a = str;
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.NationalFlagAndCodeCallBack
        public void onResponse(@Nullable CountryData countryData) {
            if (countryData != null) {
                ChangeLoginOrPayPasswordPhoneActivity.this.f21169f = countryData.getCountryNum();
                ChangeLoginOrPayPasswordPhoneActivity.this.f21170g = countryData.getLogo();
                ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity = ChangeLoginOrPayPasswordPhoneActivity.this;
                if (changeLoginOrPayPasswordPhoneActivity.rvCountry != null) {
                    if ("1".equals(changeLoginOrPayPasswordPhoneActivity.f21169f) && !TextUtils.isEmpty(countryData.getCoding())) {
                        if (countryData.getCoding().equalsIgnoreCase("US")) {
                            ChangeLoginOrPayPasswordPhoneActivity.this.rvCountry.setImageResource(R.mipmap.ic_country_america);
                        } else {
                            ChangeLoginOrPayPasswordPhoneActivity.this.rvCountry.setImageResource(R.mipmap.ic_country_canada);
                        }
                    } else {
                        ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity2 = ChangeLoginOrPayPasswordPhoneActivity.this;
                        hc.a.h(changeLoginOrPayPasswordPhoneActivity2.rvCountry, changeLoginOrPayPasswordPhoneActivity2.f21170g, R.mipmap.ic_earth);
                    }
                }
                ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity3 = ChangeLoginOrPayPasswordPhoneActivity.this;
                TextView textView = changeLoginOrPayPasswordPhoneActivity3.tvCountry;
                if (textView != null) {
                    textView.setText(String.format("+%s", changeLoginOrPayPasswordPhoneActivity3.f21169f));
                    return;
                }
                return;
            }
            CountryUtils.getCountryData(ChangeLoginOrPayPasswordPhoneActivity.this, new a());
        }
    }

    /* loaded from: classes3.dex */
    class e implements com.guochao.faceshow.aaspring.modulars.login.utils.g {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void a(Exception exc) {
            ChangeLoginOrPayPasswordPhoneActivity.this.f21175l = new RecaptchaDialogFragment();
            ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity = ChangeLoginOrPayPasswordPhoneActivity.this;
            changeLoginOrPayPasswordPhoneActivity.f21175l.show(changeLoginOrPayPasswordPhoneActivity.getSupportFragmentManager(), "RecaptchaDialogFragment");
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void b(String str) {
            ChangeLoginOrPayPasswordPhoneActivity.this.t0(str, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            if (aVar.a() == 40011) {
                ChangeLoginOrPayPasswordPhoneActivity.this.showToast(R.string.code_has_been_limited);
            } else if (aVar.a() != -1 && aVar.a() != -2) {
                ChangeLoginOrPayPasswordPhoneActivity.this.showToast(aVar.c());
            } else if (ChangeLoginOrPayPasswordPhoneActivity.this.f21167d == 0) {
                ChangeLoginOrPayPasswordPhoneActivity.this.showToast(R.string.phone_bound_other_accounts);
            } else {
                ChangeLoginOrPayPasswordPhoneActivity.this.showToast(R.string.email_bound_other_accounts);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity = ChangeLoginOrPayPasswordPhoneActivity.this;
            GCCoreActivity activity = ChangeLoginOrPayPasswordPhoneActivity.this.getActivity();
            ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity2 = ChangeLoginOrPayPasswordPhoneActivity.this;
            ImageView imageView = changeLoginOrPayPasswordPhoneActivity2.ivSend;
            TextView textView = changeLoginOrPayPasswordPhoneActivity2.tvCode;
            RelativeLayout relativeLayout = changeLoginOrPayPasswordPhoneActivity2.rl_send;
            VerificationCodeHelper.Companion companion = VerificationCodeHelper.Companion;
            changeLoginOrPayPasswordPhoneActivity.f21164a = new u(activity, imageView, textView, relativeLayout, companion.getInstance().getChangeLoginPWD(), 1000L, 4);
            companion.getInstance().setChangeLoginPWD(60000L);
            ChangeLoginOrPayPasswordPhoneActivity.this.f21164a.start();
            if (ChangeLoginOrPayPasswordPhoneActivity.this.f21167d == 1) {
                ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity3 = ChangeLoginOrPayPasswordPhoneActivity.this;
                changeLoginOrPayPasswordPhoneActivity3.showToast(changeLoginOrPayPasswordPhoneActivity3.getString(R.string.Validation_email_sent));
                return;
            }
            ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity4 = ChangeLoginOrPayPasswordPhoneActivity.this;
            changeLoginOrPayPasswordPhoneActivity4.showToast(changeLoginOrPayPasswordPhoneActivity4.getString(R.string.code_has_been_sented));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<String> aVar) {
            ChangeLoginOrPayPasswordPhoneActivity.this.dismissProgressDialog();
            if (aVar.a() == -1) {
                ChangeLoginOrPayPasswordPhoneActivity changeLoginOrPayPasswordPhoneActivity = ChangeLoginOrPayPasswordPhoneActivity.this;
                changeLoginOrPayPasswordPhoneActivity.showToast(changeLoginOrPayPasswordPhoneActivity.getString(R.string.verification_code_error));
            } else if (aVar.a() == 0) {
                if (ChangeLoginOrPayPasswordPhoneActivity.this.f21167d == 0) {
                    ChangeLoginOrPayPasswordPhoneActivity.this.showToast(R.string.phone_bound_other_accounts);
                } else {
                    ChangeLoginOrPayPasswordPhoneActivity.this.showToast(R.string.email_bound_other_accounts);
                }
            } else {
                ChangeLoginOrPayPasswordPhoneActivity.this.showToast(aVar.c());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable String str, @NonNull @NotNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ChangeLoginOrPayPasswordPhoneActivity.this.dismissProgressDialog();
            if (ChangeLoginOrPayPasswordPhoneActivity.this.f21167d == 0) {
                SpUtils.setStr(ChangeLoginOrPayPasswordPhoneActivity.this.getActivity(), "phone", ChangeLoginOrPayPasswordPhoneActivity.this.f21165b);
            } else {
                SpUtils.setStr(ChangeLoginOrPayPasswordPhoneActivity.this.getActivity(), "email", ChangeLoginOrPayPasswordPhoneActivity.this.f21165b);
            }
            if (ChangeLoginOrPayPasswordPhoneActivity.this.f21166c == 0 && ChangeLoginOrPayPasswordPhoneActivity.this.f21168e == 0) {
                SpUtils.setStr(ChangeLoginOrPayPasswordPhoneActivity.this.getActivity(), Contants.USER_PWD, "1");
            }
            if (ChangeLoginOrPayPasswordPhoneActivity.this.f21166c == 0) {
                ToastUtils.showToast(ChangeLoginOrPayPasswordPhoneActivity.this.getActivity(), ChangeLoginOrPayPasswordPhoneActivity.this.getString(R.string.set_login_password_success));
            } else {
                SpUtils.setStr(ChangeLoginOrPayPasswordPhoneActivity.this.getActivity(), Contants.payPassword, "1");
                ToastUtils.showToast(ChangeLoginOrPayPasswordPhoneActivity.this.getActivity(), ChangeLoginOrPayPasswordPhoneActivity.this.getString(R.string.set_pay_password_success));
            }
            if (ChangeLoginOrPayPasswordPhoneActivity.this.f21173j == 1) {
                ChangeLoginOrPayPasswordPhoneActivity.this.finish();
                return;
            }
            Intent intent = new Intent(ChangeLoginOrPayPasswordPhoneActivity.this.getActivity(), AccountSecurityActivity.class);
            intent.setFlags(67108864);
            ChangeLoginOrPayPasswordPhoneActivity.this.startActivity(intent);
        }
    }

    /* loaded from: classes3.dex */
    class h implements HalloweenJSAction.OnCallBack {
        h() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void getReCaptChaToken(Object obj) {
            RecaptchaDialogFragment recaptchaDialogFragment = ChangeLoginOrPayPasswordPhoneActivity.this.f21175l;
            if (recaptchaDialogFragment != null) {
                recaptchaDialogFragment.dismiss();
            }
            String str = (String) obj;
            ChangeLoginOrPayPasswordPhoneActivity.this.debugAlert(str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ChangeLoginOrPayPasswordPhoneActivity.this.t0(str, true);
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

    private void r0() {
        String str = "US";
        if (!TextUtils.isEmpty(this.f21169f) && !TextUtils.isEmpty(this.f21170g) && !TextUtils.isEmpty(this.f21171h)) {
            if (this.rvCountry != null) {
                if ("1".equals(this.f21169f) && !TextUtils.isEmpty(this.f21171h)) {
                    if (this.f21171h.equalsIgnoreCase("US")) {
                        this.rvCountry.setImageResource(R.mipmap.ic_country_america);
                    } else {
                        this.rvCountry.setImageResource(R.mipmap.ic_country_canada);
                    }
                } else {
                    hc.a.h(this.rvCountry, this.f21170g, R.mipmap.ic_earth);
                }
            }
            TextView textView = this.tvCountry;
            if (textView != null) {
                textView.setText(String.format("+%s", this.f21169f));
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            if (!TextUtils.isEmpty(locales.get(0).getCountry())) {
                str = locales.get(0).getCountry();
            }
        } else if (!TextUtils.isEmpty(Locale.getDefault().getCountry())) {
            str = Locale.getDefault().getCountry();
        }
        CountryUtils.getNationalFlagAndCode(this, new d(str));
    }

    private void s0() {
        showProgressDialog("");
        PostRequest post = post("tokens/user/info/changeUserBindInfo");
        post.B("sendType", this.f21167d == 0 ? 0 : 1).B("type", this.f21168e != 0 ? 1 : 0).D(this.f21167d == 1 ? "email" : "mobile", StringUtils.convertNumberToNormalNumber(this.f21165b)).D("code", StringUtils.convertNumberToNormalNumber(this.etCode.getText().toString().trim())).D("deviceId", SystemUtil.getDeviceId());
        if (this.f21166c == 0) {
            post.D("pwd", this.etPwd.getText().toString().trim());
        } else {
            post.D(Contants.payPassword, this.etPwd.getText().toString().trim());
        }
        post.M(new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0(String str, boolean z10) {
        PostRequest Q = new PostRequest().O(this).Q("tokens/user/info/checkIfBindAndSend");
        Q.B("sendType", this.f21167d == 0 ? 0 : 1);
        Q.B("type", this.f21168e != 0 ? 1 : 0);
        Q.D(this.f21167d == 1 ? "email" : "mobile", this.f21165b);
        Q.D("areaCode", this.f21169f);
        if (!TextUtils.isEmpty(str)) {
            Q.D("recaptchaToken", str);
            if (z10) {
                Q.D("beFrom", "webs");
            }
        }
        Q.M(new f());
    }

    public static void u0(Context context, int i9, int i10, int i11, boolean z10, String str, int i12, String str2, String str3, String str4) {
        Intent intent = new Intent(context, ChangeLoginOrPayPasswordPhoneActivity.class);
        intent.putExtra("mode", i9);
        intent.putExtra("type", i10);
        intent.putExtra(ServerProtocol.DIALOG_PARAM_STATE, i11);
        intent.putExtra("isBind", z10);
        intent.putExtra("account", str);
        intent.putExtra(ShareConstants.FEED_SOURCE_PARAM, i12);
        intent.putExtra("countryNum", str2);
        intent.putExtra("logo", str3);
        intent.putExtra(Contants.CURRENT_COUNTRY_CODING, str4);
        context.startActivity(intent);
    }

    public static void v0(Context context, int i9, int i10, int i11, boolean z10, String str, String str2, String str3, String str4) {
        Intent intent = new Intent(context, ChangeLoginOrPayPasswordPhoneActivity.class);
        intent.putExtra("mode", i9);
        intent.putExtra("type", i10);
        intent.putExtra(ServerProtocol.DIALOG_PARAM_STATE, i11);
        intent.putExtra("isBind", z10);
        intent.putExtra("account", str);
        intent.putExtra("countryNum", str2);
        intent.putExtra("logo", str3);
        intent.putExtra(Contants.CURRENT_COUNTRY_CODING, str4);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_change_login_password_phone;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f21166c = getIntent().getIntExtra("mode", 0);
        this.f21167d = getIntent().getIntExtra("type", 0);
        this.f21168e = getIntent().getIntExtra(ServerProtocol.DIALOG_PARAM_STATE, 0);
        this.f21172i = getIntent().getBooleanExtra("isBind", false);
        this.f21165b = getIntent().getStringExtra("account");
        this.f21173j = getIntent().getIntExtra(ShareConstants.FEED_SOURCE_PARAM, 0);
        this.f21169f = getIntent().getStringExtra("countryNum");
        this.f21170g = getIntent().getStringExtra("logo");
        this.f21171h = getIntent().getStringExtra(Contants.CURRENT_COUNTRY_CODING);
        EditTextUtils.disableEditTextLongClick(this.etPwd);
        if (this.f21172i) {
            this.tvPhone.setText(this.f21165b);
        } else if (this.f21166c == 0 && this.f21168e == 0) {
            this.tvPhone.setText(this.f21165b);
        } else {
            this.tvPhone.setText(StringUtils.setEncryptionMobile(this.f21165b));
        }
        if (this.f21167d == 0) {
            i.d().e(this, new a());
            this.llCountryHide.setVisibility(0);
            this.ivEmail.setVisibility(8);
            r0();
        } else {
            this.llCountryHide.setVisibility(8);
            this.ivEmail.setVisibility(0);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.btnOk.getLayoutParams();
        if (this.f21166c == 0) {
            setTitle(getString(R.string.set_login_password));
            this.etPwd.setHint(getString(R.string.set_login_password));
            this.etPwd.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
            this.etPwd.setInputType(129);
            this.tvPayPwd.setVisibility(8);
            marginLayoutParams.topMargin = DensityUtil.dp2px(60.0f);
            this.btnOk.setLayoutParams(marginLayoutParams);
        } else {
            setTitle(getString(R.string.set_setpayment_password));
            this.etPwd.setHint(getString(R.string.set_setpayment_password));
            this.etPwd.setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
            this.etPwd.setInputType(18);
            this.tvPayPwd.setVisibility(0);
            marginLayoutParams.topMargin = DensityUtil.dp2px(25.0f);
            this.btnOk.setLayoutParams(marginLayoutParams);
        }
        this.etCode.addTextChangedListener(new b());
        this.etPwd.addTextChangedListener(new c());
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
        this.f21169f = intent.getStringExtra("country_num");
        String stringExtra = intent.getStringExtra("logo");
        this.f21170g = stringExtra;
        hc.a.h(this.rvCountry, stringExtra, R.mipmap.ic_earth);
        this.tvCountry.setText(String.format("+%s", this.f21169f));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onBindWebView(WebView webView) {
        RecaptchaDialogFragment recaptchaDialogFragment = this.f21175l;
        if (recaptchaDialogFragment != null) {
            ((HalloweenJSAction) recaptchaDialogFragment.getJSAction()).setOnCallBack(new h());
        }
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_ok /* 2131362195 */:
                if (this.etPwd.getText().toString().trim().length() > 20) {
                    showToast(getString(R.string.Password_support_6_to_20_bits));
                    return;
                } else {
                    s0();
                    return;
                }
            case R.id.iv_pwd /* 2131363274 */:
                if (this.etPwd.getInputType() == 129) {
                    this.ivPwd.setImageResource(R.mipmap.icon_account_password_show);
                    this.etPwd.setInputType(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
                } else {
                    this.ivPwd.setImageResource(R.mipmap.icon_account_password_hiding);
                    this.etPwd.setInputType(129);
                }
                EditText editText = this.etPwd;
                editText.setSelection(editText.getText().toString().length());
                return;
            case R.id.ll_country_hide /* 2131363528 */:
                AreaSelectActivity.start(getActivity(), ChangeLoginOrPayPasswordPhoneActivity.class.getSimpleName(), 99);
                overridePendingTransition(R.anim.fragment_enter, R.anim.do_nothing);
                return;
            case R.id.rl_send /* 2131364298 */:
                if (this.f21167d == 0) {
                    i.d().c(this, this.f21174k, new e());
                    return;
                } else {
                    t0("", false);
                    return;
                }
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f21164a = null;
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
}

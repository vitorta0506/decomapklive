package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.login.bean.LoginOrRegisterBean;
import com.guochao.faceshow.aaspring.modulars.login.utils.j;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class LoginOrRegisterActivity extends BaseLoginActivity {
    @BindView
    LoginAnimationView animationView;
    @BindView
    EditText et_phone;

    /* renamed from: i  reason: collision with root package name */
    private String f20333i = "";

    /* renamed from: j  reason: collision with root package name */
    private String f20334j = "";

    /* renamed from: k  reason: collision with root package name */
    private String f20335k = "";

    /* renamed from: l  reason: collision with root package name */
    private String f20336l = "";
    @BindView
    LinearLayout ll_country_hide;
    @BindView
    TextView next;
    @BindView
    ImageView rv_country;
    @BindView
    TextView tv_country;

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
            if (LoginOrRegisterActivity.this.et_phone.getText().toString().trim().length() >= 6) {
                LoginOrRegisterActivity.this.next.setEnabled(true);
            } else {
                LoginOrRegisterActivity.this.next.setEnabled(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements CountryUtils.NationalFlagAndCodeCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20338a;

        /* loaded from: classes3.dex */
        class a implements CountryUtils.CountryCallBack {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
            public void onResponse(@Nullable List<CountryData> list) {
                if (list == null) {
                    return;
                }
                for (CountryData countryData : list) {
                    if (countryData.getCoding().equalsIgnoreCase(b.this.f20338a)) {
                        LoginOrRegisterActivity.this.f20335k = countryData.getCountryNum();
                        LoginOrRegisterActivity.this.f20334j = countryData.getLogo();
                        LoginOrRegisterActivity loginOrRegisterActivity = LoginOrRegisterActivity.this;
                        ImageView imageView = loginOrRegisterActivity.rv_country;
                        if (imageView != null) {
                            hc.a.h(imageView, loginOrRegisterActivity.f20334j, R.mipmap.ic_earth);
                        }
                        TextView textView = LoginOrRegisterActivity.this.tv_country;
                        if (textView != null) {
                            textView.setText("+" + LoginOrRegisterActivity.this.f20335k);
                            return;
                        }
                        return;
                    }
                }
            }
        }

        b(String str) {
            this.f20338a = str;
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.NationalFlagAndCodeCallBack
        public void onResponse(@Nullable CountryData countryData) {
            if (countryData != null) {
                LoginOrRegisterActivity.this.f20335k = countryData.getCountryNum();
                LoginOrRegisterActivity.this.f20334j = countryData.getLogo();
                if (LoginOrRegisterActivity.this.rv_country != null && !TextUtils.isEmpty(countryData.getCoding())) {
                    if ("1".equals(LoginOrRegisterActivity.this.f20335k)) {
                        if (countryData.getCoding().equalsIgnoreCase("US")) {
                            LoginOrRegisterActivity.this.rv_country.setImageResource(R.mipmap.ic_country_america);
                        } else {
                            LoginOrRegisterActivity.this.rv_country.setImageResource(R.mipmap.ic_country_canada);
                        }
                    } else {
                        LoginOrRegisterActivity loginOrRegisterActivity = LoginOrRegisterActivity.this;
                        hc.a.h(loginOrRegisterActivity.rv_country, loginOrRegisterActivity.f20334j, R.mipmap.ic_earth);
                    }
                }
                TextView textView = LoginOrRegisterActivity.this.tv_country;
                if (textView != null) {
                    textView.setText("+" + LoginOrRegisterActivity.this.f20335k);
                    return;
                }
                return;
            }
            CountryUtils.getCountryData(LoginOrRegisterActivity.this, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<LoginOrRegisterBean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(LoginOrRegisterBean loginOrRegisterBean, @NonNull FaceCastBaseResponse<LoginOrRegisterBean> faceCastBaseResponse) {
            LoginOrRegisterActivity.this.dismissProgressDialog();
            int existUser = loginOrRegisterBean.getExistUser();
            Intent intent = new Intent();
            if (existUser == 1) {
                intent = new Intent(LoginOrRegisterActivity.this.getActivity(), LoginActivity.class);
                intent.putExtra("LoginType", 2);
                if (LoginOrRegisterActivity.this.f20182d != 3) {
                    Bundle bundle = new Bundle();
                    bundle.putString(EventTrackingUtils.CONTENT_TYPE, "登录");
                    EventTrackingUtils.getInstance().track("mail_port_result_2737", bundle);
                }
            } else if (existUser == 0) {
                LoginOrRegisterActivity loginOrRegisterActivity = LoginOrRegisterActivity.this;
                if (loginOrRegisterActivity.f20182d != 3 && PhoneUtils.checkInterceptLoginType((BaseActivity) loginOrRegisterActivity.getActivity())) {
                    return;
                }
                intent = new Intent(LoginOrRegisterActivity.this.getActivity(), RegisteredActivity.class);
                Bundle bundle2 = new Bundle();
                bundle2.putString(EventTrackingUtils.CONTENT_TYPE, "注册");
                EventTrackingUtils.getInstance().track("mail_port_result_2737", bundle2);
            }
            j.e().z(Constants.ThirdPartyLogin.EMAIL);
            LoginOrRegisterActivity.this.startActivity(intent);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            LoginOrRegisterActivity loginOrRegisterActivity = LoginOrRegisterActivity.this;
            loginOrRegisterActivity.f20180b.removeCallbacks(loginOrRegisterActivity.f20179a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<LoginOrRegisterBean> aVar) {
            LoginOrRegisterActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<LoginOrRegisterBean> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(LoginOrRegisterBean loginOrRegisterBean, @NonNull FaceCastBaseResponse<LoginOrRegisterBean> faceCastBaseResponse) {
            LoginOrRegisterActivity.this.dismissProgressDialog();
            int existUser = loginOrRegisterBean.getExistUser();
            Intent intent = new Intent();
            if (existUser == 1) {
                intent = new Intent(LoginOrRegisterActivity.this.getActivity(), LoginActivity.class);
                intent.putExtra("LoginType", 3);
                Bundle bundle = new Bundle();
                bundle.putString(EventTrackingUtils.CONTENT_TYPE, "登录");
                EventTrackingUtils.getInstance().track("phone_port_result_2737", bundle);
            } else if (existUser == 0) {
                intent = new Intent(LoginOrRegisterActivity.this.getActivity(), RegisteredActivity.class);
                Bundle bundle2 = new Bundle();
                bundle2.putString(EventTrackingUtils.CONTENT_TYPE, "注册");
                EventTrackingUtils.getInstance().track("phone_port_result_2737", bundle2);
            }
            j.e().z(Constants.ThirdPartyLogin.PHONE);
            LoginOrRegisterActivity.this.startActivity(intent);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            LoginOrRegisterActivity loginOrRegisterActivity = LoginOrRegisterActivity.this;
            loginOrRegisterActivity.f20180b.removeCallbacks(loginOrRegisterActivity.f20179a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<LoginOrRegisterBean> aVar) {
            LoginOrRegisterActivity.this.dismissProgressDialog();
        }
    }

    private void q0(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("email", StringUtils.convertNumberToNormalNumber(str));
        showProgressDialog("");
        this.f20180b.postDelayed(this.f20179a, 15000L);
        getHttpClient().b(getActivity(), "api/user/verification/exist/email", hashMap, new c());
    }

    private void r0(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("phone", StringUtils.convertNumberToNormalNumber(str));
        showProgressDialog("");
        this.f20180b.postDelayed(this.f20179a, 15000L);
        getHttpClient().b(getActivity(), "api/user/verification/exist/phone", hashMap, new d());
    }

    private void s0() {
        setTitle(getString(R.string.Mailbox_login_or_registration));
        if (!EmptyUtils.isEmpty(this.f20336l)) {
            this.et_phone.setText(this.f20336l);
            this.et_phone.setSelection(this.f20336l.length());
        }
        this.ll_country_hide.setVisibility(8);
        this.et_phone.setHint(getResources().getString(R.string.Input_mailbox));
    }

    private void t0() {
        setTitle(getString(R.string.Mobile_login_or_registration));
        this.et_phone.setInputType(2);
        if (BaseConfig.isChinese()) {
            this.f20335k = "86";
            TextView textView = this.tv_country;
            textView.setText("+" + this.f20335k);
            this.rv_country.setImageResource(R.mipmap.icon_flag);
        } else if (TextUtils.isEmpty(this.f20333i)) {
            String str = "US";
            if (Build.VERSION.SDK_INT >= 24) {
                LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
                if (!TextUtils.isEmpty(locales.get(0).getCountry())) {
                    str = locales.get(0).getCountry();
                }
            } else if (!TextUtils.isEmpty(Locale.getDefault().getCountry())) {
                str = Locale.getDefault().getCountry();
            }
            CountryUtils.getNationalFlagAndCode(this, new b(str));
        } else {
            this.et_phone.setText(this.f20333i);
            this.et_phone.setSelection(this.f20333i.length());
            if (!EmptyUtils.isEmpty(this.f20334j)) {
                hc.a.h(this.rv_country, this.f20334j, R.mipmap.ic_earth);
            }
            if (EmptyUtils.isEmpty(this.f20335k)) {
                return;
            }
            TextView textView2 = this.tv_country;
            textView2.setText("+" + this.f20335k);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_phone_login_registered;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        int i9 = this.f20182d;
        if (i9 == 2) {
            this.f20336l = SpUtils.getStr(getActivity(), "last_email");
        } else if (i9 == 3) {
            this.f20333i = SpUtils.getStr(getActivity(), "last_phone");
            this.f20334j = SpUtils.getStr(getActivity(), "logo");
            this.f20335k = SpUtils.getStr(getActivity(), "country_num");
        }
        this.et_phone.addTextChangedListener(new a());
        if (this.f20182d == 2) {
            s0();
        } else {
            t0();
        }
        getLifecycle().addObserver(this.animationView);
        this.ll_country_hide.setBackgroundResource(q7.a.e().j() ? R.drawable.shape_login_country_code_rtl : R.drawable.shape_login_country_code);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (intent == null || i9 != 99) {
            return;
        }
        this.f20335k = intent.getStringExtra("country_num");
        String stringExtra = intent.getStringExtra("logo");
        this.f20334j = stringExtra;
        hc.a.h(this.rv_country, stringExtra, R.mipmap.ic_earth);
        this.tv_country.setText(String.format("+%s", this.f20335k));
    }

    @OnClick
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.ll_country_hide) {
            if (BaseConfig.isChinese()) {
                return;
            }
            AreaSelectActivity.start(getActivity(), LoginOrRegisterActivity.class.getSimpleName(), 99);
            overridePendingTransition(R.anim.fragment_enter, R.anim.do_nothing);
        } else if (id2 != R.id.next) {
        } else {
            String trim = this.et_phone.getText().toString().trim();
            this.f20333i = trim;
            if (this.f20182d == 2) {
                if (!trim.contains("@")) {
                    showToast(getString(R.string.Email_mistaken));
                    return;
                }
                SpUtils.setStr(getActivity(), "last_email", this.f20333i);
                j.e().t(this.f20333i);
                j.e().s(this.f20335k);
                q0(this.f20333i);
                EventTrackingUtils.getInstance().track("mail_next_mail_page_click_2737");
            } else if ("+00".equals(this.tv_country.getText().toString())) {
                showToast("Please choose country");
            } else {
                EventTrackingUtils.getInstance().track("phone_next_phone_page_click_2737");
                SpUtils.setStr(getActivity(), "last_phone", this.f20333i);
                SpUtils.setStr(getActivity(), "logo", this.f20334j);
                SpUtils.setStr(getActivity(), "country_num", this.f20335k);
                j.e().w(this.f20333i);
                j.e().v(this.f20334j);
                j.e().s(this.f20335k);
                r0(this.f20333i);
            }
        }
    }
}

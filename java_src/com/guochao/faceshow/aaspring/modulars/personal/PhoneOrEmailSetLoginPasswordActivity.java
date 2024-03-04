package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.login.activity.AreaSelectActivity;
import com.guochao.faceshow.aaspring.modulars.user.bind.BindPhoneV2Activity;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class PhoneOrEmailSetLoginPasswordActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f21236a;

    /* renamed from: b  reason: collision with root package name */
    private String f21237b;
    @BindView
    TextView btnNext;

    /* renamed from: c  reason: collision with root package name */
    private String f21238c;

    /* renamed from: d  reason: collision with root package name */
    private int f21239d;
    @BindView
    EditText etEmail;
    @BindView
    EditText etPhone;
    @BindView
    LinearLayout llEmail;
    @BindView
    LinearLayout llPhone;
    @BindView
    ImageView rvCountry;
    @BindView
    TextView tvCountry;
    @BindView
    TextView tvUseEmailOrPhone;
    @BindView
    TextView tvUseEmailOrPhoneTip;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() >= 6) {
                PhoneOrEmailSetLoginPasswordActivity.this.btnNext.setEnabled(true);
            } else {
                PhoneOrEmailSetLoginPasswordActivity.this.btnNext.setEnabled(false);
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
            if (PhoneOrEmailSetLoginPasswordActivity.this.etEmail.getText().toString().contains("@")) {
                PhoneOrEmailSetLoginPasswordActivity.this.btnNext.setEnabled(true);
            } else {
                PhoneOrEmailSetLoginPasswordActivity.this.btnNext.setEnabled(false);
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
    public class c implements CountryUtils.NationalFlagAndCodeCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21242a;

        /* loaded from: classes3.dex */
        class a implements CountryUtils.CountryCallBack {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
            public void onResponse(@Nullable List<CountryData> list) {
                if (PhoneOrEmailSetLoginPasswordActivity.this.tvCountry == null || list == null) {
                    return;
                }
                for (CountryData countryData : list) {
                    if (countryData.getCoding().equalsIgnoreCase(c.this.f21242a)) {
                        PhoneOrEmailSetLoginPasswordActivity.this.f21236a = countryData.getCountryNum();
                        PhoneOrEmailSetLoginPasswordActivity.this.f21237b = countryData.getLogo();
                        PhoneOrEmailSetLoginPasswordActivity.this.f21238c = countryData.getCoding();
                        PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity = PhoneOrEmailSetLoginPasswordActivity.this;
                        hc.a.h(phoneOrEmailSetLoginPasswordActivity.rvCountry, phoneOrEmailSetLoginPasswordActivity.f21237b, R.mipmap.ic_earth);
                        PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity2 = PhoneOrEmailSetLoginPasswordActivity.this;
                        phoneOrEmailSetLoginPasswordActivity2.tvCountry.setText(String.format("+%s", phoneOrEmailSetLoginPasswordActivity2.f21236a));
                        return;
                    }
                }
            }
        }

        c(String str) {
            this.f21242a = str;
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.NationalFlagAndCodeCallBack
        public void onResponse(@Nullable CountryData countryData) {
            if (countryData != null) {
                PhoneOrEmailSetLoginPasswordActivity.this.f21236a = countryData.getCountryNum();
                PhoneOrEmailSetLoginPasswordActivity.this.f21237b = countryData.getLogo();
                PhoneOrEmailSetLoginPasswordActivity.this.f21238c = countryData.getCoding();
                PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity = PhoneOrEmailSetLoginPasswordActivity.this;
                if (phoneOrEmailSetLoginPasswordActivity.rvCountry != null) {
                    if ("1".equals(phoneOrEmailSetLoginPasswordActivity.f21236a) && !TextUtils.isEmpty(countryData.getCoding())) {
                        if (countryData.getCoding().equalsIgnoreCase("US")) {
                            PhoneOrEmailSetLoginPasswordActivity.this.rvCountry.setImageResource(R.mipmap.ic_country_america);
                        } else {
                            PhoneOrEmailSetLoginPasswordActivity.this.rvCountry.setImageResource(R.mipmap.ic_country_canada);
                        }
                    } else {
                        PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity2 = PhoneOrEmailSetLoginPasswordActivity.this;
                        hc.a.h(phoneOrEmailSetLoginPasswordActivity2.rvCountry, phoneOrEmailSetLoginPasswordActivity2.f21237b, R.mipmap.ic_earth);
                    }
                }
                PhoneOrEmailSetLoginPasswordActivity phoneOrEmailSetLoginPasswordActivity3 = PhoneOrEmailSetLoginPasswordActivity.this;
                TextView textView = phoneOrEmailSetLoginPasswordActivity3.tvCountry;
                if (textView != null) {
                    textView.setText(String.format("+%s", phoneOrEmailSetLoginPasswordActivity3.f21236a));
                    return;
                }
                return;
            }
            CountryUtils.getCountryData(PhoneOrEmailSetLoginPasswordActivity.this, new a());
        }
    }

    private void k0() {
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

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_phone_set_login_password;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(getString(R.string.set_login_password));
        k0();
        this.etPhone.addTextChangedListener(new a());
        this.etEmail.addTextChangedListener(new b());
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
        this.f21236a = intent.getStringExtra("country_num");
        this.f21237b = intent.getStringExtra("logo");
        this.f21238c = intent.getStringExtra(Contants.CURRENT_COUNTRY_CODING);
        hc.a.h(this.rvCountry, this.f21237b, R.mipmap.ic_earth);
        this.tvCountry.setText(String.format("+%s", this.f21236a));
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.btn_next /* 2131362194 */:
                if (this.f21239d == 0) {
                    ChangeLoginOrPayPasswordPhoneActivity.v0(getActivity(), 0, this.f21239d, 0, false, this.etPhone.getText().toString(), this.f21236a, this.f21237b, this.f21238c);
                    return;
                } else {
                    ChangeLoginOrPayPasswordPhoneActivity.v0(getActivity(), 0, this.f21239d, 0, false, this.etEmail.getText().toString(), null, null, null);
                    return;
                }
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
            case R.id.tv_use_email_or_phone /* 2131365145 */:
                if (this.f21239d == 0) {
                    this.llEmail.setVisibility(0);
                    this.llPhone.setVisibility(8);
                    this.etPhone.setText("");
                    this.tvUseEmailOrPhoneTip.setText(getString(R.string.set_unbind_email));
                    this.tvUseEmailOrPhone.setText(getString(R.string.bind_use_phone));
                    this.f21239d = 1;
                    return;
                }
                this.llEmail.setVisibility(8);
                this.llPhone.setVisibility(0);
                this.etEmail.setText("");
                this.tvUseEmailOrPhoneTip.setText(getString(R.string.set_unbind_phone));
                this.tvUseEmailOrPhone.setText(getString(R.string.bind_use_email));
                this.f21239d = 0;
                return;
            default:
                return;
        }
    }
}

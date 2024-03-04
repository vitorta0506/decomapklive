package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.share.internal.ShareConstants;
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
public class BindPhoneToSetPayPasswordActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f21128a;

    /* renamed from: b  reason: collision with root package name */
    private String f21129b;
    @BindView
    TextView btnNext;

    /* renamed from: c  reason: collision with root package name */
    private String f21130c;

    /* renamed from: d  reason: collision with root package name */
    private int f21131d;
    @BindView
    EditText etPhone;
    @BindView
    ImageView rvCountry;
    @BindView
    TextView tvCountry;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() >= 6) {
                BindPhoneToSetPayPasswordActivity.this.btnNext.setEnabled(true);
            } else {
                BindPhoneToSetPayPasswordActivity.this.btnNext.setEnabled(false);
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
    public class b implements CountryUtils.NationalFlagAndCodeCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21133a;

        /* loaded from: classes3.dex */
        class a implements CountryUtils.CountryCallBack {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
            public void onResponse(@Nullable List<CountryData> list) {
                if (BindPhoneToSetPayPasswordActivity.this.tvCountry == null || list == null) {
                    return;
                }
                for (CountryData countryData : list) {
                    if (countryData.getCoding().equalsIgnoreCase(b.this.f21133a)) {
                        BindPhoneToSetPayPasswordActivity.this.f21128a = countryData.getCountryNum();
                        BindPhoneToSetPayPasswordActivity.this.f21130c = countryData.getLogo();
                        BindPhoneToSetPayPasswordActivity.this.f21129b = countryData.getCoding();
                        BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity = BindPhoneToSetPayPasswordActivity.this;
                        hc.a.h(bindPhoneToSetPayPasswordActivity.rvCountry, bindPhoneToSetPayPasswordActivity.f21130c, R.mipmap.ic_earth);
                        BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity2 = BindPhoneToSetPayPasswordActivity.this;
                        bindPhoneToSetPayPasswordActivity2.tvCountry.setText(String.format("+%s", bindPhoneToSetPayPasswordActivity2.f21128a));
                        return;
                    }
                }
            }
        }

        b(String str) {
            this.f21133a = str;
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.NationalFlagAndCodeCallBack
        public void onResponse(@Nullable CountryData countryData) {
            if (countryData != null) {
                BindPhoneToSetPayPasswordActivity.this.f21128a = countryData.getCountryNum();
                BindPhoneToSetPayPasswordActivity.this.f21130c = countryData.getLogo();
                BindPhoneToSetPayPasswordActivity.this.f21129b = countryData.getCoding();
                if (BindPhoneToSetPayPasswordActivity.this.rvCountry != null && !TextUtils.isEmpty(countryData.getCoding())) {
                    if ("1".equals(BindPhoneToSetPayPasswordActivity.this.f21128a)) {
                        if (countryData.getCoding().equalsIgnoreCase("US")) {
                            BindPhoneToSetPayPasswordActivity.this.rvCountry.setImageResource(R.mipmap.ic_country_america);
                        } else {
                            BindPhoneToSetPayPasswordActivity.this.rvCountry.setImageResource(R.mipmap.ic_country_canada);
                        }
                    } else {
                        BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity = BindPhoneToSetPayPasswordActivity.this;
                        hc.a.h(bindPhoneToSetPayPasswordActivity.rvCountry, bindPhoneToSetPayPasswordActivity.f21130c, R.mipmap.ic_earth);
                    }
                }
                BindPhoneToSetPayPasswordActivity bindPhoneToSetPayPasswordActivity2 = BindPhoneToSetPayPasswordActivity.this;
                TextView textView = bindPhoneToSetPayPasswordActivity2.tvCountry;
                if (textView != null) {
                    textView.setText(String.format("+%s", bindPhoneToSetPayPasswordActivity2.f21128a));
                    return;
                }
                return;
            }
            CountryUtils.getCountryData(BindPhoneToSetPayPasswordActivity.this, new a());
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
        CountryUtils.getNationalFlagAndCode(this, new b(str));
    }

    public static void l0(Context context, int i9) {
        Intent intent = new Intent(context, BindPhoneToSetPayPasswordActivity.class);
        intent.putExtra(ShareConstants.FEED_SOURCE_PARAM, i9);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_bind_phone_to_pay_pwd;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(getString(R.string.set_setpayment_password));
        this.f21131d = getIntent().getIntExtra(ShareConstants.FEED_SOURCE_PARAM, 0);
        k0();
        this.etPhone.addTextChangedListener(new a());
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
        this.f21128a = intent.getStringExtra("country_num");
        this.f21130c = intent.getStringExtra("logo");
        this.f21129b = intent.getStringExtra(Contants.CURRENT_COUNTRY_CODING);
        hc.a.h(this.rvCountry, this.f21130c, R.mipmap.ic_earth);
        this.tvCountry.setText(String.format("+%s", this.f21128a));
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.btn_next /* 2131362194 */:
                if (this.f21131d == 1) {
                    ChangeLoginOrPayPasswordPhoneActivity.u0(getActivity(), 1, 0, 0, true, this.etPhone.getText().toString(), this.f21131d, this.f21128a, this.f21130c, this.f21129b);
                    finish();
                    return;
                }
                ChangeLoginOrPayPasswordPhoneActivity.v0(getActivity(), 1, 0, 0, true, this.etPhone.getText().toString(), this.f21128a, this.f21130c, this.f21129b);
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
            default:
                return;
        }
    }
}

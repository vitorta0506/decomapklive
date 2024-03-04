package com.guochao.faceshow.mine.view;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.WithdrawalChaChe;
import com.guochao.faceshow.aaspring.modulars.login.activity.AreaSelectActivity;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.mine.model.BankBean;
import com.guochao.faceshow.mine.model.WithdrawalResultBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.views.a;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.f;
import com.guochao.faceshow.views.n;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.List;
import java.util.Locale;
@Deprecated
/* loaded from: classes4.dex */
public class WithdrawalActivity extends BaseActivity {
    @BindView
    View btnWithdrawal;

    /* renamed from: d  reason: collision with root package name */
    private int f25924d;
    @BindView
    EditText enterPayName;
    @BindView
    EditText etAccount;
    @BindView
    EditText etAccountHolder;
    @BindView
    EditText etBankAddress;
    @BindView
    EditText etBankCardNo;

    /* renamed from: f  reason: collision with root package name */
    private WithdrawalChaChe f25926f;
    @BindView
    LinearLayout flRegion;

    /* renamed from: g  reason: collision with root package name */
    BankBean f25927g;
    @BindView
    ImageView ivArrowRight;
    @BindView
    RelativeLayout rlBankNameLayout;
    @BindView
    TextView tvAmount;
    @BindView
    TextView tvBankName;
    @BindView
    TextView tvRegion;
    @BindView
    TextView tvSelectAccount;
    @BindView
    TextView tvSymbol;

    /* renamed from: a  reason: collision with root package name */
    boolean f25921a = false;

    /* renamed from: b  reason: collision with root package name */
    String f25922b = "";

    /* renamed from: c  reason: collision with root package name */
    String f25923c = "";

    /* renamed from: e  reason: collision with root package name */
    int f25925e = 0;

    /* renamed from: h  reason: collision with root package name */
    int f25928h = 0;

    /* renamed from: i  reason: collision with root package name */
    private boolean f25929i = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WithdrawalActivity.this.startActivityForResult(BankListActivity.class, 1001);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {

        /* loaded from: classes4.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    WithdrawalActivity.this.startActivity(PaymentPasswordSettingActivity.class);
                    dialog.dismiss();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.mine.view.WithdrawalActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class C0256b implements n.b {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.guochao.faceshow.mine.view.WithdrawalActivity$b$b$a */
            /* loaded from: classes4.dex */
            public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: com.guochao.faceshow.mine.view.WithdrawalActivity$b$b$a$a  reason: collision with other inner class name */
                /* loaded from: classes4.dex */
                public class C0257a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
                    C0257a() {
                    }

                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onFailure(@NonNull g7.a<String> aVar) {
                        WithdrawalActivity.this.dismissProgressDialog();
                        WithdrawalActivity withdrawalActivity = WithdrawalActivity.this;
                        ToastUtils.showToast(withdrawalActivity, withdrawalActivity.getResources().getString(R.string.withdrawal_faile));
                    }

                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                        WithdrawalActivity.this.y0(str);
                    }
                }

                a() {
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<String> aVar) {
                    WithdrawalActivity.this.showErrorToast(aVar);
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                    WithdrawalActivity.this.post("tokens/user/trade/withdrawApplication").v(Contants.USER_ID, SpUtils.getStr(WithdrawalActivity.this, Contants.USER_ID)).v("withdraw_id", String.valueOf(WithdrawalActivity.this.f25928h)).v("pay_type", String.valueOf(WithdrawalActivity.this.f25925e)).v("realName", WithdrawalActivity.this.enterPayName.getText().toString()).v("account", WithdrawalActivity.this.etAccount.getText().toString().trim()).M(new C0257a());
                }
            }

            C0256b() {
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onClose(Dialog dialog, boolean z10) {
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onConfirm(Dialog dialog, boolean z10, String str) {
                WithdrawalActivity.this.showProgressDialog("");
                WithdrawalActivity.this.post("tokens/user/info/showOldPassword").D(Contants.USER_ID, SpUtils.getStr(WithdrawalActivity.this, Contants.USER_ID)).D("pasword", str).M(new a());
                dialog.dismiss();
            }
        }

        /* loaded from: classes4.dex */
        class c implements e.a {
            c() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    WithdrawalActivity.this.startActivity(PaymentPasswordSettingActivity.class);
                    dialog.dismiss();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class d implements n.b {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes4.dex */
            public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: com.guochao.faceshow.mine.view.WithdrawalActivity$b$d$a$a  reason: collision with other inner class name */
                /* loaded from: classes4.dex */
                public class C0258a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
                    C0258a() {
                    }

                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onFailure(@NonNull g7.a<String> aVar) {
                        WithdrawalActivity.this.dismissProgressDialog();
                        WithdrawalActivity withdrawalActivity = WithdrawalActivity.this;
                        ToastUtils.showToast(withdrawalActivity, withdrawalActivity.getResources().getString(R.string.withdrawal_faile));
                    }

                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                        WithdrawalActivity.this.y0(str);
                    }
                }

                a() {
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<String> aVar) {
                    WithdrawalActivity.this.showErrorToast(aVar);
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                    WithdrawalActivity.this.post("tokens/user/trade/withdrawApplication").v(Contants.USER_ID, SpUtils.getStr(WithdrawalActivity.this, Contants.USER_ID)).v("withdraw_id", String.valueOf(WithdrawalActivity.this.f25928h)).v("pay_type", String.valueOf(WithdrawalActivity.this.f25925e)).v("account", WithdrawalActivity.this.etBankCardNo.getText().toString().trim()).v("payee", WithdrawalActivity.this.etAccountHolder.getText().toString().trim()).v("bank_id", String.valueOf(WithdrawalActivity.this.f25927g.getBank_id())).v("banck_address", WithdrawalActivity.this.etBankAddress.getText().toString().trim()).M(new C0258a());
                }
            }

            d() {
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onClose(Dialog dialog, boolean z10) {
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onConfirm(Dialog dialog, boolean z10, String str) {
                WithdrawalActivity.this.showProgressDialog("");
                WithdrawalActivity.this.post("tokens/user/info/showOldPassword").D(Contants.USER_ID, SpUtils.getStr(WithdrawalActivity.this, Contants.USER_ID)).D("pasword", str).M(new a());
                dialog.dismiss();
            }
        }

        /* loaded from: classes4.dex */
        class e implements e.a {
            e() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    WithdrawalActivity.this.startActivity(PaymentPasswordSettingActivity.class);
                    dialog.dismiss();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class f implements n.b {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes4.dex */
            public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: com.guochao.faceshow.mine.view.WithdrawalActivity$b$f$a$a  reason: collision with other inner class name */
                /* loaded from: classes4.dex */
                public class C0259a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
                    C0259a() {
                    }

                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onFailure(@NonNull g7.a<String> aVar) {
                        WithdrawalActivity.this.dismissProgressDialog();
                        WithdrawalActivity withdrawalActivity = WithdrawalActivity.this;
                        ToastUtils.showToast(withdrawalActivity, withdrawalActivity.getResources().getString(R.string.withdrawal_faile));
                    }

                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                        WithdrawalActivity.this.y0(str);
                    }
                }

                a() {
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<String> aVar) {
                    WithdrawalActivity.this.showErrorToast(aVar);
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                    WithdrawalActivity.this.post("tokens/user/trade/withdrawApplication").v(Contants.USER_ID, SpUtils.getStr(WithdrawalActivity.this, Contants.USER_ID)).v("withdraw_id", String.valueOf(WithdrawalActivity.this.f25928h)).v("pay_type", String.valueOf(WithdrawalActivity.this.f25925e)).v("realName", WithdrawalActivity.this.enterPayName.getText().toString()).v("account", WithdrawalActivity.this.etAccount.getText().toString().trim()).v("withDrawCountry", Integer.valueOf(WithdrawalActivity.this.f25924d)).M(new C0259a());
                }
            }

            f() {
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onClose(Dialog dialog, boolean z10) {
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onConfirm(Dialog dialog, boolean z10, String str) {
                WithdrawalActivity.this.showProgressDialog("");
                WithdrawalActivity.this.post("tokens/user/info/showOldPassword").D(Contants.USER_ID, SpUtils.getStr(WithdrawalActivity.this, Contants.USER_ID)).D("pasword", str).M(new a());
                dialog.dismiss();
            }
        }

        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WithdrawalActivity withdrawalActivity = WithdrawalActivity.this;
            int i9 = withdrawalActivity.f25925e;
            if (i9 == 0) {
                ToastUtils.showToast(withdrawalActivity, withdrawalActivity.getResources().getString(R.string.withdrawal_pay_way_no));
            } else if (i9 == 1) {
                if (TextUtils.isEmpty(withdrawalActivity.etAccount.getText().toString().trim())) {
                    WithdrawalActivity withdrawalActivity2 = WithdrawalActivity.this;
                    ToastUtils.showToast(withdrawalActivity2, withdrawalActivity2.getResources().getString(R.string.withdrawal_alipay_account_no));
                } else if (TextUtils.isEmpty(WithdrawalActivity.this.enterPayName.getText().toString().trim())) {
                    WithdrawalActivity.this.showToast(R.string.enter_cash_name);
                } else {
                    WithdrawalActivity.this.f25926f.setAliPayAccount(WithdrawalActivity.this.etAccount.getText().toString().trim());
                    WithdrawalActivity.this.f25926f.setAliPayName(WithdrawalActivity.this.enterPayName.getText().toString());
                    WithdrawalActivity.this.u0();
                    String str = SpUtils.getStr(WithdrawalActivity.this, Contants.payPassword);
                    if (str.equals("0")) {
                        WithdrawalActivity withdrawalActivity3 = WithdrawalActivity.this;
                        new com.guochao.faceshow.views.e(withdrawalActivity3, R.style.commonDialog, withdrawalActivity3.getResources().getString(R.string.payment_password_no), new a()).k(WithdrawalActivity.this.getResources().getString(R.string.payment_password_setting)).show();
                    } else if (str.equals("1")) {
                        WithdrawalActivity withdrawalActivity4 = WithdrawalActivity.this;
                        new n(withdrawalActivity4, R.style.commonDialog, withdrawalActivity4.getResources().getString(R.string.setting_enter_payment_password), new C0256b()).show();
                    }
                }
            } else if (i9 != 4) {
                if (i9 != 5) {
                    return;
                }
                if (TextUtils.isEmpty(withdrawalActivity.etAccount.getText().toString().trim())) {
                    WithdrawalActivity withdrawalActivity5 = WithdrawalActivity.this;
                    ToastUtils.showToast(withdrawalActivity5, withdrawalActivity5.getResources().getString(R.string.withdrawal_paypal_account_no));
                } else if (TextUtils.isEmpty(WithdrawalActivity.this.enterPayName.getText().toString().trim())) {
                    WithdrawalActivity.this.showToast(R.string.enter_cash_name);
                } else {
                    WithdrawalActivity.this.f25926f.setPayPalAccount(WithdrawalActivity.this.etAccount.getText().toString().trim());
                    WithdrawalActivity.this.f25926f.setPayPalName(WithdrawalActivity.this.enterPayName.getText().toString());
                    WithdrawalActivity.this.u0();
                    String str2 = SpUtils.getStr(WithdrawalActivity.this, Contants.payPassword);
                    if (str2.equals("0")) {
                        WithdrawalActivity withdrawalActivity6 = WithdrawalActivity.this;
                        new com.guochao.faceshow.views.e(withdrawalActivity6, R.style.commonDialog, withdrawalActivity6.getResources().getString(R.string.payment_password_no), new e()).k(WithdrawalActivity.this.getResources().getString(R.string.payment_password_setting)).show();
                    } else if (str2.equals("1")) {
                        WithdrawalActivity withdrawalActivity7 = WithdrawalActivity.this;
                        new n(withdrawalActivity7, R.style.commonDialog, withdrawalActivity7.getResources().getString(R.string.setting_enter_payment_password), new f()).show();
                    }
                }
            } else if (TextUtils.isEmpty(withdrawalActivity.etBankCardNo.getText().toString().trim())) {
                WithdrawalActivity withdrawalActivity8 = WithdrawalActivity.this;
                ToastUtils.showToast(withdrawalActivity8, withdrawalActivity8.getResources().getString(R.string.withdrawal_bank_account_no));
            } else if (TextUtils.isEmpty(WithdrawalActivity.this.etAccountHolder.getText().toString().trim())) {
                WithdrawalActivity withdrawalActivity9 = WithdrawalActivity.this;
                ToastUtils.showToast(withdrawalActivity9, withdrawalActivity9.getResources().getString(R.string.withdrawal_bank_holder_no));
            } else {
                WithdrawalActivity withdrawalActivity10 = WithdrawalActivity.this;
                if (withdrawalActivity10.f25927g == null) {
                    ToastUtils.showToast(withdrawalActivity10, withdrawalActivity10.getResources().getString(R.string.withdrawal_bank_no));
                } else if (TextUtils.isEmpty(withdrawalActivity10.etBankAddress.getText().toString().trim())) {
                    WithdrawalActivity withdrawalActivity11 = WithdrawalActivity.this;
                    ToastUtils.showToast(withdrawalActivity11, withdrawalActivity11.getResources().getString(R.string.withdrawal_bank_address_no));
                } else {
                    WithdrawalActivity.this.f25926f.setBankAccount(WithdrawalActivity.this.etBankCardNo.getText().toString().trim());
                    WithdrawalActivity.this.f25926f.setBankId(WithdrawalActivity.this.f25927g.getBank_id());
                    WithdrawalActivity.this.f25926f.setAccountHolder(WithdrawalActivity.this.etAccountHolder.getText().toString().trim());
                    WithdrawalActivity.this.f25926f.setOpenBankAddress(WithdrawalActivity.this.etBankAddress.getText().toString().trim());
                    WithdrawalActivity.this.u0();
                    String str3 = SpUtils.getStr(WithdrawalActivity.this, Contants.payPassword);
                    if (str3.equals("0")) {
                        WithdrawalActivity withdrawalActivity12 = WithdrawalActivity.this;
                        new com.guochao.faceshow.views.e(withdrawalActivity12, R.style.commonDialog, withdrawalActivity12.getResources().getString(R.string.payment_password_no), new c()).k(WithdrawalActivity.this.getResources().getString(R.string.payment_password_setting)).show();
                    } else if (str3.equals("1")) {
                        WithdrawalActivity withdrawalActivity13 = WithdrawalActivity.this;
                        new n(withdrawalActivity13, R.style.commonDialog, withdrawalActivity13.getResources().getString(R.string.setting_enter_payment_password), new d()).show();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements f.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f25944a;

        c(String str) {
            this.f25944a = str;
        }

        @Override // com.guochao.faceshow.views.f.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                SpUtils.setInt(WithdrawalActivity.this, Contants.FB, ((WithdrawalResultBean) GsonGetter.getGson().fromJson(this.f25944a, (Class<Object>) WithdrawalResultBean.class)).getF());
                WithdrawalActivity.this.finish();
                return;
            }
            dialog.dismiss();
            SpUtils.setInt(WithdrawalActivity.this, Contants.FB, ((WithdrawalResultBean) GsonGetter.getGson().fromJson(this.f25944a, (Class<Object>) WithdrawalResultBean.class)).getF());
            WithdrawalActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WithdrawalActivity.this.showSelectPayWay();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WithdrawalActivity.this.showSelectPayWay();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements a.b {
        f() {
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onAliPayClick(Dialog dialog) {
            WithdrawalActivity.this.initAliPayData();
            WithdrawalActivity.this.f25926f.setWithdrawalType(1);
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onBankCardPay(Dialog dialog) {
            WithdrawalActivity.this.q0();
            WithdrawalActivity.this.f25926f.setWithdrawalType(4);
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onPayPalClick(Dialog dialog) {
            WithdrawalActivity.this.s0();
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onPayonnerClick(Dialog dialog) {
            WithdrawalActivity.this.t0();
            WithdrawalActivity.this.f25926f.setWithdrawalType(2);
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.a.b
        public /* synthetic */ void onPayonnerV2Click(Dialog dialog) {
            com.guochao.faceshow.views.b.a(this, dialog);
        }

        @Override // com.guochao.faceshow.views.a.b
        public /* synthetic */ void onUSDTClick(Dialog dialog) {
            com.guochao.faceshow.views.b.b(this, dialog);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements CountryUtils.NationalFlagAndCodeCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f25949a;

        /* loaded from: classes4.dex */
        class a implements CountryUtils.CountryCallBack {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
            public void onResponse(@Nullable List<CountryData> list) {
                if (list == null || WithdrawalActivity.this.isFinishing() || WithdrawalActivity.this.isDestroyed()) {
                    return;
                }
                for (CountryData countryData : list) {
                    if (countryData.getCoding().equalsIgnoreCase(g.this.f25949a)) {
                        if (TextUtils.isEmpty(countryData.getContent())) {
                            return;
                        }
                        if (WithdrawalActivity.this.f25926f == null || TextUtils.isEmpty(WithdrawalActivity.this.f25926f.getCountry())) {
                            WithdrawalActivity.this.tvRegion.setText(countryData.getContent());
                            WithdrawalActivity.this.f25924d = countryData.getCountryId();
                            return;
                        }
                        return;
                    }
                }
            }
        }

        g(String str) {
            this.f25949a = str;
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.NationalFlagAndCodeCallBack
        public void onResponse(@Nullable CountryData countryData) {
            if (countryData != null && !TextUtils.isEmpty(countryData.getContent())) {
                if (WithdrawalActivity.this.f25926f == null || TextUtils.isEmpty(WithdrawalActivity.this.f25926f.getCountry())) {
                    WithdrawalActivity.this.tvRegion.setText(countryData.getContent());
                    WithdrawalActivity.this.f25924d = countryData.getCountryId();
                    return;
                }
                return;
            }
            CountryUtils.getCountryData(WithdrawalActivity.this.getActivity(), new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements e.a {
        h() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                Intent intent = new Intent(WithdrawalActivity.this, BindCellPhoneActivity.class);
                intent.putExtra("from", 3);
                WithdrawalActivity.this.startActivity(intent);
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAliPayData() {
        this.etAccount.setVisibility(0);
        if (!TextUtils.isEmpty(this.f25926f.getAliPayAccount())) {
            this.etAccount.setText(this.f25926f.getAliPayAccount());
        }
        if (!TextUtils.isEmpty(this.f25926f.getCountry())) {
            this.tvRegion.setText(this.f25926f.getCountry());
            this.f25924d = this.f25926f.getCountryId();
        }
        this.etBankCardNo.setVisibility(8);
        this.etAccountHolder.setVisibility(8);
        this.rlBankNameLayout.setVisibility(8);
        this.etBankAddress.setVisibility(8);
        this.tvSelectAccount.setText(getResources().getString(R.string.alipay));
        this.enterPayName.setVisibility(0);
        if (!TextUtils.isEmpty(this.f25926f.getAliPayName())) {
            this.enterPayName.setText(this.f25926f.getAliPayName());
        }
        this.f25925e = 1;
        Drawable drawable = ContextCompat.getDrawable(getActivity(), R.mipmap.pay_alipay);
        drawable.setBounds(0, 0, DensityUtil.dp2px(20.0f), DensityUtil.dp2px(20.0f));
        this.tvSelectAccount.setCompoundDrawables(drawable, null, null, null);
    }

    private void initData() {
        this.enterPayName.setVisibility(8);
        if (PhoneUtils.isLocalChina()) {
            this.f25921a = true;
            this.f25923c = "￥ ";
        } else {
            this.f25921a = false;
            this.f25923c = "US$ ";
        }
        this.f25928h = getIntent().getIntExtra("payMode", 0);
        String stringExtra = getIntent().getStringExtra("money");
        this.f25922b = stringExtra;
        this.tvAmount.setText(stringExtra);
        this.tvSymbol.setText(this.f25923c);
        if (this.f25921a) {
            this.tvSelectAccount.setVisibility(0);
            this.flRegion.setVisibility(8);
            if (this.f25926f.getWithdrawalType() == 4) {
                q0();
            } else if (this.f25926f.getWithdrawalType() == 1) {
                initAliPayData();
            } else {
                this.etAccount.setVisibility(0);
                this.etBankCardNo.setVisibility(8);
                this.etAccountHolder.setVisibility(8);
                this.rlBankNameLayout.setVisibility(8);
                this.etBankAddress.setVisibility(8);
            }
            this.tvSelectAccount.setOnClickListener(new d());
            return;
        }
        this.tvSelectAccount.setOnClickListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0() {
        if (this.f25927g == null && !TextUtils.isEmpty(this.f25926f.getOpenBank())) {
            BankBean bankBean = new BankBean();
            this.f25927g = bankBean;
            bankBean.setBank_id(this.f25926f.getBankId());
            this.f25927g.setBank_name(this.f25926f.getOpenBank());
        }
        this.enterPayName.setVisibility(8);
        this.etAccount.setVisibility(8);
        this.etBankCardNo.setVisibility(0);
        if (!TextUtils.isEmpty(this.f25926f.getBankAccount())) {
            this.etBankCardNo.setText(this.f25926f.getBankAccount());
        }
        this.etAccountHolder.setVisibility(0);
        if (!TextUtils.isEmpty(this.f25926f.getAccountHolder())) {
            this.etAccountHolder.setText(this.f25926f.getAccountHolder());
        }
        this.rlBankNameLayout.setVisibility(0);
        if (!TextUtils.isEmpty(this.f25926f.getOpenBank())) {
            this.tvBankName.setText(this.f25926f.getOpenBank());
        }
        this.etBankAddress.setVisibility(0);
        if (!TextUtils.isEmpty(this.f25926f.getOpenBankAddress())) {
            this.etBankAddress.setText(this.f25926f.getOpenBankAddress());
        }
        this.tvSelectAccount.setText(getResources().getString(R.string.bank_card));
        Drawable drawable = ContextCompat.getDrawable(getActivity(), R.mipmap.pay_yinlian);
        drawable.setBounds(0, 0, DensityUtil.dp2px(20.0f), DensityUtil.dp2px(20.0f));
        this.tvSelectAccount.setCompoundDrawables(drawable, null, null, null);
        this.f25925e = 4;
    }

    private void r0() {
        this.rlBankNameLayout.setOnClickListener(new a());
        this.btnWithdrawal.setOnClickListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        if (this.f25929i) {
            v0();
            this.flRegion.setVisibility(0);
        }
        this.tvSelectAccount.setText(getResources().getString(R.string.paypal));
        Drawable drawable = ContextCompat.getDrawable(getActivity(), R.mipmap.pay_paypal);
        drawable.setBounds(0, 0, DensityUtil.dp2px(20.0f), DensityUtil.dp2px(20.0f));
        this.tvSelectAccount.setCompoundDrawables(drawable, null, null, null);
        this.f25925e = 5;
        this.f25926f.setWithdrawalType(5);
        this.etAccount.setVisibility(0);
        if (TextUtils.isEmpty(this.f25926f.getPayPalAccount())) {
            if (this.f25929i) {
                this.etAccount.setHint(getString(R.string.paypal_email));
            } else {
                this.etAccount.setHint(getString(R.string.acount_email_hint));
            }
        } else {
            this.etAccount.setText(this.f25926f.getPayPalAccount());
        }
        if (!TextUtils.isEmpty(this.f25926f.getCountry())) {
            this.tvRegion.setText(this.f25926f.getCountry());
            this.f25924d = this.f25926f.getCountryId();
        }
        this.tvSelectAccount.setVisibility(0);
        this.etBankCardNo.setVisibility(8);
        this.etAccountHolder.setVisibility(8);
        this.rlBankNameLayout.setVisibility(8);
        this.etBankAddress.setVisibility(8);
        this.enterPayName.setVisibility(0);
        if (TextUtils.isEmpty(this.f25926f.getPayPalName())) {
            return;
        }
        this.enterPayName.setText(this.f25926f.getPayPalName());
    }

    private void showDialog() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(this, new h());
        eVar.m(ContextCompat.getColor(this, R.color.color_common_dialog_confirm));
        eVar.d(ContextCompat.getColor(this, R.color.color_common_dialog_cancel));
        eVar.f(getString(R.string.withdrawal_pwd_lock));
        eVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showErrorToast(@NonNull g7.a<String> aVar) {
        dismissProgressDialog();
        if (aVar.a() == -1) {
            showDialog();
        } else if (aVar.a() == 0) {
            ToastUtils.showToast(this, getResources().getString(R.string.password_wrong));
            this.btnWithdrawal.performClick();
        } else {
            ToastUtils.showToast(this, getResources().getString(R.string.withdrawal_faile));
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSelectPayWay() {
        new com.guochao.faceshow.views.a(this, this.f25921a, R.style.commonDialog, new f()).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0() {
        this.etAccount.setVisibility(0);
        this.etBankCardNo.setVisibility(8);
        this.etAccountHolder.setVisibility(8);
        this.rlBankNameLayout.setVisibility(8);
        this.etBankAddress.setVisibility(8);
        this.enterPayName.setVisibility(8);
        this.flRegion.setVisibility(8);
        this.tvSelectAccount.setText("Payoneer");
        Drawable drawable = ContextCompat.getDrawable(getActivity(), R.mipmap.pay_alipay);
        drawable.setBounds(0, 0, DensityUtil.dp2px(20.0f), DensityUtil.dp2px(20.0f));
        this.tvSelectAccount.setCompoundDrawables(drawable, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0() {
        com.guochao.faceshow.aaspring.manager.b.f(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, BaseConfig.WITHDRAWAL_CACHE, this.f25926f);
    }

    private void v0() {
        String str = "";
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            if (!TextUtils.isEmpty(locales.get(0).getCountry())) {
                str = locales.get(0).getCountry();
            }
        } else if (!TextUtils.isEmpty(Locale.getDefault().getCountry())) {
            str = Locale.getDefault().getCountry();
        }
        CountryUtils.getNationalFlagAndCode(this, new g(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0(@Nullable String str) {
        dismissProgressDialog();
        new com.guochao.faceshow.views.f(getActivity(), R.style.commonDialog, getResources().getString(R.string.packshenqing), new c(str)).show();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_withdrawal;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (this.f25929i) {
            this.enterPayName.setHint(getString(R.string.withdrawal_name));
        } else {
            this.enterPayName.setHint(getString(R.string.cash_name));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1 && i9 == 1001 && intent != null) {
            BankBean bankBean = (BankBean) intent.getSerializableExtra("bankBean");
            this.f25927g = bankBean;
            if (bankBean != null) {
                this.tvBankName.setText(bankBean.getBank_name());
                this.f25926f.setOpenBank(this.f25927g.getBank_name());
                this.f25926f.setBankId(this.f25927g.getBank_id());
            }
        } else if (i9 != 99 || intent == null) {
        } else {
            String stringExtra = intent.getStringExtra("content");
            this.f25924d = intent.getIntExtra("id", 0);
            if (!TextUtils.isEmpty(stringExtra)) {
                this.tvRegion.setText(stringExtra);
                this.f25926f.setCountry(stringExtra);
            }
            this.f25926f.setCountryId(this.f25924d);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.my_vallet_withdrawal);
        WithdrawalChaChe withdrawalChaChe = (WithdrawalChaChe) com.guochao.faceshow.aaspring.manager.b.a(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, BaseConfig.WITHDRAWAL_CACHE, WithdrawalChaChe.class);
        if (withdrawalChaChe == null) {
            this.f25926f = new WithdrawalChaChe();
        } else {
            this.f25926f = withdrawalChaChe;
        }
        initData();
        r0();
    }

    @OnClick
    public void onViewClicked() {
        Intent intent = new Intent(this, AreaSelectActivity.class);
        intent.putExtra(BaseConfig.AREA_TYPE, 1);
        startActivityForResult(intent, 99);
    }
}

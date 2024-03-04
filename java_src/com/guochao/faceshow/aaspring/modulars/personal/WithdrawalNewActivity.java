package com.guochao.faceshow.aaspring.modulars.personal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import androidx.exifinterface.media.ExifInterface;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.PayoneerData;
import com.guochao.faceshow.aaspring.beans.WithdrawalChaChe;
import com.guochao.faceshow.aaspring.modulars.login.activity.AreaSelectActivity;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.aaspring.views.m;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.mine.model.BankBean;
import com.guochao.faceshow.mine.model.WithdrawalResultBean;
import com.guochao.faceshow.mine.view.BankListActivity;
import com.guochao.faceshow.mine.view.BindCellPhoneActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.views.a;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.f;
import com.guochao.faceshow.views.n;
import com.guochao.faceshow.web.WebViewActivity;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class WithdrawalNewActivity extends BaseActivity {

    /* renamed from: b  reason: collision with root package name */
    private boolean f21375b;
    @BindView
    View btnWithdrawal;

    /* renamed from: c  reason: collision with root package name */
    private boolean f21376c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f21377d;

    /* renamed from: e  reason: collision with root package name */
    k f21378e;
    @BindView
    EditText etAliPayAccount;
    @BindView
    EditText etAliPayName;
    @BindView
    EditText etBankCardAccount;
    @BindView
    EditText etBankCardAccountHolder;
    @BindView
    EditText etBankCardAddress;
    @BindView
    EditText etPayPalAccount;
    @BindView
    EditText etPayPalName;
    @BindView
    EditText etPayoneerAccount;
    @BindView
    TextView etPayoneerId;
    @BindView
    FrameLayout flAliPayAccount;
    @BindView
    FrameLayout flAliPayName;
    @BindView
    FrameLayout flBankCard;
    @BindView
    FrameLayout flBankCardAccountHolder;
    @BindView
    FrameLayout flBankCardAddress;
    @BindView
    FrameLayout flPayoneer;
    @BindView
    LinearLayout flRegion;
    @BindView
    FrameLayout flSelectWithdrawalWay;

    /* renamed from: g  reason: collision with root package name */
    private WithdrawalChaChe f21380g;
    @BindView
    ImageView ivArrowRight;
    @BindView
    ImageView ivPayoneerMore;
    @BindView
    ImageView ivWithdrawalLogo;
    @BindView
    ImageView ivWithdrawalMore;

    /* renamed from: k  reason: collision with root package name */
    private BankBean f21384k;

    /* renamed from: l  reason: collision with root package name */
    private int f21385l;
    @BindView
    LinearLayout llAliPayLayout;
    @BindView
    LinearLayout llBankCardLayout;
    @BindView
    LinearLayout llPayPalLayout;
    @BindView
    LinearLayout llPayoneerLayout;
    @BindView
    LinearLayout llPayoneerSelect;
    @BindView
    LinearLayout llPayoneerv2Layout;

    /* renamed from: m  reason: collision with root package name */
    private List<PayoneerData> f21386m;

    /* renamed from: n  reason: collision with root package name */
    private PayoneerData f21387n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f21388o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f21389p;
    @BindView
    RelativeLayout rlBankNameLayout;
    @BindView
    TextView tvAddPayoneer;
    @BindView
    TextView tvAmount;
    @BindView
    TextView tvBankName;
    @BindView
    TextView tvPayoneerTip;
    @BindView
    TextView tvRegion;
    @BindView
    TextView tvRegionName;
    @BindView
    TextView tvWithdrawalWay;

    /* renamed from: a  reason: collision with root package name */
    int f21374a = 0;

    /* renamed from: f  reason: collision with root package name */
    com.guochao.faceshow.aaspring.base.http.callback.c<String> f21379f = new b();

    /* renamed from: h  reason: collision with root package name */
    private boolean f21381h = false;

    /* renamed from: i  reason: collision with root package name */
    private int f21382i = 0;

    /* renamed from: j  reason: collision with root package name */
    private String f21383j = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements CountryUtils.NationalFlagAndCodeCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21390a;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.personal.WithdrawalNewActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0210a implements CountryUtils.CountryCallBack {
            C0210a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
            public void onResponse(@Nullable List<CountryData> list) {
                if (list == null || WithdrawalNewActivity.this.isFinishing() || WithdrawalNewActivity.this.isDestroyed()) {
                    return;
                }
                for (CountryData countryData : list) {
                    if (countryData.getCoding().equalsIgnoreCase(a.this.f21390a)) {
                        if (TextUtils.isEmpty(countryData.getContent())) {
                            return;
                        }
                        if (WithdrawalNewActivity.this.f21380g == null || TextUtils.isEmpty(WithdrawalNewActivity.this.f21380g.getCountry())) {
                            WithdrawalNewActivity.this.tvRegion.setText(countryData.getContent());
                            WithdrawalNewActivity.this.f21385l = countryData.getCountryId();
                            return;
                        }
                        return;
                    }
                }
            }
        }

        a(String str) {
            this.f21390a = str;
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.NationalFlagAndCodeCallBack
        public void onResponse(@Nullable CountryData countryData) {
            if (countryData != null && !TextUtils.isEmpty(countryData.getContent())) {
                if (WithdrawalNewActivity.this.f21380g == null || TextUtils.isEmpty(WithdrawalNewActivity.this.f21380g.getCountry())) {
                    WithdrawalNewActivity.this.tvRegion.setText(countryData.getContent());
                    WithdrawalNewActivity.this.f21385l = countryData.getCountryId();
                    return;
                }
                return;
            }
            CountryUtils.getCountryData(WithdrawalNewActivity.this.getActivity(), new C0210a());
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            WithdrawalNewActivity.this.dismissProgressDialog();
            if (aVar.a() == 100005) {
                ToastUtils.showToast(WithdrawalNewActivity.this.getActivity(), WithdrawalNewActivity.this.getString(R.string.payoneer_account_unbounded));
            } else if (aVar.a() == 100006) {
                ToastUtils.showToast(WithdrawalNewActivity.this.getActivity(), WithdrawalNewActivity.this.getString(R.string.payoneer_account_no_approval));
            } else if (aVar.a() == 100007) {
                GCCoreActivity activity = WithdrawalNewActivity.this.getActivity();
                ToastUtils.showToast(activity, WithdrawalNewActivity.this.getString(R.string.unavailable) + ": " + WithdrawalNewActivity.this.getString(R.string.payoneer_notice_tip2));
            } else {
                ToastUtils.showToast(WithdrawalNewActivity.this.getActivity(), WithdrawalNewActivity.this.getString(R.string.withdrawal_faile));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            WithdrawalNewActivity.this.g1(str);
        }
    }

    /* loaded from: classes3.dex */
    class c implements m {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.views.m
        public void a(PopupWindow popupWindow, PayoneerData payoneerData) {
            WithdrawalNewActivity.this.f21387n = payoneerData;
            WithdrawalNewActivity.this.etPayoneerId.setText(payoneerData.getPayoneerId());
            popupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements e.a {
        d() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                WithdrawalNewActivity.this.d1(BaseConfig.WITHDRAWAL_USDT);
                dialog.dismiss();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements n.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21396a;

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
                WithdrawalNewActivity.this.showErrorToast(aVar);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                k kVar;
                PostRequest post = WithdrawalNewActivity.this.post("tokens/user/trade/withdrawApplication");
                e eVar = e.this;
                int i9 = eVar.f21396a;
                if (i9 == BaseConfig.WITHDRAWAL_ALI_PAY) {
                    if (WithdrawalNewActivity.this.f21389p) {
                        HashMap hashMap = new HashMap();
                        hashMap.put(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID));
                        hashMap.put("ruleId", String.valueOf(WithdrawalNewActivity.this.f21382i));
                        hashMap.put("withdrawType", String.valueOf(WithdrawalNewActivity.this.f21374a));
                        hashMap.put("payee", WithdrawalNewActivity.this.etAliPayName.getText().toString().trim());
                        hashMap.put("account", WithdrawalNewActivity.this.etAliPayAccount.getText().toString());
                        WithDrawH5RequestUtils withDrawH5RequestUtils = new WithDrawH5RequestUtils();
                        WithdrawalNewActivity withdrawalNewActivity = WithdrawalNewActivity.this;
                        withDrawH5RequestUtils.startRequest(withdrawalNewActivity.f21379f, withdrawalNewActivity, hashMap);
                        return;
                    }
                    post.v(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID)).v("withdraw_id", String.valueOf(WithdrawalNewActivity.this.f21382i)).v("pay_type", String.valueOf(WithdrawalNewActivity.this.f21374a)).v("realName", WithdrawalNewActivity.this.etAliPayName.getText().toString().trim()).v("account", WithdrawalNewActivity.this.etAliPayAccount.getText().toString()).M(WithdrawalNewActivity.this.f21379f);
                } else if (i9 == BaseConfig.WITHDRAWAL_PAYONEER) {
                    if (WithdrawalNewActivity.this.f21389p) {
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID));
                        hashMap2.put("ruleId", String.valueOf(WithdrawalNewActivity.this.f21382i));
                        hashMap2.put("withdrawType", String.valueOf(WithdrawalNewActivity.this.f21374a));
                        hashMap2.put("account", WithdrawalNewActivity.this.f21387n.getId());
                        WithDrawH5RequestUtils withDrawH5RequestUtils2 = new WithDrawH5RequestUtils();
                        WithdrawalNewActivity withdrawalNewActivity2 = WithdrawalNewActivity.this;
                        withDrawH5RequestUtils2.startRequest(withdrawalNewActivity2.f21379f, withdrawalNewActivity2, hashMap2);
                        return;
                    }
                    post.v(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID)).v("withdraw_id", String.valueOf(WithdrawalNewActivity.this.f21382i)).v("pay_type", String.valueOf(WithdrawalNewActivity.this.f21374a)).v("account", WithdrawalNewActivity.this.f21387n.getId()).M(WithdrawalNewActivity.this.f21379f);
                } else if (i9 == BaseConfig.WITHDRAWAL_PAYONEERV2) {
                    if (WithdrawalNewActivity.this.f21389p) {
                        HashMap hashMap3 = new HashMap();
                        hashMap3.put(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID));
                        hashMap3.put("ruleId", String.valueOf(WithdrawalNewActivity.this.f21382i));
                        hashMap3.put("withdrawType", String.valueOf(WithdrawalNewActivity.this.f21374a));
                        hashMap3.put("account", WithdrawalNewActivity.this.etPayoneerAccount.getText().toString());
                        WithDrawH5RequestUtils withDrawH5RequestUtils3 = new WithDrawH5RequestUtils();
                        WithdrawalNewActivity withdrawalNewActivity3 = WithdrawalNewActivity.this;
                        withDrawH5RequestUtils3.startRequest(withdrawalNewActivity3.f21379f, withdrawalNewActivity3, hashMap3);
                        return;
                    }
                    post.v(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID)).v("withdraw_id", String.valueOf(WithdrawalNewActivity.this.f21382i)).v("pay_type", String.valueOf(WithdrawalNewActivity.this.f21374a)).v("account", WithdrawalNewActivity.this.etPayoneerAccount.getText().toString().trim()).M(WithdrawalNewActivity.this.f21379f);
                } else if (i9 == BaseConfig.WITHDRAWAL_BANK_CARD) {
                    if (WithdrawalNewActivity.this.f21389p) {
                        HashMap hashMap4 = new HashMap();
                        hashMap4.put(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID));
                        hashMap4.put("ruleId", String.valueOf(WithdrawalNewActivity.this.f21382i));
                        hashMap4.put("withdrawType", String.valueOf(WithdrawalNewActivity.this.f21374a));
                        hashMap4.put("account", WithdrawalNewActivity.this.etBankCardAccount.getText().toString().trim());
                        hashMap4.put("payee", WithdrawalNewActivity.this.etBankCardAccountHolder.getText().toString().trim());
                        hashMap4.put("bank_id", String.valueOf(WithdrawalNewActivity.this.f21384k.getBank_id()));
                        hashMap4.put("banck_address", WithdrawalNewActivity.this.etBankCardAddress.getText().toString().trim());
                        WithDrawH5RequestUtils withDrawH5RequestUtils4 = new WithDrawH5RequestUtils();
                        WithdrawalNewActivity withdrawalNewActivity4 = WithdrawalNewActivity.this;
                        withDrawH5RequestUtils4.startRequest(withdrawalNewActivity4.f21379f, withdrawalNewActivity4, hashMap4);
                        return;
                    }
                    post.v(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID)).v("withdraw_id", String.valueOf(WithdrawalNewActivity.this.f21382i)).v("pay_type", String.valueOf(WithdrawalNewActivity.this.f21374a)).v("account", WithdrawalNewActivity.this.etBankCardAccount.getText().toString().trim()).v("payee", WithdrawalNewActivity.this.etBankCardAccountHolder.getText().toString().trim()).v("bank_id", String.valueOf(WithdrawalNewActivity.this.f21384k.getBank_id())).v("banck_address", WithdrawalNewActivity.this.etBankCardAddress.getText().toString().trim()).M(WithdrawalNewActivity.this.f21379f);
                } else if (i9 == BaseConfig.WITHDRAWAL_PAY_PAL) {
                    if (WithdrawalNewActivity.this.f21389p) {
                        HashMap hashMap5 = new HashMap();
                        hashMap5.put(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID));
                        hashMap5.put("ruleId", String.valueOf(WithdrawalNewActivity.this.f21382i));
                        hashMap5.put("withdrawType", String.valueOf(WithdrawalNewActivity.this.f21374a));
                        hashMap5.put("payee", WithdrawalNewActivity.this.etPayPalName.getText().toString().trim());
                        hashMap5.put("account", WithdrawalNewActivity.this.etPayPalAccount.getText().toString().trim());
                        hashMap5.put("withDrawCountry", Integer.valueOf(WithdrawalNewActivity.this.f21385l));
                        WithDrawH5RequestUtils withDrawH5RequestUtils5 = new WithDrawH5RequestUtils();
                        WithdrawalNewActivity withdrawalNewActivity5 = WithdrawalNewActivity.this;
                        withDrawH5RequestUtils5.startRequest(withdrawalNewActivity5.f21379f, withdrawalNewActivity5, hashMap5);
                        return;
                    }
                    post.v(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID)).v("withdraw_id", String.valueOf(WithdrawalNewActivity.this.f21382i)).v("pay_type", String.valueOf(WithdrawalNewActivity.this.f21374a)).v("realName", WithdrawalNewActivity.this.etPayPalName.getText().toString()).v("account", WithdrawalNewActivity.this.etPayPalAccount.getText().toString().trim()).v("withDrawCountry", Integer.valueOf(WithdrawalNewActivity.this.f21385l)).M(WithdrawalNewActivity.this.f21379f);
                } else if (i9 == BaseConfig.WITHDRAWAL_USDT && (kVar = WithdrawalNewActivity.this.f21378e) != null && kVar.b()) {
                    if (WithdrawalNewActivity.this.f21389p) {
                        HashMap hashMap6 = new HashMap();
                        hashMap6.put(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID));
                        hashMap6.put("ruleId", String.valueOf(WithdrawalNewActivity.this.f21382i));
                        hashMap6.put("withdrawType", String.valueOf(WithdrawalNewActivity.this.f21374a));
                        hashMap6.put("usdtChannel", Integer.valueOf(WithdrawalNewActivity.this.f21378e.e()));
                        hashMap6.put("account", WithdrawalNewActivity.this.f21378e.c());
                        hashMap6.put("withDrawCountry", Integer.valueOf(WithdrawalNewActivity.this.f21385l));
                        WithDrawH5RequestUtils withDrawH5RequestUtils6 = new WithDrawH5RequestUtils();
                        WithdrawalNewActivity withdrawalNewActivity6 = WithdrawalNewActivity.this;
                        withDrawH5RequestUtils6.startRequest(withdrawalNewActivity6.f21379f, withdrawalNewActivity6, hashMap6);
                        return;
                    }
                    post.v(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID)).v("withdraw_id", String.valueOf(WithdrawalNewActivity.this.f21382i)).v("pay_type", String.valueOf(WithdrawalNewActivity.this.f21374a)).v("usdtChannel", Integer.valueOf(WithdrawalNewActivity.this.f21378e.e())).v("account", WithdrawalNewActivity.this.f21378e.c()).v("withDrawCountry", Integer.valueOf(WithdrawalNewActivity.this.f21385l)).M(WithdrawalNewActivity.this.f21379f);
                }
            }
        }

        e(int i9) {
            this.f21396a = i9;
        }

        @Override // com.guochao.faceshow.views.n.b
        public void onClose(Dialog dialog, boolean z10) {
        }

        @Override // com.guochao.faceshow.views.n.b
        public void onConfirm(Dialog dialog, boolean z10, String str) {
            WithdrawalNewActivity.this.showProgressDialog("");
            WithdrawalNewActivity.this.post("tokens/user/info/showOldPassword").D(Contants.USER_ID, SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), Contants.USER_ID)).D("pasword", str).M(new a());
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements f.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21399a;

        f(String str) {
            this.f21399a = str;
        }

        @Override // com.guochao.faceshow.views.f.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                try {
                    SpUtils.setInt(WithdrawalNewActivity.this.getActivity(), Contants.FB, ((WithdrawalResultBean) GsonGetter.getGson().fromJson(this.f21399a, (Class<Object>) WithdrawalResultBean.class)).getF());
                } catch (Exception unused) {
                }
                WithdrawalNewActivity.this.finish();
                return;
            }
            dialog.dismiss();
            try {
                SpUtils.setInt(WithdrawalNewActivity.this.getActivity(), Contants.FB, ((WithdrawalResultBean) GsonGetter.getGson().fromJson(this.f21399a, (Class<Object>) WithdrawalResultBean.class)).getF());
            } catch (Exception unused2) {
            }
            WithdrawalNewActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements e.a {
        g() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                Intent intent = new Intent(WithdrawalNewActivity.this.getActivity(), BindCellPhoneActivity.class);
                intent.putExtra("from", 3);
                WithdrawalNewActivity.this.startActivity(intent);
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements e.a {
        h() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                if (!TextUtils.isEmpty(SpUtils.getStr(WithdrawalNewActivity.this.getActivity(), "phone"))) {
                    SetLoginPasswordActivity.k0(WithdrawalNewActivity.this.getActivity(), 1, 1);
                } else {
                    BindPhoneToSetPayPasswordActivity.l0(WithdrawalNewActivity.this.getActivity(), 1);
                }
                dialog.dismiss();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<List<PayoneerData>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21403a;

        i(int i9) {
            this.f21403a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<PayoneerData>> aVar) {
            if (this.f21403a != 1) {
                WithdrawalNewActivity.this.Z0(false);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<PayoneerData> list, @NonNull FaceCastBaseResponse<List<PayoneerData>> faceCastBaseResponse) {
            if (list != null && list.size() != 0) {
                WithdrawalNewActivity.this.N0();
                WithdrawalNewActivity.this.f21386m = list;
                WithdrawalNewActivity.this.flPayoneer.setVisibility(0);
                WithdrawalNewActivity.this.tvAddPayoneer.setVisibility(0);
                if (list.size() > 1) {
                    WithdrawalNewActivity.this.ivPayoneerMore.setVisibility(0);
                } else {
                    WithdrawalNewActivity.this.ivPayoneerMore.setVisibility(8);
                }
                if (WithdrawalNewActivity.this.f21388o) {
                    WithdrawalNewActivity withdrawalNewActivity = WithdrawalNewActivity.this;
                    withdrawalNewActivity.f21387n = (PayoneerData) withdrawalNewActivity.f21386m.get(0);
                    WithdrawalNewActivity withdrawalNewActivity2 = WithdrawalNewActivity.this;
                    withdrawalNewActivity2.etPayoneerId.setText(((PayoneerData) withdrawalNewActivity2.f21386m.get(0)).getPayoneerId());
                    WithdrawalNewActivity.this.f21388o = false;
                } else if (WithdrawalNewActivity.this.f21380g != null && !TextUtils.isEmpty(WithdrawalNewActivity.this.f21380g.getPayoneerId()) && !TextUtils.isEmpty(WithdrawalNewActivity.this.f21380g.getPayoneerAccount())) {
                    if (WithdrawalNewActivity.this.f21387n == null) {
                        WithdrawalNewActivity.this.f21387n = new PayoneerData();
                    }
                    WithdrawalNewActivity.this.f21387n.setPayoneerId(WithdrawalNewActivity.this.f21380g.getPayoneerId());
                    WithdrawalNewActivity.this.f21387n.setId(WithdrawalNewActivity.this.f21380g.getPayoneerAccount());
                    WithdrawalNewActivity withdrawalNewActivity3 = WithdrawalNewActivity.this;
                    withdrawalNewActivity3.etPayoneerId.setText(withdrawalNewActivity3.f21380g.getPayoneerId());
                } else {
                    WithdrawalNewActivity withdrawalNewActivity4 = WithdrawalNewActivity.this;
                    withdrawalNewActivity4.f21387n = (PayoneerData) withdrawalNewActivity4.f21386m.get(0);
                    WithdrawalNewActivity withdrawalNewActivity5 = WithdrawalNewActivity.this;
                    withdrawalNewActivity5.etPayoneerId.setText(((PayoneerData) withdrawalNewActivity5.f21386m.get(0)).getPayoneerId());
                }
                if (this.f21403a != 1) {
                    WithdrawalNewActivity.this.b1(BaseConfig.WITHDRAWAL_PAYONEER);
                }
            } else if (this.f21403a != 1) {
                WithdrawalNewActivity.this.Z0(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements a.b {
        j() {
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onAliPayClick(Dialog dialog) {
            WithdrawalNewActivity.this.initAliPayData();
            WithdrawalNewActivity.this.f21380g.setWithdrawalType(1);
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onBankCardPay(Dialog dialog) {
            WithdrawalNewActivity.this.P0();
            WithdrawalNewActivity.this.f21380g.setWithdrawalType(4);
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onPayPalClick(Dialog dialog) {
            WithdrawalNewActivity.this.Q0();
            WithdrawalNewActivity.this.f21380g.setWithdrawalType(5);
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onPayonnerClick(Dialog dialog) {
            WithdrawalNewActivity.this.S0(0);
            WithdrawalNewActivity.this.f21380g.setWithdrawalType(6);
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onPayonnerV2Click(Dialog dialog) {
            WithdrawalNewActivity.this.T0();
            WithdrawalNewActivity.this.f21380g.setWithdrawalType(8);
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.a.b
        public void onUSDTClick(Dialog dialog) {
            WithdrawalNewActivity.this.W0();
            WithdrawalNewActivity.this.f21380g.setWithdrawalType(7);
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k {

        /* renamed from: d  reason: collision with root package name */
        ViewStub f21409d;

        /* renamed from: e  reason: collision with root package name */
        ViewStub f21410e;

        /* renamed from: f  reason: collision with root package name */
        View f21411f;

        /* renamed from: g  reason: collision with root package name */
        View f21412g;

        /* renamed from: a  reason: collision with root package name */
        String[] f21406a = {"TRC20", "ERC20", "HECO", "OMNI"};

        /* renamed from: b  reason: collision with root package name */
        String f21407b = "https://www.tronlink.org/";

        /* renamed from: c  reason: collision with root package name */
        String f21408c = "https://www.tronlink.org/cn/";

        /* renamed from: h  reason: collision with root package name */
        private int f21413h = -1;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WebViewActivity.createBuilder().e(14).a(WithdrawalNewActivity.this.getActivity());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f21416a;

            b(int i9) {
                this.f21416a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                k.this.i(this.f21416a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c extends ClickableSpan {
            c() {
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(@NonNull View view) {
                PackageUtils.viewUri(view.getContext(), Uri.parse(k.this.f21408c));
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(@NonNull TextPaint textPaint) {
                super.updateDrawState(textPaint);
                textPaint.setUnderlineText(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class d extends ClickableSpan {
            d() {
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(@NonNull View view) {
                PackageUtils.viewUri(view.getContext(), Uri.parse(k.this.f21407b));
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(@NonNull TextPaint textPaint) {
                super.updateDrawState(textPaint);
                textPaint.setUnderlineText(false);
            }
        }

        public k(ViewStub viewStub, ViewStub viewStub2) {
            this.f21409d = viewStub;
            this.f21410e = viewStub2;
        }

        private String f(String str, int i9) {
            String string = WithdrawalNewActivity.this.getString(R.string.withdraw_usdt_notice5);
            try {
                if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                    str = String.format(string, i9 + "USDT");
                } else {
                    str = String.format(string, str, String.valueOf(i9));
                }
                return str;
            } catch (Exception unused) {
                return String.format(string, str, String.valueOf(i9));
            }
        }

        private void h() {
            ViewGroup viewGroup = (ViewGroup) this.f21411f.findViewById(R.id.select_area);
            int childCount = viewGroup.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                viewGroup.getChildAt(i9).setSelected(false);
                viewGroup.getChildAt(i9).setOnClickListener(new b(i9));
            }
            ((TextView) this.f21411f.findViewById(R.id.usdt_tv)).setText(WithdrawalNewActivity.this.f21383j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i(int i9) {
            String string;
            if (this.f21413h == i9) {
                return;
            }
            this.f21413h = i9;
            ViewGroup viewGroup = (ViewGroup) this.f21411f.findViewById(R.id.select_area);
            int childCount = viewGroup.getChildCount();
            int i10 = 0;
            while (true) {
                boolean z10 = true;
                if (i10 >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i10);
                if (i9 != i10) {
                    z10 = false;
                }
                childAt.setSelected(z10);
                i10++;
            }
            String str = this.f21406a[e()];
            TextView textView = (TextView) this.f21412g.findViewById(R.id.content);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) WithdrawalNewActivity.this.getResources().getString(R.string.withdraw_usdt_notice1, str));
            spannableStringBuilder.append((CharSequence) IOUtils.LINE_SEPARATOR_WINDOWS);
            spannableStringBuilder.append((CharSequence) WithdrawalNewActivity.this.getString(R.string.withdraw_usdt_notice2));
            spannableStringBuilder.append((CharSequence) IOUtils.LINE_SEPARATOR_WINDOWS);
            if (i9 == 1) {
                string = f(str, com.guochao.faceshow.aaspring.manager.i.u().s().getServiceChargeOfERC20());
            } else if (i9 == 3) {
                string = f(str, com.guochao.faceshow.aaspring.manager.i.u().s().getServiceChargeOfOMNI());
            } else if (i9 == 0) {
                string = f(str, com.guochao.faceshow.aaspring.manager.i.u().s().getServiceChargeOfTRC20());
            } else {
                string = WithdrawalNewActivity.this.getString(R.string.withdraw_usdt_notice3, new Object[]{str});
            }
            spannableStringBuilder.append((CharSequence) string);
            spannableStringBuilder.append((CharSequence) IOUtils.LINE_SEPARATOR_WINDOWS);
            String string2 = WithdrawalNewActivity.this.getString(R.string.withdraw_usdt_notice4);
            String string3 = WithdrawalNewActivity.this.getString(R.string.withdraw_usdt_usa);
            String string4 = WithdrawalNewActivity.this.getString(R.string.withdraw_usdt_un_usa);
            String format = MessageFormat.format(string2, string4, string3);
            int indexOf = format.indexOf(string4);
            SpannableString spannableString = new SpannableString(format);
            if (indexOf >= 0) {
                spannableString.setSpan(new ForegroundColorSpan(WithdrawalNewActivity.this.getResources().getColor(R.color.color_ugc_app_primary)), indexOf, string4.length() + indexOf, 33);
                spannableString.setSpan(new c(), indexOf, string4.length() + indexOf, 33);
            }
            int indexOf2 = format.indexOf(string3, indexOf + string4.length());
            if (indexOf2 >= 0) {
                spannableString.setSpan(new ForegroundColorSpan(WithdrawalNewActivity.this.getResources().getColor(R.color.color_ugc_app_primary)), indexOf2, string3.length() + indexOf2, 33);
                spannableString.setSpan(new d(), indexOf2, string3.length() + indexOf2, 33);
            }
            spannableStringBuilder.append((CharSequence) spannableString);
            textView.setText(spannableStringBuilder);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            EditText editText = (EditText) this.f21411f.findViewById(R.id.et_usdt);
            editText.setHint(WithdrawalNewActivity.this.getString(R.string.withdraw_usdt_enter_or_paste, new Object[]{this.f21406a[i9]}));
            editText.setText("");
        }

        public boolean b() {
            String c10 = c();
            int e10 = e();
            if (TextUtils.isEmpty(c10)) {
                WithdrawalNewActivity withdrawalNewActivity = WithdrawalNewActivity.this;
                withdrawalNewActivity.showToast(withdrawalNewActivity.getString(R.string.withdraw_usdt_enter_or_paste, new Object[]{this.f21406a[e10]}));
                return false;
            }
            if (e10 != 0) {
                if (e10 == 1 || e10 == 2) {
                    if (!c10.startsWith("0x")) {
                        WithdrawalNewActivity withdrawalNewActivity2 = WithdrawalNewActivity.this;
                        withdrawalNewActivity2.showToast(withdrawalNewActivity2.getString(R.string.withdraw_usdt_please, new Object[]{this.f21406a[e10]}));
                        return false;
                    }
                } else if (e10 == 3) {
                    if (!c10.startsWith("1") && !c10.startsWith("3")) {
                        WithdrawalNewActivity withdrawalNewActivity3 = WithdrawalNewActivity.this;
                        withdrawalNewActivity3.showToast(withdrawalNewActivity3.getString(R.string.withdraw_usdt_please, new Object[]{this.f21406a[e10]}));
                        return false;
                    }
                    try {
                        if (Float.parseFloat(WithdrawalNewActivity.this.f21383j) < 220.0f) {
                            WithdrawalNewActivity.this.showToast(R.string.withdraw_usdt_tips_not_enough);
                            return false;
                        }
                    } catch (Exception unused) {
                    }
                    return true;
                }
            } else if (!c10.startsWith(ExifInterface.GPS_DIRECTION_TRUE)) {
                WithdrawalNewActivity withdrawalNewActivity4 = WithdrawalNewActivity.this;
                withdrawalNewActivity4.showToast(withdrawalNewActivity4.getString(R.string.withdraw_usdt_please, new Object[]{this.f21406a[e10]}));
                return false;
            }
            return true;
        }

        public String c() {
            return ((EditText) this.f21411f.findViewById(R.id.et_usdt)).getText().toString();
        }

        public String d() {
            return this.f21406a[e()];
        }

        public int e() {
            ViewGroup viewGroup = (ViewGroup) this.f21411f.findViewById(R.id.select_area);
            int childCount = viewGroup.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                if (viewGroup.getChildAt(i9).isSelected()) {
                    return i9;
                }
            }
            return 0;
        }

        public void g() {
            View view = this.f21411f;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = this.f21412g;
            if (view2 != null) {
                view2.setVisibility(8);
            }
        }

        public void j() {
            if (this.f21411f == null) {
                this.f21411f = this.f21409d.inflate();
                h();
            }
            if (this.f21412g == null) {
                this.f21412g = this.f21410e.inflate();
                i(0);
                this.f21412g.findViewById(R.id.guide).setOnClickListener(new a());
            }
            this.f21411f.setVisibility(0);
            this.f21412g.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        k kVar = this.f21378e;
        if (kVar != null) {
            kVar.g();
        }
        findViewById(R.id.amount_normal).setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        N0();
        b1(BaseConfig.WITHDRAWAL_BANK_CARD);
        if (this.f21384k == null && !TextUtils.isEmpty(this.f21380g.getOpenBank())) {
            BankBean bankBean = new BankBean();
            this.f21384k = bankBean;
            bankBean.setBank_id(this.f21380g.getBankId());
            this.f21384k.setBank_name(this.f21380g.getOpenBank());
        }
        if (!TextUtils.isEmpty(this.f21380g.getBankAccount())) {
            this.etBankCardAccount.setText(this.f21380g.getBankAccount());
        }
        if (!TextUtils.isEmpty(this.f21380g.getAccountHolder())) {
            this.etBankCardAccountHolder.setText(this.f21380g.getAccountHolder());
        }
        if (!TextUtils.isEmpty(this.f21380g.getOpenBank())) {
            this.tvBankName.setText(this.f21380g.getOpenBank());
        }
        if (TextUtils.isEmpty(this.f21380g.getOpenBankAddress())) {
            return;
        }
        this.etBankCardAddress.setText(this.f21380g.getOpenBankAddress());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0() {
        N0();
        b1(BaseConfig.WITHDRAWAL_PAY_PAL);
        a1();
        if (TextUtils.isEmpty(this.f21380g.getPayPalAccount())) {
            this.etPayPalAccount.setHint(getString(R.string.paypal_email));
        } else {
            this.etPayPalAccount.setText(this.f21380g.getPayPalAccount());
        }
        if (!TextUtils.isEmpty(this.f21380g.getCountry())) {
            this.tvRegion.setText(this.f21380g.getCountry());
            this.f21385l = this.f21380g.getCountryId();
        }
        if (TextUtils.isEmpty(this.f21380g.getPayPalName())) {
            return;
        }
        this.etPayPalName.setText(this.f21380g.getPayPalName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0(int i9) {
        get("tokens/pay/payoneer/accounts").M(new i(i9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0() {
        N0();
        if (!TextUtils.isEmpty(this.f21380g.getPayoneerAccountV2())) {
            this.etPayoneerAccount.setText(this.f21380g.getPayoneerAccountV2());
        }
        b1(BaseConfig.WITHDRAWAL_PAYONEERV2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W0() {
        if (this.f21378e == null) {
            this.f21378e = new k((ViewStub) findViewById(R.id.usdt_area), (ViewStub) findViewById(R.id.usdt_tips_area));
        }
        this.f21378e.j();
        b1(BaseConfig.WITHDRAWAL_USDT);
        findViewById(R.id.amount_normal).setVisibility(8);
    }

    private void X0() {
        int i9 = this.f21374a;
        if (i9 == 0) {
            ToastUtils.showToast(this, getString(R.string.withdrawal_please_select_method));
        } else if (i9 == 1) {
            if (TextUtils.isEmpty(this.etAliPayAccount.getText().toString().trim())) {
                ToastUtils.showToast(getActivity(), getResources().getString(R.string.withdrawal_alipay_account_no));
            } else if (TextUtils.isEmpty(this.etAliPayName.getText().toString().trim())) {
                showToast(R.string.enter_cash_name);
            } else {
                this.f21380g.setAliPayAccount(this.etAliPayAccount.getText().toString().trim());
                this.f21380g.setAliPayName(this.etAliPayName.getText().toString());
                d1(BaseConfig.WITHDRAWAL_ALI_PAY);
            }
        } else if (i9 == 4) {
            if (TextUtils.isEmpty(this.etBankCardAccount.getText().toString().trim())) {
                ToastUtils.showToast(getActivity(), getResources().getString(R.string.withdrawal_bank_account_no));
            } else if (TextUtils.isEmpty(this.etBankCardAccountHolder.getText().toString().trim())) {
                ToastUtils.showToast(getActivity(), getResources().getString(R.string.withdrawal_bank_holder_no));
            } else if (this.f21384k == null) {
                ToastUtils.showToast(getActivity(), getResources().getString(R.string.withdrawal_bank_no));
            } else if (TextUtils.isEmpty(this.etBankCardAddress.getText().toString().trim())) {
                ToastUtils.showToast(getActivity(), getResources().getString(R.string.withdrawal_bank_address_no));
            } else {
                this.f21380g.setBankAccount(this.etBankCardAccount.getText().toString().trim());
                this.f21380g.setBankId(this.f21384k.getBank_id());
                this.f21380g.setAccountHolder(this.etBankCardAccountHolder.getText().toString().trim());
                this.f21380g.setOpenBankAddress(this.etBankCardAddress.getText().toString().trim());
                d1(BaseConfig.WITHDRAWAL_BANK_CARD);
            }
        } else if (i9 != 5) {
            switch (i9) {
                case 9:
                    if (TextUtils.isEmpty(this.etPayoneerId.getText().toString().trim())) {
                        return;
                    }
                    this.f21380g.setPayoneerId(this.etPayoneerId.getText().toString().trim());
                    this.f21380g.setPayoneerAccount(this.f21387n.getId());
                    d1(BaseConfig.WITHDRAWAL_PAYONEER);
                    return;
                case 10:
                    k kVar = this.f21378e;
                    if (kVar == null || !kVar.b()) {
                        return;
                    }
                    alert(getString(R.string.withdraw_usdt_withdraw, new Object[]{"USDT-" + this.f21378e.d()}), String.format("%s: %s", getString(R.string.address_here), this.f21378e.c()), new d(), false);
                    return;
                case 11:
                    if (TextUtils.isEmpty(this.etPayoneerAccount.getText().toString().trim())) {
                        ToastUtils.showToast(getActivity(), getResources().getString(R.string.withdrawal_please_ente_account));
                        return;
                    }
                    this.f21380g.setPayoneerAccountV2(this.etPayoneerAccount.getText().toString().trim());
                    d1(BaseConfig.WITHDRAWAL_PAYONEERV2);
                    return;
                default:
                    return;
            }
        } else if (TextUtils.isEmpty(this.etPayPalAccount.getText().toString().trim())) {
            ToastUtils.showToast(getActivity(), getResources().getString(R.string.withdrawal_paypal_account_no));
        } else if (TextUtils.isEmpty(this.etPayPalName.getText().toString().trim())) {
            showToast(R.string.enter_cash_name);
        } else {
            this.f21380g.setPayPalAccount(this.etPayPalAccount.getText().toString().trim());
            this.f21380g.setPayPalName(this.etPayPalName.getText().toString());
            d1(BaseConfig.WITHDRAWAL_PAY_PAL);
        }
    }

    private void Y0() {
        com.guochao.faceshow.aaspring.manager.b.f(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, BaseConfig.WITHDRAWAL_CACHE, this.f21380g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z0(boolean z10) {
        if (z10) {
            N0();
            this.f21374a = 9;
            this.ivWithdrawalLogo.setImageResource(R.mipmap.withdrawal_payoneer);
            this.tvWithdrawalWay.setText(R.string.payoneer);
        }
        if (!TextUtils.isEmpty(this.f21380g.getPayoneerAccount())) {
            if (this.f21387n == null) {
                this.f21387n = new PayoneerData();
            }
            this.f21387n.setId(this.f21380g.getPayoneerAccount());
        }
        if (!TextUtils.isEmpty(this.f21380g.getPayoneerId())) {
            this.etPayoneerId.setText(this.f21380g.getPayoneerId());
            this.f21387n.setPayoneerId(this.f21380g.getPayoneerId());
            b1(BaseConfig.WITHDRAWAL_PAYONEER);
        } else if (z10) {
            b1(-1);
        } else {
            com.guochao.faceshow.aaspring.modulars.personal.b.h(getActivity(), 0);
        }
    }

    private void a1() {
        String str = "";
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            if (!TextUtils.isEmpty(locales.get(0).getCountry())) {
                str = locales.get(0).getCountry();
            }
        } else if (!TextUtils.isEmpty(Locale.getDefault().getCountry())) {
            str = Locale.getDefault().getCountry();
        }
        CountryUtils.getNationalFlagAndCode(this, new a(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1(int i9) {
        if (i9 == BaseConfig.WITHDRAWAL_ALI_PAY) {
            this.llAliPayLayout.setVisibility(0);
            this.llPayoneerv2Layout.setVisibility(8);
            this.llPayoneerLayout.setVisibility(8);
            this.llPayPalLayout.setVisibility(8);
            this.llBankCardLayout.setVisibility(8);
            this.tvAddPayoneer.setVisibility(8);
            this.tvPayoneerTip.setVisibility(8);
            this.ivWithdrawalLogo.setVisibility(0);
            this.ivWithdrawalLogo.setImageResource(R.mipmap.withdrawal_zfb);
            this.tvWithdrawalWay.setText(getString(R.string.alipay));
            this.f21374a = 1;
        } else if (i9 == BaseConfig.WITHDRAWAL_BANK_CARD) {
            this.llAliPayLayout.setVisibility(8);
            this.llPayoneerv2Layout.setVisibility(8);
            this.llPayoneerLayout.setVisibility(8);
            this.llPayPalLayout.setVisibility(8);
            this.llBankCardLayout.setVisibility(0);
            this.tvAddPayoneer.setVisibility(8);
            this.tvPayoneerTip.setVisibility(8);
            this.tvWithdrawalWay.setText(getString(R.string.bank_card));
            this.ivWithdrawalLogo.setVisibility(0);
            this.ivWithdrawalLogo.setImageResource(R.mipmap.withdrawal_yhk);
            this.f21374a = 4;
        } else if (i9 == BaseConfig.WITHDRAWAL_PAY_PAL) {
            this.llAliPayLayout.setVisibility(8);
            this.llPayoneerv2Layout.setVisibility(8);
            this.llPayoneerLayout.setVisibility(8);
            this.llPayPalLayout.setVisibility(0);
            this.llBankCardLayout.setVisibility(8);
            this.tvAddPayoneer.setVisibility(8);
            this.tvPayoneerTip.setVisibility(8);
            this.tvWithdrawalWay.setText(getString(R.string.paypal));
            this.ivWithdrawalLogo.setVisibility(0);
            this.ivWithdrawalLogo.setImageResource(R.mipmap.withdrawal_paypal);
            this.f21374a = 5;
        } else if (i9 == BaseConfig.WITHDRAWAL_PAYONEER) {
            this.llAliPayLayout.setVisibility(8);
            this.llPayoneerv2Layout.setVisibility(8);
            this.llPayoneerLayout.setVisibility(0);
            this.llPayPalLayout.setVisibility(8);
            this.llBankCardLayout.setVisibility(8);
            this.tvAddPayoneer.setVisibility(0);
            this.tvPayoneerTip.setVisibility(0);
            this.tvWithdrawalWay.setText(getString(R.string.payoneer));
            this.ivWithdrawalLogo.setVisibility(0);
            this.ivWithdrawalLogo.setImageResource(R.mipmap.withdrawal_payoneer);
            UrlUtils.checkLink(this.tvPayoneerTip);
            this.f21374a = 9;
        } else if (i9 == BaseConfig.WITHDRAWAL_PAYONEERV2) {
            this.llAliPayLayout.setVisibility(8);
            this.llPayoneerv2Layout.setVisibility(0);
            this.llPayoneerLayout.setVisibility(8);
            this.llPayPalLayout.setVisibility(8);
            this.llBankCardLayout.setVisibility(8);
            this.tvAddPayoneer.setVisibility(8);
            this.tvPayoneerTip.setVisibility(8);
            this.tvWithdrawalWay.setText(getString(R.string.payoneer));
            this.ivWithdrawalLogo.setVisibility(0);
            this.ivWithdrawalLogo.setImageResource(R.mipmap.withdrawal_payoneer);
            this.f21374a = 11;
        } else {
            int i10 = BaseConfig.WITHDRAWAL_USDT;
            if (i9 == i10) {
                this.llAliPayLayout.setVisibility(8);
                this.llPayoneerv2Layout.setVisibility(8);
                this.llPayoneerLayout.setVisibility(8);
                this.llPayPalLayout.setVisibility(8);
                this.llBankCardLayout.setVisibility(8);
                this.tvAddPayoneer.setVisibility(8);
                this.tvPayoneerTip.setVisibility(8);
                this.tvWithdrawalWay.setText(getString(R.string.withdraw_USDT));
                this.ivWithdrawalLogo.setVisibility(0);
                this.ivWithdrawalLogo.setImageResource(R.mipmap.withdrawal_usdt);
                this.f21374a = 10;
            } else if (this.f21375b) {
                this.flPayoneer.setVisibility(8);
                this.llAliPayLayout.setVisibility(8);
                this.llPayoneerv2Layout.setVisibility(8);
                this.llPayoneerLayout.setVisibility(0);
                this.llPayPalLayout.setVisibility(8);
                this.llBankCardLayout.setVisibility(8);
                this.tvAddPayoneer.setVisibility(8);
                this.tvPayoneerTip.setVisibility(0);
                this.tvWithdrawalWay.setText(getString(R.string.payoneer));
                this.ivWithdrawalLogo.setVisibility(0);
                this.ivWithdrawalLogo.setImageResource(R.mipmap.withdrawal_payoneer);
                UrlUtils.checkLink(this.tvPayoneerTip);
                this.f21374a = 9;
            } else if (this.f21376c) {
                this.llAliPayLayout.setVisibility(8);
                this.llPayoneerv2Layout.setVisibility(8);
                this.llPayoneerLayout.setVisibility(8);
                this.llAliPayLayout.setVisibility(8);
                this.llBankCardLayout.setVisibility(8);
                this.tvAddPayoneer.setVisibility(8);
                this.tvPayoneerTip.setVisibility(8);
                this.ivWithdrawalLogo.setVisibility(8);
            } else if (this.f21377d) {
                b1(i10);
            }
        }
    }

    private boolean checkPwd() {
        return "1".equals(SpUtils.getStr(getActivity(), Contants.payPassword));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d1(int i9) {
        Y0();
        if (!checkPwd()) {
            showSetPwdDialog();
        } else {
            new n(getActivity(), R.style.commonDialog, getResources().getString(R.string.setting_enter_payment_password), new e(i9)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g1(@Nullable String str) {
        dismissProgressDialog();
        new com.guochao.faceshow.views.f(getActivity(), R.style.commonDialog, getResources().getString(R.string.packshenqing), new f(str)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAliPayData() {
        N0();
        b1(1);
        if (!TextUtils.isEmpty(this.f21380g.getAliPayAccount())) {
            this.etAliPayAccount.setText(this.f21380g.getAliPayAccount());
        }
        if (TextUtils.isEmpty(this.f21380g.getAliPayName())) {
            return;
        }
        this.etAliPayName.setText(this.f21380g.getAliPayName());
    }

    private void showDialog() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(this, new g());
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
            ToastUtils.showToast(getActivity(), getResources().getString(R.string.password_wrong));
            this.btnWithdrawal.performClick();
        } else {
            ToastUtils.showToast(getActivity(), getResources().getString(R.string.withdrawal_faile));
            finish();
        }
    }

    private void showSelectPayWay() {
        if (this.f21381h || com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitch() == 1 || com.guochao.faceshow.aaspring.manager.i.u().s().getPaypalSwitch() == 1 || com.guochao.faceshow.aaspring.manager.i.u().s().getUsdtSwitch() == 1) {
            new com.guochao.faceshow.views.a(this, this.f21381h, R.style.commonDialog, new j()).show();
        }
    }

    private void showSetPwdDialog() {
        new com.guochao.faceshow.views.e(getActivity(), R.style.commonDialog, getResources().getString(R.string.payment_password_no), new h()).k(getResources().getString(R.string.payment_password_setting)).show();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_withdrawal_new;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        getWindow().setBackgroundDrawable(new ColorDrawable(-1));
        setTitle(R.string.my_vallet_withdrawal);
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        WithdrawalChaChe withdrawalChaChe = (WithdrawalChaChe) com.guochao.faceshow.aaspring.manager.b.a(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, BaseConfig.WITHDRAWAL_CACHE, WithdrawalChaChe.class);
        if (withdrawalChaChe == null) {
            this.f21380g = new WithdrawalChaChe();
        } else {
            this.f21380g = withdrawalChaChe;
        }
        this.f21382i = getIntent().getIntExtra("payMode", 0);
        this.f21383j = getIntent().getStringExtra("money");
        this.f21381h = getIntent().getBooleanExtra("inChina", false);
        this.f21389p = getIntent().getBooleanExtra("isH5", false);
        if (this.f21381h) {
            TextView textView = this.tvAmount;
            textView.setText("￥ " + this.f21383j);
        } else {
            TextView textView2 = this.tvAmount;
            textView2.setText("US$ " + this.f21383j);
        }
        if (com.guochao.faceshow.aaspring.manager.i.u().s().getAliPaySwitch() == 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPaypalSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitchV2() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getUsdtSwitch() != 1) {
            initAliPayData();
        } else if (com.guochao.faceshow.aaspring.manager.i.u().s().getAliPaySwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPaypalSwitch() == 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitchV2() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getUsdtSwitch() != 1) {
            this.f21380g.setWithdrawalType(5);
            this.f21376c = true;
            this.ivWithdrawalMore.setVisibility(8);
            Q0();
        } else if (com.guochao.faceshow.aaspring.manager.i.u().s().getAliPaySwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPaypalSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitchV2() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitch() == 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getUsdtSwitch() != 1) {
            this.f21380g.setWithdrawalType(6);
            this.f21375b = true;
            this.ivWithdrawalMore.setVisibility(8);
            S0(1);
            Z0(true);
        } else if (com.guochao.faceshow.aaspring.manager.i.u().s().getAliPaySwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPaypalSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitchV2() == 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getUsdtSwitch() != 1) {
            this.f21380g.setWithdrawalType(8);
            this.ivWithdrawalMore.setVisibility(8);
            T0();
        } else if (com.guochao.faceshow.aaspring.manager.i.u().s().getAliPaySwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPaypalSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitchV2() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getUsdtSwitch() == 1) {
            this.f21380g.setWithdrawalType(7);
            this.ivWithdrawalMore.setVisibility(8);
            this.f21377d = true;
            W0();
        } else if (com.guochao.faceshow.aaspring.manager.i.u().s().getAliPaySwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPaypalSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitch() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitchV2() != 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getUsdtSwitch() != 1) {
            this.f21380g.setWithdrawalType(0);
            this.ivWithdrawalMore.setVisibility(8);
        } else if (this.f21380g.getWithdrawalType() == 1 && com.guochao.faceshow.aaspring.manager.i.u().s().getAliPaySwitch() == 1) {
            initAliPayData();
        } else if (this.f21380g.getWithdrawalType() == 5 && com.guochao.faceshow.aaspring.manager.i.u().s().getPaypalSwitch() == 1) {
            Q0();
        } else if (this.f21380g.getWithdrawalType() == 6 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitch() == 1) {
            S0(1);
            Z0(true);
        } else if (this.f21380g.getWithdrawalType() == 8 && com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitchV2() == 1) {
            T0();
        } else if (this.f21380g.getWithdrawalType() == 7 && com.guochao.faceshow.aaspring.manager.i.u().s().getUsdtSwitch() == 1) {
            W0();
        } else {
            b1(-1);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1 && i9 == 1001 && intent != null) {
            BankBean bankBean = (BankBean) intent.getSerializableExtra("bankBean");
            this.f21384k = bankBean;
            if (bankBean != null) {
                this.tvBankName.setText(bankBean.getBank_name());
                this.f21380g.setOpenBank(this.f21384k.getBank_name());
                this.f21380g.setBankId(this.f21384k.getBank_id());
            }
        } else if (i9 != 99 || intent == null) {
        } else {
            String stringExtra = intent.getStringExtra("content");
            this.f21385l = intent.getIntExtra("id", 0);
            if (!TextUtils.isEmpty(stringExtra)) {
                this.tvRegion.setText(stringExtra);
                this.f21380g.setCountry(stringExtra);
            }
            this.f21380g.setCountryId(this.f21385l);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPayoneerBindSuccess(PayoneerData payoneerData) {
        LogUtils.e("WithdrawalNewActivity", "status=1刷新");
        this.f21388o = true;
        S0(0);
    }

    @OnClick
    public void onViewClicked(View view) {
        List<PayoneerData> list;
        switch (view.getId()) {
            case R.id.btnWithdrawal /* 2131362172 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    if (this.f21375b && (((list = this.f21386m) == null || list.size() == 0) && TextUtils.isEmpty(this.etPayoneerId.getText().toString()))) {
                        com.guochao.faceshow.aaspring.modulars.personal.b.h(getActivity(), 0);
                        return;
                    } else {
                        X0();
                        return;
                    }
                }
                return;
            case R.id.fl_region /* 2131362846 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    Intent intent = new Intent(this, AreaSelectActivity.class);
                    intent.putExtra(BaseConfig.AREA_TYPE, 1);
                    startActivityForResult(intent, 99);
                    return;
                }
                return;
            case R.id.fl_select_withdrawal_way /* 2131362848 */:
                if (this.f21376c || this.f21375b || this.f21377d) {
                    return;
                }
                showSelectPayWay();
                return;
            case R.id.ll_payoneer_select /* 2131363561 */:
                List<PayoneerData> list2 = this.f21386m;
                if (list2 == null || list2.size() <= 1) {
                    return;
                }
                com.guochao.faceshow.aaspring.modulars.personal.b.f((BaseActivity) getActivity(), this.f21386m, this.llPayoneerSelect, new c());
                return;
            case R.id.rlBankNameLayout /* 2131364262 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    startActivityForResult(BankListActivity.class, 1001);
                    return;
                }
                return;
            case R.id.tv_add_payoneer /* 2131364927 */:
                com.guochao.faceshow.aaspring.modulars.personal.b.h(getActivity(), 0);
                return;
            default:
                return;
        }
    }
}

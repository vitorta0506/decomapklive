package com.guochao.faceshow.aaspring.modulars.cancelaccount;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewStub;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CancelAccountRequestBean;
import com.guochao.faceshow.aaspring.beans.CheckThirdPartyResult;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelAccountActivity;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.ChangeCancelTypeDialog;
import com.guochao.faceshow.aaspring.modulars.login.activity.AreaSelectActivity;
import com.guochao.faceshow.aaspring.modulars.login.bean.ThirdPartyLoginPlatform;
import com.guochao.faceshow.aaspring.modulars.login.utils.l;
import com.guochao.faceshow.aaspring.modulars.personal.ChangeLoginOrPayPasswordPhoneActivity;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.GoogleLoginHelper;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import f8.c;
import f8.e;
import f8.h;
import f8.i;
import java.util.ArrayList;
import java.util.HashMap;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class CancelAccountActivity extends BaseActivity implements l.c, WebViewFragment.d {

    /* renamed from: a  reason: collision with root package name */
    private i f16586a;

    /* renamed from: b  reason: collision with root package name */
    private f8.e f16587b;

    /* renamed from: c  reason: collision with root package name */
    private h f16588c;

    /* renamed from: d  reason: collision with root package name */
    private f8.c f16589d;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayList<String> f16590e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private l f16591f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f16592g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f16593h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else if (CancelAccountActivity.this.isDestroyed() || CancelAccountActivity.this.isFinishing()) {
            } else {
                CancelAccountRequestBean cancelAccountRequestBean = new CancelAccountRequestBean();
                cancelAccountRequestBean.setId(num.intValue());
                cancelAccountRequestBean.setReasonType(CancelAccountActivity.this.getCurrentUser().userInfoDetail.regType);
                CancelReasonActivity.k0(CancelAccountActivity.this.getActivity(), cancelAccountRequestBean);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            CancelAccountActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
            if (CancelAccountActivity.this.f16588c.b()) {
                CancelAccountActivity.this.showToast(R.string.Error_in_mobile_phone_number_or_verification_number);
            } else if (CancelAccountActivity.this.f16589d.b()) {
                CancelAccountActivity.this.showToast(R.string.Error_in_mailbox_or_validation_code);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else if (CancelAccountActivity.this.isDestroyed() || CancelAccountActivity.this.isFinishing()) {
            } else {
                CancelAccountRequestBean cancelAccountRequestBean = new CancelAccountRequestBean();
                cancelAccountRequestBean.setId(num.intValue());
                cancelAccountRequestBean.setReasonType(CancelAccountActivity.this.getCurrentUser().userInfoDetail.regType);
                CancelReasonActivity.k0(CancelAccountActivity.this.getActivity(), cancelAccountRequestBean);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            CancelAccountActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
            CancelAccountActivity.this.showToast(R.string.private_screte_error);
        }
    }

    /* loaded from: classes3.dex */
    class c implements h.g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16596a;

        c(View view) {
            this.f16596a = view;
        }

        @Override // f8.h.g
        public void a(boolean z10) {
            this.f16596a.setEnabled(z10);
        }

        @Override // f8.h.g
        public void b() {
            AreaSelectActivity.start(CancelAccountActivity.this.getActivity(), ChangeLoginOrPayPasswordPhoneActivity.class.getSimpleName(), 99);
            CancelAccountActivity.this.overridePendingTransition(R.anim.fragment_enter, R.anim.do_nothing);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements ChangeCancelTypeDialog.a {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.ChangeCancelTypeDialog.a
        public void a(ChangeCancelTypeDialog changeCancelTypeDialog) {
            changeCancelTypeDialog.dismissAllowingStateLoss();
            CancelAccountActivity.s0(CancelAccountActivity.this.getActivity(), 2);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.ChangeCancelTypeDialog.a
        public void b(ChangeCancelTypeDialog changeCancelTypeDialog) {
            changeCancelTypeDialog.dismissAllowingStateLoss();
            if (CancelAccountActivity.this.f16590e.size() == 2) {
                CancelAccountActivity.s0(CancelAccountActivity.this.getActivity(), 3);
            } else if (CancelAccountActivity.this.f16590e.size() == 1) {
                CancelAccountActivity.s0(CancelAccountActivity.this.getActivity(), CancelAccountActivity.this.getString(R.string.cancel_account_phone_code).equals(CancelAccountActivity.this.f16590e.get(0)) ? 3 : 2);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements GoogleLoginHelper.OnGoogleResponse {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.GoogleLoginHelper.OnGoogleResponse
        public void onAuthResponse(String str) {
            CancelAccountActivity.this.n0(str);
        }

        @Override // com.guochao.faceshow.aaspring.utils.GoogleLoginHelper.OnGoogleResponse
        public void onResponse(String str, String str2, String str3, CheckThirdPartyResult checkThirdPartyResult) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else if (CancelAccountActivity.this.isDestroyed() || CancelAccountActivity.this.isFinishing()) {
            } else {
                CancelAccountActivity.this.dismissProgressDialog();
                CancelAccountRequestBean cancelAccountRequestBean = new CancelAccountRequestBean();
                cancelAccountRequestBean.setId(num.intValue());
                cancelAccountRequestBean.setReasonType(CancelAccountActivity.this.getCurrentUser().userInfoDetail.regType);
                CancelReasonActivity.k0(CancelAccountActivity.this.getActivity(), cancelAccountRequestBean);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
            CancelAccountActivity.this.dismissProgressDialog();
            if ("check failed".equals(aVar.c())) {
                CancelAccountActivity.this.showToast(R.string.choose_real_bind_account);
            } else {
                ToastUtils.debugToast(CancelAccountActivity.this.getActivity(), "三方授权校验失败");
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements HalloweenJSAction.OnCallBack {
        g() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void getReCaptChaToken(Object obj) {
            if (CancelAccountActivity.this.f16588c.p() != null) {
                CancelAccountActivity.this.f16588c.p().dismiss();
            }
            String str = (String) obj;
            CancelAccountActivity.this.debugAlert(str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            CancelAccountActivity.this.f16588c.s(str, true);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void n0(final String str) {
        LogUtils.i("zune: ", "openId: " + str);
        HandlerGetter.getMainHandler().post(new Runnable() { // from class: d8.e
            @Override // java.lang.Runnable
            public final void run() {
                CancelAccountActivity.this.o0(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o0(String str) {
        get(String.format("%s?uid=%s", "tokens/userout/checkUserThirdUid", str)).M(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p0(View view) {
        showProgressDialog("");
        if (!this.f16588c.b() && !this.f16589d.b()) {
            if (this.f16587b.b()) {
                HashMap hashMap = new HashMap();
                hashMap.put("pwd", this.f16587b.g());
                post("tokens/userout/checkUserPassword").E(hashMap).M(new b());
                return;
            }
            int i9 = getCurrentUser().userInfoDetail.regType;
            if (i9 == 9) {
                if (!this.f16592g) {
                    this.f16592g = true;
                    GoogleLoginHelper.getInstance().register(getActivity());
                }
                GoogleLoginHelper.getInstance().login((BaseActivity) getActivity(), true);
                return;
            }
            ThirdPartyLoginPlatform thirdPartyLoginPlatform = new ThirdPartyLoginPlatform();
            thirdPartyLoginPlatform.setType(i9);
            if (this.f16591f == null) {
                this.f16591f = y6.a.a(thirdPartyLoginPlatform, this);
            }
            l lVar = this.f16591f;
            if (lVar != null) {
                lVar.k(this);
                this.f16591f.m();
                return;
            }
            return;
        }
        post("api/user/register/checkCodeByLogout").y("type", Integer.valueOf(this.f16588c.b() ? 2 : 1)).y("code", this.f16588c.b() ? this.f16588c.n() : this.f16589d.j()).M(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q0(View view, String str) {
        if (str.length() >= 6) {
            view.setEnabled(true);
        } else {
            view.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(View view) {
        ChangeCancelTypeDialog.V1(getSupportFragmentManager(), this.f16590e).setOnItemClickListener(new d());
    }

    public static void s0(Context context, int i9) {
        Intent intent = new Intent(context, CancelAccountActivity.class);
        intent.putExtra("regType", i9);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l.c
    public void A(l lVar) {
        dismissProgressDialog();
        showToast(R.string.verification_failed);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l.c
    public void H(l.d dVar, CheckThirdPartyResult checkThirdPartyResult, l lVar) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_cancel_account;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        EventBus.getDefault().register(this);
        int intExtra = getIntent().getIntExtra("regType", -1);
        this.f16593h = intExtra == -1;
        setTitle(R.string.safety_certification);
        final View findViewById = findViewById(R.id.next_step);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: d8.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelAccountActivity.this.p0(view);
            }
        });
        f8.e eVar = new f8.e((ViewStub) findViewById(R.id.password_layout));
        this.f16587b = eVar;
        eVar.setOnTextChangeListener(new e.b() { // from class: d8.d
            @Override // f8.e.b
            public final void a(String str) {
                CancelAccountActivity.q0(findViewById, str);
            }
        });
        h hVar = new h((BaseActivity) getActivity(), (ViewStub) findViewById(R.id.phone_code_lay));
        this.f16588c = hVar;
        hVar.setOnNextEnableListener(new c(findViewById));
        f8.c cVar = new f8.c((ViewStub) findViewById(R.id.email_code_lay));
        this.f16589d = cVar;
        cVar.setOnNextEnableListener(new c.d() { // from class: d8.c
            @Override // f8.c.d
            public final void a(boolean z10) {
                findViewById.setEnabled(z10);
            }
        });
        this.f16586a = new i((ViewStub) findViewById(R.id.third_layout));
        View findViewById2 = findViewById(R.id.other_type);
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: d8.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelAccountActivity.this.r0(view);
            }
        });
        if (intExtra == 3) {
            this.f16588c.c();
            findViewById2.setVisibility(8);
        } else if (intExtra == 2) {
            this.f16589d.c();
            findViewById2.setVisibility(8);
        } else {
            String str = getCurrentUser().mobile;
            String str2 = getCurrentUser().pwd;
            String str3 = getCurrentUser().email;
            int i9 = getCurrentUser().userInfoDetail == null ? 0 : getCurrentUser().userInfoDetail.regType;
            if (!TextUtils.isEmpty(str2) && !"0".equals(str2)) {
                this.f16587b.c();
                if (!TextUtils.isEmpty(str)) {
                    this.f16590e.add(getString(R.string.cancel_account_phone_code));
                }
                if (!TextUtils.isEmpty(str3)) {
                    this.f16590e.add(getString(R.string.cancel_account_emal_code));
                }
                findViewById2.setVisibility(this.f16590e.isEmpty() ? 8 : 0);
            } else if (!TextUtils.isEmpty(str)) {
                this.f16588c.c();
                if (!TextUtils.isEmpty(str3)) {
                    this.f16590e.add(getString(R.string.cancel_account_emal_code));
                }
                findViewById2.setVisibility(this.f16590e.isEmpty() ? 8 : 0);
            } else if (!TextUtils.isEmpty(str3)) {
                this.f16589d.c();
                if (!TextUtils.isEmpty(str)) {
                    this.f16590e.add(getString(R.string.cancel_account_phone_code));
                }
                findViewById2.setVisibility(this.f16590e.isEmpty() ? 8 : 0);
            } else {
                findViewById2.setVisibility(8);
                switch (i9) {
                    case 4:
                        this.f16586a.d(R.mipmap.sanfang_icon_weixin, getString(R.string.wechat));
                        break;
                    case 5:
                        this.f16586a.d(R.mipmap.sanfang_icon_qq, getString(R.string.qq));
                        break;
                    case 6:
                        this.f16586a.d(R.mipmap.sanfang_icon_weibo, getString(R.string.sina));
                        break;
                    case 7:
                        this.f16586a.d(R.mipmap.sanfang_icon_facebook, getString(R.string.facebook));
                        break;
                    case 8:
                        this.f16586a.d(R.mipmap.sanfang_icon_twitter, getString(R.string.Twitter));
                        break;
                    case 9:
                        this.f16586a.d(R.mipmap.sanfang_icon_google, "Google");
                        break;
                    case 10:
                        this.f16586a.d(R.mipmap.sanfang_icon_ins, getString(R.string.Instagram));
                        break;
                    case 11:
                        this.f16586a.d(R.mipmap.sanfang_icon_line, Constants.ThirdPartyLogin.PLATFORM_LINE);
                        break;
                    case 12:
                        this.f16586a.d(R.mipmap.sanfang_icon_vk, "VK");
                        break;
                }
                findViewById.setEnabled(true);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l.c
    public void k(int i9, String str, l lVar) {
        dismissProgressDialog();
        showToast(R.string.verification_failed);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (intent == null) {
            dismissProgressDialog();
            showToast(R.string.verification_failed);
            return;
        }
        if (i9 == 99) {
            String stringExtra = intent.getStringExtra("country_num");
            String stringExtra2 = intent.getStringExtra("logo");
            h hVar = this.f16588c;
            if (hVar != null) {
                hVar.t(stringExtra, stringExtra2);
            }
        }
        l lVar = this.f16591f;
        if (lVar != null) {
            lVar.i(i9, i10, intent);
        }
        GoogleLoginHelper.getInstance().onActivityResult(i9, i10, intent, new e());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l.c
    public void onAuthResponse(String str) {
        n0(str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onBindWebView(WebView webView) {
        if (this.f16588c.p() != null) {
            ((HalloweenJSAction) this.f16588c.p().getJSAction()).setOnCallBack(new g());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        GoogleLoginHelper.getInstance().unregister();
        l lVar = this.f16591f;
        if (lVar != null) {
            lVar.n(this);
            this.f16591f.g();
        }
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        if (this.f16593h) {
            e8.b.c().f();
            e8.a.c().f();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFinishEvent(String str) {
        if ("CancelAccountActivity: finish".equals(str)) {
            finish();
        }
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

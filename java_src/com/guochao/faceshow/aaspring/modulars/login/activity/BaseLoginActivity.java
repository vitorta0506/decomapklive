package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CheckThirdPartyResult;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog;
import com.guochao.faceshow.aaspring.modulars.login.bean.ThirdPartyLoginPlatform;
import com.guochao.faceshow.aaspring.modulars.login.fragment.OtherThirdLoginTypeFragment;
import com.guochao.faceshow.aaspring.modulars.login.fragment.ThirdPartyLoginTypeFragment;
import com.guochao.faceshow.aaspring.modulars.login.utils.LoginGate;
import com.guochao.faceshow.aaspring.modulars.login.utils.j;
import com.guochao.faceshow.aaspring.modulars.login.utils.l;
import com.guochao.faceshow.aaspring.modulars.login.utils.m;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.TimeoutRunnable;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
/* loaded from: classes3.dex */
public abstract class BaseLoginActivity extends BaseActivity implements ThirdPartyLoginTypeFragment.a, l.c {

    /* renamed from: f  reason: collision with root package name */
    static final SparseArray<String> f20176f;

    /* renamed from: g  reason: collision with root package name */
    static final SparseArray<String> f20177g;

    /* renamed from: h  reason: collision with root package name */
    static final SparseArray<String> f20178h;

    /* renamed from: a  reason: collision with root package name */
    TimeoutRunnable f20179a = new TimeoutRunnable();

    /* renamed from: b  reason: collision with root package name */
    Handler f20180b = new Handler();

    /* renamed from: c  reason: collision with root package name */
    int f20181c;

    /* renamed from: d  reason: collision with root package name */
    protected int f20182d;

    /* renamed from: e  reason: collision with root package name */
    public l f20183e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ThirdPartyLoginPlatform f20184a;

        a(ThirdPartyLoginPlatform thirdPartyLoginPlatform) {
            this.f20184a = thirdPartyLoginPlatform;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            BaseLoginActivity.this.g0(this.f20184a);
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements LoginCancelAccountDialog.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ThirdPartyLoginPlatform f20186a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FaceCastBaseResponse f20187b;

        b(ThirdPartyLoginPlatform thirdPartyLoginPlatform, FaceCastBaseResponse faceCastBaseResponse) {
            this.f20186a = thirdPartyLoginPlatform;
            this.f20187b = faceCastBaseResponse;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog.b
        public void onConfirm() {
            BaseLoginActivity.this.i0(this.f20186a, this.f20187b);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.LoginCancelAccountDialog.b
        public void onDismiss() {
            BaseLoginActivity.this.dismissLoading();
        }
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        f20176f = sparseArray;
        SparseArray<String> sparseArray2 = new SparseArray<>();
        f20177g = sparseArray2;
        SparseArray<String> sparseArray3 = new SparseArray<>();
        f20178h = sparseArray3;
        sparseArray.put(7, "facebook_click_2737");
        sparseArray.put(9, "g_click_2737");
        sparseArray.put(8, "twitter_click_2737");
        sparseArray.put(10, "ins_click_2737");
        sparseArray.put(11, "line_click_2737");
        sparseArray.put(12, "vk_click_2737");
        sparseArray.put(4, "wechat_click_2737");
        sparseArray.put(6, "weibo_click_2737");
        sparseArray.put(5, "qq_click_2737");
        sparseArray.put(3, "phone_click_2737");
        sparseArray.put(2, "mail_click_2737");
        sparseArray2.put(7, "facebook_port_result_2737");
        sparseArray2.put(9, "g_port_result_2737");
        sparseArray2.put(8, "twitter_port_result_2737");
        sparseArray2.put(10, "ins_port_result_2737");
        sparseArray2.put(11, "line_port_result_2737");
        sparseArray2.put(12, "vk_port_result_2737");
        sparseArray2.put(4, "wechat_port_result_2737");
        sparseArray2.put(6, "weibo_port_result_2737");
        sparseArray2.put(5, "qq_port_result_2737");
        sparseArray2.put(3, "phone_port_result_2737");
        sparseArray2.put(2, "mail_port_result_2737");
        sparseArray3.put(7, "Facebook_sigin_success_2737");
        sparseArray3.put(9, "g_sigin_success_2737");
        sparseArray3.put(8, "twitter_sigin_success_2737");
        sparseArray3.put(10, "ins_sigin_success_2737");
        sparseArray3.put(11, "line_sigin_success_2737");
        sparseArray3.put(12, "vk_sigin_success_2737");
        sparseArray3.put(4, "wechat_sigin_success_2737");
        sparseArray3.put(6, "weibo_sigin_success_2737");
        sparseArray3.put(5, "qq_sigin_success_2737");
        sparseArray3.put(3, "phone_sigin_success_2737");
        sparseArray3.put(2, "mail_sigin_success_2737");
    }

    private void e0(CheckThirdPartyResult checkThirdPartyResult, int i9) {
        ThirdPartyLoginPlatform m10 = j.e().m();
        if (checkThirdPartyResult.getReg() == 1) {
            BaseApplication.getInstance().normalLogined = true;
            FaceCastBaseResponse<UserBean> faceCastBaseResponse = new FaceCastBaseResponse<>();
            faceCastBaseResponse.setResult(checkThirdPartyResult.getUser());
            if (com.guochao.faceshow.aaspring.modulars.login.utils.e.g((BaseActivity) getActivity(), checkThirdPartyResult.getUser(), checkThirdPartyResult.getUser().logoutStatus, new b(m10, faceCastBaseResponse))) {
                return;
            }
            i0(m10, faceCastBaseResponse);
            return;
        }
        dismissProgressDialog();
        if (i9 > 0 && i9 < 18) {
            ToastUtils.showToast(this, getString(R.string.could_not_reg_under_13));
            return;
        }
        if (m10 != null) {
            int type = m10.getType();
            String str = f20177g.get(type);
            if (!TextUtils.isEmpty(str)) {
                Bundle bundle = new Bundle();
                bundle.putString(EventTrackingUtils.CONTENT_TYPE, "注册");
                EventTrackingUtils.getInstance().track(str, bundle);
            }
            if (type != 3 && PhoneUtils.checkInterceptLoginType(this)) {
                return;
            }
        }
        l0(checkThirdPartyResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(ThirdPartyLoginPlatform thirdPartyLoginPlatform) {
        l a10 = y6.a.a(thirdPartyLoginPlatform, this);
        if (a10 == null) {
            return;
        }
        l lVar = this.f20183e;
        if (lVar != null) {
            lVar.g();
        }
        if (a10.l()) {
            showProgressDialog("");
        }
        a10.k(this);
        a10.m();
        this.f20183e = a10;
        this.f20180b.postDelayed(this.f20179a, 15000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(ThirdPartyLoginPlatform thirdPartyLoginPlatform, FaceCastBaseResponse<UserBean> faceCastBaseResponse) {
        com.guochao.faceshow.aaspring.modulars.login.utils.e.e(getActivity(), faceCastBaseResponse);
        startActivityUpIn(new Intent(getApplicationContext(), MainActivity.class));
        if (thirdPartyLoginPlatform != null) {
            int type = thirdPartyLoginPlatform.getType();
            String str = f20177g.get(type);
            if (!TextUtils.isEmpty(str)) {
                Bundle bundle = new Bundle();
                bundle.putString(EventTrackingUtils.CONTENT_TYPE, "登录");
                EventTrackingUtils.getInstance().track(str, bundle);
            }
            String str2 = f20178h.get(type);
            if (!TextUtils.isEmpty(str2)) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(EventTrackingUtils.CONTENT_TYPE, SpUtils.getLogoutReason());
                EventTrackingUtils.getInstance().track(str2, bundle2);
            }
            SpUtils.setInt(BaseApplication.getInstance(), SpUtils.SP_LAST_LOGIN_TYPE, type);
        }
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l.c
    public void A(l lVar) {
        dismissProgressDialog();
        this.f20180b.removeCallbacks(this.f20179a);
        lVar.n(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.fragment.ThirdPartyLoginTypeFragment.a
    public void D(View view, ThirdPartyLoginPlatform thirdPartyLoginPlatform) {
        if (LoginGate.canLogin() && DisableDoubleClickUtils.canClick(view)) {
            j.e().z(thirdPartyLoginPlatform);
            String str = f20176f.get(thirdPartyLoginPlatform.getType());
            if (!TextUtils.isEmpty(str)) {
                EventTrackingUtils.getInstance().track(str);
            }
            int type = thirdPartyLoginPlatform.getType();
            if (type == 2) {
                startActivity(new Intent(this, LoginOrRegisterActivity.class).addFlags(335544320));
            } else if (type == 3) {
                startActivity(new Intent(this, LoginOrRegisterActivity.class).addFlags(335544320));
            } else if (type != 4) {
                if (type != 5) {
                    g0(thirdPartyLoginPlatform);
                } else {
                    alert(getString(R.string.qq_not_support), null, new a(thirdPartyLoginPlatform), true);
                }
            } else if (!PackageUtils.isAppInstalled(getActivity(), SharePlatformBean.WechatPackage)) {
                showToast(R.string.App_is_not_installed);
            } else {
                g0(thirdPartyLoginPlatform);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l.c
    public void H(l.d dVar, CheckThirdPartyResult checkThirdPartyResult, l lVar) {
        this.f20180b.removeCallbacks(this.f20179a);
        if (checkThirdPartyResult.getReg() == 0) {
            k0(dVar.f(), dVar.e(), dVar.c(), dVar.b(), dVar.a(), dVar.d());
            j.e().t(checkThirdPartyResult.getEmail());
            e0(checkThirdPartyResult, dVar.a());
        } else {
            e0(checkThirdPartyResult, checkThirdPartyResult.getUser() != null ? checkThirdPartyResult.getUser().getAge() : 0);
        }
        lVar.n(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l.c
    public void k(int i9, String str, l lVar) {
        dismissProgressDialog();
        this.f20180b.removeCallbacks(this.f20179a);
        lVar.n(this);
    }

    protected void k0(String str, String str2, String str3, String str4, int i9, String str5) {
        if (!TextUtils.isEmpty(str3) && str3.length() > 18) {
            str3 = str3.substring(0, 18);
        }
        j.e().A(str, str5);
        j.e().x(str3);
        j.e().q(str2);
        try {
            if ("2".equals(str4)) {
                str4 = "0";
            }
            j.e().u(Integer.parseInt(str4));
        } catch (Exception unused) {
        }
    }

    public void l0(CheckThirdPartyResult checkThirdPartyResult) {
        j.e().A(checkThirdPartyResult.getUid(), checkThirdPartyResult.getUnionid());
        startActivity(new Intent(getActivity(), CompletePersonalInfoActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        l lVar = this.f20183e;
        if (lVar != null) {
            lVar.i(i9, i10, intent);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l.c
    public /* synthetic */ void onAuthResponse(String str) {
        m.a(this, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        int intExtra = j.e().m() == null ? getIntent().getIntExtra("LoginType", 3) : j.e().m().getType();
        this.f20181c = intExtra;
        this.f20182d = intExtra;
        super.onCreate(bundle);
        if (findViewById(R.id.other_area) != null) {
            getSupportFragmentManager().beginTransaction().add(R.id.other_area, OtherThirdLoginTypeFragment.R1(this.f20181c)).commit();
        }
        View findViewById = findViewById(R.id.status_bar_holder);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        l lVar = this.f20183e;
        if (lVar != null) {
            lVar.g();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }
}

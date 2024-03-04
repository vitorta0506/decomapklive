package com.guochao.faceshow.mine.view;

import android.app.Dialog;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import butterknife.BindView;
import butterknife.OnClick;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.db.FriendGroupRepository;
import com.guochao.faceshow.aaspring.db.FriendRepository;
import com.guochao.faceshow.aaspring.modulars.googlepay.TestGoogleSignActivity;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.personal.AccountSecurityActivity;
import com.guochao.faceshow.aaspring.modulars.setting.NetworkAnalysisActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.push.PushSettingActivity;
import com.guochao.faceshow.utils.AAMethod;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DataCleanManager;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.web.WebViewActivity;
import io.reactivex.k;
import vh.o;
/* loaded from: classes4.dex */
public class SettingActivity extends BaseActivity {
    @BindView
    View debugWindow;
    @BindView
    TextView mCheckVersionText;
    @BindView
    View pipFL;
    @BindView
    View pipTV;
    @BindView
    View testGoogleSign;
    @BindView
    ImageView tvAccountSafeEmail;

    /* loaded from: classes4.dex */
    class a extends SimpleObserver<String> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(String str) {
            super.onNext((a) str);
            SettingActivity.this.setTextViewText(R.id.tvCacheSize_chat, str);
        }
    }

    /* loaded from: classes4.dex */
    class b implements o<Integer, String> {
        b() {
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(Integer num) throws Exception {
            return DataCleanManager.getIMTotalCacheSize();
        }
    }

    /* loaded from: classes4.dex */
    class c extends SimpleObserver<String> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(String str) {
            super.onNext((c) str);
            SettingActivity.this.setTextViewText(R.id.tvCacheSize, str);
        }
    }

    /* loaded from: classes4.dex */
    class d implements o<Integer, String> {
        d() {
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(Integer num) throws Exception {
            return DataCleanManager.getTotalCacheSize();
        }
    }

    /* loaded from: classes4.dex */
    class e extends com.guochao.faceshow.aaspring.base.http.callback.c<UserBean> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(UserBean userBean, @NonNull FaceCastBaseResponse<UserBean> faceCastBaseResponse) {
            b8.e.g().a(faceCastBaseResponse.getResult(), false);
            if (userBean == null || userBean.getIsUpdate() == 0) {
                return;
            }
            gb.c.p().u(SettingActivity.this.getCurrentUser().getIsUpdate() == 1).l(SettingActivity.this);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserBean> aVar) {
        }
    }

    /* loaded from: classes4.dex */
    class f implements DataCleanManager.ClearCallBack {
        f() {
        }

        @Override // com.guochao.faceshow.utils.DataCleanManager.ClearCallBack
        public void onSucceed() {
            SettingActivity.this.setTextViewText(R.id.tvCacheSize, DataCleanManager.getTotalCacheSize());
            SettingActivity.this.showToast(R.string.Cleaned_up);
            SettingActivity.this.dismissProgressDialog();
            SpUtils.setLong(BaseApplication.getInstance(), "last_clear_banner", System.currentTimeMillis());
        }
    }

    /* loaded from: classes4.dex */
    class g implements e.a {

        /* loaded from: classes4.dex */
        class a implements DataCleanManager.ClearCallBack {

            /* renamed from: com.guochao.faceshow.mine.view.SettingActivity$g$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class C0254a implements DataCleanManager.ClearCallBack {
                C0254a() {
                }

                @Override // com.guochao.faceshow.utils.DataCleanManager.ClearCallBack
                public void onSucceed() {
                    SettingActivity.this.setTextViewText(R.id.tvCacheSize_chat, DataCleanManager.getIMTotalCacheSize());
                    SettingActivity.this.showToast(R.string.Cleaned_up);
                    SettingActivity.this.dismissProgressDialog();
                }
            }

            a() {
            }

            @Override // com.guochao.faceshow.utils.DataCleanManager.ClearCallBack
            public void onSucceed() {
                DataCleanManager.clearIMFiles(new C0254a());
            }
        }

        g() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                SettingActivity.this.showProgressDialog("");
                DataCleanManager.clearIMFiles(new a());
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    public void b0() {
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(SpUtils.getStr(this, "phone"));
        boolean z12 = !TextUtils.isEmpty(SpUtils.getStr(this, "email"));
        boolean z13 = !TextUtils.isEmpty(SpUtils.getStr(this, Contants.payPassword)) && "1".equals(SpUtils.getStr(this, Contants.payPassword));
        z10 = (TextUtils.isEmpty(SpUtils.getStr(this, Contants.USER_PWD)) || !"1".equals(SpUtils.getStr(this, Contants.USER_PWD))) ? false : false;
        if (z11 && z12 && z13 && z10) {
            this.tvAccountSafeEmail.setVisibility(8);
        } else {
            this.tvAccountSafeEmail.setVisibility(0);
        }
    }

    @OnClick
    public void getEvent(View view) {
        switch (view.getId()) {
            case R.id.account_safe_lay /* 2131361888 */:
                startActivity(AccountSecurityActivity.class);
                return;
            case R.id.btnExit /* 2131362162 */:
                JPushInterface.deleteAlias(this, PushUtils.sSequence);
                VoiceRoomMiniHelper.releaseAll();
                startActivity(ChooseLoginTypeActivity.class);
                b8.e.g().a(null, false);
                AppManager.getInstance().killActivity(MainActivity.class);
                SpUtils.setInt(BaseApplication.getInstance(), SpUtils.SP_REASON_LOGOUT, 1);
                SpUtils.setInt(BaseApplication.getInstance(), Constants.cacheKey, 0);
                Bundle bundle = new Bundle();
                bundle.putString(EventTrackingUtils.CONTENT_TYPE, SpUtils.getLastLoginType());
                EventTrackingUtils.getInstance().track(EventTrackingUtils.LOGOUT_CLICK, bundle);
                FaceToFaceFloatWindowManager.getInstance().closeFaceToFacePerformClick(this);
                new FriendRepository(this).deleteAllFriendAsyn();
                new FriendGroupRepository(this).deleteAllGroupAsyn();
                finish();
                return;
            case R.id.cache_all /* 2131362213 */:
                showProgressDialog("");
                DataCleanManager.clearAllCache(new f());
                return;
            case R.id.cache_im /* 2131362214 */:
                alert(getString(R.string.Are_you_sure_clean_up), null, new g(), false);
                return;
            case R.id.curr_version_text /* 2131362435 */:
                new PostRequest(this, null, "api/sys/tokenLogin").D(JThirdPlatFormInterface.KEY_TOKEN, SpUtils.getStr(this, Contants.USER_TOKEN)).M(new e());
                return;
            case R.id.enter_debug /* 2131362623 */:
                showError();
                return;
            case R.id.pipTV /* 2131363983 */:
                startActivity(PIPSettingsActivity.class);
                return;
            case R.id.push_seting /* 2131364110 */:
                startActivity(PushSettingActivity.class);
                return;
            case R.id.test_google_sign /* 2131364676 */:
                startActivity(new Intent(this, TestGoogleSignActivity.class));
                return;
            case R.id.tvCopyrightStatement /* 2131364872 */:
                WebViewActivity.createBuilder().e(4).a(getActivity());
                return;
            case R.id.tvMultiLanguage /* 2131364890 */:
                startActivity(MultilingualActivity.class);
                return;
            case R.id.tvNetworkAnalysis /* 2131364893 */:
                startActivity(NetworkAnalysisActivity.class);
                return;
            case R.id.tvPrivacyPolicy /* 2131364903 */:
                UrlUtils.goPrivacy(getActivity());
                return;
            case R.id.tvPrivacySet /* 2131364904 */:
                startActivity(PrivacySettingsActivity.class);
                return;
            case R.id.tvRegion /* 2131364905 */:
                startActivity(AreaActivity.class);
                return;
            case R.id.tvTermsOfUse /* 2131364916 */:
                UrlUtils.goTermOfUse(getActivity());
                return;
            default:
                return;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_setting;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        findViewById(R.id.facecast_area).setVisibility(0);
        if (Build.VERSION.SDK_INT < 26) {
            this.pipFL.setVisibility(8);
            this.pipTV.setVisibility(8);
        }
        this.mTitleBarHelper.f();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        k.just(1).subscribeOn(di.a.b()).observeOn(sh.a.a()).map(new b()).subscribe(new a());
        k.just(1).subscribeOn(di.a.b()).observeOn(sh.a.a()).map(new d()).subscribe(new c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        gb.c.p().s(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.setting_text);
        this.mCheckVersionText.setText(AAMethod.getFullVersionName(getActivity()));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i9, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i9, strArr, iArr);
        gb.c.p().t();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        b0();
    }
}

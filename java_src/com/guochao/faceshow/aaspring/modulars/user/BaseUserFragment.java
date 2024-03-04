package com.guochao.faceshow.aaspring.modulars.user;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import b8.d;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.navigator.ARouterNavigator;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.UserCenterBean;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.dressmarket.DressUpMarketActivity;
import com.guochao.faceshow.aaspring.modulars.onevone.history.OneVOneHistoryActivity;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.MyDressUpActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PersonalDynamicListActivity;
import com.guochao.faceshow.aaspring.modulars.user.view.QCodeDialog;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.modulars.user.vip.WhoSawMeActivity;
import com.guochao.faceshow.aaspring.modulars.vip.activity.BuyVipGuideActivity;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipContainerDialogFragment;
import com.guochao.faceshow.aaspring.modulars.welcome.RatingDialog;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.activity.LevelActivity;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.mine.view.ContributionListActivity;
import com.guochao.faceshow.mine.view.MyFansActivity;
import com.guochao.faceshow.mine.view.MyFollowActivity;
import com.guochao.faceshow.mine.view.MyVideotActivity;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.mine.view.SettingActivity;
import com.guochao.faceshow.signin.activity.UserSigninCenterActivity;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.ObservableScrollView;
import com.guochao.faceshow.web.WebViewActivity;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import p9.a;
/* loaded from: classes3.dex */
public abstract class BaseUserFragment extends BaseFragment implements d.a, a.e {

    /* renamed from: a  reason: collision with root package name */
    private boolean f23085a = true;

    /* renamed from: b  reason: collision with root package name */
    private UserCenterSexLevel f23086b;
    @BindView
    View bindEmailWarn;

    /* renamed from: c  reason: collision with root package name */
    private UserCenterBean f23087c;
    @BindView
    ViewGroup contentLay;
    @BindView
    VipIndicatorView mVipIndicatorView;
    @BindView
    ImageView mvpIV;
    @BindView
    LinearLayout mvpLL;
    @BindView
    ObservableScrollView scrollView;
    @BindView
    FrameLayout titleLay;
    @BindView
    TextView tvTitle;
    @BindView
    TextView tvToBeVip;
    @BindView
    HeadPortraitView userAvatar;
    @BindView
    ViewGroup userCenterAgeLevel;
    @BindView
    TextView userFans;
    @BindView
    TextView userFollow;
    @BindView
    TextView userId;
    @BindView
    TextView userId2;
    @BindView
    View userIdLay;
    @BindView
    TextView userLike;
    @BindView
    TextView userName;
    @BindView
    ImageView userQcode;
    @BindView
    ImageView userSetting;
    @BindView
    TextView vipLookNum;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<UserCenterBean> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UserCenterBean userCenterBean, @NonNull FaceCastBaseResponse<UserCenterBean> faceCastBaseResponse) {
            BaseUserFragment.this.Z1(userCenterBean);
            BaseUserFragment.this.f23087c = userCenterBean;
            UserBean currentUser = BaseUserFragment.this.getCurrentUser();
            if (userCenterBean != null) {
                currentUser.img = userCenterBean.getUserImg();
                currentUser.levelId = userCenterBean.getLevelId();
                currentUser.setSmallImg(userCenterBean.getUserSmallImg());
                currentUser.sex = userCenterBean.getUserSex();
                currentUser.setUserAge(userCenterBean.getUserAge());
                currentUser.payPassword = SpUtils.getStr(BaseUserFragment.this.getActivity(), Contants.payPassword);
                currentUser.setUserVipMsg(userCenterBean.getUserVipMsg());
                currentUser.setUserMvpInfo(userCenterBean.getUserMvpInfo());
                BaseUserFragment.this.f23086b.d(b8.e.g().c());
                BaseUserFragment.this.Y1(userCenterBean.getUserVipMsg());
                if (userCenterBean.getLookMeNum() != null) {
                    BaseUserFragment.this.vipLookNum.setText(String.valueOf(userCenterBean.getLookMeNum()));
                } else {
                    BaseUserFragment.this.vipLookNum.setText("--");
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UserCenterBean> aVar) {
            BaseUserFragment.this.Z1(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnLongClickListener {
        b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class c implements ObservableScrollView.a {
        c() {
        }

        @Override // com.guochao.faceshow.views.ObservableScrollView.a
        public void a(ObservableScrollView observableScrollView, int i9, int i10, int i11, int i12) {
            if (i10 >= StatusBarHelper.getStatusbarHeight(BaseApplication.getInstance())) {
                BaseUserFragment.this.c2(false);
            } else {
                BaseUserFragment.this.c2(true);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements Function1<Feature, Unit> {
        d() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Feature feature) {
            UserBean currentUser = BaseUserFragment.this.getCurrentUser();
            if (feature.isAvailable()) {
                BaseUserFragment.this.mvpLL.setVisibility(0);
                if (currentUser.getUserMvpInfo() != null && currentUser.getUserMvpInfo().mvpUrl != null && !TextUtils.isEmpty(currentUser.getUserMvpInfo().mvpUrl)) {
                    BaseUserFragment.this.mvpIV.setVisibility(0);
                    com.bumptech.glide.c.v(BaseUserFragment.this.mvpIV).r(currentUser.getUserMvpInfo().mvpUrl).m().Q0(BaseUserFragment.this.mvpIV);
                } else {
                    BaseUserFragment.this.mvpIV.setVisibility(8);
                }
            } else {
                BaseUserFragment.this.mvpLL.setVisibility(8);
                BaseUserFragment.this.mvpIV.setVisibility(8);
            }
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes3.dex */
    class e implements BuyVipContainerDialogFragment.d {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipContainerDialogFragment.d
        public void onDismiss() {
            BaseUserFragment.this.onResume();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V1() {
        this.userIdLay.measure(0, 0);
        if (this.userIdLay.getMeasuredWidth() >= ScreenTools.getScreenWidth() - DensityUtil.dp2px(144.0f)) {
            ((ViewGroup) this.userId.getParent()).setVisibility(8);
            ((ViewGroup) this.userId2.getParent()).setVisibility(0);
            return;
        }
        ((ViewGroup) this.userId.getParent()).setVisibility(0);
        ((ViewGroup) this.userId2.getParent()).setVisibility(8);
    }

    private void W1() {
        this.tvTitle.setMaxWidth(ScreenTools.getScreenWidth() - DensityUtil.dp2px(getContext(), 246.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(UserVipData userVipData) {
        if (userVipData.isVip()) {
            this.tvToBeVip.setText(getString(R.string.home_center_has_bean_vip, new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date(userVipData.getVipExpireTime()))));
        } else {
            this.tvToBeVip.setText(getString(R.string.home_center_be_vip));
        }
        a2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1(UserCenterBean userCenterBean) {
        if (userCenterBean == null) {
            userCenterBean = (UserCenterBean) com.guochao.faceshow.aaspring.manager.b.b("UserCenterBean" + getCurrentUser().getUserId(), UserCenterBean.class);
        }
        if (userCenterBean == null) {
            return;
        }
        this.userFollow.setText(Formatter.getFormat(userCenterBean.getFollowNum()));
        this.userFans.setText(Formatter.getFormat(userCenterBean.getFansNum()));
        this.userLike.setText(Formatter.getFormat(userCenterBean.getFriendLikeNum()));
        p9.a.g().B(userCenterBean.getDiamond());
        if (userCenterBean.getUserVipMsg() != null) {
            this.mVipIndicatorView.setVipLevel(userCenterBean.getUserVipMsg().getVipLevel());
            if (!TextUtils.isEmpty(userCenterBean.getUserVipMsg().getDressHead())) {
                this.userAvatar.setAvatarStrokeWidth(0);
            } else {
                this.userAvatar.setAvatarStrokeWidth(DensityUtil.dp2px(2.0f));
            }
        }
        this.userAvatar.f(userCenterBean, true);
        com.guochao.faceshow.aaspring.manager.b.e("UserCenterBean" + getCurrentUser().getUserId(), userCenterBean);
        this.userAvatar.setOnLongClickListener(new b());
    }

    private void a2() {
        String userName = b8.e.g().c().getUserName();
        if (userName != null && !userName.equals(this.userName.getText().toString())) {
            this.userName.setText(userName);
            this.userName.requestLayout();
        }
        if (((ViewGroup) this.userId2.getParent()).getVisibility() == 0) {
            return;
        }
        this.userIdLay.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.user.a
            @Override // java.lang.Runnable
            public final void run() {
                BaseUserFragment.this.V1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2(boolean z10) {
        this.f23085a = z10;
        if (z10) {
            this.titleLay.setBackgroundColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.transparent));
            this.tvTitle.setText("");
            return;
        }
        this.titleLay.setBackgroundColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.white));
        this.tvTitle.setText(getString(R.string.f16063me));
    }

    public void X1() {
        post(Contants.getInfoDetailV2).M(new a());
    }

    public void b2() {
        c2(this.f23085a);
        b8.e.g().c();
        if (TextUtils.isEmpty(b8.e.g().c().email)) {
            this.bindEmailWarn.setVisibility(0);
        } else {
            this.bindEmailWarn.setVisibility(8);
        }
        b8.e.g().c();
        this.userId.setText(b8.e.g().c().getUserId());
        this.userId2.setText(b8.e.g().c().getUserId());
        this.f23086b.d(b8.e.g().c());
        X1();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_user;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getActivity() instanceof BaseActivity) {
            ((BaseActivity) getActivity()).setLightStatusBar(true);
        }
        ((ViewGroup.MarginLayoutParams) view.findViewById(R.id.vip_lay).getLayoutParams()).topMargin = -r0;
        ((ViewGroup.MarginLayoutParams) view.findViewById(R.id.to_be_vip).getLayoutParams()).height = r0;
        UserFragmentKotlinBridge.observeFeatures(this);
        FontUtils.setFont(this.userFans, 3);
        FontUtils.setFont(this.userFollow, 3);
        FontUtils.setFont(this.userLike, 3);
        FontUtils.setFont(this.vipLookNum, 3);
        TextViewUtils.setCustomBold(this.tvTitle, this.userFollow, this.userFans, this.userLike, this.vipLookNum);
        this.f23086b = new UserCenterSexLevel(this.userCenterAgeLevel, false);
        this.titleLay.setPadding(0, StatusBarHelper.getStatusbarHeight(BaseApplication.getInstance()) + DensityUtil.dp2px(16.0f), 0, DensityUtil.dp2px(10.0f));
        this.contentLay.setPadding(0, StatusBarHelper.getStatusbarHeight(BaseApplication.getInstance()), 0, 0);
        W1();
        this.scrollView.setScrollViewListener(new c());
        b8.e.g().registerOnUserChangedListener(this);
        this.userAvatar.f(getCurrentUser(), true);
        FeatureKt.requireFeatureOnLifecycle(getViewLifecycleOwner(), Feature.MVP_CUSTOMER_SERVICE, new d());
        p9.a.g().c(this);
        Y1(getCurrentUser().getUserVipMsg());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // p9.a.e
    public /* synthetic */ void onCrystalsChanged(int i9) {
        p9.b.a(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        b8.e.g().unregisterOnUserChangedListener(this);
        p9.a.g().r(this);
    }

    @Override // p9.a.e
    public void onDiamondsChanged(int i9) {
        if (isDetached()) {
            return;
        }
        isAdded();
    }

    @Override // b8.d.a
    public void onLogout() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (BaseConfig.isChinese()) {
            return;
        }
        b2();
    }

    @Override // b8.d.a
    public void onUserChanged(UserBean userBean, UserBean userBean2) {
        if (TextUtils.isEmpty(b8.e.g().c().email)) {
            this.bindEmailWarn.setVisibility(0);
        } else {
            this.bindEmailWarn.setVisibility(8);
        }
        this.userId.setText(b8.e.g().c().getUserId());
        this.userId2.setText(b8.e.g().c().getUserId());
        a2();
        this.f23086b.d(b8.e.g().c());
    }

    @Override // b8.d.a
    public /* synthetic */ void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12) {
        b8.c.a(this, userBean, userBean2, z10, z11, z12);
    }

    @OnClick
    @Optional
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.dress_up_market_lay /* 2131362547 */:
                DressUpMarketActivity.start(getContext());
                ja.a.b().e("KEY_RED_DRESS_UP_MARKET");
                return;
            case R.id.earn_diamond_lay /* 2131362552 */:
                UserFragmentKotlinBridge.clickMoney(view);
                return;
            case R.id.feedback /* 2131362765 */:
                new WebViewActivity.e().e(1000).a(getActivity());
                return;
            case R.id.level_lay /* 2131363399 */:
                LevelActivity.start(requireContext());
                return;
            case R.id.mvpLL /* 2131363789 */:
                EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
                eventTrackingV2Utils.track(EventTrackingV2Utils.mvp_my_click);
                if (getCurrentUser().isRealMvp()) {
                    eventTrackingV2Utils.track(EventTrackingV2Utils.mvp_my_click_yes, "0");
                } else {
                    eventTrackingV2Utils.track(EventTrackingV2Utils.mvp_my_click_yes, "1");
                }
                MVPActivity.Companion.start(getActivity(), "", "1");
                return;
            case R.id.my_dress_up /* 2131363801 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    startActivity(new Intent(getActivity(), MyDressUpActivity.class));
                    return;
                }
                return;
            case R.id.my_wallet_lay /* 2131363810 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    ja.a.b().e("KEY_WALLET_RED_DOT");
                    MyWalletActivity.m0(getContext(), 4);
                    return;
                }
                return;
            case R.id.rating_us_lay /* 2131364130 */:
                new RatingDialog().show(getChildFragmentManager(), "RatingDialog");
                return;
            case R.id.sign_area /* 2131364490 */:
                UserSigninCenterActivity.start(view.getContext());
                return;
            case R.id.to_be_vip /* 2131364800 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    startActivity(new Intent(getActivity(), BuyVipGuideActivity.class));
                    return;
                }
                return;
            case R.id.top_fans_lay /* 2131364815 */:
                ContributionListActivity.start(getActivity(), b8.e.g().c().getUserId());
                return;
            case R.id.user_avatar /* 2131365254 */:
            case R.id.user_lay /* 2131365309 */:
                UserHomePageAct.start(getContext(), getCurrentUser().getUserId());
                return;
            case R.id.user_dynamic_lay /* 2131365263 */:
                PersonalDynamicListActivity.start(getContext(), getCurrentUser().getUserId(), getCurrentUser().getUserName());
                return;
            case R.id.user_fans_lay /* 2131365265 */:
                MyFansActivity.start(getContext(), getCurrentUser().getUserId());
                return;
            case R.id.user_follow_lay /* 2131365268 */:
                MyFollowActivity.start(getContext(), getCurrentUser().getUserId());
                return;
            case R.id.user_live_lay /* 2131365314 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    new ARouterNavigator(getContext(), RouterPath.ROUTER_GUILD_MY_LIVE_ACTIVITY).go();
                    return;
                }
                return;
            case R.id.user_onevone_lay /* 2131365320 */:
                startActivity(OneVOneHistoryActivity.class);
                return;
            case R.id.user_qcode /* 2131365329 */:
                QCodeDialog.W1(this.f23087c).show(getChildFragmentManager(), QCodeDialog.class.getSimpleName());
                return;
            case R.id.user_setting /* 2131365331 */:
                startActivity(SettingActivity.class);
                return;
            case R.id.user_video_lay /* 2131365336 */:
                MyVideotActivity.start(getContext(), "my_videos");
                return;
            case R.id.vip_look_lay /* 2131365398 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    ja.a.b().e("KEY_RED_DOT_WHO_SAW_ME");
                    if (getCurrentUser().getVipLevel() > 0) {
                        WhoSawMeActivity.start(getContext());
                        return;
                    } else {
                        BuyVipContainerDialogFragment.P1(1, getChildFragmentManager()).setOnDismissListener(new e());
                        return;
                    }
                }
                return;
            default:
                return;
        }
    }
}

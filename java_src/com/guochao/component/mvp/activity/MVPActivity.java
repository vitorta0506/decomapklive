package com.guochao.component.mvp.activity;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.viewpager.widget.ViewPager;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.mvp.R$mipmap;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.adapter.ViewPagerAdapter;
import com.guochao.component.mvp.databinding.ActivityMvpactivityBinding;
import com.guochao.component.mvp.fragment.GiftSelectOneKeyFragment;
import com.guochao.component.mvp.fragment.MVPListFragment;
import com.guochao.component.mvp.fragment.MvpHelperDialog;
import com.guochao.component.mvp.model.MVPInfoModel;
import com.guochao.component.mvp.view.TitleView;
import com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.lib_service_center.eventtracker.IGCEventTracker;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p7.h;
@Route(name = "mvp", path = RouterPath.ROUTER_MVP)
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \"2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003\"#$B\u0005¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0012\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0012\u0010\u001f\u001a\u00020\u001b2\b\u0010 \u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010!\u001a\u00020\u001bH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\f0\bj\b\u0012\u0004\u0012\u00020\f`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0016\u0010\u0017¨\u0006%"}, d2 = {"Lcom/guochao/component/mvp/activity/MVPActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/component/mvp/model/MVPInfoModel;", "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "()V", "currentIndex", "", "mFragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "mTabs", "", "myIndex", "viewBinding", "Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/ActivityMvpactivityBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "checkGetAll", "", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "onResume", "Companion", "UserBean", "UserVip", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MVPActivity extends GCBaseMvvmActivity<MVPInfoModel, MVPUserInfoViewModel> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String FROM_BAG_BADGE = "6";
    @NotNull
    public static final String FROM_BAG_CAR = "4";
    @NotNull
    public static final String FROM_BAG_CHAT = "5";
    @NotNull
    public static final String FROM_BAG_HEADER = "3";
    @NotNull
    public static final String FROM_GIFT = "0";
    @NotNull
    public static final String FROM_IM = "2";
    @NotNull
    public static final String FROM_MY_MVP = "1";
    @NotNull
    public static final String TOAST_KEY = "toast_key";
    @NotNull
    public static final String TOAST_TYPE_CHARGE = "charge";
    @NotNull
    public static final String TOAST_TYPE_GET_BADGE = "get_badge";
    @NotNull
    public static final String TOAST_TYPE_GET_CAR = "get_car";
    @NotNull
    public static final String TOAST_TYPE_GET_CHAT = "get_chat";
    @NotNull
    public static final String TOAST_TYPE_GET_HEAD = "get_head";
    private int currentIndex;
    public ActivityMvpactivityBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate = new ViewModelLazy(Reflection.getOrCreateKotlinClass(MVPUserInfoViewModel.class), new Function0<ViewModelStore>() { // from class: com.guochao.component.mvp.activity.MVPActivity$special$$inlined$viewModels$default$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = ComponentActivity.this.getViewModelStore();
            Intrinsics.checkNotNullExpressionValue(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }, new Function0<ViewModelProvider.Factory>() { // from class: com.guochao.component.mvp.activity.MVPActivity$special$$inlined$viewModels$default$1
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final ViewModelProvider.Factory invoke() {
            return ComponentActivity.this.getDefaultViewModelProviderFactory();
        }
    });
    @NotNull
    private final ArrayList<String> mTabs = new ArrayList<>();
    @NotNull
    private final ArrayList<Fragment> mFragments = new ArrayList<>();
    private int myIndex = -1;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/guochao/component/mvp/activity/MVPActivity$Companion;", "", "()V", "FROM_BAG_BADGE", "", "FROM_BAG_CAR", "FROM_BAG_CHAT", "FROM_BAG_HEADER", "FROM_GIFT", "FROM_IM", "FROM_MY_MVP", "TOAST_KEY", "TOAST_TYPE_CHARGE", "TOAST_TYPE_GET_BADGE", "TOAST_TYPE_GET_CAR", "TOAST_TYPE_GET_CHAT", "TOAST_TYPE_GET_HEAD", "start", "", "content", "Landroid/content/Context;", "toast", "from", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void start$default(Companion companion, Context context, String str, String str2, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                str = "";
            }
            if ((i9 & 4) != 0) {
                str2 = null;
            }
            companion.start(context, str, str2);
        }

        public final void start(@NotNull Context content) {
            Intrinsics.checkNotNullParameter(content, "content");
            start$default(this, content, null, null, 4, null);
        }

        public final void start(@NotNull Context content, @Nullable String str, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(content, "content");
            Intent intent = new Intent(content, MVPActivity.class);
            if (str != null) {
                intent.putExtra(MVPActivity.TOAST_KEY, str);
            }
            if (str2 != null) {
                intent.putExtra("mvp_from", str2);
            }
            content.startActivity(intent);
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\u0002H\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\tH\u0016R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;", "Lp7/h;", "", "getAvatarUrl", "", "getGender", "getPendantUrl", "getCountryFlag", "getCurrentUserId", "Lb8/g;", "getVipInfo", "a", "Ljava/lang/String;", "getA", "()Ljava/lang/String;", "p", "getP", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "component_mvp_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class UserBean implements h {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f15846a;
        @Nullable

        /* renamed from: p  reason: collision with root package name */
        private final String f15847p;

        public UserBean(@Nullable String str, @Nullable String str2) {
            this.f15846a = str;
            this.f15847p = str2;
        }

        @Nullable
        public final String getA() {
            return this.f15846a;
        }

        @Override // p7.b
        public /* bridge */ /* synthetic */ int getAge() {
            return p7.a.a(this);
        }

        @Override // p7.h, p7.c
        @NotNull
        public String getAvatarUrl() {
            String str = this.f15846a;
            return str == null ? "" : str;
        }

        @Override // p7.h
        @NotNull
        public String getCountryFlag() {
            return "";
        }

        @Override // p7.h
        @NotNull
        public String getCurrentUserId() {
            return "";
        }

        @Override // p7.h, p7.c
        public int getGender() {
            return 0;
        }

        @Override // p7.e
        public /* bridge */ /* synthetic */ int getLevel() {
            return p7.d.a(this);
        }

        @Override // p7.h
        public /* bridge */ /* synthetic */ String getMVPUrl() {
            return p7.g.a(this);
        }

        @Nullable
        public final String getP() {
            return this.f15847p;
        }

        @Override // p7.h
        @NotNull
        public String getPendantUrl() {
            String str = this.f15847p;
            return str == null ? "" : str;
        }

        @Override // p7.h
        public /* bridge */ /* synthetic */ String getUserName() {
            return p7.g.b(this);
        }

        @Override // p7.h
        @Nullable
        public b8.g getVipInfo() {
            String str = this.f15847p;
            if (str == null) {
                str = "";
            }
            return new UserVip(str);
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/guochao/component/mvp/activity/MVPActivity$UserVip;", "Lb8/g;", "", "getVipAvatarPendentUrl", "p", "Ljava/lang/String;", "getP", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "component_mvp_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class UserVip implements b8.g {
        @Nullable

        /* renamed from: p  reason: collision with root package name */
        private final String f15848p;

        public UserVip(@Nullable String str) {
            this.f15848p = str;
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ String getHostCertificationUrl() {
            return b8.f.a(this);
        }

        @Nullable
        public final String getP() {
            return this.f15848p;
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ int getSended() {
            return b8.f.b(this);
        }

        public /* bridge */ /* synthetic */ String getVipAvatarPendentId() {
            return b8.f.c(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ int getVipAvatarPendentType() {
            return b8.f.d(this);
        }

        @Override // b8.g
        @NotNull
        public String getVipAvatarPendentUrl() {
            String str = this.f15848p;
            return str == null ? "" : str;
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ String getVipDressCarId() {
            return b8.f.f(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ String getVipDressCarUrl() {
            return b8.f.g(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ String getVipDressCarUrlV2() {
            return b8.f.h(this);
        }

        public /* bridge */ /* synthetic */ String getVipDressChatUrl() {
            return b8.f.i(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ int getVipLevel() {
            return b8.f.j(this);
        }

        @Override // b8.g
        public /* bridge */ /* synthetic */ boolean isVip() {
            return b8.f.k(this);
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m228initView$lambda1(MVPActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r10v2, types: [T, java.lang.Object] */
    /* renamed from: initView$lambda-10  reason: not valid java name */
    public static final void m229initView$lambda10(final MVPActivity this$0, MVPInfoModel mVPInfoModel) {
        List<MVPInfoModel.MvpRightsVo> mvpRightsVoList;
        List<MVPInfoModel.MvpRightsVo> mvpRightsVoList2;
        MVPInfoModel.MyMvpInfoResult myMvpInfoResult;
        MVPInfoModel.MyMvpInfoResult myMvpInfoResult2;
        MVPInfoModel.MyMvpInfoResult myMvpInfoResult3;
        MVPInfoModel.MyMvpInfoResult myMvpInfoResult4;
        Integer mvpLevel;
        MVPInfoModel.MyMvpInfoResult myMvpInfoResult5;
        Integer mvpLevel2;
        MVPInfoModel.MyMvpInfoResult myMvpInfoResult6;
        MVPInfoModel.MyMvpInfoResult myMvpInfoResult7;
        MVPInfoModel.MyMvpInfoResult myMvpInfoResult8;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissLoading();
        this$0.getViewBinding().mvpInfoView.setData(mVPInfoModel);
        ActivityMvpactivityBinding viewBinding = this$0.getViewBinding();
        viewBinding.avatarView.d(new UserBean((mVPInfoModel == null || (myMvpInfoResult8 = mVPInfoModel.getMyMvpInfoResult()) == null) ? null : myMvpInfoResult8.getImg(), (mVPInfoModel == null || (myMvpInfoResult7 = mVPInfoModel.getMyMvpInfoResult()) == null) ? null : myMvpInfoResult7.getHeadImg()));
        viewBinding.nickNameTV.setText((mVPInfoModel == null || (myMvpInfoResult6 = mVPInfoModel.getMyMvpInfoResult()) == null) ? null : myMvpInfoResult6.getNickName());
        if (((mVPInfoModel == null || (myMvpInfoResult5 = mVPInfoModel.getMyMvpInfoResult()) == null || (mvpLevel2 = myMvpInfoResult5.getMvpLevel()) == null) ? 0 : mvpLevel2.intValue()) > 0) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_my_mvp_open_yes, "0");
            viewBinding.mvpLevelIV.setVisibility(0);
            viewBinding.getMVPTitle.setText(R$string.mvp_this_month_is_mvp_yes);
        } else {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_my_mvp_open_yes, "1");
            viewBinding.mvpLevelIV.setVisibility(8);
            viewBinding.getMVPTitle.setText(R$string.mvp_this_month_is_mvp_no);
        }
        if (((mVPInfoModel == null || (myMvpInfoResult4 = mVPInfoModel.getMyMvpInfoResult()) == null || (mvpLevel = myMvpInfoResult4.getMvpLevel()) == null) ? 0 : mvpLevel.intValue()) >= 1) {
            com.bumptech.glide.c.v(viewBinding.mvpBgIV).r((mVPInfoModel == null || (myMvpInfoResult3 = mVPInfoModel.getMyMvpInfoResult()) == null) ? null : myMvpInfoResult3.getMvpBackground()).m().Q0(viewBinding.mvpBgIV);
            com.bumptech.glide.c.v(viewBinding.badgeIV).r((mVPInfoModel == null || (myMvpInfoResult2 = mVPInfoModel.getMyMvpInfoResult()) == null) ? null : myMvpInfoResult2.getMvpEmblem()).m().Q0(viewBinding.badgeIV);
            com.bumptech.glide.c.v(viewBinding.mvpLevelIV).r((mVPInfoModel == null || (myMvpInfoResult = mVPInfoModel.getMyMvpInfoResult()) == null) ? null : myMvpInfoResult.getMvpIcon()).m().Q0(viewBinding.mvpLevelIV);
        }
        if (this$0.mFragments.size() > 0) {
            return;
        }
        this$0.mTabs.clear();
        this$0.mFragments.clear();
        if (mVPInfoModel != null && (mvpRightsVoList2 = mVPInfoModel.getMvpRightsVoList()) != null) {
            int i9 = 0;
            for (Object obj : mvpRightsVoList2) {
                int i10 = i9 + 1;
                if (i9 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                MVPInfoModel.MvpRightsVo mvpRightsVo = (MVPInfoModel.MvpRightsVo) obj;
                ArrayList<String> arrayList = this$0.mTabs;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("MVP");
                sb2.append(mvpRightsVo != null ? mvpRightsVo.getLevel() : null);
                arrayList.add(sb2.toString());
                MVPListFragment.Companion companion = MVPListFragment.Companion;
                MVPInfoModel.MyMvpInfoResult myMvpInfoResult9 = mVPInfoModel.getMyMvpInfoResult();
                MVPListFragment newInstance = companion.newInstance(myMvpInfoResult9 != null ? myMvpInfoResult9.getMvpLevel() : null, mvpRightsVo);
                newInstance.setCallBack(new Function1<Boolean, Unit>() { // from class: com.guochao.component.mvp.activity.MVPActivity$initView$6$2$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                        invoke(bool.booleanValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(boolean z10) {
                        MVPActivity.this.checkGetAll();
                    }
                });
                this$0.mFragments.add(newInstance);
                MVPInfoModel.MyMvpInfoResult myMvpInfoResult10 = mVPInfoModel.getMyMvpInfoResult();
                if (Intrinsics.areEqual(myMvpInfoResult10 != null ? myMvpInfoResult10.getMvpLevel() : null, mvpRightsVo != null ? mvpRightsVo.getLevel() : null)) {
                    this$0.myIndex = i9;
                }
                i9 = i10;
            }
        }
        this$0.getViewBinding().viewpager.setAdapter(new ViewPagerAdapter(this$0.getSupportFragmentManager(), this$0.mFragments, this$0.mTabs));
        this$0.getViewBinding().tablayout.setupWithViewPager(this$0.getViewBinding().viewpager);
        if (this$0.myIndex != -1) {
            this$0.getViewBinding().viewpager.setCurrentItem(this$0.myIndex, false);
        }
        if (mVPInfoModel == null || (mvpRightsVoList = mVPInfoModel.getMvpRightsVoList()) == null || this$0.myIndex == -1) {
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = mvpRightsVoList.get(this$0.myIndex);
        this$0.checkGetAll();
        TextView textView = this$0.getViewBinding().getAllTV;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.getAllTV");
        ViewExtendsKt.onClick$default(textView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.activity.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MVPActivity.m230initView$lambda10$lambda9$lambda8(Ref.ObjectRef.this, this$0, view);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-10$lambda-9$lambda-8  reason: not valid java name */
    public static final void m230initView$lambda10$lambda9$lambda8(Ref.ObjectRef bean, final MVPActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(bean, "$bean");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_oneclick_to_get_click);
        GiftSelectOneKeyFragment newInstance = GiftSelectOneKeyFragment.Companion.newInstance((MVPInfoModel.MvpRightsVo) bean.element);
        newInstance.setCallBack(new Function1<Boolean, Unit>() { // from class: com.guochao.component.mvp.activity.MVPActivity$initView$6$3$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z10) {
                ArrayList<Fragment> arrayList;
                arrayList = MVPActivity.this.mFragments;
                for (Fragment fragment : arrayList) {
                    Intrinsics.checkNotNull(fragment, "null cannot be cast to non-null type com.guochao.component.mvp.fragment.MVPListFragment");
                    ((MVPListFragment) fragment).getAll();
                }
                MVPActivity.this.checkGetAll();
            }
        });
        FragmentManager supportFragmentManager = this$0.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
        newInstance.show(supportFragmentManager, "oneKey");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-12$lambda-11  reason: not valid java name */
    public static final void m231initView$lambda12$lambda11(ActivityMvpactivityBinding this_apply, View view, int i9, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (i10 > 100) {
            this_apply.top.setVisibility(4);
        } else {
            this_apply.top.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m232initView$lambda2(MVPActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MvpHelperDialog.Companion companion = MvpHelperDialog.Companion;
        FragmentManager supportFragmentManager = this$0.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
        companion.showDialog(supportFragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m233initView$lambda3(View view) {
        o.a.c().a(RouterPath.ROUTER_GC_MY_WALLET).withInt("scene", 0).navigation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5$lambda-4  reason: not valid java name */
    public static final void m234initView$lambda5$lambda4(MVPActivity this$0, View view) {
        MVPInfoModel.MyMvpInfoResult myMvpInfoResult;
        Integer mvpLevel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
        eventTrackingV2Utils.track(EventTrackingV2Utils.mvp_contact);
        MVPInfoModel value = this$0.getViewModel().getMyMVPInfo().getValue();
        if (((value == null || (myMvpInfoResult = value.getMyMvpInfoResult()) == null || (mvpLevel = myMvpInfoResult.getMvpLevel()) == null) ? 0 : mvpLevel.intValue()) > 0) {
            eventTrackingV2Utils.track(EventTrackingV2Utils.mvp_contact_4000, "0");
        } else {
            eventTrackingV2Utils.track(EventTrackingV2Utils.mvp_contact_4000, "1");
        }
        o.a.c().a(RouterPath.ROUTER_APP_SERVICE).withString(Contants.USER_ID, "iarGoHNtFX2Sbp3RrJqBWwhQEgWHjN5u").withString("name", "MVP").navigation();
    }

    /* JADX WARN: Removed duplicated region for block: B:198:0x00c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x003c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void checkGetAll() {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.mvp.activity.MVPActivity.checkGetAll():void");
    }

    @NotNull
    public final ActivityMvpactivityBinding getViewBinding() {
        ActivityMvpactivityBinding activityMvpactivityBinding = this.viewBinding;
        if (activityMvpactivityBinding != null) {
            return activityMvpactivityBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        Object navigation = o.a.c().a(RouterPath.ROUTER_GC_EVENT_TRACKER).navigation();
        IGCEventTracker iGCEventTracker = navigation instanceof IGCEventTracker ? (IGCEventTracker) navigation : null;
        if (iGCEventTracker != null) {
            iGCEventTracker.track("CLICK_MVP");
        }
        String stringExtra = getIntent().getStringExtra(TOAST_KEY);
        if (stringExtra != null) {
            switch (stringExtra.hashCode()) {
                case -1361632588:
                    if (stringExtra.equals(TOAST_TYPE_CHARGE)) {
                        ToastUtils.showMVPToast$default(this, R$string.mvp_next_month_tips, 0, 4, null);
                        break;
                    }
                    break;
                case -74800277:
                    if (stringExtra.equals(TOAST_TYPE_GET_CAR)) {
                        int i9 = R$string.mvp_toast_tips_something;
                        String string = getString(i9, new Object[]{"MVP" + getString(R$string.i_want_to_charge_car)});
                        Intrinsics.checkNotNullExpressionValue(string, "getString(\n             …)}\"\n                    )");
                        ToastUtils.showMVPToast$default(this, string, 0, 0, 12, null);
                        break;
                    }
                    break;
                case 1130444154:
                    if (stringExtra.equals(TOAST_TYPE_GET_BADGE)) {
                        ToastUtils.showMVPToast$default(this, R$string.mvp_reward_get_tips, 0, 4, null);
                        break;
                    }
                    break;
                case 1976165025:
                    if (stringExtra.equals(TOAST_TYPE_GET_CHAT)) {
                        int i10 = R$string.mvp_toast_tips_something;
                        String string2 = getString(i10, new Object[]{"MVP" + getString(R$string.i_want_to_charge_shade)});
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(\n             …)}\"\n                    )");
                        ToastUtils.showMVPToast$default(this, string2, 0, 0, 12, null);
                        break;
                    }
                    break;
                case 1976311081:
                    if (stringExtra.equals(TOAST_TYPE_GET_HEAD)) {
                        int i11 = R$string.mvp_toast_tips_something;
                        String string3 = getString(i11, new Object[]{"MVP" + getString(R$string.i_want_to_charge_avatar)});
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(\n             …)}\"\n                    )");
                        ToastUtils.showMVPToast$default(this, string3, 0, 0, 12, null);
                        break;
                    }
                    break;
            }
        }
        StatusBarHelper.showStatusBar(this, false);
        TitleView titleView = getViewBinding().titleView;
        Intrinsics.checkNotNullExpressionValue(titleView, "viewBinding.titleView");
        TitleView.addBackListener$default(titleView, null, new View.OnClickListener() { // from class: com.guochao.component.mvp.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MVPActivity.m228initView$lambda1(MVPActivity.this, view);
            }
        }, 1, null);
        getViewBinding().titleView.setTitle(R$string.mvp_my_mvp);
        getViewBinding().titleView.addMoreListener(R$mipmap.ic_mvp_tips, new View.OnClickListener() { // from class: com.guochao.component.mvp.activity.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MVPActivity.m232initView$lambda2(MVPActivity.this, view);
            }
        });
        TextView textView = getViewBinding().mvpInfoView.getViewBinding().rechargeTV;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.mvpInfoView.viewBinding.rechargeTV");
        ViewExtendsKt.onClick$default(textView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.activity.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MVPActivity.m233initView$lambda3(view);
            }
        }, 1, null);
        if (q7.a.e().j()) {
            ObjectAnimator.ofFloat(getViewBinding().mvpBgIV, "rotationY", 0.0f, 180.0f).setDuration(0L).start();
            ObjectAnimator.ofFloat(getViewBinding().titleView.getViewBinding().backIV, "rotationY", 0.0f, 180.0f).setDuration(0L).start();
        }
        TextView contactTV = getViewBinding().contactTV;
        Intrinsics.checkNotNullExpressionValue(contactTV, "contactTV");
        ViewExtendsKt.onClick$default(contactTV, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.activity.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MVPActivity.m234initView$lambda5$lambda4(MVPActivity.this, view);
            }
        }, 1, null);
        GCCoreActivity.showLoading$default(this, null, 1, null);
        getViewModel().getMyMVPInfo().observe(this, new Observer() { // from class: com.guochao.component.mvp.activity.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MVPActivity.m229initView$lambda10(MVPActivity.this, (MVPInfoModel) obj);
            }
        });
        final ActivityMvpactivityBinding viewBinding = getViewBinding();
        viewBinding.viewpager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.guochao.component.mvp.activity.MVPActivity$initView$7$1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i12) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i12, float f10, int i13) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i12) {
                MVPActivity.this.currentIndex = i12;
                MVPActivity.this.checkGetAll();
            }
        });
        if (Build.VERSION.SDK_INT >= 23) {
            viewBinding.scrollView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.guochao.component.mvp.activity.f
                @Override // android.view.View.OnScrollChangeListener
                public final void onScrollChange(View view, int i12, int i13, int i14, int i15) {
                    MVPActivity.m231initView$lambda12$lambda11(ActivityMvpactivityBinding.this, view, i12, i13, i14, i15);
                }
            });
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_my_open_from, getIntent().getStringExtra("mvp_from"));
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable MVPInfoModel mVPInfoModel) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getViewModel().myMVPInfo();
    }

    public final void setViewBinding(@NotNull ActivityMvpactivityBinding activityMvpactivityBinding) {
        Intrinsics.checkNotNullParameter(activityMvpactivityBinding, "<set-?>");
        this.viewBinding = activityMvpactivityBinding;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public MVPUserInfoViewModel getViewModel() {
        return (MVPUserInfoViewModel) this.viewModel$delegate.getValue();
    }
}

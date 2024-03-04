package com.guochao.faceshow.userhomepage.act;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.badge.BadgeDrawable;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.aaspring.beans.VideoBean;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.activity.MvpChatActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.rank.activity.RankListActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DatingSquareActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.FindYouActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PeopleNearbyActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PlantActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.activity.MineCenterSettingActivity;
import com.guochao.faceshow.bean.UserVoiceRoomInfoBean;
import com.guochao.faceshow.bean.UserVoiceRoomMicro;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.mine.view.MyFansActivity;
import com.guochao.faceshow.mine.view.MyFollowActivity;
import com.guochao.faceshow.mine.view.SetInfoActivity;
import com.guochao.faceshow.userhomepage.UserHomePageModel;
import com.guochao.faceshow.userhomepage.UserPhotoZoomHelper;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.LiveInfoUtils;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.guochao.faceshow.views.e;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.youth.banner.Banner;
import com.youth.banner.listener.OnBannerListener;
import com.youth.banner.loader.ImageLoaderInterface;
import com.youth.banner.view.BannerViewPager;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Route(path = RouterPath.ROUTER_USER_HOMEPAGE)
@Metadata(bv = {}, d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 \u0082\u00012\u00020\u00012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0002:\u0002\u0082\u0001B\t¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\b\u0010\u0007\u001a\u00020\u0006H\u0002J \u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0002J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\b\u0010\u0016\u001a\u00020\u0006H\u0002J\b\u0010\u0017\u001a\u00020\u0006H\u0002J\u0012\u0010\u001a\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0003J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0012\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010 \u001a\u00020\u001fH\u0002J\b\u0010#\u001a\u00020\u0006H\u0002J\b\u0010$\u001a\u00020\u0006H\u0002J\b\u0010%\u001a\u00020\u0012H\u0016J\b\u0010'\u001a\u00020&H\u0016J\b\u0010(\u001a\u00020\u0006H\u0016J\u000e\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020\u0006J\b\u0010+\u001a\u00020\u0006H\u0014J\"\u00101\u001a\u00020\u00062\b\u0010-\u001a\u0004\u0018\u00010,2\b\u0010/\u001a\u0004\u0018\u00010.2\u0006\u00100\u001a\u00020\bJ\b\u00102\u001a\u00020\u0006H\u0016J \u00104\u001a\u00020\u00062\u0016\u00103\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003H\u0016J\"\u00108\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00122\u0006\u00106\u001a\u00020\u00122\b\u0010\u001c\u001a\u0004\u0018\u000107H\u0014J\b\u00109\u001a\u00020\u0006H\u0016J\b\u0010:\u001a\u00020\u0006H\u0014R$\u0010;\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\"\u0010A\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR$\u0010G\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u001d\u0010O\u001a\b\u0012\u0004\u0012\u00020N0M8\u0006¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR$\u0010W\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\b\"\u0010Y\"\u0004\bZ\u0010[R$\u0010]\u001a\u0004\u0018\u00010\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR$\u0010d\u001a\u0004\u0018\u00010c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR$\u0010j\u001a\u0004\u0018\u00010\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bj\u0010^\u001a\u0004\bk\u0010`\"\u0004\bl\u0010bR$\u0010m\u001a\u0004\u0018\u00010c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bm\u0010e\u001a\u0004\bn\u0010g\"\u0004\bo\u0010iR$\u0010p\u001a\u0004\u0018\u00010c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010e\u001a\u0004\bq\u0010g\"\u0004\br\u0010iR\u0017\u0010t\u001a\u00020s8\u0006¢\u0006\f\n\u0004\bt\u0010u\u001a\u0004\bv\u0010wR\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010xR$\u0010z\u001a\u0004\u0018\u00010y8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010{\u001a\u0004\b|\u0010}\"\u0004\b~\u0010\u007f¨\u0006\u0083\u0001"}, d2 = {"Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "Landroidx/lifecycle/Observer;", "", "", "", "", "checkUserHomeSourceTrack", "", "isWhiteStatus", "slideTop", "", "alpha", "setTitleBarChanged", "initFragment", "initViewPager", "Lcom/google/android/material/appbar/AppBarLayout$Behavior;", "behavior", "", "start", "end", "animToTab", "initBottomLay", "refreshFocusLay", "Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;", "bean", "setVoiceData", "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;", "data", "setHeaderData", "startBanner", "Lcom/youth/banner/Banner;", "banner", "Lcom/youth/banner/view/BannerViewPager;", "getViewPager", "showUserNotExist", "showFreezePage", "getLayoutId", "Lcom/guochao/faceshow/aaspring/base/activity/a;", "getActivityConfig", "initView", Contants.USER_ID, "resetStatusBarColor", "onRestart", "Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;", "holder", "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;", "dynamicBean", "focused", "onFocusStateChanged", "loadData", "t", "onChanged", "requestCode", "resultCode", "Landroid/content/Intent;", "onActivityResult", "finish", "onDestroy", "mUserId", "Ljava/lang/String;", "getMUserId", "()Ljava/lang/String;", "setMUserId", "(Ljava/lang/String;)V", "mType", "I", "getMType", "()I", "setMType", "(I)V", "mPosition", "Ljava/lang/Integer;", "getMPosition", "()Ljava/lang/Integer;", "setMPosition", "(Ljava/lang/Integer;)V", "", "Landroidx/fragment/app/Fragment;", "mFragments", "Ljava/util/List;", "getMFragments", "()Ljava/util/List;", "Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;", "mUserPhotoZoomHelper", "Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;", "Landroidx/viewpager/widget/ViewPager;", "viewPager", "Landroidx/viewpager/widget/ViewPager;", "()Landroidx/viewpager/widget/ViewPager;", "setViewPager", "(Landroidx/viewpager/widget/ViewPager;)V", "Landroid/widget/TextView;", "focusLay", "Landroid/widget/TextView;", "getFocusLay", "()Landroid/widget/TextView;", "setFocusLay", "(Landroid/widget/TextView;)V", "Landroid/view/View;", "devView", "Landroid/view/View;", "getDevView", "()Landroid/view/View;", "setDevView", "(Landroid/view/View;)V", "chatLay", "getChatLay", "setChatLay", "leftBack", "getLeftBack", "setLeftBack", "ivMore", "getIvMore", "setIvMore", "Lcom/guochao/faceshow/userhomepage/UserHomePageModel;", "viewModel", "Lcom/guochao/faceshow/userhomepage/UserHomePageModel;", "getViewModel", "()Lcom/guochao/faceshow/userhomepage/UserHomePageModel;", "Z", "Ly0/c;", "skeletonScreen", "Ly0/c;", "getSkeletonScreen", "()Ly0/c;", "setSkeletonScreen", "(Ly0/c;)V", "<init>", "()V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes4.dex */
public final class UserHomePageAct extends BaseActivity implements Observer<Map<String, ? extends Object>> {
    @JvmField
    public static final int FROM_COMMON = 0;
    @JvmField
    @Nullable
    public static String imgUrl;
    @Nullable
    private TextView chatLay;
    @Nullable
    private View devView;
    @Nullable
    private TextView focusLay;
    @Nullable
    private View ivMore;
    @Nullable
    private View leftBack;
    @Nullable
    private Integer mPosition;
    private int mType;
    @Nullable
    private String mUserId;
    @Nullable
    private UserPhotoZoomHelper mUserPhotoZoomHelper;
    @Nullable
    private y0.c skeletonScreen;
    @Nullable
    private ViewPager viewPager;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    public static final int REPORT_REQUEST_CODE = 121;
    @JvmField
    public static final int USER_SELF = 1;
    @JvmField
    public static final int USER_OTHER = 2;
    @JvmField
    public static final int FROM_LIVE_ROOM = 1;
    @JvmField
    @NotNull
    public static final String TAG = "UserHomePageAct";
    @NotNull
    private final List<Fragment> mFragments = new ArrayList();
    @NotNull
    private final UserHomePageModel viewModel = new UserHomePageModel();
    private boolean isWhiteStatus = true;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u0004H\u0007J,\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0007J\u001c\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\bH\u0007J$\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\b\u0001\u0010\u0015\u001a\u00020\u0004H\u0007J(\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0007J9\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0002\u0010\u0018J4\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0007J\u001a\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;", "", "()V", "FROM_COMMON", "", "FROM_LIVE_ROOM", "REPORT_REQUEST_CODE", "TAG", "", "USER_OTHER", "USER_SELF", "imgUrl", "start", "", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", Contants.USER_ID, "requestCode", "type", "context", "Landroid/content/Context;", "scene", "userName", "position", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "startByUserName", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void start$default(Companion companion, Context context, String str, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                str = null;
            }
            companion.start(context, str);
        }

        @JvmStatic
        public final void start(@NotNull Context context, @Nullable String str) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, str);
            context.startActivity(intent);
        }

        @JvmStatic
        public final void startByUserName(@NotNull Context context, @Nullable String str) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, UserHomePageAct.class);
            intent.putExtra("userName", str);
            context.startActivity(intent);
        }

        public static /* synthetic */ void start$default(Companion companion, Context context, String str, String str2, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                str = null;
            }
            if ((i9 & 4) != 0) {
                str2 = null;
            }
            companion.start(context, str, str2);
        }

        public static /* synthetic */ void start$default(Companion companion, Context context, String str, String str2, String str3, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                str = null;
            }
            if ((i9 & 4) != 0) {
                str2 = null;
            }
            if ((i9 & 8) != 0) {
                str3 = null;
            }
            companion.start(context, str, str2, str3);
        }

        public static /* synthetic */ void start$default(Companion companion, Context context, String str, String str2, Integer num, int i9, Object obj) {
            if ((i9 & 2) != 0) {
                str = null;
            }
            if ((i9 & 4) != 0) {
                str2 = null;
            }
            if ((i9 & 8) != 0) {
                num = 0;
            }
            companion.start(context, str, str2, num);
        }

        @JvmStatic
        public final void start(@NotNull Context context, @Nullable String str, int i9) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, str);
            intent.putExtra("scene", i9);
            context.startActivity(intent);
        }

        public static /* synthetic */ void start$default(Companion companion, Activity activity, String str, int i9, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                str = null;
            }
            companion.start(activity, str, i9);
        }

        public static /* synthetic */ void start$default(Companion companion, Activity activity, String str, int i9, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                str = null;
            }
            companion.start(activity, str, i9, i10);
        }

        @JvmStatic
        public final void start(@NotNull Context context, @Nullable String str, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, str);
            intent.putExtra("userName", str2);
            context.startActivity(intent);
        }

        @JvmStatic
        public final void start(@NotNull Context context, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, str);
            intent.putExtra("userName", str2);
            intent.putExtra("imgUrl", str3);
            context.startActivity(intent);
        }

        @JvmStatic
        public final void start(@NotNull Context context, @Nullable String str, @Nullable String str2, @Nullable Integer num) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, str);
            intent.putExtra("userName", str2);
            intent.putExtra("position", num);
            context.startActivity(intent);
        }

        @JvmStatic
        public final void start(@NotNull Activity activity, @Nullable String str, int i9) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intent intent = new Intent(activity, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, str);
            activity.startActivityForResult(intent, i9);
        }

        @JvmStatic
        public final void start(@NotNull Activity activity, @Nullable String str, int i9, int i10) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intent intent = new Intent(activity, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, str);
            intent.putExtra("type", i9);
            activity.startActivityForResult(intent, i10);
        }
    }

    private final void animToTab(AppBarLayout.Behavior behavior, int i9, int i10) {
        behavior.setTopAndBottomOffset(i10);
    }

    private final void checkUserHomeSourceTrack() {
        int i9;
        String simpleName = WatchLiveRoomActivity.class.getSimpleName();
        String simpleName2 = F2fMatchActivity.class.getSimpleName();
        String simpleName3 = DatingSquareActivity.class.getSimpleName();
        String simpleName4 = PlantActivity.class.getSimpleName();
        String simpleName5 = PeopleNearbyActivity.class.getSimpleName();
        String simpleName6 = FindYouActivity.class.getSimpleName();
        String simpleName7 = RankListActivity.class.getSimpleName();
        Stack<Activity> activityStack = AppManager.getInstance().getActivityStack();
        if (activityStack == null || activityStack.size() <= 0 || activityStack.size() - 1 < 0) {
            return;
        }
        while (true) {
            int i10 = i9 - 1;
            Activity activity = activityStack.get(i9);
            if (Intrinsics.areEqual(simpleName2, activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.user_home_page, "2");
                return;
            } else if (Intrinsics.areEqual(simpleName3, activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.user_home_page, "3");
                return;
            } else if (Intrinsics.areEqual(simpleName4, activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.user_home_page, "4");
                return;
            } else if (Intrinsics.areEqual(simpleName5, activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.user_home_page, "5");
                return;
            } else if (Intrinsics.areEqual(simpleName6, activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.user_home_page, MVPActivity.FROM_BAG_BADGE);
                return;
            } else if (Intrinsics.areEqual(simpleName7, activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.user_home_page, "7");
                return;
            } else if (Intrinsics.areEqual(simpleName, activity.getClass().getSimpleName())) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.user_home_page, "0");
                return;
            } else if ((activity instanceof MainActivity) && ((MainActivity) activity).k1()) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.user_home_page, "1");
                return;
            } else if (i10 < 0) {
                return;
            } else {
                i9 = i10;
            }
        }
    }

    private final void initBottomLay() {
        this.devView = findViewById(R.id.devView);
        TextView textView = (TextView) findViewById(R.id.tv_focus);
        this.focusLay = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserHomePageAct.m779initBottomLay$lambda27(UserHomePageAct.this, view);
                }
            });
        }
        TextView textView2 = (TextView) findViewById(R.id.tv_chat);
        this.chatLay = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserHomePageAct.m781initBottomLay$lambda29(UserHomePageAct.this, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initBottomLay$lambda-27  reason: not valid java name */
    public static final void m779initBottomLay$lambda27(final UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (DisableDoubleClickUtils.canClick(view)) {
            if (Intrinsics.areEqual(this$0.mUserId, "8485396")) {
                MvpChatActivity.Companion.start(this$0);
                return;
            }
            UserPageBaseData mUserData = this$0.viewModel.getMUserData();
            if (mUserData != null) {
                if (mUserData.isTutual > 0) {
                    com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e((Context) this$0.getActivity(), true, new e.a() { // from class: com.guochao.faceshow.userhomepage.act.h
                        @Override // com.guochao.faceshow.views.e.a
                        public final void onClick(Dialog dialog, boolean z10) {
                            UserHomePageAct.m780initBottomLay$lambda27$lambda26$lambda25(UserHomePageAct.this, dialog, z10);
                        }

                        @Override // com.guochao.faceshow.views.e.a
                        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar2) {
                            com.guochao.faceshow.views.d.a(this, eVar2);
                        }
                    });
                    eVar.d(ContextCompat.getColor(this$0.getActivity(), R.color.color_common_dialog_cancel));
                    eVar.m(ContextCompat.getColor(this$0.getActivity(), R.color.color_common_dialog_confirm));
                    eVar.f(((BaseActivity) this$0.getActivity()).getString(R.string.focus_cancel_tip));
                    eVar.show();
                    return;
                }
                this$0.viewModel.focus(this$0, this$0.mUserId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initBottomLay$lambda-27$lambda-26$lambda-25  reason: not valid java name */
    public static final void m780initBottomLay$lambda27$lambda26$lambda25(UserHomePageAct this$0, Dialog dialog, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z10) {
            this$0.viewModel.deleteFocus(this$0, this$0.mUserId);
        }
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initBottomLay$lambda-29  reason: not valid java name */
    public static final void m781initBottomLay$lambda29(final UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new Bundle().putString("Source", "user_profile");
        String str = this$0.mUserId;
        UserPageBaseData mUserData = this$0.viewModel.getMUserData();
        ChatActivity.navToChat(this$0, str, 1, mUserData != null ? mUserData.nickName : null, false);
        final UserPageBaseData mUserData2 = this$0.viewModel.getMUserData();
        if (mUserData2 != null) {
            this$0.post("tokens/im/sendMsg/v2/checkStatus").v("accountId", this$0.mUserId).M(new com.guochao.faceshow.aaspring.base.http.callback.c<ChatStatusBean>() { // from class: com.guochao.faceshow.userhomepage.act.UserHomePageAct$initBottomLay$2$1$1
                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NotNull g7.a<ChatStatusBean> exp) {
                    Intrinsics.checkNotNullParameter(exp, "exp");
                    LogUtils.i(UserHomePageAct.TAG, "onFailure: ");
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable ChatStatusBean chatStatusBean, @NotNull FaceCastBaseResponse<ChatStatusBean> baseResponse) {
                    Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                    ib.b.c(UserPageBaseData.this, this$0.getMUserId(), this$0.getActivity(), chatStatusBean);
                }
            });
        }
    }

    private final void initFragment() {
        if (!this.mFragments.isEmpty()) {
            return;
        }
        this.mFragments.add(UserDynamicFragment.Companion.getInstance(this.mUserId));
        this.mFragments.add(UserVideoFragment.Companion.getInstance(this.mUserId));
        this.mFragments.add(UserAboutMeFragment.Companion.getInstance(this.mUserId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1$lambda-0  reason: not valid java name */
    public static final void m782initView$lambda1$lambda0(UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-14$lambda-13  reason: not valid java name */
    public static final void m783initView$lambda14$lambda13(final UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Intrinsics.areEqual(this$0.mUserId, this$0.getCurrentUser().userId)) {
            this$0.startActivity(new Intent(this$0, MineCenterSettingActivity.class));
            return;
        }
        final PopupWindow popupWindow = new PopupWindow(this$0);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        View inflate = LayoutInflater.from(this$0).inflate(R.layout.pop_more_home, (ViewGroup) null);
        inflate.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        TextView textView = (TextView) inflate.findViewById(R.id.tv_focus);
        UserPageBaseData mUserData = this$0.viewModel.getMUserData();
        if ((mUserData != null ? mUserData.isTutual : 0) >= 1) {
            textView.setText(this$0.getString(R.string.Cancel_the_attention));
        } else {
            textView.setText(this$0.getString(R.string.no_focus));
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UserHomePageAct.m786initView$lambda14$lambda13$lambda8$lambda7(UserHomePageAct.this, popupWindow, view2);
            }
        });
        TextView textView2 = (TextView) inflate.findViewById(R.id.tv_black);
        textView2.setText(this$0.getString(R.string.add_to_block_list));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UserHomePageAct.m784initView$lambda14$lambda13$lambda10$lambda9(UserHomePageAct.this, view2);
            }
        });
        ((TextView) inflate.findViewById(R.id.tv_report)).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UserHomePageAct.m785initView$lambda14$lambda13$lambda12$lambda11(UserHomePageAct.this, popupWindow, view2);
            }
        });
        popupWindow.setContentView(inflate);
        if (Language.ARABIC.equals(q7.a.e().c())) {
            popupWindow.showAtLocation(view, BadgeDrawable.TOP_START, 0, view.getMeasuredHeight() + StatusBarHelper.getStatusbarHeight(this$0));
        } else {
            popupWindow.showAtLocation(view, BadgeDrawable.TOP_END, 0, view.getMeasuredHeight() + StatusBarHelper.getStatusbarHeight(this$0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-14$lambda-13$lambda-10$lambda-9  reason: not valid java name */
    public static final void m784initView$lambda14$lambda13$lambda10$lambda9(UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new PostRequest(Contants.PULL_BLACK).D(Contants.USER_ID, this$0.getCurrentUser().userId).D("account", this$0.mUserId).D("reportType", "4").L();
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-14$lambda-13$lambda-12$lambda-11  reason: not valid java name */
    public static final void m785initView$lambda14$lambda13$lambda12$lambda11(UserHomePageAct this$0, PopupWindow pop, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(pop, "$pop");
        String str = this$0.mUserId;
        ReportController.report(this$0, str, str, "5");
        pop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-14$lambda-13$lambda-8$lambda-7  reason: not valid java name */
    public static final void m786initView$lambda14$lambda13$lambda8$lambda7(UserHomePageAct this$0, PopupWindow pop, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(pop, "$pop");
        UserPageBaseData mUserData = this$0.viewModel.getMUserData();
        if ((mUserData != null ? mUserData.isTutual : 0) >= 1) {
            this$0.viewModel.deleteFocus(this$0, this$0.mUserId);
        } else {
            this$0.viewModel.focus(this$0, this$0.mUserId);
        }
        pop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-16  reason: not valid java name */
    public static final void m787initView$lambda16(UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-18  reason: not valid java name */
    public static final void m788initView$lambda18(AppBarLayout appBarLayout, UserHomePageAct this$0, AppBarLayout appBarLayout2, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int measuredHeight = ((((appBarLayout.getMeasuredHeight() - DensityUtil.dp2px(40.0f)) - DensityUtil.dp2px(8.0f)) - StatusBarHelper.getStatusbarHeight(this$0)) - DensityUtil.dp2px(0.5f)) - DensityUtil.dp2px(40.0f);
        int screenWidth = ScreenTools.getScreenWidth() / 2;
        int i10 = i9 + screenWidth;
        this$0.setTitleBarChanged(i10 <= 0, measuredHeight + i9 <= 0, i10 <= 0 ? 1.0f : Math.abs(i9) / Math.abs(screenWidth));
        Integer num = this$0.mPosition;
        if (num == null || num.intValue() <= 0) {
            return;
        }
        appBarLayout.getLocationInWindow(new int[2]);
        this$0.findViewById(R.id.back_button).setVisibility(Math.abs(i9) != appBarLayout.getTotalScrollRange() ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m789initView$lambda3(UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MyFollowActivity.start(this$0, this$0.mUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4  reason: not valid java name */
    public static final void m790initView$lambda4(UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MyFansActivity.start(this$0, this$0.mUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-6$lambda-5  reason: not valid java name */
    public static final void m791initView$lambda6$lambda5(UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startActivity(new Intent(this$0, SetInfoActivity.class));
    }

    private final void initViewPager() {
        List<VideoBean> list;
        List<DynamicBean> list2;
        if (this.viewPager != null) {
            return;
        }
        TabLayout tabLayout = (TabLayout) findViewById(R.id.tabs);
        tabLayout.setIndicatorWidth(DensityUtil.px2dip(((ScreenTools.getScreenWidth() - DensityUtil.dp2px(24.0f)) - DensityUtil.dp2px(180.0f)) / 3.0f));
        this.viewPager = (ViewPager) findViewById(R.id.view_pager);
        findViewById(R.id.tab_lay).setVisibility(0);
        ViewPager viewPager = this.viewPager;
        if (viewPager != null) {
            viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.guochao.faceshow.userhomepage.act.UserHomePageAct$initViewPager$1
                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrollStateChanged(int i9) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrolled(int i9, float f10, int i10) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageSelected(int i9) {
                }
            });
        }
        ViewPager viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            final FragmentManager supportFragmentManager = getSupportFragmentManager();
            viewPager2.setAdapter(new FragmentPagerAdapter(supportFragmentManager) { // from class: com.guochao.faceshow.userhomepage.act.UserHomePageAct$initViewPager$2
                @Override // androidx.viewpager.widget.PagerAdapter
                public int getCount() {
                    return UserHomePageAct.this.getMFragments().size();
                }

                @Override // androidx.fragment.app.FragmentPagerAdapter
                @NotNull
                public Fragment getItem(int i9) {
                    return UserHomePageAct.this.getMFragments().get(i9);
                }

                @Override // androidx.viewpager.widget.PagerAdapter
                @NotNull
                public CharSequence getPageTitle(int i9) {
                    if (i9 == 0) {
                        String string = UserHomePageAct.this.getString(R.string.ui_revision_dynamic);
                        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.ui_revision_dynamic)");
                        return string;
                    } else if (i9 == 1) {
                        String string2 = UserHomePageAct.this.getString(R.string.video);
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.video)");
                        return string2;
                    } else if (i9 != 2) {
                        return "";
                    } else {
                        String string3 = UserHomePageAct.this.getString(R.string.muser_center_personal_data);
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(R.string.muser_center_personal_data)");
                        return string3;
                    }
                }
            });
        }
        ViewPager viewPager3 = this.viewPager;
        if (viewPager3 != null) {
            viewPager3.setOffscreenPageLimit(this.mFragments.size());
        }
        tabLayout.setupWithViewPager(this.viewPager);
        Integer num = this.mPosition;
        if (num != null && (num == null || num.intValue() != 0)) {
            Integer num2 = this.mPosition;
            if (num2 != null) {
                int intValue = num2.intValue();
                ViewPager viewPager4 = this.viewPager;
                if (viewPager4 != null) {
                    viewPager4.setCurrentItem(intValue);
                }
                AppBarLayout appBarLayout = (AppBarLayout) findViewById(R.id.appbar_layout);
                if (appBarLayout != null) {
                    Intrinsics.checkNotNullExpressionValue(appBarLayout, "findViewById<AppBarLayout>(R.id.appbar_layout)");
                    ViewGroup.LayoutParams layoutParams = appBarLayout.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
                    CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
                    if (behavior instanceof AppBarLayout.Behavior) {
                        animToTab((AppBarLayout.Behavior) behavior, 0, -appBarLayout.getHeight());
                    }
                }
            }
        } else {
            UserPageBaseData mUserData = this.viewModel.getMUserData();
            boolean z10 = true;
            if ((mUserData == null || (list2 = mUserData.friendRings) == null || !(list2.isEmpty() ^ true)) ? false : true) {
                ViewPager viewPager5 = this.viewPager;
                if (viewPager5 != null) {
                    viewPager5.setCurrentItem(1);
                }
            } else {
                UserPageBaseData mUserData2 = this.viewModel.getMUserData();
                if ((mUserData2 == null || (list = mUserData2.shortVideos) == null || !(list.isEmpty() ^ true)) ? false : false) {
                    ViewPager viewPager6 = this.viewPager;
                    if (viewPager6 != null) {
                        viewPager6.setCurrentItem(2);
                    }
                } else {
                    ViewPager viewPager7 = this.viewPager;
                    if (viewPager7 != null) {
                        viewPager7.setCurrentItem(0);
                    }
                }
            }
        }
        findViewById(R.id.user_match_lay).setVisibility(8);
    }

    private final void refreshFocusLay() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        UserPageBaseData mUserData = this.viewModel.getMUserData();
        if (mUserData != null) {
            if (mUserData.isTutual >= 1) {
                TextView textView = this.chatLay;
                if (textView != null) {
                    textView.setTextColor(ContextCompat.getColor(this, R.color.white));
                }
                TextView textView2 = this.chatLay;
                if (textView2 != null) {
                    textView2.setBackgroundResource(R.drawable.bg_user_page_focus);
                }
                TextView textView3 = this.chatLay;
                ViewGroup.LayoutParams layoutParams = textView3 != null ? textView3.getLayoutParams() : null;
                ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                if (marginLayoutParams2 != null) {
                    marginLayoutParams2.setMarginStart(DensityUtil.dp2px(22.0f));
                }
                TextView textView4 = this.chatLay;
                ViewGroup.LayoutParams layoutParams2 = textView4 != null ? textView4.getLayoutParams() : null;
                marginLayoutParams = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? layoutParams2 : null;
                if (marginLayoutParams != null) {
                    marginLayoutParams.setMarginEnd(DensityUtil.dp2px(22.0f));
                }
                TextView textView5 = this.focusLay;
                if (textView5 != null) {
                    textView5.setVisibility(8);
                }
                View view = this.devView;
                if (view != null) {
                    view.setVisibility(8);
                }
                TextView textView6 = this.chatLay;
                if (textView6 == null) {
                    return;
                }
                textView6.setVisibility(0);
                return;
            }
            TextView textView7 = this.chatLay;
            if (textView7 != null) {
                textView7.setTextColor(Color.parseColor("#6365FF"));
            }
            TextView textView8 = this.chatLay;
            if (textView8 != null) {
                textView8.setBackgroundResource(R.drawable.bg_user_page_chat);
            }
            TextView textView9 = this.chatLay;
            ViewGroup.LayoutParams layoutParams3 = textView9 != null ? textView9.getLayoutParams() : null;
            ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
            if (marginLayoutParams3 != null) {
                marginLayoutParams3.setMarginStart(DensityUtil.dp2px(0.0f));
            }
            TextView textView10 = this.chatLay;
            ViewGroup.LayoutParams layoutParams4 = textView10 != null ? textView10.getLayoutParams() : null;
            marginLayoutParams = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? layoutParams4 : null;
            if (marginLayoutParams != null) {
                marginLayoutParams.setMarginEnd(DensityUtil.dp2px(0.0f));
            }
            TextView textView11 = this.focusLay;
            if (textView11 != null) {
                textView11.setVisibility(0);
            }
            View view2 = this.devView;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            TextView textView12 = this.chatLay;
            if (textView12 == null) {
                return;
            }
            textView12.setVisibility(0);
        }
    }

    private final void setHeaderData(final UserPageBaseData userPageBaseData) {
        String str;
        UserHomePageModel userHomePageModel = this.viewModel;
        String str2 = userPageBaseData.userId;
        Intrinsics.checkNotNullExpressionValue(str2, "data.userId");
        userHomePageModel.getVoiceInfo(this, str2);
        View findViewById = findViewById(R.id.living);
        ImageView imageView = (ImageView) findViewById.findViewById(R.id.living_status);
        if (imageView != null) {
            Intrinsics.checkNotNullExpressionValue(imageView, "findViewById<ImageView>(R.id.living_status)");
            if (userPageBaseData.isLive == 1) {
                ImageView imageView2 = (ImageView) imageView.findViewById(R.id.living_status);
                Drawable drawable = imageView2 != null ? imageView2.getDrawable() : null;
                Intrinsics.checkNotNull(drawable, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
                ((AnimationDrawable) drawable).start();
            }
        }
        findViewById.setVisibility(userPageBaseData.isLive == 1 ? 0 : 8);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserHomePageAct.m792setHeaderData$lambda39$lambda38(UserPageBaseData.this, this, view);
            }
        });
        ((TextView) findViewById(R.id.user_name)).setText(userPageBaseData.nickName);
        final TextView textView = (TextView) findViewById(R.id.user_id);
        textView.setText(userPageBaseData.userId);
        final ViewGroup viewGroup = (ViewGroup) findViewById(R.id.user_id_lay);
        ViewParent parent = textView.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        if (((ViewGroup) parent).getVisibility() == 0) {
            ((TextView) findViewById(R.id.user_id2)).post(new Runnable() { // from class: com.guochao.faceshow.userhomepage.act.k
                @Override // java.lang.Runnable
                public final void run() {
                    UserHomePageAct.m793setHeaderData$lambda41(UserHomePageAct.this, userPageBaseData, viewGroup, textView);
                }
            });
        }
        UserPageBaseData.OnlineInfo onlineData = userPageBaseData.getOnlineData();
        if (onlineData != null) {
            TextView textView2 = (TextView) findViewById(R.id.user_lively_time);
            String time = onlineData.getTime(this);
            String str3 = "";
            if (TextUtils.isEmpty(time)) {
                str = "";
            } else {
                str = "· " + time;
            }
            textView2.setText(str);
            textView2.setVisibility(Intrinsics.areEqual(this.mUserId, getCurrentUser().userId) ? 8 : 0);
            if (!TextUtils.isEmpty(onlineData.getDistance())) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                str3 = String.format("(%s)", Arrays.copyOf(new Object[]{onlineData.getDistance()}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(format, *args)");
            }
            ((TextView) findViewById(R.id.user_distance)).setText(onlineData.getAddr(this) + str3);
            ViewParent parent2 = ((TextView) findViewById(R.id.user_distance)).getParent();
            Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup2 = (ViewGroup) parent2;
            UserPageBaseData.OnlineInfo onlineData2 = userPageBaseData.getOnlineData();
            viewGroup2.setVisibility(TextUtils.isEmpty(onlineData2 != null ? onlineData2.getCountry() : null) ? 8 : 0);
        }
        ((HeadPortraitView) findViewById(R.id.user_avatar)).f(userPageBaseData, true);
        new UserCenterSexLevel((ViewGroup) findViewById(R.id.user_center_age_level), false, false, true, true).d(userPageBaseData);
        ((TextView) findViewById(R.id.user_info_follow_value)).setText(Formatter.getFormat(userPageBaseData.attentionNum));
        ((TextView) findViewById(R.id.user_info_fans_value)).setText(Formatter.getFormat(userPageBaseData.fensiNum));
        ((TextView) findViewById(R.id.user_info_gift_value)).setText(Formatter.getFormat(userPageBaseData.giftDiamondNum));
        ((TextView) findViewById(R.id.user_info_send_value)).setText(Formatter.getFormat(userPageBaseData.sendGiftDiamondNum));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setHeaderData$lambda-39$lambda-38  reason: not valid java name */
    public static final void m792setHeaderData$lambda39$lambda38(UserPageBaseData data, UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(data, "$data");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        UserPageBaseData.LiveData liveData = data.liveData;
        Intrinsics.checkNotNullExpressionValue(liveData, "data.liveData");
        if (UserStateHolder.checkLiveState(R.string.livenotwatchlive, R.string.onevone_notwatchlive, R.string.livenotwatchlive, R.string.trtc_is_calling_no_live)) {
            return;
        }
        RoomItemData roomItemData = new RoomItemData();
        roomItemData.setGroupId(liveData.groupId);
        roomItemData.setRoomID(liveData.IM_ID);
        roomItemData.setUserId(liveData.user_id + "");
        roomItemData.setNickName(liveData.nick_name);
        roomItemData.accelerateURL = liveData.accelerateRtmp_url;
        roomItemData.setFlvUrl(liveData.flv_url);
        roomItemData.setStream_id(liveData.stream_id);
        roomItemData.setInfoName(liveData.info_name);
        roomItemData.setLiveId(liveData.live_id + "");
        roomItemData.setLiveImg(liveData.live_img);
        roomItemData.setImg(data.smallImg);
        if (this$0.mType == 1) {
            EventBus.getDefault().post(roomItemData);
            this$0.finish();
            return;
        }
        LiveInfoUtils.jumpToBaseLiveRoomAct(roomItemData, this$0.getActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setHeaderData$lambda-41  reason: not valid java name */
    public static final void m793setHeaderData$lambda41(UserHomePageAct this$0, UserPageBaseData data, ViewGroup viewGroup, TextView textView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(data, "$data");
        TextView textView2 = (TextView) this$0.findViewById(R.id.user_id2);
        textView2.setText(data.userId);
        viewGroup.measure(0, 0);
        if (viewGroup.getMeasuredWidth() >= ScreenTools.getScreenWidth() - DensityUtil.dp2px(105.0f)) {
            ViewParent parent = textView2.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).setVisibility(0);
            ViewParent parent2 = textView.getParent();
            Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent2).setVisibility(8);
            return;
        }
        ViewParent parent3 = textView2.getParent();
        Intrinsics.checkNotNull(parent3, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) parent3).setVisibility(8);
        ViewParent parent4 = textView.getParent();
        Intrinsics.checkNotNull(parent4, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) parent4).setVisibility(0);
    }

    private final void setTitleBarChanged(boolean z10, boolean z11, float f10) {
        View findViewById;
        this.isWhiteStatus = z10;
        int i9 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
        if (i9 > 0) {
            findViewById(R.id.bg_header_lay).setAlpha(f10);
            findViewById(R.id.bg_header_lay).setBackgroundResource(R.drawable.bg_user_page_top_white);
        } else if (f10 <= 0.0f) {
            findViewById(R.id.bg_header_lay).setAlpha(1.0f);
            findViewById(R.id.bg_header_lay).setBackgroundResource(R.drawable.bg_user_page_top_alpha);
        }
        findViewById(R.id.header_lay).setAlpha(1.0f);
        if (i9 > 0) {
            setLightStatusBar(true);
        } else {
            setLightStatusBar(z10);
        }
        View view = this.leftBack;
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.ImageView");
        ImageView imageView = (ImageView) view;
        int i10 = R.color.white;
        imageView.setImageTintList(ContextCompat.getColorStateList(this, (z10 || i9 > 0) ? R.color.black_222222 : R.color.white));
        View view2 = this.ivMore;
        Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type android.widget.ImageView");
        ((ImageView) view2).setImageTintList(ContextCompat.getColorStateList(this, (z10 || i9 > 0) ? R.color.black_222222 : R.color.white));
        ImageView imageView2 = (ImageView) findViewById(R.id.edit_user_info);
        if (z10 || i9 > 0) {
            i10 = R.color.black_222222;
        }
        imageView2.setImageTintList(ContextCompat.getColorStateList(this, i10));
        if (i9 > 0) {
            View view3 = this.leftBack;
            if (view3 != null) {
                view3.setAlpha(f10);
            }
            View view4 = this.ivMore;
            if (view4 != null) {
                view4.setAlpha(f10);
            }
            imageView2.setAlpha(f10);
        } else {
            View view5 = this.leftBack;
            if (view5 != null) {
                view5.setAlpha(1.0f);
            }
            View view6 = this.ivMore;
            if (view6 != null) {
                view6.setAlpha(1.0f);
            }
            imageView2.setAlpha(1.0f);
        }
        if (Intrinsics.areEqual(this.mUserId, getCurrentUser().userId) && (findViewById = findViewById(R.id.edit_user_info)) != null) {
            findViewById.setVisibility(0);
        }
        View findViewById2 = findViewById(R.id.left_back);
        if (findViewById2 != null) {
            findViewById2.setVisibility(0);
        }
    }

    private final void setVoiceData(final UserVoiceRoomInfoBean userVoiceRoomInfoBean) {
        UserVoiceRoomMicro userVoiceRoomMicro;
        UserVoiceRoomMicro userVoiceRoomMicro2;
        UserVoiceRoomMicro userVoiceRoomMicro3;
        UserVoiceRoomMicro userVoiceRoomMicro4;
        UserVoiceRoomMicro userVoiceRoomMicro5;
        UserVoiceRoomMicro userVoiceRoomMicro6;
        if (userVoiceRoomInfoBean != null) {
            UserPageBaseData mUserData = this.viewModel.getMUserData();
            if (!(mUserData != null && mUserData.isLive == 1) && (!TextUtils.isEmpty(userVoiceRoomInfoBean.getUserOnlineImGroupId()) || (!TextUtils.isEmpty(userVoiceRoomInfoBean.getImGroupId()) && userVoiceRoomInfoBean.getOnlineStatus() == 1))) {
                ViewGroup viewGroup = (ViewGroup) findViewById(R.id.enter_live_voice_room);
                viewGroup.setVisibility(0);
                ((SvgaImageViewV2) viewGroup.findViewById(R.id.voice_svga)).playRaw(R.raw.home_voice_room);
                Intrinsics.checkNotNullExpressionValue(viewGroup, "");
                ViewExtendsKt.onClick$default(viewGroup, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.m
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        UserHomePageAct.m794setVoiceData$lambda36$lambda33$lambda32(UserVoiceRoomInfoBean.this, this, view);
                    }
                }, 1, null);
            }
            if (TextUtils.isEmpty(userVoiceRoomInfoBean.getImGroupId())) {
                return;
            }
            View findViewById = findViewById(R.id.voice_room_lay);
            findViewById.setVisibility(0);
            Intrinsics.checkNotNullExpressionValue(findViewById, "");
            ViewExtendsKt.onClick$default(findViewById, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserHomePageAct.m795setVoiceData$lambda36$lambda35$lambda34(UserVoiceRoomInfoBean.this, this, view);
                }
            }, 1, null);
            ((TextView) findViewById(R.id.voice_room_name)).setText(userVoiceRoomInfoBean.getTitle());
            hc.a.r((ImageView) findViewById(R.id.voice_user_self), userVoiceRoomInfoBean.getCoverImgUrl(), R.mipmap.default_head, 8);
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) findViewById(R.id.first_voice_avatar);
            NormalCircleImageView normalCircleImageView2 = (NormalCircleImageView) findViewById(R.id.second_voice_avatar);
            NormalCircleImageView normalCircleImageView3 = (NormalCircleImageView) findViewById(R.id.third_voice_avatar);
            List<UserVoiceRoomMicro> microList = userVoiceRoomInfoBean.getMicroList();
            int size = microList != null ? microList.size() : 0;
            if (size == 0) {
                normalCircleImageView.setVisibility(8);
                normalCircleImageView2.setVisibility(8);
                normalCircleImageView3.setVisibility(8);
                return;
            }
            String str = null;
            if (size == 1) {
                normalCircleImageView.setVisibility(0);
                normalCircleImageView2.setVisibility(8);
                normalCircleImageView3.setVisibility(8);
                List<UserVoiceRoomMicro> microList2 = userVoiceRoomInfoBean.getMicroList();
                if (microList2 != null && (userVoiceRoomMicro = microList2.get(0)) != null) {
                    str = userVoiceRoomMicro.getImg();
                }
                hc.a.h(normalCircleImageView, str, R.mipmap.default_head);
            } else if (size == 2) {
                normalCircleImageView.setVisibility(0);
                normalCircleImageView2.setVisibility(0);
                normalCircleImageView3.setVisibility(8);
                List<UserVoiceRoomMicro> microList3 = userVoiceRoomInfoBean.getMicroList();
                hc.a.h(normalCircleImageView, (microList3 == null || (userVoiceRoomMicro3 = microList3.get(0)) == null) ? null : userVoiceRoomMicro3.getImg(), R.mipmap.default_head);
                List<UserVoiceRoomMicro> microList4 = userVoiceRoomInfoBean.getMicroList();
                if (microList4 != null && (userVoiceRoomMicro2 = microList4.get(1)) != null) {
                    str = userVoiceRoomMicro2.getImg();
                }
                hc.a.h(normalCircleImageView2, str, R.mipmap.default_head);
            } else if (size != 3) {
            } else {
                normalCircleImageView.setVisibility(0);
                normalCircleImageView2.setVisibility(0);
                normalCircleImageView3.setVisibility(0);
                List<UserVoiceRoomMicro> microList5 = userVoiceRoomInfoBean.getMicroList();
                hc.a.h(normalCircleImageView, (microList5 == null || (userVoiceRoomMicro6 = microList5.get(0)) == null) ? null : userVoiceRoomMicro6.getImg(), R.mipmap.default_head);
                List<UserVoiceRoomMicro> microList6 = userVoiceRoomInfoBean.getMicroList();
                hc.a.h(normalCircleImageView2, (microList6 == null || (userVoiceRoomMicro5 = microList6.get(1)) == null) ? null : userVoiceRoomMicro5.getImg(), R.mipmap.default_head);
                List<UserVoiceRoomMicro> microList7 = userVoiceRoomInfoBean.getMicroList();
                if (microList7 != null && (userVoiceRoomMicro4 = microList7.get(2)) != null) {
                    str = userVoiceRoomMicro4.getImg();
                }
                hc.a.h(normalCircleImageView3, str, R.mipmap.default_head);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setVoiceData$lambda-36$lambda-33$lambda-32  reason: not valid java name */
    public static final void m794setVoiceData$lambda36$lambda33$lambda32(UserVoiceRoomInfoBean userVoiceRoomInfoBean, UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArrayList arrayList = new ArrayList();
        VoiceRoomInfoModel voiceRoomInfoModel = new VoiceRoomInfoModel(0, null, null, null, null, null, null, null, null, null, 0, 0, 0L, 0, null, 0, 0, 0L, 0L, null, 0L, 0, null, 0, null, null, 0, 0, null, null, null, null, 0, -1, 1, null);
        voiceRoomInfoModel.setRoomId(String.valueOf(TextUtils.isEmpty(userVoiceRoomInfoBean.getUserOnlineImGroupId()) ? userVoiceRoomInfoBean.getRoomId() : userVoiceRoomInfoBean.getUserOnlineRoomId()));
        voiceRoomInfoModel.setUserId(String.valueOf(TextUtils.isEmpty(userVoiceRoomInfoBean.getUserOnlineImGroupId()) ? userVoiceRoomInfoBean.getUserId() : userVoiceRoomInfoBean.getUserOnlineRoomId()));
        voiceRoomInfoModel.setId(userVoiceRoomInfoBean.getUserId());
        voiceRoomInfoModel.setChatGroupId(String.valueOf(TextUtils.isEmpty(userVoiceRoomInfoBean.getUserOnlineImGroupId()) ? userVoiceRoomInfoBean.getRoomId() : userVoiceRoomInfoBean.getUserOnlineRoomId()));
        arrayList.add(voiceRoomInfoModel);
        VoiceRoomMiniHelper.gotoVoiceRoom(this$0, 0, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setVoiceData$lambda-36$lambda-35$lambda-34  reason: not valid java name */
    public static final void m795setVoiceData$lambda36$lambda35$lambda34(UserVoiceRoomInfoBean userVoiceRoomInfoBean, UserHomePageAct this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArrayList arrayList = new ArrayList();
        VoiceRoomInfoModel voiceRoomInfoModel = new VoiceRoomInfoModel(0, null, null, null, null, null, null, null, null, null, 0, 0, 0L, 0, null, 0, 0, 0L, 0L, null, 0L, 0, null, 0, null, null, 0, 0, null, null, null, null, 0, -1, 1, null);
        voiceRoomInfoModel.setRoomId(String.valueOf(userVoiceRoomInfoBean.getRoomId()));
        voiceRoomInfoModel.setUserId(String.valueOf(userVoiceRoomInfoBean.getUserId()));
        voiceRoomInfoModel.setId(userVoiceRoomInfoBean.getUserId());
        voiceRoomInfoModel.setChatGroupId(userVoiceRoomInfoBean.getImGroupId());
        arrayList.add(voiceRoomInfoModel);
        VoiceRoomMiniHelper.gotoVoiceRoom(this$0, 0, arrayList);
    }

    private final void showFreezePage() {
        TextView textView = (TextView) findViewById(R.id.froze_type);
        UserPageBaseData mUserData = this.viewModel.getMUserData();
        Integer valueOf = mUserData != null ? Integer.valueOf(mUserData.statuesV2) : null;
        if (valueOf != null && valueOf.intValue() == -4) {
            TextDrawableUtil.addDrawableTop(textView, R.mipmap.delete_user);
            textView.setText(getString(R.string.user_has_delete));
        } else if (valueOf != null && valueOf.intValue() == -3) {
            TextDrawableUtil.addDrawableTop(textView, R.mipmap.delete_user);
            textView.setText(getString(R.string.is_user_deleted));
        } else if (valueOf != null && valueOf.intValue() == -1) {
            TextDrawableUtil.addDrawableTop(textView, R.mipmap.freezon_user);
            textView.setText(getString(R.string.User_frozen));
        } else if (valueOf != null && valueOf.intValue() == 0) {
            TextDrawableUtil.addDrawableTop(textView, R.mipmap.freezon_user);
            textView.setText(getString(R.string.User_frozen));
        } else if (valueOf != null && valueOf.intValue() == 2) {
            TextDrawableUtil.addDrawableTop(textView, R.mipmap.black_user);
            textView.setText(getString(R.string.is_black_for_other));
        } else if (valueOf != null && valueOf.intValue() == 3) {
            TextDrawableUtil.addDrawableTop(textView, R.mipmap.black_user);
            textView.setText(getString(R.string.is_black_for_you));
        } else if (valueOf != null && valueOf.intValue() == 4) {
            TextDrawableUtil.addDrawableTop(textView, R.mipmap.black_user);
            textView.setText(getString(R.string.is_black_for_you));
        }
        findViewById(R.id.freeze_user).setVisibility(0);
        findViewById(R.id.bottom_lay).setVisibility(8);
    }

    private final void showUserNotExist() {
        TextView textView = (TextView) findViewById(R.id.froze_type);
        textView.setText(R.string.ugc_user_not_exist);
        TextDrawableUtil.addDrawableTop(textView, R.mipmap.icon_user_not_exist);
        findViewById(R.id.freeze_user).setVisibility(0);
    }

    @JvmStatic
    public static final void start(@NotNull Activity activity, @Nullable String str, int i9) {
        Companion.start(activity, str, i9);
    }

    @JvmStatic
    public static final void start(@NotNull Activity activity, @Nullable String str, int i9, int i10) {
        Companion.start(activity, str, i9, i10);
    }

    @JvmStatic
    public static final void start(@NotNull Context context, @Nullable String str) {
        Companion.start(context, str);
    }

    @JvmStatic
    public static final void start(@NotNull Context context, @Nullable String str, int i9) {
        Companion.start(context, str, i9);
    }

    @JvmStatic
    public static final void start(@NotNull Context context, @Nullable String str, @Nullable String str2) {
        Companion.start(context, str, str2);
    }

    @JvmStatic
    public static final void start(@NotNull Context context, @Nullable String str, @Nullable String str2, @Nullable Integer num) {
        Companion.start(context, str, str2, num);
    }

    @JvmStatic
    public static final void start(@NotNull Context context, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Companion.start(context, str, str2, str3);
    }

    private final void startBanner(UserPageBaseData userPageBaseData) {
        final RecyclerView recyclerView = (RecyclerView) findViewById(R.id.avatar_imgs);
        final Banner banner = (Banner) findViewById(R.id.photo_walls);
        final ArrayList arrayList = new ArrayList();
        banner.setImageLoader(new ImageLoaderInterface<View>() { // from class: com.guochao.faceshow.userhomepage.act.UserHomePageAct$startBanner$1
            @Override // com.youth.banner.loader.ImageLoaderInterface
            @Nullable
            public View createImageView(@NotNull Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                return LayoutInflater.from(context).inflate(R.layout.layout_simple_image, (ViewGroup) null);
            }

            @Override // com.youth.banner.loader.ImageLoaderInterface
            public void displayImage(@NotNull Context context, @Nullable Object obj, @Nullable View view) {
                Intrinsics.checkNotNullParameter(context, "context");
                hc.a.h((ImageView) view, obj, R.mipmap.default_head);
            }
        });
        banner.setBannerStyle(0);
        banner.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.guochao.faceshow.userhomepage.act.UserHomePageAct$startBanner$2
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i9) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i9, float f10, int i10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i9) {
                if (Intrinsics.areEqual(RecyclerView.this.getTag(), Integer.valueOf(i9))) {
                    return;
                }
                RecyclerView.this.setTag(Integer.valueOf(i9));
                RecyclerView.Adapter adapter = RecyclerView.this.getAdapter();
                if (adapter != null) {
                    adapter.notifyItemRangeChanged(0, arrayList.size());
                }
                RecyclerView.this.smoothScrollToPosition(i9);
            }
        });
        banner.setOnBannerListener(new OnBannerListener() { // from class: com.guochao.faceshow.userhomepage.act.i
            @Override // com.youth.banner.listener.OnBannerListener
            public final void OnBannerClick(int i9) {
                UserHomePageAct.m796startBanner$lambda44(UserHomePageAct.this, banner, arrayList, i9);
            }
        });
        List<UserPageBaseData.CoverData> list = userPageBaseData.covers;
        if (list != null) {
            for (UserPageBaseData.CoverData coverData : list) {
                String imgUrl2 = coverData.imgUrl;
                if (imgUrl2 != null) {
                    Intrinsics.checkNotNullExpressionValue(imgUrl2, "imgUrl");
                    arrayList.add(imgUrl2);
                }
            }
        }
        banner.setImages(arrayList);
        banner.isAutoPlay(false);
        banner.start();
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
        recyclerView.setItemAnimator(null);
        recyclerView.setAdapter(new UserHomePageAct$startBanner$5(arrayList, recyclerView, this, banner));
        int size = arrayList.size();
        for (final int i9 = 0; i9 < size; i9++) {
            if (Intrinsics.areEqual(arrayList.get(i9), imgUrl)) {
                recyclerView.post(new Runnable() { // from class: com.guochao.faceshow.userhomepage.act.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        UserHomePageAct.m797startBanner$lambda47(RecyclerView.this, i9);
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startBanner$lambda-44  reason: not valid java name */
    public static final void m796startBanner$lambda44(UserHomePageAct this$0, Banner banner, List urls, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(urls, "$urls");
        if (this$0.mUserPhotoZoomHelper == null) {
            UserPhotoZoomHelper userPhotoZoomHelper = new UserPhotoZoomHelper(this$0);
            this$0.mUserPhotoZoomHelper = userPhotoZoomHelper;
            userPhotoZoomHelper.bindData(urls);
        }
        UserPhotoZoomHelper userPhotoZoomHelper2 = this$0.mUserPhotoZoomHelper;
        if (userPhotoZoomHelper2 != null) {
            userPhotoZoomHelper2.startZoom(banner, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startBanner$lambda-47  reason: not valid java name */
    public static final void m797startBanner$lambda47(RecyclerView recyclerView, int i9) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        View findViewByPosition = ((LinearLayoutManager) layoutManager).findViewByPosition(i9);
        if (findViewByPosition != null) {
            findViewByPosition.callOnClick();
        }
    }

    @JvmStatic
    public static final void startByUserName(@NotNull Context context, @Nullable String str) {
        Companion.startByUserName(context, str);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        String str;
        if (this.viewModel.getMUserData() != null) {
            Intent intent = new Intent();
            UserPageBaseData mUserData = this.viewModel.getMUserData();
            Intent putExtra = intent.putExtra("data", mUserData != null ? Integer.valueOf(mUserData.isTutual) : null);
            UserPageBaseData mUserData2 = this.viewModel.getMUserData();
            if (mUserData2 == null || (str = mUserData2.userId) == null) {
                str = this.mUserId;
            }
            setResult(-1, putExtra.putExtra(Contants.USER_ID, str));
        }
        super.finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    @NotNull
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        com.guochao.faceshow.aaspring.base.activity.a a10 = new a.C0147a(this).b(true).a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder(this).immersionStatusBar(true).build()");
        return a10;
    }

    @Nullable
    public final TextView getChatLay() {
        return this.chatLay;
    }

    @Nullable
    public final View getDevView() {
        return this.devView;
    }

    @Nullable
    public final TextView getFocusLay() {
        return this.focusLay;
    }

    @Nullable
    public final View getIvMore() {
        return this.ivMore;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_user_home_page;
    }

    @Nullable
    public final View getLeftBack() {
        return this.leftBack;
    }

    @NotNull
    public final List<Fragment> getMFragments() {
        return this.mFragments;
    }

    @Nullable
    public final Integer getMPosition() {
        return this.mPosition;
    }

    public final int getMType() {
        return this.mType;
    }

    @Nullable
    public final String getMUserId() {
        return this.mUserId;
    }

    @Nullable
    public final y0.c getSkeletonScreen() {
        return this.skeletonScreen;
    }

    @NotNull
    public final UserHomePageModel getViewModel() {
        return this.viewModel;
    }

    @Nullable
    public final ViewPager getViewPager() {
        return this.viewPager;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        checkUserHomeSourceTrack();
        this.skeletonScreen = y0.a.a(findViewById(R.id.empty_content)).h(false).g(R.layout.layout_empty_user_home_page).i();
        Intent intent = getIntent();
        ImageView imageView = null;
        String stringExtra = intent != null ? intent.getStringExtra(Contants.USER_ID) : null;
        Intent intent2 = getIntent();
        String stringExtra2 = intent2 != null ? intent2.getStringExtra("userName") : null;
        Intent intent3 = getIntent();
        imgUrl = intent3 != null ? intent3.getStringExtra("imgUrl") : null;
        Intent intent4 = getIntent();
        this.mType = intent4 != null ? intent4.getIntExtra("type", 0) : 0;
        Intent intent5 = getIntent();
        this.mPosition = intent5 != null ? Integer.valueOf(intent5.getIntExtra("position", 0)) : null;
        this.viewModel.bind(this, this);
        ImageView imageView2 = (ImageView) findViewById(R.id.left_back);
        if (imageView2 != null) {
            ViewGroup.LayoutParams layoutParams = imageView2.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin += StatusBarHelper.getStatusbarHeight(this);
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserHomePageAct.m782initView$lambda1$lambda0(UserHomePageAct.this, view);
                }
            });
            imageView = imageView2;
        }
        this.leftBack = imageView;
        if (TextUtils.isEmpty(stringExtra)) {
            this.viewModel.getUserId(stringExtra2);
        } else if (stringExtra != null) {
            initView(stringExtra);
        }
        View findViewById = findViewById(R.id.user_info_follow_ly);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById<View>(R.id.user_info_follow_ly)");
        ViewExtendsKt.onClick$default(findViewById, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserHomePageAct.m789initView$lambda3(UserHomePageAct.this, view);
            }
        }, 1, null);
        View findViewById2 = findViewById(R.id.user_info_fans_ly);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById<View>(R.id.user_info_fans_ly)");
        ViewExtendsKt.onClick$default(findViewById2, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserHomePageAct.m790initView$lambda4(UserHomePageAct.this, view);
            }
        }, 1, null);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == REPORT_REQUEST_CODE && i10 == -1 && intent != null) {
            io.reactivex.k.just(intent.getStringExtra(Contants.USER_ID)).delay(100L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new SimpleObserver<String>() { // from class: com.guochao.faceshow.userhomepage.act.UserHomePageAct$onActivityResult$1
                @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                public void onNext(@NotNull String userId) {
                    Intrinsics.checkNotNullParameter(userId, "userId");
                    super.onNext((UserHomePageAct$onActivityResult$1) userId);
                    if (UserHomePageAct.this.isFinishing() || UserHomePageAct.this.isDestroyed()) {
                        return;
                    }
                    ReportController.report(UserHomePageAct.this, userId, userId, "5");
                }
            });
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.viewModel.unbind(this);
        y0.c cVar = this.skeletonScreen;
        if (cVar != null) {
            cVar.c();
        }
    }

    public final void onFocusStateChanged(@Nullable BaseDynamicViewHolder baseDynamicViewHolder, @Nullable DynamicBean dynamicBean, boolean z10) {
        if (z10) {
            UserPageBaseData mUserData = this.viewModel.getMUserData();
            if (mUserData != null) {
                mUserData.isTutual = 1;
            }
        } else {
            UserPageBaseData mUserData2 = this.viewModel.getMUserData();
            if (mUserData2 != null) {
                mUserData2.isTutual = 0;
            }
        }
        refreshFocusLay();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        String str = this.mUserId;
        if (str != null) {
            UserHomePageModel userHomePageModel = this.viewModel;
            String str2 = getCurrentUser().userId;
            Intrinsics.checkNotNullExpressionValue(str2, "currentUser.userId");
            userHomePageModel.getUserBaseData(str, str2);
        }
    }

    public final void resetStatusBarColor() {
        setTitleBarChanged(this.isWhiteStatus, false, -1.0f);
    }

    public final void setChatLay(@Nullable TextView textView) {
        this.chatLay = textView;
    }

    public final void setDevView(@Nullable View view) {
        this.devView = view;
    }

    public final void setFocusLay(@Nullable TextView textView) {
        this.focusLay = textView;
    }

    public final void setIvMore(@Nullable View view) {
        this.ivMore = view;
    }

    public final void setLeftBack(@Nullable View view) {
        this.leftBack = view;
    }

    public final void setMPosition(@Nullable Integer num) {
        this.mPosition = num;
    }

    public final void setMType(int i9) {
        this.mType = i9;
    }

    public final void setMUserId(@Nullable String str) {
        this.mUserId = str;
    }

    public final void setSkeletonScreen(@Nullable y0.c cVar) {
        this.skeletonScreen = cVar;
    }

    public final void setViewPager(@Nullable ViewPager viewPager) {
        this.viewPager = viewPager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BannerViewPager getViewPager(Banner banner) {
        try {
            Field declaredField = Banner.class.getDeclaredField("viewPager");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(banner);
            if (obj instanceof BannerViewPager) {
                return (BannerViewPager) obj;
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // androidx.lifecycle.Observer
    public void onChanged(@Nullable Map<String, ? extends Object> map) {
        Set<String> keySet;
        if (map == null || (keySet = map.keySet()) == null) {
            return;
        }
        for (String str : keySet) {
            switch (str.hashCode()) {
                case -1145064979:
                    if (str.equals("deleteFocus")) {
                        UserPageBaseData mUserData = this.viewModel.getMUserData();
                        if (mUserData != null) {
                            mUserData.isTutual = 0;
                        }
                        refreshFocusLay();
                        break;
                    } else {
                        break;
                    }
                case -1028963766:
                    if (str.equals("getVoiceInfo")) {
                        Object obj = map.get(str);
                        setVoiceData(obj instanceof UserVoiceRoomInfoBean ? (UserVoiceRoomInfoBean) obj : null);
                        break;
                    } else {
                        break;
                    }
                case -863403652:
                    if (str.equals("getUserBaseData")) {
                        y0.c cVar = this.skeletonScreen;
                        if (cVar != null) {
                            cVar.c();
                        }
                        Object obj2 = map.get(str);
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.UserPageBaseData");
                        if (((UserPageBaseData) obj2).statuesV2 != 1) {
                            showFreezePage();
                            return;
                        }
                        findViewById(R.id.content_area).setAlpha(1.0f);
                        findViewById(R.id.bottom_lay).setAlpha(1.0f);
                        Object obj3 = map.get(str);
                        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.UserPageBaseData");
                        startBanner((UserPageBaseData) obj3);
                        Object obj4 = map.get(str);
                        Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.UserPageBaseData");
                        setHeaderData((UserPageBaseData) obj4);
                        refreshFocusLay();
                        initFragment();
                        initViewPager();
                        break;
                    } else {
                        continue;
                    }
                case 97604824:
                    if (str.equals("focus")) {
                        UserPageBaseData mUserData2 = this.viewModel.getMUserData();
                        if (mUserData2 != null) {
                            mUserData2.isTutual = 1;
                        }
                        refreshFocusLay();
                        break;
                    } else {
                        break;
                    }
                case 859984188:
                    if (str.equals("getUserId")) {
                        if (!(map.get(str) instanceof String)) {
                            showUserNotExist();
                            break;
                        } else {
                            Object obj5 = map.get(str);
                            Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.String");
                            initView((String) obj5);
                            break;
                        }
                    } else {
                        break;
                    }
                case 1698792184:
                    if (str.equals("likeOrSuperLike")) {
                        refreshFocusLay();
                        break;
                    } else {
                        break;
                    }
            }
        }
    }

    public final void initView(@NotNull String userId) {
        View findViewById;
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.mUserId = userId;
        if (Intrinsics.areEqual(userId, getCurrentUser().userId) && (findViewById = findViewById(R.id.edit_user_info)) != null) {
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserHomePageAct.m791initView$lambda6$lambda5(UserHomePageAct.this, view);
                }
            });
            ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin += StatusBarHelper.getStatusbarHeight(this);
        }
        View findViewById2 = findViewById(R.id.iv_more);
        ViewGroup.LayoutParams layoutParams2 = findViewById2.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin += StatusBarHelper.getStatusbarHeight(this);
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserHomePageAct.m783initView$lambda14$lambda13(UserHomePageAct.this, view);
            }
        });
        this.ivMore = findViewById2;
        findViewById(R.id.tab_lay).setPadding(0, StatusBarHelper.getStatusbarHeight(this) + DensityUtil.dp2px(8.0f) + DensityUtil.dp2px(40.0f), 0, 0);
        ViewGroup.LayoutParams layoutParams3 = findViewById(R.id.header_lay).getLayoutParams();
        Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin = ((-DensityUtil.dp2px(8.0f)) - StatusBarHelper.getStatusbarHeight(this)) - DensityUtil.dp2px(40.0f);
        findViewById(R.id.bottom_lay).setVisibility(Intrinsics.areEqual(this.mUserId, getCurrentUser().userId) ? 8 : 0);
        String str = this.mUserId;
        if (str != null) {
            UserHomePageModel userHomePageModel = this.viewModel;
            String str2 = getCurrentUser().userId;
            Intrinsics.checkNotNullExpressionValue(str2, "currentUser.userId");
            userHomePageModel.getUserBaseData(str, str2);
        }
        findViewById(R.id.back_button).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserHomePageAct.m787initView$lambda16(UserHomePageAct.this, view);
            }
        });
        final AppBarLayout appBarLayout = (AppBarLayout) findViewById(R.id.appbar_layout);
        appBarLayout.addOnOffsetChangedListener(new AppBarLayout.BaseOnOffsetChangedListener() { // from class: com.guochao.faceshow.userhomepage.act.g
            @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout2, int i9) {
                UserHomePageAct.m788initView$lambda18(AppBarLayout.this, this, appBarLayout2, i9);
            }
        });
        initBottomLay();
        findViewById(R.id.bg_header_lay).getLayoutParams().height = (DensityUtil.dp2px(80.0f) - DensityUtil.dp2px(32.0f)) + StatusBarHelper.getStatusbarHeight(this);
    }
}

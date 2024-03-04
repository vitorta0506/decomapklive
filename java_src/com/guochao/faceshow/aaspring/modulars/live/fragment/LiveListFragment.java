package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewGroupKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.BannerBeanData;
import com.guochao.faceshow.aaspring.beans.KitEvent;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.beans.RankListBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.manager.PrivateLiveInviteManager;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LiveListAdapter;
import com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.t;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.utils.location.FcLocation;
import com.guochao.faceshow.aaspring.utils.location.LocationHelper;
import com.guochao.faceshow.aaspring.utils.location.LocationService;
import com.guochao.faceshow.databinding.FragmentMultiLiveListBinding;
import com.guochao.faceshow.utils.AppContentFilter;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.PushUtils;
import com.huawei.hms.support.api.entity.core.CommonCode;
import ja.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsJVMKt;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import z8.c;
@Metadata(bv = {}, d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 À\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0002À\u0001B\b¢\u0006\u0005\b¿\u0001\u0010gJ \u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\"\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\nH\u0002J\b\u0010\u0012\u001a\u00020\fH\u0002J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0018\u0010\u001e\u001a\u00020\f2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bH\u0002J\b\u0010\u001f\u001a\u00020\fH\u0002J\u0010\u0010!\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u0013H\u0002J\b\u0010 \u001a\u00020\u0013H\u0002J\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00020#0\u001b2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0002J\b\u0010&\u001a\u00020\fH\u0002J\b\u0010'\u001a\u00020\nH\u0016J\u0006\u0010)\u001a\u00020(J\u001a\u0010-\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u00062\b\u0010,\u001a\u0004\u0018\u00010+H\u0014J\u0006\u0010/\u001a\u00020.J\u000e\u00100\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u0016\u00101\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u00102\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013J\b\u00103\u001a\u00020\fH\u0016J\u0010\u00105\u001a\u00020\f2\u0006\u00104\u001a\u00020\u0013H\u0016J\u000e\u00107\u001a\u00020\f2\u0006\u00106\u001a\u00020\u0013J\u000e\u00108\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\nJ\u0012\u0010;\u001a\u00020\f2\b\u0010:\u001a\u0004\u0018\u000109H\u0014J\u0006\u0010<\u001a\u00020\fJ\u0010\u0010=\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u0013H\u0017J\b\u0010>\u001a\u00020\fH\u0016J\u0010\u0010@\u001a\u00020\f2\b\u0010?\u001a\u0004\u0018\u00010\u001cJ\b\u0010A\u001a\u00020\fH\u0016J\u001a\u0010E\u001a\u00020\f2\b\u0010C\u001a\u0004\u0018\u00010B2\u0006\u0010D\u001a\u00020\nH\u0016J\b\u0010F\u001a\u00020\fH\u0016J\b\u0010G\u001a\u00020\fH\u0016J\u0012\u0010J\u001a\u00020\f2\b\u0010I\u001a\u0004\u0018\u00010HH\u0016J\b\u0010K\u001a\u00020\fH\u0016J\u0012\u0010N\u001a\u00020\f2\b\u0010M\u001a\u0004\u0018\u00010LH\u0007J\u0012\u0010P\u001a\u00020\f2\b\u0010M\u001a\u0004\u0018\u00010OH\u0007J\u0010\u0010S\u001a\u00020\f2\u0006\u0010R\u001a\u00020QH\u0007J\u0006\u0010T\u001a\u00020\fR\u0016\u0010U\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\"\u0010W\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bW\u0010Y\"\u0004\bZ\u0010[R\u0014\u0010]\u001a\u00020\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^R(\u0010`\u001a\u00020_8\u0016@\u0016X\u0097.¢\u0006\u0018\n\u0004\b`\u0010a\u0012\u0004\bf\u0010g\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u001a\u0010i\u001a\u00020h8\u0006X\u0086D¢\u0006\f\n\u0004\bi\u0010j\u001a\u0004\bk\u0010lR\u001d\u0010n\u001a\b\u0012\u0004\u0012\u00020H0m8\u0006¢\u0006\f\n\u0004\bn\u0010o\u001a\u0004\bp\u0010qR$\u0010r\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\br\u0010s\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\u0018\u0010x\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR$\u0010z\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010{\u001a\u0004\b|\u0010}\"\u0004\b~\u0010\u007fR\u0016\u0010\u0080\u0001\u001a\u00020\n8\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010VR(\u0010\u0081\u0001\u001a\u00020\n8\u0004@\u0004X\u0084\u000e¢\u0006\u0017\n\u0005\b\u0081\u0001\u0010V\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0019\u0010\u0086\u0001\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0018\u0010\u0088\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010XR*\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0089\u0001\u0010y\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001\"\u0006\b\u008c\u0001\u0010\u008d\u0001R*\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u008e\u0001\u0010y\u001a\u0006\b\u008f\u0001\u0010\u008b\u0001\"\u0006\b\u0090\u0001\u0010\u008d\u0001R&\u0010\u0091\u0001\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0091\u0001\u0010X\u001a\u0005\b\u0092\u0001\u0010Y\"\u0005\b\u0093\u0001\u0010[R&\u0010\u0094\u0001\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0094\u0001\u0010X\u001a\u0005\b\u0095\u0001\u0010Y\"\u0005\b\u0096\u0001\u0010[R\u0019\u0010\u0097\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0018\u0010\u0099\u0001\u001a\u00020h8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0099\u0001\u0010jR\u0018\u0010\u009a\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010XR\u0018\u0010\u009c\u0001\u001a\u00030\u009b\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0018\u0010\u009e\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009e\u0001\u0010XR,\u0010 \u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b \u0001\u0010¡\u0001\u001a\u0006\b¢\u0001\u0010£\u0001\"\u0006\b¤\u0001\u0010¥\u0001R,\u0010§\u0001\u001a\u0005\u0018\u00010¦\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b§\u0001\u0010¨\u0001\u001a\u0006\b©\u0001\u0010ª\u0001\"\u0006\b«\u0001\u0010¬\u0001R2\u0010®\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u0001090\u00ad\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b®\u0001\u0010¯\u0001\u001a\u0006\b°\u0001\u0010±\u0001\"\u0006\b²\u0001\u0010³\u0001R\u001d\u0010´\u0001\u001a\b\u0012\u0004\u0012\u00020\u001c0\"8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001R/\u0010¶\u0001\u001a\b\u0012\u0004\u0012\u00020#0\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¶\u0001\u0010µ\u0001\u001a\u0006\b·\u0001\u0010¸\u0001\"\u0006\b¹\u0001\u0010º\u0001R0\u0010¼\u0001\u001a\t\u0012\u0005\u0012\u00030»\u00010\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¼\u0001\u0010µ\u0001\u001a\u0006\b½\u0001\u0010¸\u0001\"\u0006\b¾\u0001\u0010º\u0001¨\u0006Á\u0001"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Lp7/f;", "Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;", "Lja/a$b;", "Lz8/c$e;", "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "tempLiveRoomBean", "", "position", "", "onListItemClick", "roomItemData", "jumpToLiveActivity", "pageNo", "loadData", "loadEmptyDataMore", "", "click", "checkPermission", "hasMore", "notifyDataLoaded", "Landroid/content/Context;", "context", "isWifiConnect", "", "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;", "countryBeans", "addDiscoveryHeader", "addBannerHeader", "isVisibleToUser", "checkReload", "", "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;", "list", "filterList", "getRankAvatar", "getLayoutId", "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;", "getAdapter", "root", "Landroid/os/Bundle;", "savedInstanceState", "initView", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "onCreateLayoutManager", "getItemViewType", "requestPermission", "requestLocation", "onPause", "hidden", "onHiddenChanged", "loadMore", "checkDynamicLive", "getLiveList", "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;", "d", "refreshAfterData", "showEmptyView", "setUserVisibleHint", "onResume", UserDataStore.COUNTRY, "setCurrentCountry", "reload", "Lcom/google/android/material/appbar/AppBarLayout;", "appBarLayout", TypedValues.CycleType.S_WAVE_OFFSET, "onOffsetChanged", "onCloseFloatLive", "onOpenFloatLive", "", "key", "onDone", "onDestroy", "Landroid/content/Intent;", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "onEventBus", "Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;", "filterVideo", "Lcom/guochao/faceshow/aaspring/beans/KitEvent;", "kitEvent", "onEvent", "requestBannerData", "mCurrentPage", "I", "isEnableLoadMore", "Z", "()Z", "setEnableLoadMore", "(Z)V", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;)V", "getViewBinding$annotations", "()V", "", "RELOAD_TIME", "J", "getRELOAD_TIME", "()J", "", "PERMISSIONS", "[Ljava/lang/String;", "getPERMISSIONS", "()[Ljava/lang/String;", "mCurrentCountry", "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;", "getMCurrentCountry", "()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;", "setMCurrentCountry", "(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)V", "mEmptyCountryHeader", "Landroid/view/View;", "mData", "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;", "getMData", "()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;", "setMData", "(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V", "mRefreshCount", "mCurrSelectTypeId", "getMCurrSelectTypeId", "()I", "setMCurrSelectTypeId", "(I)V", "mCurrRoomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "mDataRefreshed", "mEmptyHeaderView", "getMEmptyHeaderView", "()Landroid/view/View;", "setMEmptyHeaderView", "(Landroid/view/View;)V", "mNoPermissionView", "getMNoPermissionView", "setMNoPermissionView", "mCallParent", "getMCallParent", "setMCallParent", "mCheckTips", "getMCheckTips", "setMCheckTips", "mAppStatusMsg", "Ljava/lang/String;", "mLastBackgroundTime", "mFromCountry", "Ljava/lang/Runnable;", "checkLiveRunnable", "Ljava/lang/Runnable;", "tracked", "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;", "mGetRequest", "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;", "getMGetRequest", "()Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;", "setMGetRequest", "(Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;)V", "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;", "mPostRequest", "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;", "getMPostRequest", "()Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;", "setMPostRequest", "(Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;)V", "Lcom/guochao/faceshow/aaspring/base/http/callback/c;", "faceCastHttpCallBack", "Lcom/guochao/faceshow/aaspring/base/http/callback/c;", "getFaceCastHttpCallBack", "()Lcom/guochao/faceshow/aaspring/base/http/callback/c;", "setFaceCastHttpCallBack", "(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V", "liveCountryCache", "Ljava/util/List;", "mEventItemBeans", "getMEventItemBeans", "()Ljava/util/List;", "setMEventItemBeans", "(Ljava/util/List;)V", "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;", "mRankRows", "getMRankRows", "setMRankRows", "<init>", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class LiveListFragment extends GCCoreFragment implements p7.f, AppBarLayout.OnOffsetChangedListener, a.b, c.e {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int PAGE_SIZE = 20;
    @JvmField
    public static boolean sShowedLiveTips;
    private boolean isEnableLoadMore;
    private boolean mCallParent;
    private boolean mCheckTips;
    @Nullable
    private final RoomItemData mCurrRoomItemData;
    @Nullable
    private LiveRoomPageData.LiveCountry mCurrentCountry;
    @Nullable
    private LiveRoomPageData mData;
    private boolean mDataRefreshed;
    @Nullable
    private View mEmptyCountryHeader;
    @Nullable
    private View mEmptyHeaderView;
    private boolean mFromCountry;
    @Nullable
    private GetRequest mGetRequest;
    private long mLastBackgroundTime;
    @Nullable
    private View mNoPermissionView;
    @Nullable
    private PostRequest mPostRequest;
    private boolean tracked;
    public FragmentMultiLiveListBinding viewBinding;
    private int mCurrentPage = 1;
    @NotNull
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final long RELOAD_TIME = 180000;
    @NotNull
    private final String[] PERMISSIONS = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
    private final int mRefreshCount = 1;
    private int mCurrSelectTypeId = 1;
    @NotNull
    private String mAppStatusMsg = LOCAL_EVENT_MSG.APP_IN_UN_DEFINED;
    @NotNull
    private final Runnable checkLiveRunnable = new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.g
        @Override // java.lang.Runnable
        public final void run() {
            LiveListFragment.m478checkLiveRunnable$lambda9(LiveListFragment.this);
        }
    };
    @NotNull
    private com.guochao.faceshow.aaspring.base.http.callback.c<LiveRoomPageData> faceCastHttpCallBack = new com.guochao.faceshow.aaspring.base.http.callback.c<LiveRoomPageData>() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$faceCastHttpCallBack$1
        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            LiveListFragment.this.setEnableLoadMore(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NotNull g7.a<LiveRoomPageData> exp) {
            Intrinsics.checkNotNullParameter(exp, "exp");
            LiveListFragment.this.dismissProgressDialog();
            LiveListFragment.this.notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable LiveRoomPageData liveRoomPageData, @NotNull FaceCastBaseResponse<LiveRoomPageData> baseResponse) {
            boolean z10;
            Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
            if (liveRoomPageData == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            int indexOfValue = LiveViewPagerFragment.f19284o.indexOfValue(LiveListFragment.this.getMCurrSelectTypeId());
            EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
            eventTrackingV2Utils.track(EventTrackingV2Utils.live_tab_success, indexOfValue < 0 ? "0" : String.valueOf(indexOfValue));
            z10 = LiveListFragment.this.tracked;
            if (!z10 && LiveListFragment.this.getMCurrSelectTypeId() == 1 && Intrinsics.areEqual(liveRoomPageData.getCurrentPage(), "1")) {
                eventTrackingV2Utils.track(EventTrackingV2Utils.live_list_page);
                LiveListFragment.this.tracked = true;
            }
            LiveListFragment.this.setMData(liveRoomPageData);
            LiveListFragment.this.refreshAfterData(liveRoomPageData);
        }
    };
    @NotNull
    private final List<LiveRoomPageData.LiveCountry> liveCountryCache = new ArrayList();
    @NotNull
    private List<BannerBeanData> mEventItemBeans = new ArrayList();
    @NotNull
    private List<RankListBean.RankRowsBean> mRankRows = new ArrayList();

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;", "", "()V", "PAGE_SIZE", "", "getPAGE_SIZE$annotations", "getPAGE_SIZE", "()I", "sShowedLiveTips", "", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;", "type", UserDataStore.COUNTRY, "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ LiveListFragment getInstance$default(Companion companion, int i9, LiveRoomPageData.LiveCountry liveCountry, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                liveCountry = null;
            }
            return companion.getInstance(i9, liveCountry);
        }

        @JvmStatic
        public static /* synthetic */ void getPAGE_SIZE$annotations() {
        }

        @JvmStatic
        @NotNull
        public final LiveListFragment getInstance(int i9, @Nullable LiveRoomPageData.LiveCountry liveCountry) {
            LiveListFragment liveListFragment = new LiveListFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("type", i9);
            bundle.putParcelable(UserDataStore.COUNTRY, liveCountry);
            liveListFragment.setArguments(bundle);
            return liveListFragment;
        }

        public final int getPAGE_SIZE() {
            return LiveListFragment.PAGE_SIZE;
        }
    }

    private final void addBannerHeader() {
        if (this.mCurrSelectTypeId == 1) {
            RoomItemData roomItemData = new RoomItemData();
            roomItemData.setLiveId("-4");
            getAdapter().getList().add(roomItemData);
        }
    }

    private final void addDiscoveryHeader(List<? extends LiveRoomPageData.LiveCountry> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        ArrayList arrayList = new ArrayList(list);
        if (this.mCurrSelectTypeId == 5) {
            if (arrayList.isEmpty()) {
                RoomItemData roomItemData = new RoomItemData();
                roomItemData.setLiveId("-3");
                getAdapter().getList().add(roomItemData);
                return;
            }
            this.liveCountryCache.clear();
            this.liveCountryCache.addAll(arrayList);
            RoomItemData roomItemData2 = new RoomItemData();
            roomItemData2.setLiveId("-3");
            getAdapter().getList().add(roomItemData2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkLiveRunnable$lambda-9  reason: not valid java name */
    public static final void m478checkLiveRunnable$lambda9(LiveListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkDynamicLive(true);
    }

    private final void checkPermission(int i9, boolean z10) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            if (ContextCompat.checkSelfPermission(activity, "android.permission.ACCESS_COARSE_LOCATION") == 0 && ContextCompat.checkSelfPermission(activity, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                requestLocation(i9, z10);
            } else if (!SpUtils.getBool(activity, "location_live_refuse", false)) {
                requestPermission(i9, z10);
            } else if (SpUtils.getBool(activity, "location_live_refuse_for_ever", false)) {
                if (z10) {
                    PackageUtils.gotoSetting(activity);
                } else {
                    requestLocation(i9, z10);
                }
            } else if (z10) {
                requestPermission(i9, z10);
            } else {
                requestLocation(i9, z10);
            }
        }
    }

    private final void checkReload(boolean z10) {
        if (this.mFromCountry) {
            this.mFromCountry = false;
            if (this.mCurrSelectTypeId == 5) {
                reload();
            }
        } else if (this.mLastBackgroundTime > 0 && z10 && this.mDataRefreshed) {
            if (System.currentTimeMillis() - this.mLastBackgroundTime > this.RELOAD_TIME) {
                reload();
            }
            this.mLastBackgroundTime = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BannerBeanData> filterList(List<BannerBeanData> list) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        if (com.guochao.faceshow.aaspring.manager.i.u().s() != null && com.guochao.faceshow.aaspring.manager.i.u().s().getBlackShow() != 1) {
            Iterator<BannerBeanData> it = list.iterator();
            while (it.hasNext()) {
                BannerBeanData next = it.next();
                equals = StringsKt__StringsJVMKt.equals("60", next.getBannerId(), true);
                if (!equals) {
                    equals2 = StringsKt__StringsJVMKt.equals("46", next.getBannerId(), true);
                    if (!equals2) {
                        equals3 = StringsKt__StringsJVMKt.equals("49", next.getBannerId(), true);
                        if (equals3) {
                        }
                    }
                }
                it.remove();
            }
        }
        return list;
    }

    @JvmStatic
    @NotNull
    public static final LiveListFragment getInstance(int i9, @Nullable LiveRoomPageData.LiveCountry liveCountry) {
        return Companion.getInstance(i9, liveCountry);
    }

    public static final int getPAGE_SIZE() {
        return Companion.getPAGE_SIZE();
    }

    private final void getRankAvatar() {
        List<RankListBean.RankRowsBean> rows;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        RankListBean rankListBean = (RankListBean) com.guochao.faceshow.aaspring.manager.b.b("live_rank", new TypeToken<RankListBean>() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$getRankAvatar$rank$1
        }.getType());
        if (rankListBean != null && (rows = rankListBean.getRows()) != null) {
            this.mRankRows.clear();
            if (rows.size() > 3) {
                this.mRankRows.addAll(rows.subList(0, 3));
                booleanRef.element = false;
            } else {
                this.mRankRows.addAll(rows);
            }
        }
        new PostRequest("tokens/ranking/starList").D("type", "1").M(new com.guochao.faceshow.aaspring.base.http.callback.c<RankListBean>() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$getRankAvatar$2
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<RankListBean> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable RankListBean rankListBean2, @NotNull FaceCastBaseResponse<RankListBean> baseResponse) {
                List<RankListBean.RankRowsBean> rows2;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (rankListBean2 == null || (rows2 = rankListBean2.getRows()) == null) {
                    return;
                }
                LiveListFragment liveListFragment = LiveListFragment.this;
                Ref.BooleanRef booleanRef2 = booleanRef;
                com.guochao.faceshow.aaspring.manager.b.e("live_rank", rankListBean2);
                liveListFragment.getMRankRows().clear();
                if (rows2.size() > 3) {
                    liveListFragment.getMRankRows().addAll(rows2.subList(0, 3));
                } else {
                    liveListFragment.getMRankRows().addAll(rows2);
                }
                if (booleanRef2.element) {
                    liveListFragment.notifyDataLoaded(true);
                }
            }
        });
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m479initView$lambda0(LiveListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkPermission(this$0.mCurrentPage, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m480initView$lambda2(LiveListFragment this$0, LiveListAdapter liveListAdapter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(liveListAdapter, "$liveListAdapter");
        if (!this$0.getViewBinding().recyclerContentArea.swipeContent.isRefreshing() && this$0.isEnableLoadMore) {
            liveListAdapter.getLoadMoreModule().loadMoreToLoading();
            int i9 = this$0.mCurrentPage + 1;
            this$0.mCurrentPage = i9;
            this$0.loadData(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m481initView$lambda3(LiveListFragment this$0, BaseQuickAdapter adapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        if (DisableDoubleClickUtils.canClick(view)) {
            ArrayList arrayList = new ArrayList();
            for (RoomItemData roomItemData : this$0.getAdapter().getList()) {
                if (Intrinsics.areEqual(PushUtils.CHAT_PUSH_TYPE, roomItemData.getLiveId()) || Intrinsics.areEqual("-2", roomItemData.getLiveId()) || Intrinsics.areEqual("-3", roomItemData.getLiveId()) || Intrinsics.areEqual("-4", roomItemData.getLiveId())) {
                    i9--;
                } else {
                    arrayList.add(roomItemData);
                }
            }
            if (arrayList.size() <= i9) {
                i9 = arrayList.size() - 1;
            }
            if (i9 < 0) {
                i9 = 0;
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this$0.onListItemClick(view, (RoomItemData) arrayList.get(i9), i9);
            ja.a.b().e("KEY_LIVE_CLICK_TIPS");
            if (this$0.mCurrSelectTypeId == 5) {
                EventTrackingUtils.getInstance().track(EventTrackingUtils.DISCOVERY_LATEST);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5  reason: not valid java name */
    public static final void m482initView$lambda5(LiveListAdapter liveListAdapter, LiveListFragment this$0) {
        Intrinsics.checkNotNullParameter(liveListAdapter, "$liveListAdapter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        liveListAdapter.getLoadMoreModule().setAutoLoadMore(false);
        this$0.mCurrentPage = 1;
        this$0.loadData(1);
    }

    private final boolean isVisibleToUser() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            return getUserVisibleHint();
        }
        while (parentFragment.getUserVisibleHint()) {
            parentFragment = parentFragment.getParentFragment();
            if (parentFragment == null) {
                return getUserVisibleHint();
            }
        }
        return false;
    }

    private final boolean isWifiConnect(Context context) {
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    private final void jumpToLiveActivity(View view, RoomItemData roomItemData, int i9) {
        boolean equals;
        LiveRoomPageData liveRoomPageData;
        String str = SpUtils.getStr(getActivity(), Contants.USER_ID);
        if (roomItemData != null) {
            equals = StringsKt__StringsJVMKt.equals(str, roomItemData.getUserId(), true);
            if (equals || (liveRoomPageData = this.mData) == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(getAdapter().getList());
            liveRoomPageData.setDiscoverCounty(this.mCurrentCountry);
            liveRoomPageData.setRoomList(arrayList);
            t.c().f(getActivity(), this.mData, i9, 0);
        }
    }

    private final void loadData(int i9) {
        if (this.mEmptyCountryHeader != null && i9 != 1) {
            loadEmptyDataMore();
            return;
        }
        this.mDataRefreshed = true;
        if (getActivity() instanceof LiveAreaActivity) {
            getLiveList(i9);
            return;
        }
        Fragment parentFragment = getParentFragment();
        LiveViewPagerFragment liveViewPagerFragment = parentFragment instanceof LiveViewPagerFragment ? (LiveViewPagerFragment) parentFragment : null;
        if (liveViewPagerFragment == null) {
            return;
        }
        if (liveViewPagerFragment.Y1() == 3 && this.mCurrSelectTypeId == 3) {
            checkPermission(i9, false);
        } else {
            getLiveList(i9);
        }
    }

    private final void loadEmptyDataMore() {
        GetRequest getRequest = get("tokens/live/cache/getLiveList");
        getRequest.v("page", this.mCurrentPage + "").v("limit", Integer.valueOf(PAGE_SIZE)).v("typeId", "1").M(new com.guochao.faceshow.aaspring.base.http.callback.c<LiveRoomPageData>() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$loadEmptyDataMore$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<LiveRoomPageData> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                LiveListFragment.this.notifyDataLoaded(false);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable LiveRoomPageData liveRoomPageData, @NotNull FaceCastBaseResponse<LiveRoomPageData> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (liveRoomPageData != null && liveRoomPageData.getRoomList() != null) {
                    List<RoomItemData> list = LiveListFragment.this.getAdapter().getList();
                    List<RoomItemData> roomList = liveRoomPageData.getRoomList();
                    Intrinsics.checkNotNullExpressionValue(roomList, "data.roomList");
                    list.addAll(roomList);
                    LiveListFragment.this.notifyDataLoaded(liveRoomPageData.getRoomList().size() > 0);
                    return;
                }
                onFailure(new g7.a<>(new Exception(""), -1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyDataLoaded(boolean z10) {
        getViewBinding().recyclerContentArea.swipeContent.setRefreshing(false);
        if (z10) {
            getAdapter().getLoadMoreModule().loadMoreComplete();
        } else {
            getAdapter().getLoadMoreModule().loadMoreEnd(false);
        }
        getAdapter().notifyDataSetChanged();
        this.handler.post(this.checkLiveRunnable);
        if (this.mCurrentPage == 1) {
            getViewBinding().recyclerContentArea.recyclerView.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.h
                @Override // java.lang.Runnable
                public final void run() {
                    LiveListFragment.m483notifyDataLoaded$lambda10(LiveListFragment.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: notifyDataLoaded$lambda-10  reason: not valid java name */
    public static final void m483notifyDataLoaded$lambda10(LiveListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getAdapter().getLoadMoreModule().setAutoLoadMore(true);
    }

    private final void onListItemClick(View view, RoomItemData roomItemData, int i9) {
        UserStateHolder.reset();
        roomItemData.setLaunchFromFloatWindow(false);
        jumpToLiveActivity(view, roomItemData, i9);
    }

    public final void checkDynamicLive(boolean z10) {
        Context context;
        int i9 = Build.VERSION.SDK_INT;
        if (i9 == 23 || i9 == 24 || i9 == 25 || (context = getContext()) == null || !isWifiConnect(context) || getView() == null) {
            return;
        }
        if (this.mCurrentPage <= 1 || !z10) {
            Fragment parentFragment = getParentFragment();
            if ((!(parentFragment instanceof LiveViewPagerFragment) || this == ((LiveViewPagerFragment) parentFragment).X1()) && this.mCurrSelectTypeId != 2 && isResumed() && !z8.c.o().y()) {
                y8.a.b().e(getViewBinding().recyclerContentArea.recyclerView, getAdapter().getList());
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void filterVideo(@Nullable AppContentFilter.EventBusRoomItemData eventBusRoomItemData) {
        AppContentFilter.INSTANCE.filterLiveList(getAdapter().getList());
        notifyDataLoaded(true);
    }

    @NotNull
    public final LiveListAdapter getAdapter() {
        RecyclerView.Adapter adapter = getViewBinding().recyclerContentArea.recyclerView.getAdapter();
        Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.adapter.LiveListAdapter");
        return (LiveListAdapter) adapter;
    }

    @NotNull
    public final com.guochao.faceshow.aaspring.base.http.callback.c<LiveRoomPageData> getFaceCastHttpCallBack() {
        return this.faceCastHttpCallBack;
    }

    public final int getItemViewType(int i9) {
        return ((RoomItemData) getAdapter().getItem(i9)).getItemType();
    }

    public int getLayoutId() {
        return R.layout.fragment_multi_live_list;
    }

    public final void getLiveList(int i9) {
        GetRequest getRequest = this.mGetRequest;
        if (getRequest != null) {
            getRequest.cancel();
        }
        PostRequest postRequest = this.mPostRequest;
        if (postRequest != null) {
            postRequest.cancel();
        }
        LiveRoomPageData.LiveCountry liveCountry = this.mCurrentCountry;
        if (liveCountry != null) {
            if (!Intrinsics.areEqual(PushUtils.CHAT_PUSH_TYPE, liveCountry != null ? liveCountry.getCountryId() : null)) {
                PostRequest post = post("tokens/live/cache/getLiveListByCountryId");
                PostRequest y10 = post.y("page", this.mCurrentPage + "").y("limit", Integer.valueOf(PAGE_SIZE)).y("typeId", "1");
                LiveRoomPageData.LiveCountry liveCountry2 = this.mCurrentCountry;
                this.mPostRequest = y10.y("countryId", liveCountry2 != null ? liveCountry2.getCountryId() : null).M(this.faceCastHttpCallBack);
                return;
            }
        }
        if (this.mCurrentPage == 1) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.live_list_refresh);
        } else {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.live_list_load_more);
        }
        GetRequest getRequest2 = get("tokens/live/cache/getLiveList");
        GetRequest v10 = getRequest2.v("page", this.mCurrentPage + "").v("limit", Integer.valueOf(PAGE_SIZE)).v("typeId", String.valueOf(this.mCurrSelectTypeId));
        this.mGetRequest = v10;
        if (this.mCurrSelectTypeId == 5 && v10 != null) {
            v10.v("countryId", "0");
        }
        if (this.mCurrentPage == 1 && this.mCurrSelectTypeId == 1) {
            requestBannerData();
            getRankAvatar();
        }
        GetRequest getRequest3 = this.mGetRequest;
        if (getRequest3 != null) {
            getRequest3.M(this.faceCastHttpCallBack);
        }
    }

    public final boolean getMCallParent() {
        return this.mCallParent;
    }

    public final boolean getMCheckTips() {
        return this.mCheckTips;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getMCurrSelectTypeId() {
        return this.mCurrSelectTypeId;
    }

    @Nullable
    public final LiveRoomPageData.LiveCountry getMCurrentCountry() {
        return this.mCurrentCountry;
    }

    @Nullable
    public final LiveRoomPageData getMData() {
        return this.mData;
    }

    @Nullable
    public final View getMEmptyHeaderView() {
        return this.mEmptyHeaderView;
    }

    @NotNull
    public final List<BannerBeanData> getMEventItemBeans() {
        return this.mEventItemBeans;
    }

    @Nullable
    public final GetRequest getMGetRequest() {
        return this.mGetRequest;
    }

    @Nullable
    public final View getMNoPermissionView() {
        return this.mNoPermissionView;
    }

    @Nullable
    public final PostRequest getMPostRequest() {
        return this.mPostRequest;
    }

    @NotNull
    public final List<RankListBean.RankRowsBean> getMRankRows() {
        return this.mRankRows;
    }

    @NotNull
    public final String[] getPERMISSIONS() {
        return this.PERMISSIONS;
    }

    public final long getRELOAD_TIME() {
        return this.RELOAD_TIME;
    }

    @NotNull
    public FragmentMultiLiveListBinding getViewBinding() {
        FragmentMultiLiveListBinding fragmentMultiLiveListBinding = this.viewBinding;
        if (fragmentMultiLiveListBinding != null) {
            return fragmentMultiLiveListBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        List<RoomItemData> roomList;
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        boolean z10 = this instanceof MultiLiveListFragment;
        getViewBinding().liveHeader.getRoot().setVisibility(z10 ? 0 : 8);
        View findViewById = root.findViewById(R.id.location_tips_view);
        this.mNoPermissionView = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LiveListFragment.m479initView$lambda0(LiveListFragment.this, view);
                }
            });
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mCurrentCountry = (LiveRoomPageData.LiveCountry) arguments.getParcelable(UserDataStore.COUNTRY);
            int i9 = arguments.getInt("type", 1);
            this.mCurrSelectTypeId = i9;
            this.mCheckTips = i9 == 1 && ja.a.b().f("KEY_LIVE_CLICK_TIPS");
            if (this.mCurrSelectTypeId == 1) {
                ja.a.b().d("KEY_LIVE_CLICK_TIPS", this);
            }
        }
        EventBus.getDefault().register(this);
        if (this.mCurrSelectTypeId == 1) {
            this.mData = (LiveRoomPageData) com.guochao.faceshow.aaspring.manager.b.a("live", "live_all_v2", LiveRoomPageData.class);
        }
        z8.c.o().registerOnFloatLiveListener(this);
        getViewBinding().recyclerContentArea.swipeContent.setColorSchemeColors(ContextCompat.getColor(root.getContext(), R.color.color_ugc_app_primary));
        getViewBinding().recyclerContentArea.recyclerView.setBackgroundColor(-1);
        getViewBinding().recyclerContentArea.recyclerView.setLayoutManager(onCreateLayoutManager());
        final LiveListAdapter liveListAdapter = new LiveListAdapter(this, this.mCurrSelectTypeId);
        liveListAdapter.getLoadMoreModule().setPreLoadNumber(4);
        liveListAdapter.getLoadMoreModule().setOnLoadMoreListener(new x0.j() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.j
            @Override // x0.j
            public final void onLoadMore() {
                LiveListFragment.m480initView$lambda2(LiveListFragment.this, liveListAdapter);
            }
        });
        liveListAdapter.setOnItemClickListener(new x0.f() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.i
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                LiveListFragment.m481initView$lambda3(LiveListFragment.this, baseQuickAdapter, view, i10);
            }
        });
        RecyclerView recyclerView = getViewBinding().recyclerContentArea.recyclerView;
        recyclerView.setAdapter(liveListAdapter);
        recyclerView.setPaddingRelative(recyclerView.getPaddingStart(), z10 ? 0 : DensityUtil.dp2px(8.0f), recyclerView.getPaddingEnd(), recyclerView.getPaddingBottom());
        getViewBinding().recyclerContentArea.swipeContent.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.f
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                LiveListFragment.m482initView$lambda5(LiveListAdapter.this, this);
            }
        });
        getViewBinding().recyclerContentArea.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$initView$7
            private final boolean isRefreshing() {
                SwipeRefreshLayout swipeRefreshLayout = LiveListFragment.this.getViewBinding().recyclerContentArea.swipeContent;
                Intrinsics.checkNotNullExpressionValue(swipeRefreshLayout, "viewBinding.recyclerContentArea.swipeContent");
                for (View view : ViewGroupKt.getChildren(swipeRefreshLayout)) {
                    if (!(view instanceof RecyclerView) && view.getVisibility() == 0) {
                        return true;
                    }
                }
                return LiveListFragment.this.getViewBinding().recyclerContentArea.swipeContent.isRefreshing();
            }

            private final boolean isSlideToBottom(RecyclerView recyclerView2) {
                return recyclerView2 != null && recyclerView2.computeVerticalScrollExtent() + recyclerView2.computeVerticalScrollOffset() >= recyclerView2.computeVerticalScrollRange();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView2, int i10) {
                int i11;
                Intrinsics.checkNotNullParameter(recyclerView2, "recyclerView");
                super.onScrollStateChanged(recyclerView2, i10);
                if (i10 == 0) {
                    LiveListFragment.this.checkDynamicLive(false);
                } else {
                    y8.a.b().d();
                }
                if (isSlideToBottom(recyclerView2)) {
                    i11 = LiveListFragment.this.mCurrentPage;
                    if (i11 != 1 || LiveListFragment.this.getAdapter().getLoadMoreModule().getLoadMoreStatus() != LoadMoreStatus.Complete || i10 == 1 || isRefreshing()) {
                        return;
                    }
                    LiveListFragment.this.getAdapter().getLoadMoreModule().loadMoreToLoading();
                }
            }
        });
        LiveRoomPageData liveRoomPageData = this.mData;
        if (((liveRoomPageData == null || (roomList = liveRoomPageData.getRoomList()) == null) ? 0 : roomList.size()) <= 0) {
            getViewBinding().recyclerContentArea.swipeContent.setRefreshing(true);
        } else {
            refreshAfterData(this.mData);
        }
        liveListAdapter.getLoadMoreModule().setAutoLoadMore(false);
        loadData(this.mCurrentPage);
    }

    public final boolean isEnableLoadMore() {
        return this.isEnableLoadMore;
    }

    @Override // z8.c.e
    public void onCloseFloatLive() {
        checkDynamicLive(false);
    }

    @NotNull
    public final RecyclerView.LayoutManager onCreateLayoutManager() {
        final int integer = getResources().getInteger(R.integer.live_room_count);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getActivity(), integer);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$onCreateLayoutManager$1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i9) {
                if (LiveListFragment.this.getItemViewType(i9) == 1 || LiveListFragment.this.getItemViewType(i9) == 3 || LiveListFragment.this.getItemViewType(i9) == 4) {
                    return integer;
                }
                return 1;
            }
        });
        return gridLayoutManager;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        ja.a.b().h("KEY_LIVE_CLICK_TIPS", this);
        z8.c.o().unregisterOnFloatLiveListener(this);
    }

    @Override // ja.a.b
    public void onDone(@Nullable String str) {
        if (getAdapter().getItemCount() <= 2 || !this.mCheckTips) {
            return;
        }
        getAdapter().notifyItemChanged(1);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEvent(@NotNull KitEvent kitEvent) {
        Intrinsics.checkNotNullParameter(kitEvent, "kitEvent");
        for (RoomItemData roomItemData : getAdapter().getList()) {
            if (Intrinsics.areEqual(kitEvent.getRoomId(), roomItemData.getLiveRoomId())) {
                roomItemData.setIsAttention(kitEvent.getIsAttention());
            }
        }
        notifyDataLoaded(true);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventBus(@Nullable Intent intent) {
        if (intent == null) {
            return;
        }
        if (Intrinsics.areEqual(LOCAL_EVENT_MSG.LIVE_FROM_COUNTRY, intent.getAction())) {
            this.mFromCountry = true;
        } else if (Intrinsics.areEqual(LOCAL_EVENT_MSG.APP_IN_BACKGROUND, intent.getAction())) {
            this.mAppStatusMsg = LOCAL_EVENT_MSG.APP_IN_BACKGROUND;
            this.mLastBackgroundTime = System.currentTimeMillis();
        } else if (Intrinsics.areEqual(LOCAL_EVENT_MSG.APP_IN_FORGROUND, intent.getAction())) {
            this.mAppStatusMsg = LOCAL_EVENT_MSG.APP_IN_FORGROUND;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z10) {
        super.onHiddenChanged(z10);
        this.handler.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public void onOffsetChanged(@Nullable AppBarLayout appBarLayout, int i9) {
    }

    public void onOpenFloatLive() {
        y8.a.b().g();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.handler.removeCallbacksAndMessages(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            if (activity instanceof LiveAreaActivity) {
                checkReload(isVisibleToUser());
                return;
            }
            Fragment parentFragment = getParentFragment();
            LiveViewPagerFragment liveViewPagerFragment = parentFragment instanceof LiveViewPagerFragment ? (LiveViewPagerFragment) parentFragment : null;
            if (liveViewPagerFragment == null) {
                return;
            }
            if (liveViewPagerFragment.Y1() == 2 && this.mCurrSelectTypeId == 3) {
                if (ContextCompat.checkSelfPermission(activity, "android.permission.ACCESS_COARSE_LOCATION") == 0 && ContextCompat.checkSelfPermission(activity, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                    View view = this.mNoPermissionView;
                    Intrinsics.checkNotNull(view);
                    view.setVisibility(8);
                    LocationService.startRequestLocation(null, activity, new LocationHelper.OnLocationChangedListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$onResume$1$1
                        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
                        public void onError(int i9, @NotNull String msg, @NotNull FcLocation lastFcLocation) {
                            Intrinsics.checkNotNullParameter(msg, "msg");
                            Intrinsics.checkNotNullParameter(lastFcLocation, "lastFcLocation");
                        }

                        @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
                        public void onReceiveLocation(@NotNull FcLocation fcLocation) {
                            Intrinsics.checkNotNullParameter(fcLocation, "fcLocation");
                        }
                    });
                } else {
                    View view2 = this.mNoPermissionView;
                    Intrinsics.checkNotNull(view2);
                    view2.setVisibility(0);
                }
            }
            checkReload(isVisibleToUser());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void refreshAfterData(@Nullable LiveRoomPageData liveRoomPageData) {
        if (liveRoomPageData == null) {
            liveRoomPageData = new LiveRoomPageData();
        }
        if (this.mCurrSelectTypeId == 5) {
            if (liveRoomPageData.getCountryLiveList() != null && !liveRoomPageData.getCountryLiveList().isEmpty()) {
                LiveRoomPageData liveRoomPageData2 = this.mData;
                if (liveRoomPageData2 != null) {
                    liveRoomPageData2.setCountryLiveList(liveRoomPageData.getCountryLiveList());
                }
            } else {
                LiveRoomPageData liveRoomPageData3 = this.mData;
                if (liveRoomPageData3 != null) {
                    liveRoomPageData3.setCountryLiveList(this.liveCountryCache);
                }
            }
        }
        setCurrentCountry(this.mCurrentCountry);
        AppContentFilter.INSTANCE.filterLiveList(liveRoomPageData.getRoomList());
        if (this.mCurrentPage == 1) {
            getAdapter().getList().clear();
            if (liveRoomPageData.getRoomList() != null && !liveRoomPageData.getRoomList().isEmpty()) {
                LiveRoomPageData liveRoomPageData4 = this.mData;
                addDiscoveryHeader(liveRoomPageData4 != null ? liveRoomPageData4.getCountryLiveList() : null);
            }
            addBannerHeader();
            getViewBinding().recyclerContentArea.recyclerView.scrollToPosition(0);
            if (this.mCallParent) {
                this.mCallParent = false;
            }
            if (this.mCurrSelectTypeId == 1) {
                com.guochao.faceshow.aaspring.manager.b.f("live", "live_all_v2", liveRoomPageData);
            }
        }
        if (liveRoomPageData.getRoomList() == null) {
            liveRoomPageData.setRoomList(new ArrayList());
        }
        try {
            List<RoomItemData> list = getAdapter().getList();
            ArrayList arrayList = new ArrayList();
            int size = list.size();
            for (int i9 = 0; i9 < size; i9++) {
                if (list.get(i9) != null) {
                    RoomItemData roomItemData = list.get(i9);
                    Intrinsics.checkNotNull(roomItemData);
                    if (!TextUtils.isEmpty(roomItemData.getLiveId())) {
                        RoomItemData roomItemData2 = list.get(i9);
                        Intrinsics.checkNotNull(roomItemData2);
                        if (!arrayList.contains(roomItemData2.getLiveId())) {
                            RoomItemData roomItemData3 = list.get(i9);
                            Intrinsics.checkNotNull(roomItemData3);
                            String liveId = roomItemData3.getLiveId();
                            Intrinsics.checkNotNullExpressionValue(liveId, "liveRoomBeans[i]!!.liveId");
                            arrayList.add(liveId);
                        }
                    }
                }
            }
            for (RoomItemData roomItemData4 : liveRoomPageData.getRoomList()) {
                if (roomItemData4 != null && !arrayList.contains(roomItemData4.getLiveId())) {
                    getAdapter().getList().add(roomItemData4);
                }
            }
            PrivateLiveInviteManager.c().e(liveRoomPageData.getIsReceivePrivateLive() == 1);
        } catch (Exception unused) {
        }
        if (getAdapter().getList().isEmpty()) {
            showEmptyView();
        } else {
            if (this.mEmptyCountryHeader != null) {
                try {
                    this.mEmptyCountryHeader = null;
                } catch (Exception unused2) {
                }
            }
            notifyDataLoaded(liveRoomPageData.getRoomList().size() > 0);
        }
        dismissProgressDialog();
    }

    @Override // p7.f
    public void reload() {
        this.mCallParent = true;
        getViewBinding().recyclerContentArea.swipeContent.setRefreshing(true);
        this.mCurrentPage = 1;
        loadData(1);
    }

    public final void requestBannerData() {
        List<BannerBeanData> list = (List) com.guochao.faceshow.aaspring.manager.b.b("live_banner", new TypeToken<List<? extends BannerBeanData>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$requestBannerData$cache$1
        }.getType());
        if (list != null && list.size() > 0) {
            this.mEventItemBeans.clear();
            this.mEventItemBeans.addAll(filterList(list));
        }
        new PostRequest("tokens/banner/findAppBannerToday").D("type", "1").M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<BannerBeanData>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$requestBannerData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<BannerBeanData>> exp) {
                List filterList;
                Intrinsics.checkNotNullParameter(exp, "exp");
                List list2 = (List) com.guochao.faceshow.aaspring.manager.b.b("live_banner", new TypeToken<List<? extends BannerBeanData>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$requestBannerData$1$onFailure$list$1
                }.getType());
                if (list2 == null || list2.size() <= 0) {
                    return;
                }
                LiveListFragment.this.getMEventItemBeans().clear();
                List<BannerBeanData> mEventItemBeans = LiveListFragment.this.getMEventItemBeans();
                filterList = LiveListFragment.this.filterList(list2);
                mEventItemBeans.addAll(filterList);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<BannerBeanData> list2, @NotNull FaceCastBaseResponse<List<BannerBeanData>> baseResponse) {
                List filterList;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                LiveListFragment.this.getMEventItemBeans().clear();
                if (list2 != null) {
                    LiveListFragment liveListFragment = LiveListFragment.this;
                    List<BannerBeanData> mEventItemBeans = liveListFragment.getMEventItemBeans();
                    filterList = liveListFragment.filterList(list2);
                    mEventItemBeans.addAll(filterList);
                    com.guochao.faceshow.aaspring.manager.b.e("live_banner", list2);
                }
            }
        });
    }

    public final void requestLocation(final int i9, boolean z10) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            if (ContextCompat.checkSelfPermission(activity, "android.permission.ACCESS_COARSE_LOCATION") == 0 && ContextCompat.checkSelfPermission(activity, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                LocationService.startRequestLocation(null, activity, new LocationHelper.OnLocationChangedListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$requestLocation$1$1
                    @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
                    public void onError(@LocationHelper.LocationError int i10, @NotNull String msg, @NotNull FcLocation lastFcLocation) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        Intrinsics.checkNotNullParameter(lastFcLocation, "lastFcLocation");
                        LiveListFragment.this.getLiveList(i9);
                    }

                    @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
                    public void onReceiveLocation(@NotNull FcLocation fcLocation) {
                        Intrinsics.checkNotNullParameter(fcLocation, "fcLocation");
                        LiveListFragment.this.getLiveList(i9);
                    }
                });
            } else {
                getLiveList(i9);
            }
        }
    }

    public final void requestPermission(final int i9, final boolean z10) {
        if (isDetached() || !isAdded()) {
            return;
        }
        Fragment parentFragment = getParentFragment();
        boolean z11 = true;
        if ((parentFragment == null || !parentFragment.isStateSaved()) ? false : false) {
            return;
        }
        com.tbruyelle.rxpermissions2.a aVar = new com.tbruyelle.rxpermissions2.a(this);
        String[] strArr = this.PERMISSIONS;
        aVar.p((String[]) Arrays.copyOf(strArr, strArr.length)).subscribe(new SimpleObserver<te.a>() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment$requestPermission$1
            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(@NotNull te.a permission) {
                Intrinsics.checkNotNullParameter(permission, "permission");
                LiveListFragment.this.requestLocation(i9, z10);
                LiveListFragment liveListFragment = LiveListFragment.this;
                boolean z12 = z10;
                if (permission.f58133b) {
                    View mNoPermissionView = liveListFragment.getMNoPermissionView();
                    if (mNoPermissionView == null) {
                        return;
                    }
                    mNoPermissionView.setVisibility(8);
                } else if (!permission.f58134c) {
                    if (z12) {
                        PackageUtils.gotoSetting(liveListFragment.getActivity());
                    }
                    SpUtils.setBool(liveListFragment.getActivity(), "location_live_refuse_for_ever", true);
                } else {
                    View mNoPermissionView2 = liveListFragment.getMNoPermissionView();
                    if (mNoPermissionView2 != null) {
                        mNoPermissionView2.setVisibility(0);
                    }
                    SpUtils.setBool(liveListFragment.getActivity(), "location_live_refuse", true);
                }
            }
        });
    }

    public final void setCurrentCountry(@Nullable LiveRoomPageData.LiveCountry liveCountry) {
        List<LiveRoomPageData.LiveCountry> countryLiveList;
        List<LiveRoomPageData.LiveCountry> countryLiveList2;
        List<LiveRoomPageData.LiveCountry> countryLiveList3;
        List<LiveRoomPageData.LiveCountry> countryLiveList4;
        this.mCurrentCountry = liveCountry;
        ArrayList arrayList = new ArrayList();
        LiveRoomPageData liveRoomPageData = this.mData;
        if (liveRoomPageData != null && (countryLiveList3 = liveRoomPageData.getCountryLiveList()) != null) {
            for (LiveRoomPageData.LiveCountry it : countryLiveList3) {
                if (!Intrinsics.areEqual(it.getCountryId(), liveCountry != null ? liveCountry.getCountryId() : null)) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    arrayList.add(it);
                } else {
                    LiveRoomPageData liveRoomPageData2 = this.mData;
                    if (((liveRoomPageData2 == null || (countryLiveList4 = liveRoomPageData2.getCountryLiveList()) == null) ? 0 : countryLiveList4.indexOf(it)) <= 4) {
                        return;
                    }
                }
            }
        }
        if (liveCountry != null) {
            arrayList.add(0, liveCountry);
        }
        LiveRoomPageData liveRoomPageData3 = this.mData;
        if (liveRoomPageData3 != null && (countryLiveList2 = liveRoomPageData3.getCountryLiveList()) != null) {
            countryLiveList2.clear();
        }
        LiveRoomPageData liveRoomPageData4 = this.mData;
        if (liveRoomPageData4 == null || (countryLiveList = liveRoomPageData4.getCountryLiveList()) == null) {
            return;
        }
        countryLiveList.addAll(arrayList);
    }

    public final void setEnableLoadMore(boolean z10) {
        this.isEnableLoadMore = z10;
    }

    public final void setFaceCastHttpCallBack(@NotNull com.guochao.faceshow.aaspring.base.http.callback.c<LiveRoomPageData> cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<set-?>");
        this.faceCastHttpCallBack = cVar;
    }

    public final void setMCallParent(boolean z10) {
        this.mCallParent = z10;
    }

    public final void setMCheckTips(boolean z10) {
        this.mCheckTips = z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setMCurrSelectTypeId(int i9) {
        this.mCurrSelectTypeId = i9;
    }

    public final void setMCurrentCountry(@Nullable LiveRoomPageData.LiveCountry liveCountry) {
        this.mCurrentCountry = liveCountry;
    }

    public final void setMData(@Nullable LiveRoomPageData liveRoomPageData) {
        this.mData = liveRoomPageData;
    }

    public final void setMEmptyHeaderView(@Nullable View view) {
        this.mEmptyHeaderView = view;
    }

    public final void setMEventItemBeans(@NotNull List<BannerBeanData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.mEventItemBeans = list;
    }

    public final void setMGetRequest(@Nullable GetRequest getRequest) {
        this.mGetRequest = getRequest;
    }

    public final void setMNoPermissionView(@Nullable View view) {
        this.mNoPermissionView = view;
    }

    public final void setMPostRequest(@Nullable PostRequest postRequest) {
        this.mPostRequest = postRequest;
    }

    public final void setMRankRows(@NotNull List<RankListBean.RankRowsBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.mRankRows = list;
    }

    @Override // androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void setUserVisibleHint(boolean z10) {
        super.setUserVisibleHint(z10);
        checkReload(isVisibleToUser());
        if (z10) {
            return;
        }
        this.handler.removeCallbacksAndMessages(null);
    }

    public void setViewBinding(@NotNull FragmentMultiLiveListBinding fragmentMultiLiveListBinding) {
        Intrinsics.checkNotNullParameter(fragmentMultiLiveListBinding, "<set-?>");
        this.viewBinding = fragmentMultiLiveListBinding;
    }

    public final void showEmptyView() {
        notifyDataLoaded(false);
        getAdapter().setEmptyView(R.layout.layout_live_list_empty);
    }
}

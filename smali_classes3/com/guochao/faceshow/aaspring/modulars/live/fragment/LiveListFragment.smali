.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"

# interfaces
.implements Lp7/f;
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;
.implements Lja/a$b;
.implements Lz8/c$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u00c0\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0002\u00c0\u0001B\u0008\u00a2\u0006\u0005\u0008\u00bf\u0001\u0010gJ \u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\"\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\nH\u0002J\u0008\u0010\u0012\u001a\u00020\u000cH\u0002J\u0018\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0018\u0010\u001e\u001a\u00020\u000c2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bH\u0002J\u0008\u0010\u001f\u001a\u00020\u000cH\u0002J\u0010\u0010!\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u0013H\u0002J\u0008\u0010 \u001a\u00020\u0013H\u0002J\u001c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020#0\u001b2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\"H\u0002J\u0008\u0010&\u001a\u00020\u000cH\u0002J\u0008\u0010\'\u001a\u00020\nH\u0016J\u0006\u0010)\u001a\u00020(J\u001a\u0010-\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u00062\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0014J\u0006\u0010/\u001a\u00020.J\u000e\u00100\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u0016\u00101\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u00102\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013J\u0008\u00103\u001a\u00020\u000cH\u0016J\u0010\u00105\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u0013H\u0016J\u000e\u00107\u001a\u00020\u000c2\u0006\u00106\u001a\u00020\u0013J\u000e\u00108\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\nJ\u0012\u0010;\u001a\u00020\u000c2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0014J\u0006\u0010<\u001a\u00020\u000cJ\u0010\u0010=\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u0013H\u0017J\u0008\u0010>\u001a\u00020\u000cH\u0016J\u0010\u0010@\u001a\u00020\u000c2\u0008\u0010?\u001a\u0004\u0018\u00010\u001cJ\u0008\u0010A\u001a\u00020\u000cH\u0016J\u001a\u0010E\u001a\u00020\u000c2\u0008\u0010C\u001a\u0004\u0018\u00010B2\u0006\u0010D\u001a\u00020\nH\u0016J\u0008\u0010F\u001a\u00020\u000cH\u0016J\u0008\u0010G\u001a\u00020\u000cH\u0016J\u0012\u0010J\u001a\u00020\u000c2\u0008\u0010I\u001a\u0004\u0018\u00010HH\u0016J\u0008\u0010K\u001a\u00020\u000cH\u0016J\u0012\u0010N\u001a\u00020\u000c2\u0008\u0010M\u001a\u0004\u0018\u00010LH\u0007J\u0012\u0010P\u001a\u00020\u000c2\u0008\u0010M\u001a\u0004\u0018\u00010OH\u0007J\u0010\u0010S\u001a\u00020\u000c2\u0006\u0010R\u001a\u00020QH\u0007J\u0006\u0010T\u001a\u00020\u000cR\u0016\u0010U\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\"\u0010W\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008W\u0010Y\"\u0004\u0008Z\u0010[R\u0014\u0010]\u001a\u00020\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R(\u0010`\u001a\u00020_8\u0016@\u0016X\u0097.\u00a2\u0006\u0018\n\u0004\u0008`\u0010a\u0012\u0004\u0008f\u0010g\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\u001a\u0010i\u001a\u00020h8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010lR\u001d\u0010n\u001a\u0008\u0012\u0004\u0012\u00020H0m8\u0006\u00a2\u0006\u000c\n\u0004\u0008n\u0010o\u001a\u0004\u0008p\u0010qR$\u0010r\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\u0018\u0010x\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR$\u0010z\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010{\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007fR\u0016\u0010\u0080\u0001\u001a\u00020\n8\u0002X\u0082D\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0001\u0010VR(\u0010\u0081\u0001\u001a\u00020\n8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0081\u0001\u0010V\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u0019\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u0018\u0010\u0088\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0088\u0001\u0010XR*\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0089\u0001\u0010y\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001R*\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u008e\u0001\u0010y\u001a\u0006\u0008\u008f\u0001\u0010\u008b\u0001\"\u0006\u0008\u0090\u0001\u0010\u008d\u0001R&\u0010\u0091\u0001\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0091\u0001\u0010X\u001a\u0005\u0008\u0092\u0001\u0010Y\"\u0005\u0008\u0093\u0001\u0010[R&\u0010\u0094\u0001\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0094\u0001\u0010X\u001a\u0005\u0008\u0095\u0001\u0010Y\"\u0005\u0008\u0096\u0001\u0010[R\u0019\u0010\u0097\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0018\u0010\u0099\u0001\u001a\u00020h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0099\u0001\u0010jR\u0018\u0010\u009a\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009a\u0001\u0010XR\u0018\u0010\u009c\u0001\u001a\u00030\u009b\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u0018\u0010\u009e\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009e\u0001\u0010XR,\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\u001a\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001\"\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R,\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u00a6\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\u001a\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001\"\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R2\u0010\u00ae\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u0001090\u00ad\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ae\u0001\u0010\u00af\u0001\u001a\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001\"\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u001d\u0010\u00b4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\"8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R/\u0010\u00b6\u0001\u001a\u0008\u0012\u0004\u0012\u00020#0\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b6\u0001\u0010\u00b5\u0001\u001a\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001\"\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R0\u0010\u00bc\u0001\u001a\t\u0012\u0005\u0012\u00030\u00bb\u00010\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00bc\u0001\u0010\u00b5\u0001\u001a\u0006\u0008\u00bd\u0001\u0010\u00b8\u0001\"\u0006\u0008\u00be\u0001\u0010\u00ba\u0001\u00a8\u0006\u00c1\u0001"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "Lp7/f;",
        "Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;",
        "Lja/a$b;",
        "Lz8/c$e;",
        "Landroid/view/View;",
        "view",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "tempLiveRoomBean",
        "",
        "position",
        "",
        "onListItemClick",
        "roomItemData",
        "jumpToLiveActivity",
        "pageNo",
        "loadData",
        "loadEmptyDataMore",
        "",
        "click",
        "checkPermission",
        "hasMore",
        "notifyDataLoaded",
        "Landroid/content/Context;",
        "context",
        "isWifiConnect",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
        "countryBeans",
        "addDiscoveryHeader",
        "addBannerHeader",
        "isVisibleToUser",
        "checkReload",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
        "list",
        "filterList",
        "getRankAvatar",
        "getLayoutId",
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;",
        "getAdapter",
        "root",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "onCreateLayoutManager",
        "getItemViewType",
        "requestPermission",
        "requestLocation",
        "onPause",
        "hidden",
        "onHiddenChanged",
        "loadMore",
        "checkDynamicLive",
        "getLiveList",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
        "d",
        "refreshAfterData",
        "showEmptyView",
        "setUserVisibleHint",
        "onResume",
        "country",
        "setCurrentCountry",
        "reload",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "appBarLayout",
        "offset",
        "onOffsetChanged",
        "onCloseFloatLive",
        "onOpenFloatLive",
        "",
        "key",
        "onDone",
        "onDestroy",
        "Landroid/content/Intent;",
        "intent",
        "onEventBus",
        "Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;",
        "filterVideo",
        "Lcom/guochao/faceshow/aaspring/beans/KitEvent;",
        "kitEvent",
        "onEvent",
        "requestBannerData",
        "mCurrentPage",
        "I",
        "isEnableLoadMore",
        "Z",
        "()Z",
        "setEnableLoadMore",
        "(Z)V",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "",
        "RELOAD_TIME",
        "J",
        "getRELOAD_TIME",
        "()J",
        "",
        "PERMISSIONS",
        "[Ljava/lang/String;",
        "getPERMISSIONS",
        "()[Ljava/lang/String;",
        "mCurrentCountry",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
        "getMCurrentCountry",
        "()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
        "setMCurrentCountry",
        "(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)V",
        "mEmptyCountryHeader",
        "Landroid/view/View;",
        "mData",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
        "getMData",
        "()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
        "setMData",
        "(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V",
        "mRefreshCount",
        "mCurrSelectTypeId",
        "getMCurrSelectTypeId",
        "()I",
        "setMCurrSelectTypeId",
        "(I)V",
        "mCurrRoomItemData",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "mDataRefreshed",
        "mEmptyHeaderView",
        "getMEmptyHeaderView",
        "()Landroid/view/View;",
        "setMEmptyHeaderView",
        "(Landroid/view/View;)V",
        "mNoPermissionView",
        "getMNoPermissionView",
        "setMNoPermissionView",
        "mCallParent",
        "getMCallParent",
        "setMCallParent",
        "mCheckTips",
        "getMCheckTips",
        "setMCheckTips",
        "mAppStatusMsg",
        "Ljava/lang/String;",
        "mLastBackgroundTime",
        "mFromCountry",
        "Ljava/lang/Runnable;",
        "checkLiveRunnable",
        "Ljava/lang/Runnable;",
        "tracked",
        "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;",
        "mGetRequest",
        "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;",
        "getMGetRequest",
        "()Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;",
        "setMGetRequest",
        "(Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;)V",
        "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;",
        "mPostRequest",
        "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;",
        "getMPostRequest",
        "()Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;",
        "setMPostRequest",
        "(Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;)V",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "faceCastHttpCallBack",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "getFaceCastHttpCallBack",
        "()Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "setFaceCastHttpCallBack",
        "(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V",
        "liveCountryCache",
        "Ljava/util/List;",
        "mEventItemBeans",
        "getMEventItemBeans",
        "()Ljava/util/List;",
        "setMEventItemBeans",
        "(Ljava/util/List;)V",
        "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
        "mRankRows",
        "getMRankRows",
        "setMRankRows",
        "<init>",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PAGE_SIZE:I

.field public static sShowedLiveTips:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private final PERMISSIONS:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final RELOAD_TIME:J

.field private final checkLiveRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private faceCastHttpCallBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isEnableLoadMore:Z

.field private final liveCountryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mAppStatusMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCallParent:Z

.field private mCheckTips:Z

.field private final mCurrRoomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCurrSelectTypeId:I

.field private mCurrentCountry:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCurrentPage:I

.field private mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mDataRefreshed:Z

.field private mEmptyCountryHeader:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mEmptyHeaderView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mEventItemBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mFromCountry:Z

.field private mGetRequest:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLastBackgroundTime:J

.field private mNoPermissionView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRankRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mRefreshCount:I

.field private tracked:Z

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;

    const/16 v0, 0x14

    sput v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    .line 4
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->RELOAD_TIME:J

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 5
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->PERMISSIONS:[Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mRefreshCount:I

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const-string v0, "app_in_un_defined"

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mAppStatusMsg:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkLiveRunnable:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$faceCastHttpCallBack$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->faceCastHttpCallBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->liveCountryCache:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEventItemBeans:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mRankRows:Ljava/util/List;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->initView$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkLiveRunnable$lambda-9(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->notifyDataLoaded$lambda-10(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    return-void
.end method

.method public static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;)V

    return-void
.end method

.method public static final synthetic access$filterList(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->filterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMCurrentPage$p(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    return p0
.end method

.method public static final synthetic access$getPAGE_SIZE$cp()I
    .locals 1

    sget v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->PAGE_SIZE:I

    return v0
.end method

.method public static final synthetic access$getTracked$p(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->tracked:Z

    return p0
.end method

.method public static final synthetic access$notifyDataLoaded(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public static final synthetic access$setTracked$p(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->tracked:Z

    return-void
.end method

.method private final addBannerHeader()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    const-string v1, "-4"

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final addDiscoveryHeader(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v1, "-3"

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 5
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->liveCountryCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->liveCountryCache:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 10
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private static final checkLiveRunnable$lambda-9(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkDynamicLive(Z)V

    return-void
.end method

.method private final checkPermission(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestLocation(IZ)V

    goto :goto_2

    :cond_1
    const-string v1, "location_live_refuse"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestPermission(IZ)V

    return-void

    :cond_2
    const-string v1, "location_live_refuse_for_ever"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestPermission(IZ)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestLocation(IZ)V

    :goto_1
    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 10
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->gotoSetting(Landroid/content/Context;)V

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestLocation(IZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method private final checkReload(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mFromCountry:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mFromCountry:Z

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->reload()V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mLastBackgroundTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 6
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mDataRefreshed:Z

    if-eqz p1, :cond_4

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mLastBackgroundTime:J

    sub-long/2addr v0, v4

    .line 9
    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->RELOAD_TIME:J

    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->reload()V

    .line 11
    :cond_3
    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mLastBackgroundTime:J

    :cond_4
    return-void
.end method

.method private final filterList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getBlackShow()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;

    .line 5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->getBannerId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "60"

    invoke-static {v4, v3, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->getBannerId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "46"

    .line 7
    invoke-static {v4, v3, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->getBannerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "49"

    invoke-static {v3, v2, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static final getInstance(ILcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;->getInstance(ILcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final getPAGE_SIZE()I
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;->getPAGE_SIZE()I

    move-result v0

    return v0
.end method

.method private final getRankAvatar()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$getRankAvatar$rank$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$getRankAvatar$rank$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "live_rank"

    .line 3
    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RankListBean;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->getRows()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mRankRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mRankRows:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iput-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mRankRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_1
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "tokens/ranking/starList"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 11
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$getRankAvatar$2;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$getRankAvatar$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkPermission(IZ)V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$liveListAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->swipeContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->isEnableLoadMore:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    .line 4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->loadData(I)V

    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-2"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-3"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-4"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_6

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :cond_6
    if-gez p3, :cond_7

    const/4 p3, 0x0

    .line 11
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 12
    :cond_8
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p0, p2, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->onListItemClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V

    .line 13
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string p2, "KEY_LIVE_CLICK_TIPS"

    invoke-virtual {p1, p2}, Lja/a;->e(Ljava/lang/String;)V

    .line 14
    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const/4 p1, 0x5

    if-ne p0, p1, :cond_9

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    const-string p1, "Home_live_Explore_latest_click"

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static final initView$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 1

    const-string v0, "$liveListAdapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setAutoLoadMore(Z)V

    const/4 p0, 0x1

    .line 2
    iput p0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    .line 3
    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->loadData(I)V

    return-void
.end method

.method private final isVisibleToUser()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method private final isWifiConnect(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final jumpToLiveActivity(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-eqz p1, :cond_1

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentCountry:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setDiscoverCounty(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)V

    .line 6
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setRoomList(Ljava/util/List;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->f(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadData(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEmptyCountryHeader:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->loadEmptyDataMore()V

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mDataRefreshed:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getLiveList(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->Y1()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkPermission(IZ)V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getLiveList(I)V

    :goto_1
    return-void
.end method

.method private final loadEmptyDataMore()V
    .locals 3

    const-string v0, "tokens/live/cache/getLiveList"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 3
    sget v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->PAGE_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "typeId"

    const-string v2, "1"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$loadEmptyDataMore$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private final notifyDataLoaded(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->swipeContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkLiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static final notifyDataLoaded$lambda-10(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setAutoLoadMore(Z)V

    return-void
.end method

.method private final onListItemClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->reset()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLaunchFromFloatWindow(Z)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->jumpToLiveActivity(Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V

    return-void
.end method


# virtual methods
.method public final checkDynamicLive(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_8

    const/16 v1, 0x18

    if-eq v0, v1, :cond_8

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->isWifiConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    if-eqz p1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->X1()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eq p0, p1, :cond_4

    return-void

    .line 8
    :cond_4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    return-void

    .line 9
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 10
    :cond_6
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object p1

    invoke-virtual {p1}, Lz8/c;->y()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-static {}, Ly8/a;->b()Ly8/a;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Ly8/a;->e(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final filterVideo(Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object p1, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterLiveList(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public final getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.adapter.LiveListAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    return-object v0
.end method

.method public final getFaceCastHttpCallBack()Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->faceCastHttpCallBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getItemType()I

    move-result p1

    return p1
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01b9

    return v0
.end method

.method public final getLiveList(I)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mGetRequest:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->cancel()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentCountry:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    const-string v0, "countryId"

    const-string v1, "typeId"

    const-string v2, "limit"

    const-string v3, ""

    const-string v4, "page"

    if-eqz p1, :cond_4

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v5

    :goto_0
    const-string v6, "-1"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "tokens/live/cache/getLiveListByCountryId"

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 6
    sget v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->PAGE_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "1"

    .line 7
    invoke-virtual {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentCountry:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {p1, v0, v5}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->faceCastHttpCallBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 10
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-void

    .line 11
    :cond_4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    .line 12
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v6, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_list_refresh:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_5
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v6, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_list_load_more:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :goto_1
    const-string p1, "tokens/live/cache/getLiveList"

    .line 14
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object p1

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 16
    sget v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->PAGE_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 17
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 18
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mGetRequest:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 19
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    if-eqz p1, :cond_6

    const-string v1, "0"

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 21
    :cond_6
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    if-ne p1, v5, :cond_7

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    if-ne p1, v5, :cond_7

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestBannerData()V

    .line 23
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getRankAvatar()V

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mGetRequest:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->faceCastHttpCallBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    :cond_8
    return-void
.end method

.method public final getMCallParent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCallParent:Z

    return v0
.end method

.method public final getMCheckTips()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCheckTips:Z

    return v0
.end method

.method protected final getMCurrSelectTypeId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    return v0
.end method

.method public final getMCurrentCountry()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentCountry:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    return-object v0
.end method

.method public final getMData()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    return-object v0
.end method

.method public final getMEmptyHeaderView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEmptyHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public final getMEventItemBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEventItemBeans:Ljava/util/List;

    return-object v0
.end method

.method public final getMGetRequest()Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mGetRequest:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    return-object v0
.end method

.method public final getMNoPermissionView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mNoPermissionView:Landroid/view/View;

    return-object v0
.end method

.method public final getMPostRequest()Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-object v0
.end method

.method public final getMRankRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mRankRows:Ljava/util/List;

    return-object v0
.end method

.method public final getPERMISSIONS()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public final getRELOAD_TIME()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->RELOAD_TIME:J

    return-wide v0
.end method

.method public getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->liveHeader:Lcom/guochao/faceshow/databinding/ListItemMultiListHeaderBinding;

    invoke-virtual {p2}, Lcom/guochao/faceshow/databinding/ListItemMultiListHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 3
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 4
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p2, 0x7f0a0714

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mNoPermissionView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 6
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    const-string v3, "country"

    .line 8
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentCountry:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    const-string v3, "type"

    .line 9
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const-string v3, "KEY_LIVE_CLICK_TIPS"

    if-ne p2, v2, :cond_2

    .line 10
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v3}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 12
    :goto_1
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCheckTips:Z

    .line 13
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    if-ne p2, v2, :cond_3

    .line 14
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p2

    invoke-virtual {p2, v3, p0}, Lja/a;->d(Ljava/lang/String;Lja/a$b;)V

    .line 15
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 16
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    if-ne p2, v2, :cond_4

    .line 17
    const-class p2, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    const-string v3, "live"

    const-string v4, "live_all_v2"

    .line 18
    invoke-static {v3, v4, p2}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    .line 19
    :cond_4
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lz8/c;->registerOnFloatLiveListener(Lz8/c$e;)V

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->swipeContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v3, v2, [I

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v4, 0x7f060093

    .line 22
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, v3, v1

    .line 23
    invoke-virtual {p2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;-><init>(Landroidx/lifecycle/LifecycleOwner;I)V

    .line 27
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p2

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 28
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/j;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;)V

    invoke-virtual {p2, v3}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lx0/j;)V

    .line 29
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/i;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/high16 v0, 0x41000000    # 8.0f

    .line 33
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 34
    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    .line 35
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    .line 36
    invoke-virtual {p2, v3, v0, v4, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 37
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->swipeContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/f;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 38
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 39
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    if-gtz p2, :cond_7

    .line 40
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->swipeContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_4

    .line 41
    :cond_7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->refreshAfterData(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V

    .line 42
    :goto_4
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setAutoLoadMore(Z)V

    .line 43
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->loadData(I)V

    return-void
.end method

.method public final isEnableLoadMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->isEnableLoadMore:Z

    return v0
.end method

.method public onCloseFloatLive()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkDynamicLive(Z)V

    return-void
.end method

.method public final onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onCreateLayoutManager$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_LIVE_CLICK_TIPS"

    .line 4
    invoke-virtual {v0, v1, p0}, Lja/a;->h(Ljava/lang/String;Lja/a$b;)V

    .line 5
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz8/c;->unregisterOnFloatLiveListener(Lz8/c$e;)V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCheckTips:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final onEvent(Lcom/guochao/faceshow/aaspring/beans/KitEvent;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/KitEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "kitEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/KitEvent;->getIsAttention()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setIsAttention(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public final onEventBus(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIVE_FROM_COUNTRY"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mFromCountry:Z

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_in_background"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mAppStatusMsg:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mLastBackgroundTime:J

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_in_forground"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mAppStatusMsg:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onOpenFloatLive()V
    .locals 1

    invoke-static {}, Ly8/a;->b()Ly8/a;

    move-result-object v0

    invoke-virtual {v0}, Ly8/a;->g()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->isVisibleToUser()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkReload(Z)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->Y1()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 7
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 8
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mNoPermissionView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onResume$1$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$onResume$1$1;-><init>()V

    .line 11
    invoke-static {v3, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationService;->startRequestLocation(Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mNoPermissionView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->isVisibleToUser()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkReload(Z)V

    :cond_6
    return-void
.end method

.method protected refreshAfterData(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V
    .locals 9
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;-><init>()V

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCountryLiveList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCountryLiveList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCountryLiveList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setCountryLiveList(Ljava/util/List;)V

    goto :goto_1

    .line 5
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->liveCountryCache:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setCountryLiveList(Ljava/util/List;)V

    .line 6
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentCountry:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->setCurrentCountry(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)V

    .line 7
    sget-object v0, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterLiveList(Ljava/util/List;)V

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCountryLiveList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->addDiscoveryHeader(Ljava/util/List;)V

    .line 12
    :cond_7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->addBannerHeader()V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 14
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCallParent:Z

    if-eqz v0, :cond_8

    .line 15
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCallParent:Z

    .line 16
    :cond_8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    if-ne v0, v3, :cond_9

    const-string v0, "live"

    const-string v4, "live_all_v2"

    .line 17
    invoke-static {v0, v4, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setRoomList(Ljava/util/List;)V

    .line 20
    :cond_a
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_d

    .line 23
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 24
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_4

    .line 25
    :cond_b
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "liveRoomBeans[i]!!.liveId"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 26
    :cond_d
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz v5, :cond_e

    .line 27
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 28
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 29
    :cond_f
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c()Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getIsReceivePrivateLive()I

    move-result v4

    if-ne v4, v3, :cond_10

    const/4 v4, 0x1

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->e(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    nop

    .line 30
    :goto_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 31
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->showEmptyView()V

    goto :goto_9

    .line 32
    :cond_11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEmptyCountryHeader:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 33
    :try_start_1
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEmptyCountryHeader:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    nop

    .line 34
    :cond_12
    :goto_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    const/4 v2, 0x1

    :cond_13
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->notifyDataLoaded(Z)V

    .line 35
    :goto_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    return-void
.end method

.method public reload()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCallParent:Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->swipeContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentPage:I

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->loadData(I)V

    return-void
.end method

.method public final requestBannerData()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$cache$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$cache$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "live_banner"

    .line 2
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEventItemBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEventItemBeans:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->filterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/banner/findAppBannerToday"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public final requestLocation(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;I)V

    .line 5
    invoke-static {v0, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationService;->startRequestLocation(Lcom/guochao/faceshow/aaspring/utils/location/LocationConfig;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getLiveList(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final requestPermission(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->PERMISSIONS:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestPermission$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;IZ)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setCurrentCountry(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentCountry:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCountryLiveList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    .line 5
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "it"

    .line 6
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCountryLiveList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 8
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCountryLiveList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCountryLiveList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void
.end method

.method public final setEnableLoadMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->isEnableLoadMore:Z

    return-void
.end method

.method public final setFaceCastHttpCallBack(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->faceCastHttpCallBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-void
.end method

.method public final setMCallParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCallParent:Z

    return-void
.end method

.method public final setMCheckTips(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCheckTips:Z

    return-void
.end method

.method protected final setMCurrSelectTypeId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrSelectTypeId:I

    return-void
.end method

.method public final setMCurrentCountry(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mCurrentCountry:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    return-void
.end method

.method public final setMData(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mData:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    return-void
.end method

.method public final setMEmptyHeaderView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEmptyHeaderView:Landroid/view/View;

    return-void
.end method

.method public final setMEventItemBeans(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mEventItemBeans:Ljava/util/List;

    return-void
.end method

.method public final setMGetRequest(Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mGetRequest:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    return-void
.end method

.method public final setMNoPermissionView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mNoPermissionView:Landroid/view/View;

    return-void
.end method

.method public final setMPostRequest(Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-void
.end method

.method public final setMRankRows(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->mRankRows:Ljava/util/List;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->isVisibleToUser()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkReload(Z)V

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setViewBinding(Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    return-void
.end method

.method public final showEmptyView()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->notifyDataLoaded(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object v0

    const v1, 0x7f0d02f5

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(I)V

    return-void
.end method

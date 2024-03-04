package com.guochao.faceshow.aaspring.modulars.live.activity;

import android.app.PictureInPictureParams;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Rational;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import butterknife.BindView;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.android.billingclient.api.ProxyBillingActivity;
import com.guochao.component.voiceliveroom.event.VoiceRoomInviteCloseEvent;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaCacheManager;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.common.t;
import com.guochao.faceshow.aaspring.modulars.live.common.u;
import com.guochao.faceshow.aaspring.modulars.live.floatwindow.LiveFloatWindowMultiMaskAdapter;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.VolumeMessage;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBridgeActivity;
import com.guochao.faceshow.aaspring.modulars.live.watcher.BigGiftBoxFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatchLivePlayerListener;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LiveRoomScrollView;
import com.guochao.faceshow.aaspring.views.LiveRoomView;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.mine.view.PIPSettingsActivity;
import com.guochao.faceshow.utils.AppContentFilter;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.TXIMUtils;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.guochao.player.base.ILivePlayer;
import ja.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import y7.q;
@Route(path = RouterPath.ROUTER_LIVE_ROOM)
/* loaded from: classes3.dex */
public class WatchLiveRoomActivity extends BaseLiveActivity implements BaseLiveRoomFragment.v0, a.b, b.m {
    public static boolean L4 = false;
    WatcherLiveRoomFragment A;
    WatchLivePlayerListener B;
    private LiveRoomScrollView.e B3;
    ILivePlayer.PlayEventListener C;
    MultiLivePlayView D;
    LiveFloatWindowMultiMaskAdapter E;
    SurfaceView F;
    FrameLayout G;
    View H;
    private int H4;
    View I;
    FrameLayout J;
    private boolean J4;
    SvgaImageViewV2 K;
    private l K4;
    ImageView L;
    ImageView M;
    private long N;
    private boolean O;
    private boolean P;

    /* renamed from: l  reason: collision with root package name */
    public d9.g f18075l;
    @BindView
    public LiveRoomView mViewPager2;

    /* renamed from: o  reason: collision with root package name */
    public String f18078o;

    /* renamed from: q  reason: collision with root package name */
    public boolean f18080q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f18081r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f18082s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f18083t;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f18084u;

    /* renamed from: z  reason: collision with root package name */
    LiveRoomPageData f18089z;

    /* renamed from: j  reason: collision with root package name */
    public boolean f18073j = true;

    /* renamed from: k  reason: collision with root package name */
    public List<RoomItemData> f18074k = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    public boolean f18076m = false;

    /* renamed from: n  reason: collision with root package name */
    public boolean f18077n = false;

    /* renamed from: p  reason: collision with root package name */
    public int f18079p = 0;

    /* renamed from: v  reason: collision with root package name */
    boolean f18085v = false;

    /* renamed from: w  reason: collision with root package name */
    Handler f18086w = new Handler();

    /* renamed from: x  reason: collision with root package name */
    int f18087x = 1;

    /* renamed from: y  reason: collision with root package name */
    int f18088y = 1;
    private int Q = 1;
    private boolean R = false;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f18071a1 = true;
    private final WatchLiveRoomEventBusHelper V1 = new WatchLiveRoomEventBusHelper(this);

    /* renamed from: a2  reason: collision with root package name */
    private boolean f18072a2 = false;
    Runnable V2 = new c();
    private int V3 = 9;
    private int C4 = 16;
    private boolean D4 = false;
    private boolean E4 = false;
    private boolean F4 = false;
    private int G4 = -1;
    Runnable I4 = new d();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = WatchLiveRoomActivity.this.I;
            if (view == null) {
                return;
            }
            view.setVisibility(0);
            View findViewById = WatchLiveRoomActivity.this.I.findViewById(R.id.dish_wheel_view);
            if (findViewById == null || findViewById.getTranslationX() == 0.0f) {
                return;
            }
            findViewById.setTranslationX(0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveInfoResult> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveInfoResult liveInfoResult, @NonNull FaceCastBaseResponse<LiveInfoResult> faceCastBaseResponse) {
            WatchLiveRoomActivity watchLiveRoomActivity;
            WatcherLiveRoomFragment watcherLiveRoomFragment;
            if (liveInfoResult == null) {
                onFailure(new g7.a<>(new Exception(), -1));
            } else if (WatchLiveRoomActivity.this.A == null) {
            } else {
                if (liveInfoResult.getMatchList() != null && (watcherLiveRoomFragment = (watchLiveRoomActivity = WatchLiveRoomActivity.this).A) != null && watchLiveRoomActivity.D != null && watchLiveRoomActivity.E != null) {
                    watcherLiveRoomFragment.E3(liveInfoResult.getMatchList());
                    MultiLivePlayView multiLivePlayView = WatchLiveRoomActivity.this.D;
                    if (multiLivePlayView != null) {
                        multiLivePlayView.setVisibility(0);
                    }
                    WatchLiveRoomActivity.this.E.z(liveInfoResult.getMatchList(), liveInfoResult.getServerTime());
                }
                WatchLiveRoomActivity.this.x1();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveInfoResult> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d9.g gVar;
            if (WatchLiveRoomActivity.this.e0().getCurrentLiveRoom().isMultiLiveRoom() && WatchLiveRoomActivity.this.e0().z1()) {
                return;
            }
            if (!WatchLiveRoomActivity.this.mViewPager2.h() && (gVar = WatchLiveRoomActivity.this.f18075l) != null && !"1".equals(gVar.getCurrentLiveRoom().getStatus())) {
                WatchLiveRoomActivity.super.q0();
            } else {
                WatchLiveRoomActivity.this.f18072a2 = true;
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WatcherLiveRoomFragment watcherLiveRoomFragment;
            if (WatchLiveRoomActivity.this.isFinishing() || WatchLiveRoomActivity.this.isDestroyed()) {
                return;
            }
            WatchLiveRoomActivity watchLiveRoomActivity = WatchLiveRoomActivity.this;
            if (watchLiveRoomActivity.mViewPager2 == null) {
                return;
            }
            watchLiveRoomActivity.H4 = 0;
            if (WatchLiveRoomActivity.this.f18074k.size() - WatchLiveRoomActivity.this.mViewPager2.getCurrentItem() < 3) {
                WatchLiveRoomActivity.this.G1();
            }
            WatchLiveRoomActivity watchLiveRoomActivity2 = WatchLiveRoomActivity.this;
            watchLiveRoomActivity2.U1(watchLiveRoomActivity2.t1() + 1);
            WatchLiveRoomActivity watchLiveRoomActivity3 = WatchLiveRoomActivity.this;
            if (!watchLiveRoomActivity3.f18076m || watchLiveRoomActivity3.t1() < 5 || (watcherLiveRoomFragment = WatchLiveRoomActivity.this.A) == null) {
                return;
            }
            watcherLiveRoomFragment.S3();
        }
    }

    /* loaded from: classes3.dex */
    class e implements ILivePlayer.PlayEventListener {
        e() {
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onConnectToServer(String str, ILivePlayer iLivePlayer) {
            com.guochao.player.base.a.a(this, str, iLivePlayer);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onDrawFirstFrame(@NonNull String str, @NonNull ILivePlayer iLivePlayer) {
            com.guochao.player.base.a.b(this, str, iLivePlayer);
            WatchLiveRoomActivity.this.x1();
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onPlayEvent(String str, int i9, String str2, Throwable th2) {
            com.guochao.player.base.a.c(this, str, i9, str2, th2);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onPlayFirstAudioFrame(String str, ILivePlayer iLivePlayer) {
            com.guochao.player.base.a.d(this, str, iLivePlayer);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onPlayerVolumeUpdate(String str, float f10) {
            com.guochao.player.base.a.e(this, str, f10);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onPublishStreamInfo(String str, List list) {
            com.guochao.player.base.a.f(this, str, list);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onVideoLoading(@NonNull String str, @Nullable Bundle bundle) {
            com.guochao.player.base.a.g(this, str, bundle);
            WatchLiveRoomActivity.this.V1();
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onVideoPlaying(@NonNull String str, @Nullable Bundle bundle) {
            com.guochao.player.base.a.h(this, str, bundle);
            WatchLiveRoomActivity.this.x1();
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onVideoSizeChanged(@NonNull String str, int i9, int i10) {
            WatchLiveRoomActivity.this.V3 = i9;
            WatchLiveRoomActivity.this.C4 = i10;
            if (Build.VERSION.SDK_INT < 26 || !WatchLiveRoomActivity.L4) {
                return;
            }
            WatchLiveRoomActivity watchLiveRoomActivity = WatchLiveRoomActivity.this;
            watchLiveRoomActivity.setPictureInPictureParams(watchLiveRoomActivity.q1(false));
        }
    }

    /* loaded from: classes3.dex */
    class f implements LiveRoomScrollView.e {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView.e
        public void a(int i9, int i10) {
            int size;
            WatchLiveRoomActivity watchLiveRoomActivity = WatchLiveRoomActivity.this;
            if (watchLiveRoomActivity.A == null || watchLiveRoomActivity.f18074k.isEmpty() || (size = i10 % WatchLiveRoomActivity.this.f18074k.size()) > WatchLiveRoomActivity.this.f18074k.size() - 1) {
                return;
            }
            if (i9 > 0) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.watch_live_switch, size > i9 ? "1" : "0");
            }
            WatchLiveRoomActivity watchLiveRoomActivity2 = WatchLiveRoomActivity.this;
            watchLiveRoomActivity2.A.C5(watchLiveRoomActivity2.f18074k.get(size));
            long currentTimeMillis = System.currentTimeMillis();
            WatcherLiveRoomFragment watcherLiveRoomFragment = WatchLiveRoomActivity.this.A;
            watcherLiveRoomFragment.f18483a1 = false;
            watcherLiveRoomFragment.X3();
            LogUtils.i("WatchLiveRoomActivity", "onEndScrollToIndex: " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            WatchLiveRoomActivity.this.O1(size);
            if (WatchLiveRoomActivity.this.G4 >= 0 && size != WatchLiveRoomActivity.this.G4) {
                ja.a.b().e("KEY_SLIDE_TO_SEE_MORE_LIVE");
                Intent intent = new Intent();
                intent.putExtra("checkStartLive", 1);
                WatchLiveRoomActivity.this.setResult(-1, intent);
                WatchLiveRoomActivity.this.G4 = -1;
            }
            WatchLiveRoomActivity.this.N = System.currentTimeMillis();
            WatchLiveRoomActivity.this.I4.run();
            if (WatchLiveRoomActivity.this.f18072a2) {
                WatchLiveRoomActivity.this.q0();
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView.e
        public void b(int i9, int i10) {
            WatchLiveRoomActivity watchLiveRoomActivity = WatchLiveRoomActivity.this;
            if (watchLiveRoomActivity.A == null || watchLiveRoomActivity.f18074k.isEmpty()) {
                return;
            }
            int size = i10 % WatchLiveRoomActivity.this.f18074k.size();
            if (WatchLiveRoomActivity.this.f18074k.size() - 1 >= size && WatchLiveRoomActivity.this.f18074k.get(size) != null) {
                WatchLiveRoomActivity.this.f18074k.get(size).setLaunchFromFloatWindow(false);
            }
            long currentTimeMillis = System.currentTimeMillis();
            WatchLiveRoomActivity.this.A.onQuitLiveRoom(false, false);
            WatchLiveRoomActivity.this.r0();
            LogUtils.i("WatchLiveRoomActivity", "onStartScrollToIndex: " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
        }
    }

    /* loaded from: classes3.dex */
    class g implements LiveRoomView.a {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.views.LiveRoomView.a
        public void a(LiveRoomView liveRoomView) {
            WatchLiveRoomActivity.this.P = true;
            WatchLiveRoomActivity.this.G1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveRoomPageData> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f18097a;

        h(boolean z10) {
            this.f18097a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            WatchLiveRoomActivity.this.P = false;
            WatchLiveRoomActivity.this.f18084u = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveRoomPageData> aVar) {
            WatchLiveRoomActivity.this.mViewPager2.c(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable LiveRoomPageData liveRoomPageData, @NonNull FaceCastBaseResponse<LiveRoomPageData> faceCastBaseResponse) {
            boolean z10 = (liveRoomPageData == null || liveRoomPageData.getRoomList() == null || liveRoomPageData.getRoomList().size() < 20) ? false : true;
            if (liveRoomPageData != null) {
                AppContentFilter.INSTANCE.filterLiveList(liveRoomPageData.getRoomList());
            }
            WatchLiveRoomActivity.this.mViewPager2.c(z10);
            LiveRoomView liveRoomView = WatchLiveRoomActivity.this.mViewPager2;
            if (liveRoomView == null || liveRoomView.getAdapter() == null || liveRoomPageData == null) {
                return;
            }
            int size = WatchLiveRoomActivity.this.f18074k.size();
            WatchLiveRoomActivity watchLiveRoomActivity = WatchLiveRoomActivity.this;
            watchLiveRoomActivity.f18074k.addAll(watchLiveRoomActivity.m1(liveRoomPageData.getRoomList()));
            if (this.f18097a && !z10) {
                WatchLiveRoomActivity watchLiveRoomActivity2 = WatchLiveRoomActivity.this;
                watchLiveRoomActivity2.R = watchLiveRoomActivity2.f18074k.size() > 1;
                WatchLiveRoomActivity.this.f18087x = 1;
            }
            WatchLiveRoomActivity.this.mViewPager2.getAdapter().a();
            if (size == 1) {
                WatchLiveRoomActivity watchLiveRoomActivity3 = WatchLiveRoomActivity.this;
                watchLiveRoomActivity3.O1(watchLiveRoomActivity3.mViewPager2.getCurrentItem());
            }
            if (WatchLiveRoomActivity.this.P) {
                LiveRoomView liveRoomView2 = WatchLiveRoomActivity.this.mViewPager2;
                liveRoomView2.setCurrentItem(liveRoomView2.getCurrentItem() + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends LiveRoomScrollView.d {
        i() {
        }

        @Override // com.guochao.faceshow.aaspring.views.LiveRoomScrollView.c
        public int getItemCount() {
            if (!WatchLiveRoomActivity.this.R || WatchLiveRoomActivity.this.f18074k.size() <= 1) {
                return WatchLiveRoomActivity.this.f18074k.size();
            }
            return Integer.MAX_VALUE;
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f18100a;

        j(int i9) {
            this.f18100a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            d9.g gVar = WatchLiveRoomActivity.this.f18075l;
            if (gVar != null) {
                gVar.onNetworkResume(this.f18100a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f18102a;

        k(int i9) {
            this.f18102a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            d9.g gVar = WatchLiveRoomActivity.this.f18075l;
            if (gVar != null) {
                gVar.onNetworkLose(this.f18102a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class l extends BroadcastReceiver {
        l() {
        }

        @Override // android.content.BroadcastReceiver
        @RequiresApi(api = 26)
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                String stringExtra = intent.getStringExtra("reason");
                if ("homekey".equals(stringExtra)) {
                    LogUtils.i("HomeReceiver", "homekey");
                    if (WatchLiveRoomActivity.this.H1()) {
                        try {
                            WatchLiveRoomActivity watchLiveRoomActivity = WatchLiveRoomActivity.this;
                            watchLiveRoomActivity.enterPictureInPictureMode(watchLiveRoomActivity.q1(false));
                        } catch (Exception unused) {
                        }
                    }
                    WatchLiveRoomActivity.this.F4 = false;
                } else if ("recentapps".equals(stringExtra) || "lock".equals(stringExtra)) {
                } else {
                    "assist".equals(stringExtra);
                }
            }
        }
    }

    private void F1() {
        ArrayList arrayList = new ArrayList();
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("liveId", this.f18075l.getCurrentLiveRoom().getLiveRoomId());
        arrayMap.put("startTime", this.f18075l.getCurrentLiveRoom().getLiveStartTimestamp());
        arrayList.add(0, arrayMap);
        new GetRequest("tokens/live/newLive/getLiveInfo").v("likeNum", "").v("liveId", this.f18075l.getCurrentLiveRoom().getLiveRoomId()).v(Contants.USER_ID, this.f18075l.getCurrentLiveRoom().getCurrentUserId()).M(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G1() {
        if (this.f18084u || this.R) {
            return;
        }
        this.f18084u = true;
        this.f18087x++;
        LiveRoomPageData liveRoomPageData = this.f18089z;
        boolean z10 = (liveRoomPageData == null || liveRoomPageData.getRoomList() == null || this.f18089z.getDiscoverCounty() == null) ? false : true;
        h hVar = new h(z10);
        if (z10) {
            post("tokens/live/cache/getLiveListByCountryId").y("page", Integer.valueOf(this.f18087x)).y("limit", ThirdPushHelper.TYPE_HUAWEI).y("typeId", String.valueOf(1)).y("countryId", this.f18089z.getDiscoverCounty().getCountryId()).M(hVar);
        } else {
            get("tokens/live/cache/getLiveList").v("page", Integer.valueOf(this.f18087x)).v("limit", ThirdPushHelper.TYPE_HUAWEI).v("typeId", String.valueOf(this.f18088y)).M(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean H1() {
        d9.g gVar;
        WatcherLiveRoomFragment watcherLiveRoomFragment;
        PIPSettingsActivity.Companion companion = PIPSettingsActivity.Companion;
        return (this.f18075l.getCurrentGCLiveRoomModel().isVoiceRoom() || this.F4 || !getPackageManager().hasSystemFeature("android.software.picture_in_picture") || (gVar = this.f18075l) == null || gVar.z1() || !companion.watcherIsOpen(this) || !companion.hasPermissions(this) || (watcherLiveRoomFragment = this.A) == null || !watcherLiveRoomFragment.isAdded() || "1".equals(this.A.getCurrentLiveRoom().getStatus())) ? false : true;
    }

    private void N1(RoomItemData roomItemData) {
        if (getIntent().getBooleanExtra("isFromNotification", false)) {
            EventBus.getDefault().post(new VoiceRoomInviteCloseEvent(roomItemData.getRoomID()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O1(int i9) {
        if (i9 == 0) {
            try {
                if (this.f18074k.size() == 1) {
                    this.mViewPager2.n(0);
                    this.mViewPager2.n(2);
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (i9 >= 1) {
            this.mViewPager2.o(false, this.f18074k.get(i9 - 1).getLiveCoverImg());
        } else if (i9 == 0) {
            this.mViewPager2.o(false, this.f18074k.get(this.f18074k.size() - 1).getLiveCoverImg());
        } else {
            this.mViewPager2.n(0);
        }
        if (i9 == 0) {
            this.mViewPager2.o(true, this.f18074k.get(i9 + 1).getLiveCoverImg());
        } else if (i9 < this.f18074k.size() - 1) {
            this.mViewPager2.o(true, this.f18074k.get(i9 + 1).getLiveCoverImg());
        } else if (i9 == this.f18074k.size() - 1) {
            this.mViewPager2.o(true, this.f18074k.get(0).getLiveCoverImg());
        } else {
            this.mViewPager2.n(2);
        }
    }

    private void S1(boolean z10) {
        VoiceRoomMiniHelper.releaseView();
        VoiceRoomMiniHelper.stopMini();
        if (d9.c.f37999d0.equals(getIntent().getAction())) {
            return;
        }
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("voice_room");
        if (parcelableArrayListExtra != null) {
            t.a(parcelableArrayListExtra);
        }
        this.f18074k.clear();
        LiveRoomPageData d10 = t.c().d();
        this.f18089z = d10;
        if (d10 != null) {
            try {
                this.f18087x = Integer.parseInt(d10.getCurrentPage());
            } catch (Exception unused) {
                this.f18087x = 1;
            }
            try {
                this.f18088y = Integer.parseInt(this.f18089z.getTypeId());
            } catch (Exception unused2) {
                this.f18088y = 1;
            }
        } else {
            this.f18087x = t.c().b();
        }
        List<RoomItemData> e10 = t.c().e();
        if (e10 != null) {
            this.f18074k.addAll(e10);
        }
        List<RoomItemData> list = this.f18074k;
        if (list != null && !list.isEmpty()) {
            this.mViewPager2.setAdapter(new i());
            this.mViewPager2.m(getIntent().getIntExtra("ROOM_POS_KEY", 0), z10);
            r0();
            N1(e10.get(0));
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1() {
        if (this.J == null) {
            return;
        }
        ImageView imageView = this.L;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        SvgaImageViewV2 svgaImageViewV2 = this.K;
        if (svgaImageViewV2 != null) {
            svgaImageViewV2.setVisibility(0);
            this.K.playRaw(R.raw.loading_white);
        }
    }

    private void h1() {
        d9.g gVar = this.f18075l;
        if (gVar != null && gVar.getCurrentLiveRoom().isVoiceRoom()) {
            Intent intent = new Intent(this, AppManager.getInstance().getActivityBeforeWatchRoom());
            intent.addFlags(131072);
            super.startActivityForResult(intent, 1, null);
            if (this.f18075l.getCurrentLiveRoom() != null && !FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing) {
                WatcherLiveRoomFragment watcherLiveRoomFragment = this.A;
                if (watcherLiveRoomFragment != null) {
                    watcherLiveRoomFragment.hideBackToLast();
                }
                VoiceRoomMiniHelper.startMini(this.f18075l.getCurrentGCLiveRoomModel());
                return;
            }
            finish();
            return;
        }
        super.onBackPressed();
        if (this.D4) {
            this.E4 = true;
            Intent intent2 = new Intent(this, MainActivity.class);
            intent2.setFlags(536870912);
            startActivity(intent2);
        }
    }

    private void i1() {
        if (this.J != null && LivePlayerProvider.player().isLoading()) {
            V1();
        }
    }

    private void k1() {
        LiveAreaCacheManager.getInstance().checkSaveCountry(this.f18089z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<RoomItemData> m1(List<RoomItemData> list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i9 = 0; i9 < this.f18074k.size(); i9++) {
            if (this.f18074k.get(i9) != null && !TextUtils.isEmpty(this.f18074k.get(i9).getLiveRoomId()) && !arrayList.contains(this.f18074k.get(i9).getLiveRoomId())) {
                arrayList.add(this.f18074k.get(i9).getLiveRoomId());
            }
        }
        for (RoomItemData roomItemData : list) {
            if (roomItemData != null && !arrayList.contains(roomItemData.getLiveRoomId())) {
                arrayList2.add(roomItemData);
            }
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(api = 26)
    public PictureInPictureParams q1(boolean z10) {
        PictureInPictureParams.Builder builder = new PictureInPictureParams.Builder();
        if (Build.VERSION.SDK_INT >= 31) {
            H1();
        }
        WatcherLiveRoomFragment watcherLiveRoomFragment = this.A;
        if (watcherLiveRoomFragment != null && watcherLiveRoomFragment.isAdded() && (this.A.getCurrentLiveRoom().isMultiLiveRoom() || this.A.getCurrentLiveRoom().isInPkMode())) {
            this.V3 = 1;
            this.C4 = 1;
        }
        if (this.V3 > 0 && this.C4 > 0 && !z10) {
            builder.setAspectRatio(new Rational(this.V3, this.C4));
        } else {
            builder.setAspectRatio(new Rational(9, 16));
        }
        builder.build();
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x1() {
        MultiLivePlayView multiLivePlayView;
        if (this.J == null) {
            return;
        }
        ImageView imageView = this.L;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        if (this.A.getCurrentLiveRoom().isMultiLiveRoom() && (multiLivePlayView = this.D) != null) {
            multiLivePlayView.setVisibility(0);
        }
        SvgaImageViewV2 svgaImageViewV2 = this.K;
        if (svgaImageViewV2 != null) {
            svgaImageViewV2.stopAnimation();
            this.K.setVisibility(8);
        }
    }

    public void B1(RoomItemData roomItemData) {
        int i9;
        if (this.mViewPager2 == null || roomItemData == null) {
            return;
        }
        if (e0() == null || e0().getCurrentLiveRoom() == null || !Objects.equals(roomItemData.getLiveRoomId(), e0().getCurrentLiveRoom().getLiveRoomId())) {
            for (int i10 = 0; i10 < this.f18074k.size(); i10++) {
                if (this.f18074k.get(i10) != null) {
                    RoomItemData roomItemData2 = this.f18074k.get(i10);
                    if (!TextUtils.isEmpty(roomItemData2.getLiveRoomId()) && !TextUtils.isEmpty(roomItemData.getLiveRoomId()) && roomItemData2.getLiveRoomId().equals(roomItemData.getLiveRoomId())) {
                        this.mViewPager2.getCurrentItem();
                        roomItemData2.setLastRoomItem(roomItemData.getLastRoomItem());
                        this.mViewPager2.m(i10, true);
                        r0();
                        return;
                    }
                }
            }
            int currentItem = this.mViewPager2.getCurrentItem();
            if (currentItem >= this.f18074k.size() - 1) {
                this.f18074k.add(roomItemData);
                i9 = this.f18074k.size() - 1;
            } else {
                i9 = currentItem + 1;
                this.f18074k.add(i9, roomItemData);
            }
            this.mViewPager2.o(i9 > this.mViewPager2.getCurrentItem(), roomItemData.getLiveCoverImg());
            this.mViewPager2.setCurrentItem(i9);
            r0();
        }
    }

    public boolean D1() {
        return this.f18071a1;
    }

    public void I1(boolean z10) {
        this.O = z10;
        if (this.mViewPager2 != null) {
            boolean z11 = true;
            W1(!z10);
            this.mViewPager2.setEnableLoadMore((this.f18083t || this.O) ? false : false);
        }
    }

    public void J1(LiveRoomModel liveRoomModel) {
        if (liveRoomModel == null) {
            return;
        }
        int i9 = -1;
        int i10 = 0;
        while (true) {
            if (i10 >= this.f18074k.size() || this.f18074k.get(i10) == null) {
                break;
            } else if (liveRoomModel.getLiveRoomId().equals(this.f18074k.get(i10).getLiveRoomId())) {
                i9 = i10;
                break;
            } else {
                i10++;
            }
        }
        if (i9 >= 0) {
            this.f18074k.remove(i9);
            this.mViewPager2.getAdapter().c(i9);
            try {
                O1(this.mViewPager2.getCurrentItem());
            } catch (Exception unused) {
            }
        }
        r0();
        if (!L4 || this.f18075l == null) {
            return;
        }
        this.H = LayoutInflater.from(getActivity()).inflate(R.layout.layout_float_window_closed, (ViewGroup) null);
        ((ViewGroup) findViewById(16908290)).addView(this.H);
        ((HeadPortraitView) this.H.findViewById(R.id.avatar_view)).d(this.f18075l.getCurrentLiveRoom());
        ((TextView) this.H.findViewById(R.id.nickname)).setText(this.f18075l.getCurrentLiveRoom().getBroadCasterUserName());
        ic.a.b(BaseApplication.getInstance()).r(this.f18075l.getCurrentLiveRoom().getLiveCoverImg()).q0(new jc.f(15, 5, Color.parseColor("#1A000000"))).b0(R.mipmap.live_loading_bj).a0(Integer.MIN_VALUE, Integer.MIN_VALUE).Q0((ImageView) this.H.findViewById(R.id.cover));
        if (Build.VERSION.SDK_INT >= 26) {
            setPictureInPictureParams(q1(true));
        }
    }

    public void L1(LiveRoomModel liveRoomModel) {
        if (!"1".equals(liveRoomModel.getStatus())) {
            if (this.f18072a2) {
                q0();
                return;
            }
            return;
        }
        n0(liveRoomModel);
    }

    public void P1() {
        this.f18086w.removeCallbacks(this.V2);
    }

    public void Q1(String str, List<String> list) {
        LiveRoomView liveRoomView = this.mViewPager2;
        if (liveRoomView == null || this.f18074k == null) {
            return;
        }
        int currentItem = liveRoomView.getCurrentItem();
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < this.f18074k.size(); i9++) {
            for (String str2 : list) {
                if (Objects.equals(str2, this.f18074k.get(i9).getLiveRoomId())) {
                    arrayList.add(this.f18074k.get(i9));
                }
            }
            if (Objects.equals(str, this.f18074k.get(i9).getLiveRoomId())) {
                currentItem = i9;
            }
        }
        this.f18074k.removeAll(arrayList);
        if (this.mViewPager2.f()) {
            this.mViewPager2.setIndexOnly(currentItem);
        }
        LogUtils.e("remove", this.f18074k.size() + "");
    }

    public void R1(z8.b bVar) {
        if (this.f18075l != null) {
            if (bVar != null && bVar.j()) {
                this.f18075l.D0().setMute(false);
            }
            this.f18075l.getCurrentLiveRoom().setShowedFloatFromLiveRoom(false);
            this.f18075l.M1();
        }
    }

    public void T1(boolean z10) {
        this.f18071a1 = z10;
    }

    public void U1(int i9) {
        this.Q = i9;
    }

    public void W1(boolean z10) {
        this.mViewPager2.setUserInputEnabled((!z10 || this.O || this.f18083t) ? false : true);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public d9.g e0() {
        return this.A;
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.b.m
    public void f0(boolean z10) {
        WatcherLiveRoomFragment watcherLiveRoomFragment = this.A;
        if (watcherLiveRoomFragment == null || !watcherLiveRoomFragment.isAdded()) {
            return;
        }
        this.A.f0(z10);
    }

    public void g1(int i9) {
        int i10 = this.H4 + i9;
        this.H4 = i10;
        if (i10 >= 50) {
            this.J4 = true;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_live_room;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        getSupportFragmentManager().beginTransaction().replace(this.mViewPager2.getRoomContainerId(), this.A).commitAllowingStateLoss();
        TXIMUtils.loginTIM(3);
        this.N = System.currentTimeMillis();
        f fVar = new f();
        this.B3 = fVar;
        this.mViewPager2.setOnScrollCallback(fVar);
        if (this.mViewPager2.getLayoutTransition() != null) {
            this.mViewPager2.getLayoutTransition().setAnimateParentHierarchy(false);
        }
        boolean z10 = getIntent().getIntExtra("ROOM_STATE", 0) != 1;
        this.f18085v = z10;
        this.mViewPager2.setEnableLoadMore(z10);
        this.mViewPager2.setOnLoadMoreListener(new g());
        S1(false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void l0(BigGiftBoxFragment bigGiftBoxFragment) {
        super.l0(bigGiftBoxFragment);
        this.f18083t = true;
        if (this.mViewPager2 != null) {
            W1(false);
            this.mViewPager2.setEnableLoadMore(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void m0(BigGiftBoxFragment bigGiftBoxFragment) {
        super.m0(bigGiftBoxFragment);
        this.f18083t = false;
        if (this.mViewPager2 != null) {
            W1(true);
            this.mViewPager2.setEnableLoadMore(true ^ this.O);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void o0(int i9) {
        super.o0(i9);
        this.f18086w.post(new k(i9));
    }

    public void o1() {
        this.f18082s = true;
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        ViewGroup viewGroup = this.f18053e;
        if (viewGroup != null && viewGroup.getVisibility() == 8) {
            r0();
            h1();
            return;
        }
        int backStackEntryCount = getSupportFragmentManager().getBackStackEntryCount();
        if (backStackEntryCount > 0) {
            getSupportFragmentManager().popBackStack();
            if (backStackEntryCount - 1 == 0) {
                W1(true);
                return;
            }
            return;
        }
        h1();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        ArrayList parcelableArrayList;
        AppManager.getInstance().finishWatch(this);
        y8.a.b().h(false, true);
        this.K4 = new l();
        WatcherLiveRoomFragment watcherLiveRoomFragment = new WatcherLiveRoomFragment();
        this.A = watcherLiveRoomFragment;
        this.f18075l = watcherLiveRoomFragment;
        this.B = new WatchLivePlayerListener(watcherLiveRoomFragment, watcherLiveRoomFragment.B);
        this.C = new e();
        LivePlayerProvider.player().addPlayEventListener(this.B);
        LivePlayerProvider.player().addPlayEventListener(this.C);
        this.f18076m = ja.a.b().f("KEY_SWIPE_TO_DISMISS_LIVE_CHAT");
        this.f18077n = ja.a.b().f("KEY_LIVE_ADS_TIPS");
        ja.a.b().d("KEY_LIVE_ADS_TIPS", this);
        ja.a.b().d("KEY_SWIPE_TO_DISMISS_LIVE_CHAT", this);
        if (bundle != null && (parcelableArrayList = bundle.getParcelableArrayList("data")) != null && parcelableArrayList.size() > 0) {
            t.c().l(parcelableArrayList);
        }
        super.onCreate(bundle);
        this.f18081r = getIntent().getBooleanExtra("fromFloatLive", false);
        UserStateHolder.setWatchingLive(true);
        com.guochao.faceshow.aaspring.manager.im.b.l0().registImCheckListener(this);
        k1();
        if (EventBus.getDefault().isRegistered(this.V1)) {
            return;
        }
        EventBus.getDefault().register(this.V1);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        ja.a.b().h("KEY_LIVE_ADS_TIPS", this);
        ja.a.b().h("KEY_SWIPE_TO_DISMISS_LIVE_CHAT", this);
    }

    @Override // ja.a.b
    public void onDone(String str) {
        if ("KEY_LIVE_ADS_TIPS".equalsIgnoreCase(str)) {
            this.f18077n = false;
        }
        if ("KEY_SWIPE_TO_DISMISS_LIVE_CHAT".equalsIgnoreCase(str)) {
            this.f18076m = false;
        }
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterBackground() {
        d9.g gVar = this.f18075l;
        if (gVar == null || !(gVar instanceof Foreground.OnForegroundStateChangedListener)) {
            return;
        }
        ((Foreground.OnForegroundStateChangedListener) gVar).onEnterBackground();
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterForeground() {
        d9.g gVar = this.f18075l;
        if (gVar == null || !(gVar instanceof Foreground.OnForegroundStateChangedListener)) {
            return;
        }
        ((Foreground.OnForegroundStateChangedListener) gVar).onEnterForeground();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent.getIntExtra("from_float", -1) == 1) {
            return;
        }
        setIntent(intent);
        S1(true);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        super.onNewMessage(aVar);
        if (this.f18075l == null || this.A == null || this.E == null || !(aVar instanceof LiveMessage)) {
            return;
        }
        LiveMessageModel m354getWrappedMessage = ((LiveMessage) aVar).m354getWrappedMessage();
        if (m354getWrappedMessage.getData() == null || !Objects.equals(m354getWrappedMessage.getData().getRoomId(), this.f18075l.getCurrentLiveRoom().getChatGroupId())) {
            return;
        }
        String cmd = m354getWrappedMessage.getCmd();
        char c10 = 65535;
        int i9 = 0;
        switch (cmd.hashCode()) {
            case -1695248187:
                if (cmd.equals("LIVE_CLOSE")) {
                    c10 = 0;
                    break;
                }
                break;
            case -755413130:
                if (cmd.equals("LIVE_LINKMIC_VIDEO")) {
                    c10 = 4;
                    break;
                }
                break;
            case -755229651:
                if (cmd.equals("LIVE_LINKMIC_VOICE")) {
                    c10 = 5;
                    break;
                }
                break;
            case -466448947:
                if (cmd.equals("LIVE_VOLUME")) {
                    c10 = 6;
                    break;
                }
                break;
            case -284336779:
                if (cmd.equals("LOCAL_GROUP_DISSMISS")) {
                    c10 = 1;
                    break;
                }
                break;
            case 204859347:
                if (cmd.equals("LIVE_REMOVE_USER")) {
                    c10 = 2;
                    break;
                }
                break;
            case 422851572:
                if (cmd.equals("LIVE_SEND_GIFT")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 905694627:
                if (cmd.equals("LIVE_UPDATE_LINKMIC_INFO")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1205656262:
                if (cmd.equals("LIVE_CUSTOM_MSG")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        if (c10 == 2) {
            if (Objects.equals(b8.e.g().c().getUserId(), m354getWrappedMessage.getData().toUserId)) {
                startActivity(BaseLiveRoomFragment.W2(this, m354getWrappedMessage.getData().getFromUserId().equalsIgnoreCase(this.f18075l.getCurrentLiveRoom().getBroadCasterUserId()), m354getWrappedMessage.getData().getUserVipMsg().getVipLevel() == 2, m354getWrappedMessage.getData().getUserType() == 3, false));
            }
        } else if (c10 == 3) {
            LinkMicInfoMessage linkMicInfoMessage = (LinkMicInfoMessage) m354getWrappedMessage.getData();
            this.E.z(linkMicInfoMessage.getMatchList(), linkMicInfoMessage.getServerTime());
        } else {
            if (c10 == 4) {
                String str = m354getWrappedMessage.getData().toUserId;
                List<LiveInfoMatchBean> z22 = this.A.z2();
                if (z22 != null) {
                    while (true) {
                        if (i9 < z22.size()) {
                            LiveInfoMatchBean liveInfoMatchBean = z22.get(i9);
                            if (Objects.equals(liveInfoMatchBean.getUserId(), str)) {
                                liveInfoMatchBean.setMatchType(m354getWrappedMessage.getData().action ? "2" : "1");
                            } else {
                                i9++;
                            }
                        }
                    }
                }
                this.E.z(z22, m354getWrappedMessage.getData().getServerTime());
            } else if (c10 != 5) {
                if (c10 != 6) {
                    return;
                }
                VolumeMessage volumeMessage = (VolumeMessage) m354getWrappedMessage.getData();
                LiveFloatWindowMultiMaskAdapter liveFloatWindowMultiMaskAdapter = this.E;
                if (liveFloatWindowMultiMaskAdapter != null) {
                    liveFloatWindowMultiMaskAdapter.F(volumeMessage);
                }
            } else {
                String str2 = m354getWrappedMessage.getData().toUserId;
                List<LiveInfoMatchBean> z23 = this.A.z2();
                if (z23 != null) {
                    while (true) {
                        if (i9 < z23.size()) {
                            LiveInfoMatchBean liveInfoMatchBean2 = z23.get(i9);
                            if (Objects.equals(liveInfoMatchBean2.getUserId(), str2)) {
                                liveInfoMatchBean2.setVoiceStatus(m354getWrappedMessage.getData().action ? "2" : "1");
                            } else {
                                i9++;
                            }
                        }
                    }
                }
                this.E.z(z23, m354getWrappedMessage.getData().getServerTime());
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        l lVar = this.K4;
        if (lVar != null) {
            unregisterReceiver(lVar);
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPictureInPictureModeChanged(boolean z10) {
        WatcherLiveRoomFragment watcherLiveRoomFragment;
        super.onPictureInPictureModeChanged(z10);
        L4 = z10;
        if (this.f18075l == null || (watcherLiveRoomFragment = this.A) == null) {
            return;
        }
        watcherLiveRoomFragment.hideBackToLast();
        boolean z11 = true;
        this.D4 = true;
        ViewGroup viewGroup = (ViewGroup) findViewById(16908290);
        if (z10) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this).inflate(R.layout.layout_pip_container, (ViewGroup) null);
            this.J = frameLayout;
            this.K = (SvgaImageViewV2) frameLayout.findViewById(R.id.loading_anim);
            this.L = (ImageView) this.J.findViewById(R.id.background);
            ImageView imageView = (ImageView) this.J.findViewById(R.id.realBackground);
            this.M = imageView;
            ic.a.c(imageView).r(this.f18075l.getCurrentLiveRoom().getLiveCoverImg()).Q0(this.M);
            ic.a.c(this.L).r(this.f18075l.getCurrentLiveRoom().getLiveCoverImg()).Q0(this.L);
            this.G = (FrameLayout) this.J.findViewById(R.id.container);
            MultiLivePlayView multiLivePlayView = (MultiLivePlayView) this.J.findViewById(R.id.multiply);
            this.D = multiLivePlayView;
            LiveFloatWindowMultiMaskAdapter liveFloatWindowMultiMaskAdapter = new LiveFloatWindowMultiMaskAdapter(multiLivePlayView);
            this.E = liveFloatWindowMultiMaskAdapter;
            this.D.setAdapter(liveFloatWindowMultiMaskAdapter);
            if (!LivePlayerProvider.player().isCompatMode()) {
                SurfaceView surfaceView = new SurfaceView(BaseApplication.getInstance());
                this.F = surfaceView;
                surfaceView.setZOrderOnTop(true);
                this.F.setZOrderMediaOverlay(true);
                this.F.getHolder().setFormat(-2);
                this.G.addView(this.F);
                u.h(this.G, -1);
            } else {
                this.F = null;
            }
            if (this.F != null) {
                LivePlayerProvider.player().setPlayerView(this.F);
            } else {
                LivePlayerProvider.player().setPlayerView((ViewGroup) this.G);
            }
            if (this.f18075l.getCurrentLiveRoom().isMultiLiveRoom()) {
                LiveFloatWindowMultiMaskAdapter liveFloatWindowMultiMaskAdapter2 = new LiveFloatWindowMultiMaskAdapter(this.D);
                this.E = liveFloatWindowMultiMaskAdapter2;
                this.D.setAdapter(liveFloatWindowMultiMaskAdapter2);
                LiveFloatWindowMultiMaskAdapter liveFloatWindowMultiMaskAdapter3 = this.E;
                liveFloatWindowMultiMaskAdapter3.f18160h = true;
                liveFloatWindowMultiMaskAdapter3.z(this.A.z2(), this.A.f18491d5);
            } else {
                MultiLivePlayView multiLivePlayView2 = this.D;
                if (multiLivePlayView2 != null) {
                    multiLivePlayView2.setVisibility(8);
                }
            }
            View childAt = viewGroup.getChildAt(0);
            this.I = childAt;
            if (childAt != null) {
                childAt.setVisibility(8);
            }
            viewGroup.addView(this.J, new FrameLayout.LayoutParams(-1, -1));
            WatcherLiveRoomFragment watcherLiveRoomFragment2 = this.A;
            watcherLiveRoomFragment2.s2(watcherLiveRoomFragment2.getFragmentManager());
            PopupWindow popupWindow = this.A.H5;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.A.H5 = null;
            }
            i1();
            if ((this.f18075l.getCurrentLiveRoom().isMultiLiveRoom() && this.A.z2().isEmpty()) ? false : false) {
                V1();
                F1();
                return;
            }
            return;
        }
        FrameLayout frameLayout2 = this.J;
        if (frameLayout2 != null) {
            viewGroup.removeView(frameLayout2);
        }
        View view = this.H;
        if (view != null) {
            viewGroup.removeView(view);
        }
        if (this.I == null) {
            this.I = viewGroup.getChildAt(0);
        }
        View view2 = this.I;
        if (view2 != null) {
            view2.postDelayed(new a(), 10L);
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById(R.id.watch_holder_container);
        if (viewGroup2 != null) {
            LivePlayerProvider.player().setPlayerView(viewGroup2);
            LivePlayerProvider.player().setMute(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        registerReceiver(this.K4, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f18074k != null) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int min = Math.min(2, this.f18074k.size());
            for (int i9 = 0; i9 < min; i9++) {
                RoomItemData roomItemData = new RoomItemData();
                RoomItemData roomItemData2 = this.f18074k.get(i9);
                roomItemData.setLiveId(roomItemData2.getLiveId());
                roomItemData.setLiveCoverImg(roomItemData2.getLiveCoverImg());
                roomItemData.setGroupId(roomItemData2.getGroupId());
                roomItemData.setChatGroupId(roomItemData2.getChatGroupId());
                roomItemData.setStreamUrl(roomItemData2.getStreamUrl());
                roomItemData.setNickName(roomItemData2.getNickName());
                roomItemData.setStartTime(roomItemData2.getStartTime());
                roomItemData.setLiveType(roomItemData2.getLiveType());
                roomItemData.setImg(roomItemData2.getImg());
                roomItemData.setUserId(roomItemData2.getBroadCasterUserId());
                roomItemData.setMultiLiveRoom(roomItemData2.isMultiLiveRoom());
                arrayList.add(roomItemData);
            }
            bundle.putParcelableArrayList("data", arrayList);
            bundle.putInt("current", 0);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        if (L4) {
            finish(false);
            if (this.f18075l != null) {
                LivePlayerProvider.player().stopPlay(this.f18075l.getCurrentLiveRoom().getStreamUrl());
            }
        }
    }

    @Override // android.app.Activity
    @RequiresApi(api = 26)
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void p0(int i9) {
        super.p0(i9);
        this.f18086w.post(new j(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void q0() {
        d9.g gVar;
        if (this.mViewPager2.h() && (gVar = this.f18075l) != null && !gVar.x0()) {
            this.f18072a2 = true;
            return;
        }
        super.q0();
        this.f18072a2 = false;
    }

    public List<Map<String, String>> r1(RoomItemData roomItemData) {
        int min;
        LiveRoomView liveRoomView = this.mViewPager2;
        if (liveRoomView != null && this.f18074k != null) {
            boolean f10 = liveRoomView.f();
            int indexOf = this.f18074k.indexOf(roomItemData);
            if (f10) {
                if (indexOf <= 0) {
                    return new ArrayList();
                }
                min = Math.max(0, indexOf - 3);
            } else if (indexOf >= this.f18074k.size() - 1) {
                return new ArrayList();
            } else {
                min = Math.min(this.f18074k.size() - 1, indexOf + 3);
            }
            if (min < 0) {
                min = 0;
            }
            if (indexOf < 0) {
                indexOf = 0;
            }
            if (indexOf != min) {
                ArrayList arrayList = new ArrayList();
                int min2 = Math.min(indexOf, min);
                int max = Math.max(indexOf, min);
                for (int i9 = min2 >= 0 ? min2 : 0; i9 <= max; i9++) {
                    try {
                        RoomItemData roomItemData2 = this.f18074k.get(i9);
                        ArrayMap arrayMap = new ArrayMap();
                        arrayMap.put("liveId", roomItemData2.getLiveRoomId());
                        arrayMap.put("startTime", roomItemData2.getLiveStartTimestamp());
                        arrayList.add(arrayMap);
                    } catch (Exception unused) {
                    }
                }
                if (f10) {
                    Collections.reverse(arrayList);
                }
                return arrayList;
            }
            return new ArrayList();
        }
        return new ArrayList();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void release(boolean z10) {
        super.release(z10);
        LivePlayerProvider.player().removePlayEventListener(this.B);
        LivePlayerProvider.player().removePlayEventListener(this.C);
        z8.c.o().N(null);
        d9.g gVar = this.f18075l;
        if (gVar != null && (gVar instanceof WatcherLiveRoomFragment)) {
            ((WatcherLiveRoomFragment) gVar).f18507l5 = true;
        }
        WatcherLiveRoomFragment watcherLiveRoomFragment = this.A;
        if (watcherLiveRoomFragment != null) {
            watcherLiveRoomFragment.onQuitLiveRoom(z10, false);
            this.A = null;
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().v(null);
            com.guochao.faceshow.aaspring.modulars.live.common.a.h();
        }
        this.f18086w.removeMessages(0);
        if (this.J4) {
            EventBus.getDefault().post(new q());
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().unRegistImCheckListener(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i9, @Nullable Bundle bundle) {
        d9.g gVar = this.f18075l;
        if (gVar != null && !gVar.z1() && !"1".equals(this.f18075l.getCurrentLiveRoom().getStatus()) && !this.f18075l.getCurrentLiveRoom().isKickedOut() && !this.f18075l.getCurrentLiveRoom().isVoiceRoom() && intent.getComponent() != null && !InviteBridgeActivity.class.getName().equals(intent.getComponent().getClassName()) && !CallingActivity.class.getName().equals(intent.getComponent().getClassName()) && !ProxyBillingActivity.class.getName().equals(intent.getComponent().getClassName()) && !this.f18082s && !FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
            if (!this.E4) {
                this.f18080q = true;
            }
            this.E4 = false;
            this.f18075l.getCurrentLiveRoom().setShowedFloatFromLiveRoom(true);
            z8.c.o().N(this.f18075l.K1());
        }
        super.startActivityForResult(intent, i9, bundle);
        this.F4 = true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void t0() {
        super.t0();
        if (BaseLiveActivity.s0() && !e0().getCurrentGCLiveRoomModel().isVoiceRoom()) {
            this.f18086w.removeCallbacks(this.V2);
            this.f18086w.postDelayed(this.V2, 60000L);
        }
    }

    public int t1() {
        return this.Q;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void updatePipParams(View view) {
        super.updatePipParams(view);
        if (Build.VERSION.SDK_INT >= 26) {
            setPictureInPictureParams(q1(false));
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment.v0
    public void w(LiveRoomModel liveRoomModel) {
        this.G4 = this.mViewPager2.getCurrentItem();
    }
}

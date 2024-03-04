package z8;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.graphics.Color;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b8.d;
import com.google.android.material.badge.BadgeDrawable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveMessage;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDownTimeUtils;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.common.t;
import com.guochao.faceshow.aaspring.modulars.live.common.u;
import com.guochao.faceshow.aaspring.modulars.live.floatwindow.LiveFloatWindowMultiMaskAdapter;
import com.guochao.faceshow.aaspring.modulars.live.floatwindow.LiveFloatWindowService;
import com.guochao.faceshow.aaspring.modulars.live.model.GroupDismissMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.VolumeMessage;
import com.guochao.faceshow.aaspring.modulars.live.watcher.LiveHelper;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.TXIMUtils;
import com.guochao.player.GCLivePlayer;
import com.guochao.player.base.ILivePlayer;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import com.opensource.svgaplayer.SVGADrawable;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import y7.k;
/* loaded from: classes3.dex */
public class c extends Binder implements Application.ActivityLifecycleCallbacks, d.a, View.OnClickListener, d.a {

    /* renamed from: y  reason: collision with root package name */
    private static c f60387y;

    /* renamed from: b  reason: collision with root package name */
    List<LiveInfoMatchBean> f60389b;

    /* renamed from: c  reason: collision with root package name */
    long f60390c;

    /* renamed from: d  reason: collision with root package name */
    private WeakReference<LiveFloatWindowService> f60391d;

    /* renamed from: e  reason: collision with root package name */
    FrameLayout f60392e;

    /* renamed from: f  reason: collision with root package name */
    SurfaceView f60393f;

    /* renamed from: g  reason: collision with root package name */
    ImageView f60394g;

    /* renamed from: h  reason: collision with root package name */
    ImageView f60395h;

    /* renamed from: i  reason: collision with root package name */
    View f60396i;

    /* renamed from: j  reason: collision with root package name */
    d f60397j;

    /* renamed from: k  reason: collision with root package name */
    public z8.b f60398k;

    /* renamed from: l  reason: collision with root package name */
    private z8.b f60399l;

    /* renamed from: m  reason: collision with root package name */
    WeakReference<Activity> f60400m;

    /* renamed from: n  reason: collision with root package name */
    WeakReference<Activity> f60401n;

    /* renamed from: o  reason: collision with root package name */
    z8.a f60402o;

    /* renamed from: p  reason: collision with root package name */
    MultiLivePlayView f60403p;

    /* renamed from: q  reason: collision with root package name */
    LiveFloatWindowMultiMaskAdapter f60404q;

    /* renamed from: r  reason: collision with root package name */
    SVGAImageView f60405r;

    /* renamed from: t  reason: collision with root package name */
    private boolean f60407t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f60408u;

    /* renamed from: w  reason: collision with root package name */
    GCLivePlayer f60410w;

    /* renamed from: a  reason: collision with root package name */
    private Handler f60388a = new Handler(Looper.getMainLooper());

    /* renamed from: s  reason: collision with root package name */
    f f60406s = new f(this, null);

    /* renamed from: v  reason: collision with root package name */
    private Runnable f60409v = new b();

    /* renamed from: x  reason: collision with root package name */
    private Set<e> f60411x = new HashSet();

    /* loaded from: classes3.dex */
    class a implements SVGAParser.ParseCompletion {
        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            c.this.f60405r.setImageDrawable(new SVGADrawable(sVGAVideoEntity));
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, c.this.f60405r, 4.0f);
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                GCEventUtils.track(GCEventUtils.STAY_IN_LIVE, Integer.valueOf(c.this.f60398k.c().getBroadCasterUserId()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            c.this.f60388a.postDelayed(this, 60000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z8.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0703c extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveInfoResult> {
        C0703c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveInfoResult liveInfoResult, @NonNull FaceCastBaseResponse<LiveInfoResult> faceCastBaseResponse) {
            if (liveInfoResult != null && c.this.f60398k != null) {
                if (liveInfoResult.getMatchList() != null) {
                    c.this.f60398k.o(liveInfoResult.getMatchList());
                    c.this.f60403p.setVisibility(0);
                    c.this.f60404q.z(liveInfoResult.getMatchList(), liveInfoResult.getServerTime());
                    return;
                }
                return;
            }
            onFailure(new g7.a<>(new Exception(), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            c.this.f60408u = true;
            c.this.v();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveInfoResult> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final ViewStub f60415a;

        /* renamed from: b  reason: collision with root package name */
        View f60416b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f60417c;

        /* renamed from: d  reason: collision with root package name */
        TextView f60418d;

        /* renamed from: e  reason: collision with root package name */
        HeadPortraitView f60419e;

        public d(ViewStub viewStub) {
            this.f60415a = viewStub;
        }

        public void a() {
            View view = this.f60416b;
            if (view != null) {
                view.setVisibility(8);
            }
        }

        public void b(RoomItemData roomItemData) {
            if (this.f60416b == null) {
                View inflate = this.f60415a.inflate();
                this.f60416b = inflate;
                this.f60417c = (ImageView) inflate.findViewById(R.id.cover);
                this.f60419e = (HeadPortraitView) this.f60416b.findViewById(R.id.avatar_view);
                this.f60418d = (TextView) this.f60416b.findViewById(R.id.nickname);
            }
            this.f60416b.setVisibility(0);
            this.f60419e.d(roomItemData);
            this.f60418d.setText(roomItemData.getBroadCasterUserName());
            ic.a.b(BaseApplication.getInstance()).r(roomItemData.getLiveCoverImg()).q0(new jc.f(15, 2, Color.parseColor("#1A000000"))).b0(R.mipmap.live_loading_bj).a0(Integer.MIN_VALUE, Integer.MIN_VALUE).Q0(this.f60417c);
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void onCloseFloatLive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class f implements ILivePlayer.PlayEventListener {
        private f() {
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onConnectToServer(String str, ILivePlayer iLivePlayer) {
            com.guochao.player.base.a.a(this, str, iLivePlayer);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onDrawFirstFrame(@NonNull String str, @NonNull ILivePlayer iLivePlayer) {
            z8.b bVar = c.this.f60398k;
            if (bVar == null) {
                return;
            }
            if (Objects.equals(str, bVar.c().getLiveRoomId()) || Objects.equals(str, c.this.f60398k.c().getBroadCasterUserId())) {
                c.this.f60407t = true;
                c.this.v();
            }
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onPlayEvent(@NonNull String str, int i9, @Nullable String str2, @Nullable Throwable th2) {
            if (i9 == 1001) {
                c.this.Q();
            }
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
        public void onPublishStreamInfo(@NonNull String str, @NonNull List<ILivePlayer.StreamInfo> list) {
            LiveFloatWindowMultiMaskAdapter liveFloatWindowMultiMaskAdapter;
            z8.b bVar = c.this.f60398k;
            if (bVar == null || bVar.c() == null) {
                return;
            }
            if ((Objects.equals(str, c.this.f60398k.c().getUserId()) || Objects.equals(str, c.this.f60398k.c().getLiveId())) && (liveFloatWindowMultiMaskAdapter = c.this.f60404q) != null) {
                liveFloatWindowMultiMaskAdapter.r(str, list);
            }
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onVideoLoading(@NonNull String str, @Nullable Bundle bundle) {
            z8.b bVar = c.this.f60398k;
            if (bVar == null || bVar.c() == null || !Objects.equals(str, c.this.f60398k.c().getUserId())) {
                return;
            }
            c.this.R();
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onVideoPlaying(@NonNull String str, @Nullable Bundle bundle) {
            z8.b bVar = c.this.f60398k;
            if (bVar == null || bVar.c() == null) {
                return;
            }
            if (Objects.equals(str, c.this.f60398k.c().getUserId()) || Objects.equals(str, c.this.f60398k.c().getLiveId())) {
                c.this.f60407t = true;
                c.this.v();
            }
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onVideoSizeChanged(@NonNull String str, int i9, int i10) {
            z8.b bVar = c.this.f60398k;
            if (bVar == null) {
                return;
            }
            if (Objects.equals(str, bVar.c().getBroadCasterUserId()) || Objects.equals(str, c.this.f60398k.c().getLiveId())) {
                if (WatcherLiveRoomFragment.s5(i9, i10)) {
                    c.this.f60398k.u(1);
                } else if (i9 == i10) {
                    c.this.f60398k.u(2);
                } else if (c.this.f60398k.c().isMultiLiveRoom()) {
                    c.this.f60398k.u(2);
                } else {
                    c.this.f60398k.u(0);
                }
                c.this.S();
            }
        }

        /* synthetic */ f(c cVar, a aVar) {
            this();
        }
    }

    private c() {
        View inflate = LayoutInflater.from(BaseApplication.getInstance()).inflate(R.layout.layout_float_window_container, (ViewGroup) null);
        inflate.findViewById(R.id.close).setOnClickListener(this);
        this.f60403p = (MultiLivePlayView) inflate.findViewById(R.id.multiply);
        this.f60394g = (ImageView) inflate.findViewById(R.id.background);
        this.f60395h = (ImageView) inflate.findViewById(R.id.realBackground);
        LiveFloatWindowMultiMaskAdapter liveFloatWindowMultiMaskAdapter = new LiveFloatWindowMultiMaskAdapter(this.f60403p);
        this.f60404q = liveFloatWindowMultiMaskAdapter;
        this.f60403p.setAdapter(liveFloatWindowMultiMaskAdapter);
        this.f60392e = (FrameLayout) inflate.findViewById(R.id.container);
        if (!LivePlayerProvider.player().isCompatMode()) {
            SurfaceView surfaceView = new SurfaceView(BaseApplication.getInstance());
            this.f60393f = surfaceView;
            surfaceView.setZOrderOnTop(true);
            this.f60393f.setZOrderMediaOverlay(true);
            this.f60393f.getHolder().setFormat(-2);
            this.f60392e.addView(this.f60393f);
        }
        SVGAImageView sVGAImageView = (SVGAImageView) inflate.findViewById(R.id.loading_anim);
        this.f60405r = sVGAImageView;
        sVGAImageView.setLoops(-1);
        SvgaImageViewUtils.getParser().decodeFromInputStream(BaseApplication.getInstance().getResources().openRawResource(R.raw.loading_white), "loading_white_float", new a(), true);
        z8.a aVar = new z8.a();
        this.f60402o = aVar;
        inflate.setOnTouchListener(aVar);
        inflate.setOnClickListener(this);
        this.f60396i = inflate;
        this.f60397j = new d((ViewStub) inflate.findViewById(R.id.view_stub));
        BaseApplication.getInstance().registerActivityLifecycleCallbacks(this);
        b8.e.g().registerOnUserChangedListener(this);
    }

    private void A(Activity activity, boolean z10) {
        z8.b bVar;
        if (activity == null || (bVar = this.f60398k) == null || bVar.j()) {
            return;
        }
        if (!P(activity)) {
            J(true, false);
            return;
        }
        WeakReference<Activity> weakReference = this.f60401n;
        if (weakReference != null && weakReference.get() != null) {
            WindowManager windowManager = this.f60401n.get().getWindowManager();
            if (windowManager == activity.getWindowManager()) {
                int[] q10 = q(this.f60398k);
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.f60396i.getLayoutParams();
                layoutParams.width = q10[0];
                layoutParams.height = q10[1];
                int i9 = BaseApplication.getInstance().getResources().getDisplayMetrics().widthPixels;
                int i10 = BaseApplication.getInstance().getResources().getDisplayMetrics().heightPixels;
                layoutParams.x = i9 - layoutParams.width;
                layoutParams.y = (i10 - layoutParams.height) - DensityUtil.dp2px(55.0f);
                windowManager.updateViewLayout(this.f60396i, layoutParams);
                return;
            }
            try {
                windowManager.removeView(this.f60396i);
            } catch (Exception unused) {
            }
        }
        B(this.f60398k, z10);
        this.f60402o.a(activity);
        WindowManager windowManager2 = activity.getWindowManager();
        View view = this.f60396i;
        windowManager2.addView(view, view.getLayoutParams());
        this.f60401n = new WeakReference<>(activity);
    }

    private void B(z8.b bVar, boolean z10) {
        if (bVar != null) {
            int i9 = BaseApplication.getInstance().getResources().getDisplayMetrics().widthPixels;
            int i10 = BaseApplication.getInstance().getResources().getDisplayMetrics().heightPixels;
            int[] q10 = q(bVar);
            int screenShotSwitch = bVar.c().getScreenShotSwitch();
            int i11 = Contants.SWITCH_SCREEN_SHOTS_OFF;
            int i12 = JosStatusCodes.RNT_CODE_SERVER_ERROR;
            int i13 = screenShotSwitch == i11 ? JosStatusCodes.RNT_CODE_SERVER_ERROR : 8;
            if (!bVar.c().isPrivateLiveRoom()) {
                i12 = i13;
            }
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(q10[0], q10[1], 2, i12, -2);
            layoutParams.softInputMode = 48;
            layoutParams.gravity = BadgeDrawable.TOP_START;
            WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) this.f60396i.getLayoutParams();
            if (layoutParams2 != null && !z10) {
                layoutParams.x = layoutParams2.x;
                layoutParams.y = layoutParams2.y;
            } else {
                layoutParams.x = (i9 - layoutParams.width) - DensityUtil.dp2px(8.0f);
                layoutParams.y = (i10 - layoutParams.height) - DensityUtil.dp2px(55.0f);
            }
            this.f60396i.setLayoutParams(layoutParams);
        }
    }

    private int G(int i9) {
        return i9 - (i9 % 4);
    }

    private void I() {
        try {
            this.f60388a.removeCallbacksAndMessages(null);
            WeakReference<Activity> weakReference = this.f60401n;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f60401n.get().getWindowManager().removeView(this.f60396i);
            this.f60401n = null;
        } catch (Exception unused) {
        }
    }

    private boolean P(Activity activity) {
        if (activity instanceof BaseActivity) {
            return ((BaseActivity) activity).shouldShowLiveFloatWindow();
        }
        return !(activity instanceof AdUnitActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        z8.b bVar = this.f60398k;
        if (bVar == null || bVar.c() == null) {
            return;
        }
        this.f60397j.b(this.f60398k.c());
        this.f60398k.u(0);
        S();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        this.f60405r.setVisibility(0);
        this.f60405r.startAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        int[] q10 = q(this.f60398k);
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.f60396i.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = q10[0];
            layoutParams.height = q10[1];
            layoutParams.x -= q10[0] - layoutParams.width;
            layoutParams.y -= q10[1] - layoutParams.height;
            WeakReference<Activity> weakReference = this.f60401n;
            if (weakReference == null || weakReference.get() == null || !this.f60396i.isAttachedToWindow()) {
                return;
            }
            this.f60401n.get().getWindowManager().updateViewLayout(this.f60396i, layoutParams);
        }
    }

    private void l(z8.b bVar) {
        if (bVar == null || bVar.a() <= 0) {
            return;
        }
        this.f60388a.postDelayed(this.f60409v, 60000 - (bVar.a() % 60000));
    }

    public static c o() {
        if (f60387y == null) {
            synchronized (c.class) {
                if (f60387y == null) {
                    f60387y = new c();
                }
            }
        }
        return f60387y;
    }

    private int[] q(z8.b bVar) {
        int[] iArr = new int[2];
        int i9 = BaseApplication.getInstance().getResources().getDisplayMetrics().widthPixels / 2;
        int g10 = bVar.g();
        if (g10 == 1) {
            iArr[0] = i9;
            iArr[1] = (int) ((i9 * 16.0f) / 18.0f);
            this.f60394g.setBackgroundResource(R.mipmap.live_min_bj_pk);
        } else if (g10 != 2) {
            int i10 = i9 / 2;
            iArr[0] = i10;
            iArr[1] = (int) ((i10 * 16.0f) / 9.0f);
            this.f60394g.setBackgroundResource(R.mipmap.live_min_bj_single);
        } else {
            iArr[0] = G(i9 - DensityUtil.dp2px(21.0f));
            iArr[1] = G(i9 - DensityUtil.dp2px(21.0f));
            this.f60394g.setBackgroundResource(R.mipmap.live_min_bj_multi);
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (this.f60407t && this.f60408u) {
            this.f60394g.setVisibility(8);
            this.f60405r.stopAnimation();
            this.f60405r.setVisibility(8);
            u.h(this.f60392e, -1);
        }
    }

    private void z() {
        R();
        ArrayList arrayList = new ArrayList();
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("liveId", this.f60398k.c().getLiveRoomId());
        arrayMap.put("startTime", this.f60398k.c().getLiveStartTimestamp());
        arrayList.add(0, arrayMap);
        new GetRequest("tokens/live/newLive/getLiveInfo").v("likeNum", "").v("liveId", this.f60398k.c().getLiveRoomId()).v(Contants.USER_ID, this.f60398k.c().getCurrentUserId()).M(new C0703c());
    }

    public void D(z8.b bVar) {
        ImageView imageView;
        z8.b bVar2 = this.f60398k;
        if (bVar2 != null && bVar2.c() != null && (imageView = this.f60395h) != null && this.f60394g != null) {
            ic.a.c(imageView).r(this.f60398k.c().getLiveCoverImg()).Q0(this.f60395h);
            ic.a.c(this.f60394g).r(this.f60398k.c().getLiveCoverImg()).Q0(this.f60394g);
        }
        if (bVar.j()) {
            return;
        }
        this.f60408u = false;
        this.f60407t = false;
        if (this.f60398k != null && !Objects.equals(bVar.c().getRoomID(), this.f60398k.c().getRoomID())) {
            this.f60398k.k();
        }
        this.f60398k = bVar;
        WeakReference<Activity> weakReference = this.f60400m;
        if (weakReference != null && weakReference.get() != null) {
            A(this.f60400m.get(), true);
            if (this.f60398k == null) {
                return;
            }
        }
        if (this.f60393f != null) {
            bVar.f().setPlayerView(this.f60393f);
        } else {
            bVar.f().setPlayerView((ViewGroup) this.f60392e);
        }
        this.f60397j.a();
        if (this.f60398k.c().isMultiLiveRoom()) {
            this.f60403p.setVisibility(0);
            LiveFloatWindowMultiMaskAdapter liveFloatWindowMultiMaskAdapter = new LiveFloatWindowMultiMaskAdapter(this.f60403p);
            this.f60404q = liveFloatWindowMultiMaskAdapter;
            this.f60403p.setAdapter(liveFloatWindowMultiMaskAdapter);
            LiveFloatWindowMultiMaskAdapter liveFloatWindowMultiMaskAdapter2 = this.f60404q;
            liveFloatWindowMultiMaskAdapter2.f18160h = true;
            liveFloatWindowMultiMaskAdapter2.z(this.f60398k.b(), this.f60398k.e());
        } else {
            this.f60403p.setVisibility(8);
        }
        bVar.f().addPlayEventListener(this.f60406s);
        if (bVar.c().isMultiLiveRoom() && bVar.b().isEmpty()) {
            this.f60394g.setVisibility(0);
            u.h(this.f60392e, 1);
            if (bVar.f().isPlaying()) {
                this.f60407t = true;
            }
            z();
        } else if (!bVar.i() && bVar.f().isPlaying() && !bVar.f().isLoading()) {
            u.h(this.f60392e, -1);
            this.f60407t = true;
            this.f60408u = true;
            v();
        } else {
            if (TextUtils.isEmpty(this.f60398k.c().getFlvUrl())) {
                Iterator<RoomItemData> it = this.f60398k.d().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    RoomItemData next = it.next();
                    if (next.getLiveRoomId() != null && next.getLiveRoomId().equals(this.f60398k.c().getLiveRoomId())) {
                        this.f60398k.c().setStreamUrl(next.getStreamUrl());
                        break;
                    }
                }
            }
            bVar.f().startPlay(this.f60398k.c().getFlvUrl(), this.f60398k.c().buildRoomInfo());
            u.h(this.f60392e, 1);
            this.f60394g.setVisibility(0);
            this.f60408u = true;
            R();
        }
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        if (!this.f60398k.h()) {
            TXIMUtils.joinGroup(this.f60398k.c().getGroupId());
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().x(this);
    }

    public void E(boolean z10) {
        z8.b bVar = this.f60398k;
        if (bVar != null) {
            bVar.f().setMute(z10);
        }
    }

    public void H() {
        this.f60390c = 0L;
        this.f60389b = null;
        this.f60410w = null;
    }

    public void J(boolean z10, boolean z11) {
        z8.b bVar = this.f60398k;
        if (bVar == null) {
            return;
        }
        if (z10) {
            if (bVar.c().isShowedFloatFromLiveRoom()) {
                this.f60398k.p(true);
                this.f60398k.f().setMute(true);
            } else {
                TXIMUtils.quitGroup(this.f60398k.c().getLiveRoomId());
                this.f60398k.k();
            }
            com.guochao.faceshow.aaspring.manager.im.b.l0().G(this);
            if (EventBus.getDefault().isRegistered(this)) {
                EventBus.getDefault().unregister(this);
            }
            this.f60398k.f().removePlayEventListener(this.f60406s);
        }
        I();
        if (!this.f60398k.c().isShowedFloatFromLiveRoom()) {
            this.f60398k = null;
        }
        if (z11) {
            return;
        }
        for (e eVar : this.f60411x) {
            eVar.onCloseFloatLive();
        }
    }

    public void N(@Nullable z8.b bVar) {
        this.f60399l = bVar;
    }

    public void O(LiveFloatWindowService liveFloatWindowService) {
        this.f60391d = new WeakReference<>(liveFloatWindowService);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void blackEvent(Intent intent) {
        z8.b bVar = this.f60398k;
        if (bVar == null || bVar.c() == null || !LOCAL_EVENT_MSG.BLACK_NAME_ADD.equals(intent.getAction()) || !Objects.equals(intent.getStringExtra(Contants.USER_ID), this.f60398k.c().getBroadCasterUserId())) {
            return;
        }
        WeakReference<Activity> weakReference = this.f60400m;
        if (weakReference != null && weakReference.get() != null) {
            Activity activity = this.f60400m.get();
            activity.startActivity(BaseLiveRoomFragment.W2(activity, false, false, false, true));
        }
        this.f60398k.c().setShowedFloatFromLiveRoom(false);
        J(true, false);
    }

    public List<LiveInfoMatchBean> m() {
        return this.f60389b;
    }

    public GCLivePlayer n() {
        return this.f60410w;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        if (activity instanceof WatchLiveRoomActivity) {
            J(true, false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NonNull Activity activity) {
        if (activity instanceof GCCoreActivity) {
            WeakReference<Activity> weakReference = this.f60400m;
            if ((weakReference == null || weakReference.get() != activity) && !(activity instanceof FakeLiveChatActivity) && activity.getParent() == null) {
                this.f60400m = new WeakReference<>(activity);
                if (this.f60399l != null) {
                    if ((activity instanceof GCCoreActivity) && !((GCCoreActivity) activity).shouldShowLiveFloatWindow()) {
                        if (this.f60399l.c().isShowedFloatFromLiveRoom()) {
                            return;
                        }
                        this.f60399l.f().stopPlay(true, true);
                        TXIMUtils.quitGroup(this.f60399l.c().getGroupId());
                        J(true, false);
                        this.f60399l = null;
                        this.f60398k = null;
                        return;
                    }
                    z8.b bVar = this.f60399l;
                    this.f60398k = bVar;
                    D(bVar);
                    l(this.f60398k);
                    this.f60399l = null;
                } else if (activity instanceof WatchLiveRoomActivity) {
                    WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) activity;
                    if (watchLiveRoomActivity.f18080q) {
                        z8.b bVar2 = this.f60398k;
                        J(false, false);
                        watchLiveRoomActivity.R1(bVar2);
                        watchLiveRoomActivity.f18080q = false;
                    }
                } else if (this.f60398k != null && (activity instanceof GCCoreActivity) && !((GCCoreActivity) activity).shouldShowLiveFloatWindow()) {
                    if (this.f60398k.c().isShowedFloatFromLiveRoom()) {
                        return;
                    }
                    this.f60398k.f().stopPlay(true, true);
                    TXIMUtils.quitGroup(this.f60398k.c().getGroupId());
                    J(true, false);
                    this.f60399l = null;
                    this.f60398k = null;
                } else {
                    A(activity, false);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NonNull Activity activity) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.close) {
            u(null);
            return;
        }
        J(true, false);
        this.f60398k = null;
        SigninManager.INSTANCE.releaseWatchLiveListener();
        FirstRechargeDownTimeUtils.INSTANCE.setShowIcon(false);
    }

    @Override // b8.d.a
    public void onLogout() {
        J(true, false);
    }

    /* JADX WARN: Type inference failed for: r1v31, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r9v25, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (this.f60398k != null && (aVar instanceof LiveMessage)) {
            LiveMessageModel<?> m354getWrappedMessage = ((LiveMessage) aVar).m354getWrappedMessage();
            if (m354getWrappedMessage.getData() == null || !Objects.equals(m354getWrappedMessage.getData().getRoomId(), this.f60398k.c().getChatGroupId())) {
                return;
            }
            String cmd = m354getWrappedMessage.getCmd();
            cmd.hashCode();
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
                        c10 = 1;
                        break;
                    }
                    break;
                case -755229651:
                    if (cmd.equals("LIVE_LINKMIC_VOICE")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -466448947:
                    if (cmd.equals("LIVE_VOLUME")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -284336779:
                    if (cmd.equals("LOCAL_GROUP_DISSMISS")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 204859347:
                    if (cmd.equals("LIVE_REMOVE_USER")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 422851572:
                    if (cmd.equals("LIVE_SEND_GIFT")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 905694627:
                    if (cmd.equals("LIVE_UPDATE_LINKMIC_INFO")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 1205656262:
                    if (cmd.equals("LIVE_CUSTOM_MSG")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 1627079677:
                    if (cmd.equals("LIVE_SCREENSHOT_BTN_SWITCH")) {
                        c10 = '\t';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    Q();
                    return;
                case 1:
                    String str = m354getWrappedMessage.getData().toUserId;
                    List<LiveInfoMatchBean> b10 = this.f60398k.b();
                    if (b10 != null) {
                        while (true) {
                            if (i9 < b10.size()) {
                                LiveInfoMatchBean liveInfoMatchBean = b10.get(i9);
                                if (Objects.equals(liveInfoMatchBean.getUserId(), str)) {
                                    liveInfoMatchBean.setMatchType(m354getWrappedMessage.getData().action ? "2" : "1");
                                } else {
                                    i9++;
                                }
                            }
                        }
                    }
                    this.f60404q.z(b10, m354getWrappedMessage.getData().getServerTime());
                    return;
                case 2:
                    String str2 = m354getWrappedMessage.getData().toUserId;
                    List<LiveInfoMatchBean> b11 = this.f60398k.b();
                    if (b11 != null) {
                        while (true) {
                            if (i9 < b11.size()) {
                                LiveInfoMatchBean liveInfoMatchBean2 = b11.get(i9);
                                if (Objects.equals(liveInfoMatchBean2.getUserId(), str2)) {
                                    liveInfoMatchBean2.setVoiceStatus(m354getWrappedMessage.getData().action ? "2" : "1");
                                } else {
                                    i9++;
                                }
                            }
                        }
                    }
                    this.f60404q.z(b11, m354getWrappedMessage.getData().getServerTime());
                    return;
                case 3:
                    VolumeMessage volumeMessage = (VolumeMessage) m354getWrappedMessage.getData();
                    LiveFloatWindowMultiMaskAdapter liveFloatWindowMultiMaskAdapter = this.f60404q;
                    if (liveFloatWindowMultiMaskAdapter != null) {
                        liveFloatWindowMultiMaskAdapter.F(volumeMessage);
                        return;
                    }
                    return;
                case 4:
                    if (Objects.equals(((GroupDismissMessage) m354getWrappedMessage.getData()).getGroupId(), this.f60398k.c().getChatGroupId())) {
                        Q();
                        return;
                    }
                    return;
                case 5:
                    if (Objects.equals(b8.e.g().c().getUserId(), m354getWrappedMessage.getData().toUserId)) {
                        boolean z10 = m354getWrappedMessage.getData().getFromUserId().equalsIgnoreCase(this.f60398k.c().getBroadCasterUserId());
                        boolean z11 = m354getWrappedMessage.getData().getUserVipMsg().getVipLevel() == 2;
                        boolean z12 = m354getWrappedMessage.getData().getUserType() == 3;
                        WeakReference<Activity> weakReference = this.f60400m;
                        if (weakReference != null && weakReference.get() != null) {
                            Activity activity = this.f60400m.get();
                            activity.startActivity(BaseLiveRoomFragment.W2(activity, z10, z11, z12, false));
                        }
                        this.f60398k.c().setShowedFloatFromLiveRoom(false);
                        J(true, false);
                        return;
                    }
                    return;
                case 6:
                case '\b':
                    List<LiveMessageModel<?>> messages = this.f60398k.c().getMessages();
                    if (messages == null) {
                        messages = new ArrayList<>();
                        this.f60398k.c().setMessages(messages);
                    }
                    messages.add(m354getWrappedMessage);
                    return;
                case 7:
                    LinkMicInfoMessage linkMicInfoMessage = (LinkMicInfoMessage) m354getWrappedMessage.getData();
                    this.f60404q.z(linkMicInfoMessage.getMatchList(), linkMicInfoMessage.getServerTime());
                    this.f60398k.o(linkMicInfoMessage.getMatchList());
                    this.f60398k.s(linkMicInfoMessage.getServerTime());
                    return;
                case '\t':
                    WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) this.f60396i.getLayoutParams();
                    if (layoutParams == null) {
                        return;
                    }
                    if (m354getWrappedMessage.getData().action) {
                        layoutParams.flags = 8;
                    } else {
                        layoutParams.flags = JosStatusCodes.RNT_CODE_SERVER_ERROR;
                    }
                    WeakReference<Activity> weakReference2 = this.f60401n;
                    if (weakReference2 == null || weakReference2.get() == null) {
                        return;
                    }
                    z8.b bVar = this.f60398k;
                    if (bVar != null && bVar.c() != null) {
                        if (m354getWrappedMessage.getData().action) {
                            this.f60398k.c().setScreenShotSwitch(Contants.SWITCH_SCREEN_SHOTS_ON);
                        } else {
                            this.f60398k.c().setScreenShotSwitch(Contants.SWITCH_SCREEN_SHOTS_OFF);
                        }
                    }
                    this.f60401n.get().getWindowManager().updateViewLayout(this.f60396i, layoutParams);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public /* synthetic */ void onRecvMessageRevoked(String str) {
        a8.b.a(this, str);
    }

    @Override // b8.d.a
    public void onUserChanged(UserBean userBean, UserBean userBean2) {
    }

    @Override // b8.d.a
    public /* synthetic */ void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12) {
        b8.c.a(this, userBean, userBean2, z10, z11, z12);
    }

    public void registerOnFloatLiveListener(e eVar) {
        if (eVar != null) {
            this.f60411x.add(eVar);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void screenShotChange(k kVar) {
        WeakReference<Activity> weakReference = this.f60400m;
        if (weakReference == null || weakReference.get() == null || !(this.f60400m.get() instanceof MainActivity) || this.f60398k.c().getScreenShotSwitch() != Contants.SWITCH_SCREEN_SHOTS_OFF) {
            return;
        }
        ToastUtils.showToast((int) R.string.live_lock_screenshots_off);
    }

    public void u(@Nullable List<RoomItemData> list) {
        WeakReference<Activity> weakReference;
        if (this.f60398k == null || (weakReference = this.f60400m) == null || weakReference.get() == null) {
            return;
        }
        z8.b bVar = this.f60398k;
        this.f60389b = bVar.b();
        this.f60390c = bVar.e();
        this.f60410w = bVar.f();
        Activity activity = this.f60400m.get();
        RoomItemData c10 = this.f60398k.c();
        int i9 = 0;
        boolean z10 = this.f60398k.g() == 1;
        bVar.c().setLaunchFromFloatWindow(true);
        bVar.c().setPkModeWhenFloatWindow(z10);
        bVar.c().setInPkMode(z10);
        int i10 = 0;
        while (true) {
            if (i10 >= bVar.d().size()) {
                break;
            } else if (Objects.equals(bVar.c().getLiveRoomId(), bVar.d().get(i10).getLiveRoomId())) {
                bVar.d().get(i10).setLaunchFromFloatWindow(true);
                bVar.d().get(i10).setPkModeWhenFloatWindow(z10);
                bVar.d().get(i10).setInPkMode(z10);
                break;
            } else {
                i10++;
            }
        }
        this.f60398k.f().removePlayEventListener(this.f60406s);
        J(false, true);
        LiveHelper.Companion.getInstance().setFloatTouchLiveRoom(true);
        if (c10.isShowedFloatFromLiveRoom()) {
            activity.startActivity(new Intent(activity, WatchLiveRoomActivity.class).putExtra("from_float", 1).addFlags(603979776));
            return;
        }
        if (list != null) {
            bVar.r(list);
        }
        int indexOf = bVar.d().indexOf(bVar.c());
        while (true) {
            if (i9 >= bVar.d().size()) {
                break;
            } else if (i9 == indexOf) {
                bVar.d().get(i9).setStreamUrl(bVar.c().getStreamUrl());
                bVar.d().get(i9).setMessages(bVar.c().getMessages());
                break;
            } else {
                i9++;
            }
        }
        t.c().i(activity, bVar.d(), indexOf, 0, 0, true);
    }

    public void unregisterOnFloatLiveListener(e eVar) {
        if (eVar != null) {
            this.f60411x.remove(eVar);
        }
    }

    public boolean w(RoomItemData roomItemData) {
        WeakReference<Activity> weakReference = this.f60400m;
        if (weakReference == null || this.f60399l == null || weakReference.get() == null || roomItemData == null) {
            return false;
        }
        return Objects.equals(this.f60399l.c().getLiveRoomId(), roomItemData.getLiveRoomId());
    }

    public boolean x(RoomItemData roomItemData) {
        WeakReference<Activity> weakReference = this.f60400m;
        return (weakReference == null || this.f60398k == null || weakReference.get() == null || !Objects.equals(this.f60398k.c().getLiveRoomId(), roomItemData.getLiveRoomId())) ? false : true;
    }

    public boolean y() {
        return this.f60398k != null;
    }
}

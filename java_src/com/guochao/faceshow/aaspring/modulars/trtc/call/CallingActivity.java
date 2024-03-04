package com.guochao.faceshow.aaspring.modulars.trtc.call;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import b8.d;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.AudioCallFragment;
import com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.AudioToBeReceivedFragment;
import com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.VideoCallFragment;
import com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.VideoToBeReceivedFragment;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastCallService;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.d;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.player.GCLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import s0.i;
/* loaded from: classes3.dex */
public class CallingActivity extends BaseActivity implements d.a, KeyboardHeightObserver, SensorEventListener, d.a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f21870a;

    /* renamed from: b  reason: collision with root package name */
    private int f21871b;
    @BindView
    TXCloudVideoView bigVideoView;
    @BindView
    ImageView bigVideoViewImg;

    /* renamed from: c  reason: collision with root package name */
    private VideoToBeReceivedFragment f21872c;

    /* renamed from: d  reason: collision with root package name */
    private AudioToBeReceivedFragment f21873d;

    /* renamed from: e  reason: collision with root package name */
    private VideoCallFragment f21874e;

    /* renamed from: f  reason: collision with root package name */
    private AudioCallFragment f21875f;

    /* renamed from: g  reason: collision with root package name */
    private TrtcFaceCastUser f21876g;

    /* renamed from: h  reason: collision with root package name */
    private CallModel f21877h;

    /* renamed from: i  reason: collision with root package name */
    private Sensor f21878i;

    /* renamed from: j  reason: collision with root package name */
    private PowerManager.WakeLock f21879j;

    /* renamed from: k  reason: collision with root package name */
    private SensorManager f21880k;

    /* renamed from: l  reason: collision with root package name */
    private PowerManager f21881l;

    /* renamed from: n  reason: collision with root package name */
    KeyboardHeightProvider f21883n;

    /* renamed from: o  reason: collision with root package name */
    private Intent f21884o;

    /* renamed from: q  reason: collision with root package name */
    private CallModel f21886q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f21887r;
    @BindView
    ViewGroup rootView;

    /* renamed from: s  reason: collision with root package name */
    private boolean f21888s;
    @BindView
    View smallBg;
    @BindView
    TXCloudVideoView smallVideoView;
    @BindView
    ImageView smallVideoViewImg;

    /* renamed from: m  reason: collision with root package name */
    private Handler f21882m = new Handler();

    /* renamed from: p  reason: collision with root package name */
    private Runnable f21885p = new d();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CallingActivity.this.isDestroyed() || CallingActivity.this.isFinishing()) {
                return;
            }
            CallingActivity.this.f21883n.start();
        }
    }

    /* loaded from: classes3.dex */
    class b extends i<Drawable> {
        b() {
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
            CallingActivity.this.bigVideoViewImg.setImageDrawable(drawable);
        }
    }

    /* loaded from: classes3.dex */
    class c extends i<Drawable> {
        c() {
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
            CallingActivity.this.smallVideoViewImg.setImageDrawable(drawable);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CallingActivity.this.isFinishing() || CallingActivity.this.isDestroyed() || CallingActivity.this.f21874e != null || CallingActivity.this.f21875f != null || CallingActivity.this.f21876g == null) {
                return;
            }
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().P(CallingActivity.this.f21877h);
            CallingActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CallingActivity.this.f21886q != null) {
                FaceCastCallService.a(CallingActivity.this.f21886q);
            } else if (CallingActivity.this.f21884o != null) {
                Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                int intExtra = CallingActivity.this.f21884o.getIntExtra("type", -1);
                TrtcFaceCastUser trtcFaceCastUser = (TrtcFaceCastUser) MemoryCache.getInstance().remove("userData");
                CallModel callModel = (CallModel) MemoryCache.getInstance().remove("callModel");
                if (intExtra <= 0 || trtcFaceCastUser == null || callModel == null || currTopActivity == null) {
                    return;
                }
                CallingActivity.A0(currTopActivity, intExtra, trtcFaceCastUser, callModel);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends ViewOutlineProvider {

        /* renamed from: a  reason: collision with root package name */
        private float f21894a;

        public f(float f10) {
            this.f21894a = f10;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            Rect rect = new Rect();
            view.getGlobalVisibleRect(rect);
            outline.setRoundRect(new Rect(0, 0, (rect.right - rect.left) - 0, (rect.bottom - rect.top) - 0), this.f21894a);
        }
    }

    public static void A0(Context context, int i9, TrtcFaceCastUser trtcFaceCastUser, CallModel callModel) {
        VoiceRoomMiniHelper.releaseAll();
        Intent intent = new Intent(context, CallingActivity.class);
        intent.putExtra("type", i9);
        MemoryCache.getInstance().put("userData", trtcFaceCastUser);
        MemoryCache.getInstance().put("callModel", callModel);
        ContextCompat.startActivity(context, intent, ActivityOptionsCompat.makeCustomAnimation(context, R.anim.bottom_y_in_activity, R.anim.top_y_out_activity).toBundle());
    }

    private void n0() {
        AudioCallFragment audioCallFragment = this.f21875f;
        if (audioCallFragment != null) {
            audioCallFragment.f2();
        }
        VideoCallFragment videoCallFragment = this.f21874e;
        if (videoCallFragment != null) {
            videoCallFragment.f2();
        }
    }

    private void release() {
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().E();
        AudioToBeReceivedFragment audioToBeReceivedFragment = this.f21873d;
        if (audioToBeReceivedFragment != null) {
            audioToBeReceivedFragment.T1();
        }
        VideoToBeReceivedFragment videoToBeReceivedFragment = this.f21872c;
        if (videoToBeReceivedFragment != null) {
            videoToBeReceivedFragment.U1();
        }
        AudioCallFragment audioCallFragment = this.f21875f;
        if (audioCallFragment != null) {
            audioCallFragment.n2();
        }
        VideoCallFragment videoCallFragment = this.f21874e;
        if (videoCallFragment != null) {
            videoCallFragment.n2();
        }
        b8.e.g().unregisterOnUserChangedListener(this);
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().o();
        KeyboardHeightProvider keyboardHeightProvider = this.f21883n;
        if (keyboardHeightProvider != null) {
            keyboardHeightProvider.close();
        }
        overridePendingTransition(0, 0);
        TXCloudVideoView tXCloudVideoView = this.bigVideoView;
        if (tXCloudVideoView != null) {
            tXCloudVideoView.onDestroy();
        }
        TXCloudVideoView tXCloudVideoView2 = this.smallVideoView;
        if (tXCloudVideoView2 != null) {
            tXCloudVideoView2.onDestroy();
        }
        EventBus.getDefault().unregister(this);
        SensorManager sensorManager = this.f21880k;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
        }
        PowerManager.WakeLock wakeLock = this.f21879j;
        if (wakeLock != null && wakeLock.isHeld()) {
            this.f21879j.release();
        }
        this.f21879j = null;
        this.f21881l = null;
        com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().d(this);
        GCLivePlayer player = LivePlayerProvider.player();
        if (player.isPlayerFrozen()) {
            player.unfreezeAllPlayers();
        }
        HandlerGetter.getMainHandler().postDelayed(new e(), 400L);
    }

    private void t0() {
        AudioCallFragment audioCallFragment = this.f21875f;
        if (audioCallFragment != null) {
            audioCallFragment.k2();
        }
        VideoCallFragment videoCallFragment = this.f21874e;
        if (videoCallFragment != null) {
            videoCallFragment.k2();
        }
    }

    private void u0() {
        if (this.f21887r && this.f21888s) {
            if (this.f21871b == 6) {
                this.f21875f = AudioCallFragment.h2(this.f21876g, 4);
                getSupportFragmentManager().beginTransaction().add(R.id.fragment_calling, this.f21875f).commitAllowingStateLoss();
                AudioToBeReceivedFragment audioToBeReceivedFragment = this.f21873d;
                if (audioToBeReceivedFragment != null) {
                    audioToBeReceivedFragment.U1();
                    getSupportFragmentManager().beginTransaction().hide(this.f21873d).commitAllowingStateLoss();
                }
                getSupportFragmentManager().beginTransaction().show(this.f21875f).commitAllowingStateLoss();
            }
            if (this.f21871b == 5) {
                this.f21874e = VideoCallFragment.h2(this.f21876g, 2);
                getSupportFragmentManager().beginTransaction().add(R.id.fragment_calling, this.f21874e).commitAllowingStateLoss();
                VideoToBeReceivedFragment videoToBeReceivedFragment = this.f21872c;
                if (videoToBeReceivedFragment != null) {
                    videoToBeReceivedFragment.V1();
                    getSupportFragmentManager().beginTransaction().hide(this.f21872c).commitAllowingStateLoss();
                }
                getSupportFragmentManager().beginTransaction().show(this.f21874e).commitAllowingStateLoss();
            }
        }
    }

    private void v0(View view, boolean z10) {
        view.setOutlineProvider(new f(DensityUtil.dp2px(z10 ? 8.0f : 0.0f)));
        view.setClipToOutline(z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void A1(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void E1(String str) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void I(String str, String str2, CallModel callModel) {
        if (this.f21871b == 6 && this.f21875f == null) {
            this.f21873d.R1(callModel);
        }
        if (this.f21871b == 5 && this.f21874e == null) {
            this.f21872c.R1(callModel);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void K0(String str, String str2, CallModel callModel) {
        if (this.f21877h == null) {
            return;
        }
        showToast(R.string.trtc_im_reject_me);
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().H(this.f21877h.invitedList.get(0), this.f21877h.callType, 2, callModel);
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public /* synthetic */ void L0(String str, int i9, int i10, int i11) {
        x9.a.a(this, str, i9, i10, i11);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void O0(String str, List<String> list, CallModel callModel) {
        String str2;
        CallModel callModel2 = this.f21877h;
        if (callModel2 == null) {
            return;
        }
        if (callModel != null && (str2 = callModel.matchLogId) != null && str2.equals(callModel2.matchLogId)) {
            finish();
        } else {
            this.f21886q = null;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void R(String str, int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void R0(String str, boolean z10) {
        if (!this.f21887r && z10 && this.f21871b == 5) {
            this.f21887r = true;
            u0();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void f1(long j10) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        release();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).f(getResources().getColor(17170445)).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_calling;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f21871b = getIntent().getIntExtra("type", 1);
        this.f21876g = (TrtcFaceCastUser) MemoryCache.getInstance().remove("userData");
        CallModel callModel = (CallModel) MemoryCache.getInstance().remove("callModel");
        this.f21877h = callModel;
        if (this.f21876g != null && callModel != null) {
            int i9 = this.f21871b;
            boolean z10 = (i9 == 5 || i9 == 6) && callModel.isFromLiveRoom();
            int i10 = this.f21871b;
            if (i10 == 5 || i10 == 6) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().n(Integer.parseInt(b8.e.g().getUserId()), this.f21871b);
            }
            int i11 = this.f21871b;
            switch (i11) {
                case 1:
                case 2:
                    this.f21874e = VideoCallFragment.h2(this.f21876g, i11);
                    getSupportFragmentManager().beginTransaction().add(R.id.fragment_calling, this.f21874e).commitAllowingStateLoss();
                    getSupportFragmentManager().beginTransaction().show(this.f21874e).commitAllowingStateLoss();
                    break;
                case 3:
                case 4:
                    this.f21875f = AudioCallFragment.h2(this.f21876g, i11);
                    getSupportFragmentManager().beginTransaction().add(R.id.fragment_calling, this.f21875f).commitAllowingStateLoss();
                    getSupportFragmentManager().beginTransaction().show(this.f21875f).commitAllowingStateLoss();
                    y0(8);
                    break;
                case 5:
                    this.f21872c = VideoToBeReceivedFragment.Q1(this.f21876g);
                    getSupportFragmentManager().beginTransaction().add(R.id.fragment_receive, this.f21872c).commitAllowingStateLoss();
                    getSupportFragmentManager().beginTransaction().show(this.f21872c).commitAllowingStateLoss();
                    y0(8);
                    this.f21882m.postDelayed(this.f21885p, 60000L);
                    break;
                case 6:
                    this.f21873d = AudioToBeReceivedFragment.Q1(this.f21876g);
                    getSupportFragmentManager().beginTransaction().add(R.id.fragment_receive, this.f21873d).commitAllowingStateLoss();
                    getSupportFragmentManager().beginTransaction().show(this.f21873d).commitAllowingStateLoss();
                    y0(8);
                    this.f21882m.postDelayed(this.f21885p, 60000L);
                    break;
            }
            com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().c(this);
            EventBus.getDefault().register(this);
            b8.e.g().registerOnUserChangedListener(this);
            if (z10) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().startRemoteView(this.f21876g.getCurrentUserId(), 0, ((CallingActivity) getActivity()).q0());
                return;
            }
            return;
        }
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void j1(CallModel callModel) {
    }

    public void l0() {
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().muteLocalVideo(true);
        finish();
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().A(BaseApplication.getInstance(), this.f21870a, b8.e.g().getUserId().equals(this.f21877h.getCurrentUserId()), null);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public void m0() {
        View view = this.smallBg;
        if (view != null) {
            view.callOnClick();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void n1(String str, String str2, CallModel callModel) {
        AudioToBeReceivedFragment audioToBeReceivedFragment;
        this.f21882m.removeCallbacks(this.f21885p);
        if (this.f21871b == 6 && (audioToBeReceivedFragment = this.f21873d) != null) {
            audioToBeReceivedFragment.W1();
        }
        if (this.f21871b == 5) {
            VideoToBeReceivedFragment videoToBeReceivedFragment = this.f21872c;
            if (videoToBeReceivedFragment != null) {
                videoToBeReceivedFragment.S1();
            }
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().p().startRemoteView(this.f21876g.getCurrentUserId(), 0, ((CallingActivity) getActivity()).q0());
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void o(CallModel callModel) {
    }

    public TXCloudVideoView o0() {
        return this.bigVideoView;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i9) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().C(this);
        getWindow().addFlags(128);
        super.onCreate(bundle);
        if (bundle != null) {
            finish();
            return;
        }
        this.f21883n = new KeyboardHeightProvider(this, getWindow().getDecorView());
        getWindow().getDecorView().post(new a());
        ((ViewGroup.MarginLayoutParams) findViewById(R.id.small_video_view_lay).getLayoutParams()).topMargin += StatusBarHelper.getStatusbarHeight(this);
        ((ViewGroup.MarginLayoutParams) findViewById(R.id.small_video_view_preview).getLayoutParams()).topMargin += StatusBarHelper.getStatusbarHeight(this);
        SensorManager sensorManager = (SensorManager) getActivity().getSystemService("sensor");
        this.f21880k = sensorManager;
        this.f21878i = sensorManager.getDefaultSensor(8);
        PowerManager powerManager = (PowerManager) getActivity().getSystemService("power");
        this.f21881l = powerManager;
        this.f21879j = powerManager.newWakeLock(32, getClass().getSimpleName());
        v0(this.smallVideoView, true);
        v0(this.smallVideoViewImg, true);
        ic.a.c(this.bigVideoViewImg).c().b0(R.mipmap.trtc_appointment_bj).Z0(getCurrentUser().img).q0(new jc.a(20)).M0(new b());
        if (this.f21876g != null) {
            ic.a.c(this.smallVideoViewImg).c().b0(R.mipmap.trtc_appointment_bj).Z0(this.f21876g.getAvatarUrl()).q0(new jc.a(20)).M0(new c());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEndPushEvent(y7.d dVar) {
        ToastUtils.showToast(this, (int) R.string.trtc_call_stop_call);
        VideoCallFragment videoCallFragment = this.f21874e;
        if (videoCallFragment != null && videoCallFragment.isAdded()) {
            this.f21874e.i2();
        }
        AudioCallFragment audioCallFragment = this.f21875f;
        if (audioCallFragment != null && audioCallFragment.isAdded()) {
            this.f21875f.i2();
        }
        CallModel callModel = dVar.f60131a;
        if (callModel != null) {
            this.f21886q = callModel;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 == 4) {
            return true;
        }
        return super.onKeyDown(i9, keyEvent);
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10) {
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public /* synthetic */ void onKeyboardHeightChanged(int i9, int i10, int i11) {
        com.guochao.faceshow.aaspring.utils.e.a(this, i9, i10, i11);
    }

    @Override // b8.d.a
    public void onLogout() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f21884o = intent;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Sensor sensor = this.f21878i;
        if (sensor != null) {
            this.f21880k.registerListener(this, sensor, 3);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.values[0] == 0.0d) {
            PowerManager.WakeLock wakeLock = this.f21879j;
            if (wakeLock != null && !wakeLock.isHeld()) {
                this.f21879j.acquire(2147483647L);
            }
            n0();
            return;
        }
        if (this.f21879j.isHeld()) {
            this.f21879j.release();
        }
        t0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.f21883n.setKeyboardHeightObserver(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f21880k.unregisterListener(this);
        this.f21883n.setKeyboardHeightObserver(null);
    }

    @Override // b8.d.a
    public void onUserChanged(UserBean userBean, UserBean userBean2) {
    }

    @Override // b8.d.a
    public /* synthetic */ void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12) {
        b8.c.a(this, userBean, userBean2, z10, z11, z12);
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() == R.id.small_video_view_preview && DisableDoubleClickUtils.canClick(view, 400L)) {
            View childAt = this.rootView.getChildAt(0);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            View childAt2 = this.rootView.getChildAt(1);
            ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
            childAt2.setLayoutParams(layoutParams);
            childAt.setLayoutParams(layoutParams2);
            if (childAt2.getId() == R.id.small_video_view) {
                this.rootView.removeView(childAt2);
                this.rootView.addView(childAt2, 0);
            } else {
                this.rootView.removeView(childAt);
                this.rootView.addView(childAt, 1);
            }
            v0(((ViewGroup) this.rootView.getChildAt(0)).getChildAt(0), false);
            v0(((ViewGroup) this.rootView.getChildAt(0)).getChildAt(1), false);
            v0(((ViewGroup) this.rootView.getChildAt(1)).getChildAt(0), true);
            v0(((ViewGroup) this.rootView.getChildAt(1)).getChildAt(1), true);
        }
    }

    public CallModel p0() {
        return this.f21877h;
    }

    public TXCloudVideoView q0() {
        return this.smallVideoView;
    }

    public boolean r0() {
        if (this.f21873d == null || this.f21875f != null) {
            return this.f21872c != null && this.f21874e == null;
        }
        return true;
    }

    public boolean s0() {
        return (this.f21875f == null && this.f21874e == null) ? false : true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void s1(CallModel callModel) {
        this.f21888s = true;
        u0();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void v(String str, String str2, CallModel callModel) {
        String str3;
        CallModel callModel2 = this.f21877h;
        if (callModel2 == null) {
            return;
        }
        if (callModel != null && (str3 = callModel.matchLogId) != null && str3.equals(callModel2.matchLogId)) {
            finish();
        } else {
            this.f21886q = null;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void v1(int i9, String str, Bundle bundle) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void w1(String str, boolean z10) {
        if (!this.f21887r && z10 && this.f21871b == 6) {
            this.f21887r = true;
            u0();
        }
    }

    public void y0(int i9) {
        ViewGroup viewGroup = (ViewGroup) this.smallVideoView.getParent();
        if (i9 == 8) {
            viewGroup.getLayoutParams().width = 1;
            viewGroup.getLayoutParams().height = 1;
        } else {
            viewGroup.getLayoutParams().width = DensityUtil.dp2px(100.0f);
            viewGroup.getLayoutParams().height = DensityUtil.dp2px(178.0f);
        }
        viewGroup.setVisibility(0);
        this.smallBg.setVisibility(i9);
    }
}

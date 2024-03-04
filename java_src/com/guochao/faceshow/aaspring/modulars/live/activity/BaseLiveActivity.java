package com.guochao.faceshow.aaspring.modulars.live.activity;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import b8.e;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.manager.im.a;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeManager;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.watcher.BigGiftBoxFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityObserver;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider;
import com.guochao.faceshow.aaspring.utils.NetworkObserverHelper;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.NavigationBarUtils;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.faceshow.utils.SystemUtil;
import com.tencent.imsdk.v2.V2TIMGroupMemberInfo;
import d9.g;
import java.util.ArrayList;
import org.greenrobot.eventbus.EventBus;
import y7.j;
/* loaded from: classes3.dex */
public abstract class BaseLiveActivity extends BaseActivity implements KeyboardHeightObserver, Foreground.OnForegroundStateChangedListener, d9.a, a.g, d.a {

    /* renamed from: b  reason: collision with root package name */
    private KeyboardHeightProvider f18050b;

    /* renamed from: c  reason: collision with root package name */
    SparseArray<RecyclerView.RecycledViewPool> f18051c;

    /* renamed from: d  reason: collision with root package name */
    NetworkObserverHelper f18052d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public ViewGroup f18053e;

    /* renamed from: h  reason: collision with root package name */
    FirstRechargeDialog f18056h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f18057i;

    /* renamed from: a  reason: collision with root package name */
    int f18049a = -1;

    /* renamed from: f  reason: collision with root package name */
    private boolean f18054f = false;

    /* renamed from: g  reason: collision with root package name */
    Runnable f18055g = new b();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseLiveActivity.this.isDestroyed() || BaseLiveActivity.this.isFinishing()) {
                return;
            }
            BaseLiveActivity.this.f18050b.start();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseLiveActivity.this.q0();
        }
    }

    private void d0(MotionEvent motionEvent) {
        if (getSupportFragmentManager().findFragmentById(R.id.live_float_chat) != null) {
            if (this.f18053e == null) {
                this.f18053e = (ViewGroup) findViewById(R.id.live_float_chat);
            }
            ViewGroup viewGroup = this.f18053e;
            if (viewGroup == null) {
                return;
            }
            int[] iArr = new int[2];
            viewGroup.getLocationInWindow(iArr);
            if (under(this.f18053e, motionEvent, iArr)) {
                return;
            }
            this.f18053e.setVisibility(8);
            SoftKeyBoardUtils.closeSoftKeyBoardNow(this, this.f18053e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean s0() {
        if (e.g().c().getRecharged() == 1) {
            return false;
        }
        FirstRechargeManager firstRechargeManager = FirstRechargeManager.INSTANCE;
        return firstRechargeManager.shouldShowFirstRecharge() && !firstRechargeManager.isFirstRechargeAutoShown();
    }

    public static void u0(String str, boolean z10) {
    }

    private boolean under(View view, MotionEvent motionEvent, int[] iArr) {
        int i9 = iArr[0];
        int i10 = iArr[1];
        return ((float) i9) < motionEvent.getRawX() && ((float) i10) < motionEvent.getRawY() && ((float) (view.getWidth() + i9)) > motionEvent.getRawX() && ((float) (view.getHeight() + i10)) > motionEvent.getRawY();
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.a.g
    public void T(String str, V2TIMGroupMemberInfo v2TIMGroupMemberInfo) {
        if (e0() != null) {
            e0().T(str, v2TIMGroupMemberInfo);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View view;
        if (motionEvent.getAction() == 0) {
            if (e0() instanceof BaseLiveRoomFragment) {
                BaseLiveRoomFragment baseLiveRoomFragment = (BaseLiveRoomFragment) e0();
                if (baseLiveRoomFragment.mInputArea != null && baseLiveRoomFragment.isAdded() && baseLiveRoomFragment.mInputArea.getVisibility() == 0) {
                    int[] iArr = new int[2];
                    baseLiveRoomFragment.mInputArea.getLocationInWindow(iArr);
                    if (!under(baseLiveRoomFragment.mInputArea, motionEvent, iArr)) {
                        baseLiveRoomFragment.mInputArea.setVisibility(8);
                        LiveChatFragment liveChatFragment = baseLiveRoomFragment.f18532y;
                        if (liveChatFragment != null && (view = liveChatFragment.mLiveBtns) != null) {
                            view.setVisibility(0);
                        }
                        SoftKeyBoardUtils.closeSoftKeyBoardNow(this, baseLiveRoomFragment.mEditText);
                        return false;
                    }
                }
            }
            d0(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public g e0() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        finish(true);
    }

    public RecyclerView.RecycledViewPool g0(int i9) {
        if (this.f18051c == null) {
            this.f18051c = new SparseArray<>();
        }
        RecyclerView.RecycledViewPool recycledViewPool = this.f18051c.get(i9);
        if (recycledViewPool != null) {
            return recycledViewPool;
        }
        RecyclerView.RecycledViewPool recycledViewPool2 = new RecyclerView.RecycledViewPool();
        this.f18051c.put(i9, recycledViewPool2);
        return recycledViewPool2;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    public void i0() {
        if (this.f18053e == null) {
            this.f18053e = (ViewGroup) findViewById(R.id.live_float_chat);
        }
        ViewGroup viewGroup = this.f18053e;
        if (viewGroup == null) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    @Override // android.app.Activity
    public boolean isInPictureInPictureMode() {
        if (Build.VERSION.SDK_INT >= 26) {
            return super.isInPictureInPictureMode();
        }
        return false;
    }

    public boolean k0() {
        ViewGroup viewGroup = this.f18053e;
        if (viewGroup != null) {
            return viewGroup.getChildCount() > 0 && this.f18053e.getVisibility() == 0;
        }
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.live_float_chat);
        return findFragmentById != null && findFragmentById.isAdded();
    }

    public void l0(BigGiftBoxFragment bigGiftBoxFragment) {
    }

    public void m0(BigGiftBoxFragment bigGiftBoxFragment) {
    }

    public void n0(LiveRoomModel liveRoomModel) {
        FirstRechargeDialog firstRechargeDialog = this.f18056h;
        if (firstRechargeDialog == null || !firstRechargeDialog.isAdded()) {
            return;
        }
        this.f18056h.dismissAllowingStateLoss();
        this.f18056h = null;
    }

    public void o0(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.utils.NetworkObserverHelper.OnNetworkChangeCallBack
    public void onChange(int i9) {
        int i10 = this.f18049a;
        if ((i10 == -1 || i10 == 0) && i9 != 0) {
            p0(i9);
        }
        this.f18049a = i9;
        if (i9 == 0) {
            o0(i9);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        this.f18050b = new KeyboardHeightProvider(this, getWindow().getDecorView());
        getWindow().getDecorView().post(new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        getWindow().setFormat(-2);
        getWindow().setBackgroundDrawableResource(R.color.transparent);
        getWindow().addFlags(128);
        super.onCreate(bundle);
        i.u().registerOnServerConfigChangedListener(this);
        NetworkObserverHelper create = NetworkObserverHelper.create(this);
        this.f18052d = create;
        create.register(this);
        com.guochao.faceshow.aaspring.manager.im.b.l0().P0();
        Foreground.get().registerStateChangedListener(this);
        com.guochao.faceshow.aaspring.manager.im.b.l0().registerGroupDismissListener(this);
        com.guochao.faceshow.aaspring.manager.im.b.l0().x(this);
        MiniGameDataManager.getInstance().loadData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (!this.f18054f) {
            release(true);
        }
        super.onDestroy();
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10) {
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10, int i11) {
        j jVar = new j();
        jVar.f60141b = i9;
        jVar.f60142c = i11;
        EventBus.getDefault().post(jVar);
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (e0() != null) {
            e0().onNewMessage(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f18050b.setKeyboardHeightObserver(null);
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public /* synthetic */ void onRecvMessageRevoked(String str) {
        a8.b.a(this, str);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f18050b.setKeyboardHeightObserver(this);
        if (getWindow() != null && getWindow().getDecorView() != null) {
            int screenHeight = ScreenTools.getScreenHeight() + NavigationBarUtils.getBottomStatusHeight(this);
            int height = getWindow().getDecorView().getHeight();
            if ("moto g 5G plus".equals(SystemUtil.getSystemModel()) && screenHeight != height) {
                getWindow().getDecorView().requestLayout();
            }
        }
        if (this.f18057i) {
            r0();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle, @NonNull PersistableBundle persistableBundle) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.manager.i.InterfaceC0154i
    public void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2) {
        super.onServerConfigChanged(serverConfig, serverConfig2);
        if (e0() != null) {
            e0().onServerConfigChanged(serverConfig, serverConfig2);
        }
    }

    public void p0(int i9) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q0() {
        if (isDestroyed() || isFinishing() || getCurrentUser().getRecharged() == 1 || e0().getCurrentLiveRoom().isVoiceRoom()) {
            return;
        }
        FirstRechargeManager firstRechargeManager = FirstRechargeManager.INSTANCE;
        if (firstRechargeManager.isFirstRechargeAutoShown()) {
            return;
        }
        firstRechargeManager.autoShowFirstRecharge();
        for (Fragment fragment : getSupportFragmentManager().getFragments()) {
            if ((fragment instanceof FirstRechargeDialog) && !fragment.isDetached() && ((FirstRechargeDialog) fragment).isShow()) {
                return;
            }
        }
        for (Fragment fragment2 : getSupportFragmentManager().getFragments()) {
            if ((fragment2 instanceof BaseLiveRoomFragment) && fragment2.isAdded() && !fragment2.isDetached() && fragment2.getView() != null) {
                ViewGroup viewGroup = (ViewGroup) fragment2.getView().findViewById(R.id.first_recharge_lay);
                int[] iArr = new int[2];
                viewGroup.getLocationOnScreen(iArr);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(iArr[0]));
                arrayList.add(Integer.valueOf(iArr[0] + viewGroup.getMeasuredWidth()));
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(Integer.valueOf(iArr[1]));
                arrayList2.add(Integer.valueOf(iArr[1] + viewGroup.getMeasuredHeight()));
                this.f18056h = FirstRechargeDialog.showDialog(arrayList, arrayList2, 1);
                return;
            }
        }
    }

    public void r0() {
        if (!getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            this.f18057i = true;
            return;
        }
        for (int backStackEntryCount = getSupportFragmentManager().getBackStackEntryCount(); backStackEntryCount > 0; backStackEntryCount--) {
            getSupportFragmentManager().popBackStackImmediate();
        }
        ViewGroup viewGroup = this.f18053e;
        if (viewGroup != null && viewGroup.getVisibility() == 8) {
            this.f18053e.setVisibility(0);
        }
        this.f18057i = false;
    }

    public void release(boolean z10) {
        this.f18054f = true;
        KeyboardHeightProvider keyboardHeightProvider = this.f18050b;
        if (keyboardHeightProvider != null) {
            keyboardHeightProvider.close();
        }
        Foreground.get().unregisterStateChangedListener(this);
        NetworkObserverHelper networkObserverHelper = this.f18052d;
        if (networkObserverHelper != null) {
            networkObserverHelper.destroy(this);
        }
        for (Fragment fragment : getSupportFragmentManager().getFragments()) {
            if (fragment instanceof BaseLiveRoomFragment) {
                ((BaseLiveRoomFragment) fragment).w3();
            }
        }
        UserStateHolder.setLiving(false);
        HandlerGetter.getMainHandler().removeCallbacks(this.f18055g);
        c9.a.i().d();
        i.u().unregisterOnServerConfigChangedListener(this);
        com.guochao.faceshow.aaspring.manager.im.b.l0().unregisterGroupDismissListener(this);
        com.guochao.faceshow.aaspring.manager.im.b.l0().G(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }

    public void t0() {
        if (s0() && !e0().getCurrentGCLiveRoomModel().isVoiceRoom()) {
            if (!e0().getCurrentLiveRoom().isBroadCaster() || e0().getCurrentLiveRoom().isMultiLiveRoom()) {
                HandlerGetter.getMainHandler().postDelayed(this.f18055g, 180000L);
            }
        }
    }

    public void updatePipParams(View view) {
    }

    public void finish(boolean z10) {
        if (z10 && !AppManager.getInstance().containActivity(MainActivity.class)) {
            startActivity(new Intent(getActivity(), MainActivity.class).addFlags(67108864));
        }
        super.finish();
        if (!this.f18054f) {
            release(z10);
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().W();
        UserStateHolder.setWatchingLive(false);
        overridePendingTransition(R.anim.do_nothing, R.anim.top_to_bottom);
        LiveActivityObserver.d().h();
    }
}

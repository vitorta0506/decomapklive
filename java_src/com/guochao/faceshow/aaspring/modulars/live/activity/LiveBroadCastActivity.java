package com.guochao.faceshow.aaspring.modulars.live.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveOverResult;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveMoreDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.fragment.HealthLiveTipsFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.mine.view.PIPSettingsActivity;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import d9.g;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import y7.q;
/* loaded from: classes3.dex */
public class LiveBroadCastActivity extends BaseLiveActivity {

    /* renamed from: j  reason: collision with root package name */
    public BroadCastFragment f18066j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f18067k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private LiveOverResult f18068l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f18069m = true;

    /* loaded from: classes3.dex */
    class a implements e.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                if (UserStateHolder.isLiving()) {
                    UserStateHolder.setLiving(false);
                    LiveBroadCastActivity.this.f18066j.w5();
                    LiveBroadCastActivity.this.f18069m = true;
                    return;
                }
                LiveBroadCastActivity.super.onBackPressed();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            d.a(this, eVar);
        }
    }

    public void A0(@Nullable LiveOverResult liveOverResult) {
        this.f18068l = liveOverResult;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        BroadCastFragment broadCastFragment = this.f18066j;
        if (broadCastFragment != null) {
            broadCastFragment.g5(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public g e0() {
        return this.f18066j;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.do_nothing, R.anim.top_to_bottom);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_live_broadcast_v2;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (EventBus.getDefault().isRegistered(this)) {
            return;
        }
        EventBus.getDefault().register(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void n0(LiveRoomModel liveRoomModel) {
        super.n0(liveRoomModel);
        this.f18067k = true;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void o0(int i9) {
        super.o0(i9);
        BroadCastFragment broadCastFragment = this.f18066j;
        if (broadCastFragment != null) {
            broadCastFragment.onNetworkLose(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        BroadCastFragment broadCastFragment = this.f18066j;
        if (broadCastFragment != null) {
            broadCastFragment.onActivityResult(i9, i10, intent);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        ViewGroup viewGroup = this.f18053e;
        if (viewGroup != null && viewGroup.getVisibility() == 8) {
            r0();
        }
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            getSupportFragmentManager().popBackStackImmediate();
        } else if (this.f18069m) {
            super.onBackPressed();
        } else if (this.f18066j.k5()) {
            this.f18066j.t5();
        } else {
            alert(null, getResources().getString(R.string.live_sure_close), new a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        getWindow().addFlags(128);
        VoiceRoomMiniHelper.releaseAll();
        super.onCreate(bundle);
        if (bundle != null) {
            Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.content);
            if (findFragmentById instanceof BroadCastFragment) {
                getSupportFragmentManager().beginTransaction().remove(findFragmentById).commitAllowingStateLoss();
            }
        }
        if (this.f18066j == null) {
            this.f18066j = new BroadCastFragment();
            getSupportFragmentManager().beginTransaction().replace(R.id.content, this.f18066j).commitAllowingStateLoss();
        }
        PIPSettingsActivity.Companion.finishWatcherActivity();
        if (HealthLiveTipsFragment.checkShouldShow(0)) {
            new HealthLiveTipsFragment().show(getSupportFragmentManager(), "live_show");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        UserStateHolder.setLiving(false);
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterBackground() {
        BroadCastFragment broadCastFragment = this.f18066j;
        if (broadCastFragment != null) {
            broadCastFragment.onEnterBackground();
        }
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterForeground() {
        BroadCastFragment broadCastFragment = this.f18066j;
        if (broadCastFragment != null) {
            broadCastFragment.onEnterForeground();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(String str) {
        if ("finishActivity".equals(str)) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        BroadCastFragment broadCastFragment = this.f18066j;
        if (broadCastFragment != null) {
            broadCastFragment.m5(intent);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void p0(int i9) {
        super.p0(i9);
        BroadCastFragment broadCastFragment = this.f18066j;
        if (broadCastFragment != null) {
            broadCastFragment.onNetworkResume(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void q0() {
        if (this.f18067k) {
            return;
        }
        super.q0();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity
    public void release(boolean z10) {
        super.release(z10);
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().v(null);
        LiveMoreDialogFragment.b2();
        LivePlayerProvider.beautyManager().destroyOnMainThread();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        BroadCastFragment broadCastFragment = this.f18066j;
        if (broadCastFragment != null) {
            broadCastFragment.onQuitLiveRoom(true, false);
        }
        UserStateHolder.setLiving(false);
        UserStateHolder.setIsLivingInMic(false);
        LiveOverResult liveOverResult = this.f18068l;
        if (liveOverResult != null) {
            try {
                if (Integer.parseInt(liveOverResult.getFcoin()) >= 1000) {
                    EventBus.getDefault().post(new q());
                }
            } catch (Exception unused) {
            }
        }
    }

    public boolean y0() {
        return this.f18067k;
    }
}

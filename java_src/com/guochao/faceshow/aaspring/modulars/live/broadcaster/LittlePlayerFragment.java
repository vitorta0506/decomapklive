package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.common.u;
import com.guochao.player.GCLivePlayer;
import com.guochao.player.base.ILivePlayer;
import java.util.List;
import java.util.Objects;
import jc.f;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class LittlePlayerFragment extends BaseLiveInfoFragment implements ILivePlayer.PlayEventListener {

    /* renamed from: a  reason: collision with root package name */
    private GCLivePlayer f18445a;

    /* renamed from: b  reason: collision with root package name */
    public LiveInfoMatchBean f18446b;

    /* renamed from: c  reason: collision with root package name */
    Handler f18447c = new Handler(Looper.getMainLooper());
    @BindView
    ImageView mImageViewAvatar;
    @BindView
    FrameLayout mTXCloudVideoView;
    @BindView
    TextView mTextViewCountDown;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LittlePlayerFragment.this.mImageViewAvatar.setVisibility(0);
            hc.a.g(LittlePlayerFragment.this.mImageViewAvatar, Uri.parse("file:///android_asset/leave_bj01.png"));
        }
    }

    public static LittlePlayerFragment P1(LiveInfoMatchBean liveInfoMatchBean) {
        LittlePlayerFragment littlePlayerFragment = new LittlePlayerFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", liveInfoMatchBean);
        littlePlayerFragment.setArguments(bundle);
        return littlePlayerFragment;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_little_pusher;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        this.f18445a.startPlayAcc(this.f18446b.getJsUrl(), this.f18446b.getStreamId(), this.mTXCloudVideoView);
        hc.a.i(this.mImageViewAvatar, this.f18446b.getAvatarUrl(), R.mipmap.default_head, new f(25, 2, Color.parseColor("#66000000")));
        u.j(3, 0, this.mTextViewCountDown);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onConnectToServer(String str, ILivePlayer iLivePlayer) {
        com.guochao.player.base.a.a(this, str, iLivePlayer);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f18446b = (LiveInfoMatchBean) getArguments().getParcelable("data");
        }
        GCLivePlayer player = LivePlayerProvider.player();
        this.f18445a = player;
        player.addPlayEventListener(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f18445a.removePlayEventListener(this);
        this.f18445a.stopPlay(this.f18446b.getStreamId());
        this.f18447c.removeMessages(0);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onDrawFirstFrame(@NotNull String str, @NotNull ILivePlayer iLivePlayer) {
        this.mImageViewAvatar.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.f18445a.pause(this.f18446b.getStreamId());
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

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f18445a.resume(this.f18446b.getStreamId());
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onVideoLoading(@NonNull String str, @Nullable Bundle bundle) {
        if (Objects.equals(str, this.f18446b.getStreamId())) {
            this.f18447c.postDelayed(new a(), 15000L);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onVideoPlaying(@NonNull String str, @Nullable Bundle bundle) {
        if (Objects.equals(str, this.f18446b.getStreamId())) {
            this.f18447c.removeMessages(0);
            this.mImageViewAvatar.setVisibility(8);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onVideoSizeChanged(String str, int i9, int i10) {
        com.guochao.player.base.a.i(this, str, i9, i10);
    }
}

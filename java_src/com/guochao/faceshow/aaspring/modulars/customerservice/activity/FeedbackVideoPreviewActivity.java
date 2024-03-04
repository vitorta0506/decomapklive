package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a3;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.o;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.s1;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.x1;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.utils.DynamicVideoPlayer;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import com.guochao.faceshow.utils.TCConstants;
import com.tencent.rtmp.ITXVodPlayListener;
import com.tencent.rtmp.TXVodPlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import h3.z;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import k3.y;
import v2.d0;
import x2.e;
/* loaded from: classes3.dex */
public class FeedbackVideoPreviewActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    b f17430a;
    @BindView
    ImageView mImageViewPlayBtn;
    @BindView
    ImageView mImageViewPlayCenter;
    @BindView
    SeekBar mSeekBar;
    @BindView
    PlayerView mSimpleExoPlayerView;
    @BindView
    TXCloudVideoView mTXCloudVideoView;
    @BindView
    TextView mTextViewCurrent;
    @BindView
    TextView mTextViewDuration;

    /* loaded from: classes3.dex */
    static class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private PlayerView f17431a;

        /* renamed from: b  reason: collision with root package name */
        private FeedbackVideoPreviewActivity f17432b;

        /* renamed from: c  reason: collision with root package name */
        q f17433c;

        /* renamed from: d  reason: collision with root package name */
        Timer f17434d;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0167a implements l2.d {
            C0167a() {
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void A(int i9) {
                n2.p(this, i9);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void B(boolean z10) {
                n2.i(this, z10);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void C(l2.b bVar) {
                n2.a(this, bVar);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public void F(i3 i3Var, int i9) {
                long duration = a.this.f17433c.getDuration();
                a.this.f17432b.mTextViewDuration.setText(StringUtils.formatTime(duration));
                a.this.f17432b.mSeekBar.setMax((int) duration);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void G(int i9) {
                n2.o(this, i9);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void I(o oVar) {
                n2.d(this, oVar);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void K(x1 x1Var) {
                n2.k(this, x1Var);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void L(boolean z10) {
                n2.y(this, z10);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void N(int i9, boolean z10) {
                n2.e(this, i9, z10);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void O() {
                n2.v(this);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void R(int i9, int i10) {
                n2.A(this, i9, i10);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void S(PlaybackException playbackException) {
                n2.r(this, playbackException);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void T(z zVar) {
                n2.C(this, zVar);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void U(int i9) {
                n2.t(this, i9);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void W(n3 n3Var) {
                n2.D(this, n3Var);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void X(boolean z10) {
                n2.g(this, z10);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void Y() {
                n2.x(this);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void Z(PlaybackException playbackException) {
                n2.q(this, playbackException);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void a(boolean z10) {
                n2.z(this, z10);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void f0(l2 l2Var, l2.c cVar) {
                n2.f(this, l2Var, cVar);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void g(Metadata metadata) {
                n2.l(this, metadata);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void g0(boolean z10, int i9) {
                n2.s(this, z10, i9);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void h0(s1 s1Var, int i9) {
                n2.j(this, s1Var, i9);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void j0(boolean z10, int i9) {
                n2.m(this, z10, i9);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void k(e eVar) {
                n2.c(this, eVar);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void l(List list) {
                n2.b(this, list);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public void m0(boolean z10) {
                if (z10) {
                    a.this.f17432b.mImageViewPlayBtn.setImageResource(R.mipmap.icon_play_btn);
                    a.this.f17432b.mImageViewPlayCenter.setVisibility(8);
                    return;
                }
                a.this.f17432b.mImageViewPlayBtn.setImageResource(R.mipmap.icon_suspend_btn);
                a.this.f17432b.mImageViewPlayCenter.setVisibility(0);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void n(y yVar) {
                n2.E(this, yVar);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void onRepeatModeChanged(int i9) {
                n2.w(this, i9);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void q(k2 k2Var) {
                n2.n(this, k2Var);
            }

            @Override // com.google.android.exoplayer2.l2.d
            public /* synthetic */ void z(l2.e eVar, l2.e eVar2, int i9) {
                n2.u(this, eVar, eVar2, i9);
            }
        }

        /* loaded from: classes3.dex */
        class b extends TimerTask {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC0168a implements Runnable {
                RunnableC0168a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f17432b.mSeekBar.setProgress((int) a.this.f17433c.getCurrentPosition());
                    a.this.f17432b.mTextViewCurrent.setText(StringUtils.formatTime(a.this.f17433c.getCurrentPosition()));
                }
            }

            b() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                a.this.f17432b.runOnUiThread(new RunnableC0168a());
            }
        }

        public a(FeedbackVideoPreviewActivity feedbackVideoPreviewActivity, PlayerView playerView) {
            this.f17431a = playerView;
            playerView.setVisibility(0);
            this.f17432b = feedbackVideoPreviewActivity;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        void a() {
            super.a();
            Timer timer = this.f17434d;
            if (timer != null) {
                timer.cancel();
            }
            this.f17433c.C(true);
            this.f17433c.release();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        public boolean b() {
            return this.f17433c.isPlaying();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        void c() {
            this.f17433c.l(false);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        void d() {
            super.d();
            this.f17433c.l(true);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        void e(Uri uri) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            a3 a10 = new a3.a(BaseApplication.getInstance()).a();
            this.f17433c = a10;
            this.f17431a.setPlayer(a10);
            this.f17433c.a(new d0.b(new j3.q(baseApplication, "ExoPlayer")).b(s1.d(uri)));
            this.f17433c.K(new C0167a());
            Timer timer = new Timer();
            this.f17434d = timer;
            timer.schedule(new b(), 0L, 1000L);
            this.f17433c.setRepeatMode(2);
        }
    }

    /* loaded from: classes3.dex */
    static class b {
        b() {
        }

        void a() {
        }

        public boolean b() {
            throw null;
        }

        void c() {
        }

        void d() {
        }

        void e(Uri uri) {
        }
    }

    /* loaded from: classes3.dex */
    static class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final FeedbackVideoPreviewActivity f17438a;

        /* renamed from: b  reason: collision with root package name */
        TXVodPlayer f17439b;

        /* loaded from: classes3.dex */
        class a implements ITXVodPlayListener {
            a() {
            }

            @Override // com.tencent.rtmp.ITXVodPlayListener
            public void onNetStatus(TXVodPlayer tXVodPlayer, Bundle bundle) {
            }

            @Override // com.tencent.rtmp.ITXVodPlayListener
            public void onPlayEvent(TXVodPlayer tXVodPlayer, int i9, Bundle bundle) {
                if (i9 != 2005) {
                    return;
                }
                int i10 = bundle.getInt("EVT_PLAY_PROGRESS_MS");
                int i11 = bundle.getInt("EVT_PLAY_DURATION_MS");
                c.this.f17438a.mTextViewDuration.setText(StringUtils.formatTime(i11));
                c.this.f17438a.mSeekBar.setMax(i11);
                c.this.f17438a.mSeekBar.setProgress(i10);
                c.this.f17438a.mTextViewCurrent.setText(StringUtils.formatTime(i10));
            }
        }

        public c(FeedbackVideoPreviewActivity feedbackVideoPreviewActivity, TXCloudVideoView tXCloudVideoView) {
            this.f17438a = feedbackVideoPreviewActivity;
            tXCloudVideoView.setVisibility(0);
            TXVodPlayer createPlayer = DynamicVideoPlayer.getInstance().createPlayer(BaseApplication.getInstance());
            this.f17439b = createPlayer;
            createPlayer.setPlayerView(tXCloudVideoView);
            this.f17439b.setVodListener(new a());
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        void a() {
            super.a();
            this.f17439b.stopPlay(false);
            this.f17439b.setVodListener(null);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        public boolean b() {
            return this.f17439b.isPlaying();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        void c() {
            super.c();
            this.f17438a.mImageViewPlayBtn.setImageResource(R.mipmap.icon_suspend_btn);
            this.f17438a.mImageViewPlayCenter.setVisibility(0);
            if (this.f17439b.isPlaying()) {
                this.f17439b.pause();
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        void d() {
            super.d();
            this.f17438a.mImageViewPlayBtn.setImageResource(R.mipmap.icon_play_btn);
            this.f17438a.mImageViewPlayCenter.setVisibility(8);
            if (this.f17439b.isPlaying()) {
                return;
            }
            this.f17439b.resume();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackVideoPreviewActivity.b
        void e(Uri uri) {
            super.e(uri);
            this.f17439b.startVodPlay(uri.toString());
        }
    }

    @OnClick
    public void click(View view) {
        b bVar = this.f17430a;
        if (bVar == null) {
            return;
        }
        if (bVar.b()) {
            this.f17430a.c();
        } else {
            this.f17430a.d();
        }
    }

    @OnClick
    public void clickView(View view) {
        b bVar = this.f17430a;
        if (bVar == null) {
            return;
        }
        bVar.d();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).f(0).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_feedback_video_preview;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        TitleBackgroundView titleBackgroundView = (TitleBackgroundView) findViewById(R.id.float_title_back);
        titleBackgroundView.setBackgroundResource(R.color.real_black);
        titleBackgroundView.b(Color.parseColor("#DDDDDD"), 1);
        Uri uri = (Uri) getIntent().getParcelableExtra(TCConstants.VIDEO_RECORD_VIDEPATH);
        if (uri == null) {
            finish();
            return;
        }
        if (!TextUtils.isEmpty(uri.getScheme()) && uri.getScheme().startsWith("http")) {
            this.f17430a = new c(this, this.mTXCloudVideoView);
        } else {
            this.f17430a = new a(this, this.mSimpleExoPlayerView);
        }
        this.f17430a.e(uri);
        setTitle("");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        b bVar = this.f17430a;
        if (bVar == null) {
            return;
        }
        bVar.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        b bVar = this.f17430a;
        if (bVar == null) {
            return;
        }
        bVar.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        b bVar = this.f17430a;
        if (bVar == null) {
            return;
        }
        bVar.d();
    }
}

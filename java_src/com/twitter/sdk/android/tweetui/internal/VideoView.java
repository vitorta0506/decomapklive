package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.twitter.sdk.android.tweetui.internal.VideoControlView;
/* loaded from: classes4.dex */
public class VideoView extends SurfaceView implements VideoControlView.c {
    SurfaceHolder.Callback A;

    /* renamed from: a  reason: collision with root package name */
    private String f35497a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f35498b;

    /* renamed from: c  reason: collision with root package name */
    private int f35499c;

    /* renamed from: d  reason: collision with root package name */
    private int f35500d;

    /* renamed from: e  reason: collision with root package name */
    private SurfaceHolder f35501e;

    /* renamed from: f  reason: collision with root package name */
    private MediaPlayer f35502f;

    /* renamed from: g  reason: collision with root package name */
    private int f35503g;

    /* renamed from: h  reason: collision with root package name */
    private int f35504h;

    /* renamed from: i  reason: collision with root package name */
    private int f35505i;

    /* renamed from: j  reason: collision with root package name */
    private int f35506j;

    /* renamed from: k  reason: collision with root package name */
    private int f35507k;

    /* renamed from: l  reason: collision with root package name */
    private VideoControlView f35508l;

    /* renamed from: m  reason: collision with root package name */
    private MediaPlayer.OnCompletionListener f35509m;

    /* renamed from: n  reason: collision with root package name */
    private MediaPlayer.OnPreparedListener f35510n;

    /* renamed from: o  reason: collision with root package name */
    private int f35511o;

    /* renamed from: p  reason: collision with root package name */
    private MediaPlayer.OnErrorListener f35512p;

    /* renamed from: q  reason: collision with root package name */
    private MediaPlayer.OnInfoListener f35513q;

    /* renamed from: r  reason: collision with root package name */
    private int f35514r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f35515s;

    /* renamed from: t  reason: collision with root package name */
    MediaPlayer.OnVideoSizeChangedListener f35516t;

    /* renamed from: u  reason: collision with root package name */
    MediaPlayer.OnPreparedListener f35517u;

    /* renamed from: v  reason: collision with root package name */
    private MediaPlayer.OnCompletionListener f35518v;

    /* renamed from: w  reason: collision with root package name */
    private MediaPlayer.OnInfoListener f35519w;

    /* renamed from: x  reason: collision with root package name */
    private MediaPlayer.OnErrorListener f35520x;

    /* renamed from: y  reason: collision with root package name */
    private MediaPlayer.OnBufferingUpdateListener f35521y;

    /* renamed from: z  reason: collision with root package name */
    private GestureDetector f35522z;

    /* loaded from: classes4.dex */
    class a implements MediaPlayer.OnVideoSizeChangedListener {
        a() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i9, int i10) {
            VideoView.this.f35504h = mediaPlayer.getVideoWidth();
            VideoView.this.f35505i = mediaPlayer.getVideoHeight();
            if (VideoView.this.f35504h == 0 || VideoView.this.f35505i == 0) {
                return;
            }
            VideoView.this.getHolder().setFixedSize(VideoView.this.f35504h, VideoView.this.f35505i);
            VideoView.this.requestLayout();
        }
    }

    /* loaded from: classes4.dex */
    class b implements MediaPlayer.OnPreparedListener {
        b() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            VideoView.this.f35499c = 2;
            if (VideoView.this.f35510n != null) {
                VideoView.this.f35510n.onPrepared(VideoView.this.f35502f);
            }
            if (VideoView.this.f35508l != null) {
                VideoView.this.f35508l.setEnabled(true);
            }
            VideoView.this.f35504h = mediaPlayer.getVideoWidth();
            VideoView.this.f35505i = mediaPlayer.getVideoHeight();
            int i9 = VideoView.this.f35514r;
            if (i9 != 0) {
                VideoView.this.seekTo(i9);
            }
            if (VideoView.this.f35504h != 0 && VideoView.this.f35505i != 0) {
                VideoView.this.getHolder().setFixedSize(VideoView.this.f35504h, VideoView.this.f35505i);
                if (VideoView.this.f35506j == VideoView.this.f35504h && VideoView.this.f35507k == VideoView.this.f35505i) {
                    if (VideoView.this.f35500d == 3) {
                        VideoView.this.start();
                        if (VideoView.this.f35508l != null) {
                            VideoView.this.f35508l.m();
                        }
                    } else if (VideoView.this.isPlaying()) {
                    } else {
                        if ((i9 != 0 || VideoView.this.getCurrentPosition() > 0) && VideoView.this.f35508l != null) {
                            VideoView.this.f35508l.m();
                        }
                    }
                }
            } else if (VideoView.this.f35500d == 3) {
                VideoView.this.start();
            }
        }
    }

    /* loaded from: classes4.dex */
    class c implements MediaPlayer.OnCompletionListener {
        c() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            VideoView.this.f35499c = 5;
            VideoView.this.f35500d = 5;
            if (VideoView.this.f35509m != null) {
                VideoView.this.f35509m.onCompletion(VideoView.this.f35502f);
            }
        }
    }

    /* loaded from: classes4.dex */
    class d implements MediaPlayer.OnInfoListener {
        d() {
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i9, int i10) {
            if (VideoView.this.f35513q != null) {
                VideoView.this.f35513q.onInfo(mediaPlayer, i9, i10);
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes4.dex */
    class e implements MediaPlayer.OnErrorListener {
        e() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i9, int i10) {
            String str = VideoView.this.f35497a;
            Log.d(str, "Error: " + i9 + "," + i10);
            VideoView.this.f35499c = -1;
            VideoView.this.f35500d = -1;
            if (VideoView.this.f35508l != null) {
                VideoView.this.f35508l.e();
            }
            if (VideoView.this.f35512p != null) {
                VideoView.this.f35512p.onError(VideoView.this.f35502f, i9, i10);
            }
            return true;
        }
    }

    /* loaded from: classes4.dex */
    class f implements MediaPlayer.OnBufferingUpdateListener {
        f() {
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i9) {
            VideoView.this.f35511o = i9;
        }
    }

    /* loaded from: classes4.dex */
    class g extends GestureDetector.SimpleOnGestureListener {
        g() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (!VideoView.this.B() || VideoView.this.f35508l == null) {
                return false;
            }
            VideoView.this.G();
            return false;
        }
    }

    /* loaded from: classes4.dex */
    class h implements SurfaceHolder.Callback {
        h() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i9, int i10, int i11) {
            VideoView.this.f35506j = i10;
            VideoView.this.f35507k = i11;
            boolean z10 = true;
            boolean z11 = VideoView.this.f35500d == 3;
            z10 = (VideoView.this.f35504h == i10 && VideoView.this.f35505i == i11) ? false : false;
            if (VideoView.this.f35502f != null && z11 && z10) {
                if (VideoView.this.f35514r != 0) {
                    VideoView videoView = VideoView.this;
                    videoView.seekTo(videoView.f35514r);
                }
                VideoView.this.start();
                if (VideoView.this.f35508l != null) {
                    VideoView.this.f35508l.m();
                }
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            VideoView.this.f35501e = surfaceHolder;
            VideoView.this.C();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            VideoView.this.f35501e = null;
            if (VideoView.this.f35508l != null) {
                VideoView.this.f35508l.e();
            }
            VideoView.this.D(true);
        }
    }

    public VideoView(Context context) {
        super(context);
        this.f35497a = "VideoView";
        this.f35499c = 0;
        this.f35500d = 0;
        this.f35501e = null;
        this.f35502f = null;
        this.f35516t = new a();
        this.f35517u = new b();
        this.f35518v = new c();
        this.f35519w = new d();
        this.f35520x = new e();
        this.f35521y = new f();
        this.f35522z = new GestureDetector(getContext(), new g());
        this.A = new h();
        A();
    }

    private void A() {
        this.f35504h = 0;
        this.f35505i = 0;
        getHolder().addCallback(this.A);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setClickable(true);
        requestFocus();
        this.f35499c = 0;
        this.f35500d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean B() {
        int i9;
        return (this.f35502f == null || (i9 = this.f35499c) == -1 || i9 == 0 || i9 == 1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        if (this.f35498b == null || this.f35501e == null) {
            return;
        }
        D(false);
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f35502f = mediaPlayer;
            int i9 = this.f35503g;
            if (i9 != 0) {
                mediaPlayer.setAudioSessionId(i9);
            } else {
                this.f35503g = mediaPlayer.getAudioSessionId();
            }
            this.f35502f.setOnPreparedListener(this.f35517u);
            this.f35502f.setOnVideoSizeChangedListener(this.f35516t);
            this.f35502f.setOnCompletionListener(this.f35518v);
            this.f35502f.setOnErrorListener(this.f35520x);
            this.f35502f.setOnInfoListener(this.f35519w);
            this.f35502f.setOnBufferingUpdateListener(this.f35521y);
            this.f35511o = 0;
            this.f35502f.setLooping(this.f35515s);
            this.f35502f.setDataSource(getContext(), this.f35498b);
            this.f35502f.setDisplay(this.f35501e);
            this.f35502f.setAudioStreamType(3);
            this.f35502f.setScreenOnWhilePlaying(true);
            this.f35502f.prepareAsync();
            this.f35499c = 1;
            z();
        } catch (Exception e10) {
            String str = this.f35497a;
            Log.w(str, "Unable to open content: " + this.f35498b, e10);
            this.f35499c = -1;
            this.f35500d = -1;
            this.f35520x.onError(this.f35502f, 1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(boolean z10) {
        MediaPlayer mediaPlayer = this.f35502f;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f35502f.release();
            this.f35502f = null;
            this.f35499c = 0;
            if (z10) {
                this.f35500d = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        if (this.f35508l.g()) {
            this.f35508l.e();
        } else {
            this.f35508l.m();
        }
    }

    private void z() {
        VideoControlView videoControlView;
        if (this.f35502f == null || (videoControlView = this.f35508l) == null) {
            return;
        }
        videoControlView.setMediaPlayer(this);
        this.f35508l.setEnabled(B());
    }

    public void E(Uri uri, boolean z10) {
        this.f35498b = uri;
        this.f35515s = z10;
        this.f35514r = 0;
        C();
        requestLayout();
        invalidate();
    }

    public void F() {
        MediaPlayer mediaPlayer = this.f35502f;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f35502f.release();
            this.f35502f = null;
            this.f35499c = 0;
            this.f35500d = 0;
        }
    }

    @Override // com.twitter.sdk.android.tweetui.internal.VideoControlView.c
    public int getBufferPercentage() {
        if (this.f35502f != null) {
            return this.f35511o;
        }
        return 0;
    }

    @Override // com.twitter.sdk.android.tweetui.internal.VideoControlView.c
    public int getCurrentPosition() {
        if (B()) {
            return this.f35502f.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.twitter.sdk.android.tweetui.internal.VideoControlView.c
    public int getDuration() {
        if (B()) {
            return this.f35502f.getDuration();
        }
        return -1;
    }

    @Override // com.twitter.sdk.android.tweetui.internal.VideoControlView.c
    public boolean isPlaying() {
        return B() && this.f35502f.isPlaying();
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        boolean z10 = (i9 == 4 || i9 == 24 || i9 == 25 || i9 == 82 || i9 == 5 || i9 == 6) ? false : true;
        if (B() && z10 && this.f35508l != null) {
            if (i9 == 79 || i9 == 85) {
                if (this.f35502f.isPlaying()) {
                    pause();
                    this.f35508l.m();
                } else {
                    start();
                    this.f35508l.e();
                }
                return true;
            } else if (i9 == 126) {
                if (!this.f35502f.isPlaying()) {
                    start();
                    this.f35508l.e();
                }
                return true;
            } else if (i9 != 86 && i9 != 127) {
                G();
            } else {
                if (this.f35502f.isPlaying()) {
                    pause();
                    this.f35508l.m();
                }
                return true;
            }
        }
        return super.onKeyDown(i9, keyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0061, code lost:
        if (r1 > r6) goto L16;
     */
    @Override // android.view.SurfaceView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.f35504h
            int r0 = android.view.SurfaceView.getDefaultSize(r0, r6)
            int r1 = r5.f35505i
            int r1 = android.view.SurfaceView.getDefaultSize(r1, r7)
            int r2 = r5.f35504h
            if (r2 <= 0) goto L7f
            int r2 = r5.f35505i
            if (r2 <= 0) goto L7f
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L43
            if (r1 != r2) goto L43
            int r0 = r5.f35504h
            int r1 = r0 * r7
            int r2 = r5.f35505i
            int r3 = r6 * r2
            if (r1 >= r3) goto L38
            int r0 = r0 * r7
            int r0 = r0 / r2
            goto L66
        L38:
            int r1 = r0 * r7
            int r3 = r6 * r2
            if (r1 <= r3) goto L63
            int r2 = r2 * r6
            int r1 = r2 / r0
            goto L54
        L43:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L56
            int r0 = r5.f35505i
            int r0 = r0 * r6
            int r2 = r5.f35504h
            int r0 = r0 / r2
            if (r1 != r3) goto L53
            if (r0 <= r7) goto L53
            goto L63
        L53:
            r1 = r0
        L54:
            r0 = r6
            goto L7f
        L56:
            if (r1 != r2) goto L68
            int r1 = r5.f35504h
            int r1 = r1 * r7
            int r2 = r5.f35505i
            int r1 = r1 / r2
            if (r0 != r3) goto L65
            if (r1 <= r6) goto L65
        L63:
            r0 = r6
            goto L66
        L65:
            r0 = r1
        L66:
            r1 = r7
            goto L7f
        L68:
            int r2 = r5.f35504h
            int r4 = r5.f35505i
            if (r1 != r3) goto L74
            if (r4 <= r7) goto L74
            int r1 = r7 * r2
            int r1 = r1 / r4
            goto L76
        L74:
            r1 = r2
            r7 = r4
        L76:
            if (r0 != r3) goto L65
            if (r1 <= r6) goto L65
            int r4 = r4 * r6
            int r1 = r4 / r2
            goto L54
        L7f:
            r5.setMeasuredDimension(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.tweetui.internal.VideoView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f35522z.onTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
    }

    @Override // com.twitter.sdk.android.tweetui.internal.VideoControlView.c
    public void pause() {
        if (B() && this.f35502f.isPlaying()) {
            this.f35502f.pause();
            this.f35499c = 4;
        }
        this.f35500d = 4;
    }

    @Override // com.twitter.sdk.android.tweetui.internal.VideoControlView.c
    public void seekTo(int i9) {
        if (B()) {
            this.f35502f.seekTo(i9);
            this.f35514r = 0;
            return;
        }
        this.f35514r = i9;
    }

    public void setMediaController(VideoControlView videoControlView) {
        VideoControlView videoControlView2 = this.f35508l;
        if (videoControlView2 != null) {
            videoControlView2.e();
        }
        this.f35508l = videoControlView;
        z();
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.f35509m = onCompletionListener;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.f35512p = onErrorListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.f35513q = onInfoListener;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.f35510n = onPreparedListener;
    }

    @Override // com.twitter.sdk.android.tweetui.internal.VideoControlView.c
    public void start() {
        if (B()) {
            this.f35502f.start();
            this.f35499c = 3;
        }
        this.f35500d = 3;
    }

    public VideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f35497a = "VideoView";
        this.f35499c = 0;
        this.f35500d = 0;
        this.f35501e = null;
        this.f35502f = null;
        this.f35516t = new a();
        this.f35517u = new b();
        this.f35518v = new c();
        this.f35519w = new d();
        this.f35520x = new e();
        this.f35521y = new f();
        this.f35522z = new GestureDetector(getContext(), new g());
        this.A = new h();
        A();
    }
}

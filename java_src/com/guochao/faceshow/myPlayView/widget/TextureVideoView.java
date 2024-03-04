package com.guochao.faceshow.myPlayView.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.MediaExtractor;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import com.guochao.faceshow.R$styleable;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes4.dex */
public class TextureVideoView extends TextureView implements TextureView.SurfaceTextureListener, Handler.Callback, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnBufferingUpdateListener {

    /* renamed from: p  reason: collision with root package name */
    private static final HandlerThread f26041p;

    /* renamed from: a  reason: collision with root package name */
    private volatile int f26042a;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f26043b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f26044c;

    /* renamed from: d  reason: collision with root package name */
    private Context f26045d;

    /* renamed from: e  reason: collision with root package name */
    private Surface f26046e;

    /* renamed from: f  reason: collision with root package name */
    private MediaPlayer f26047f;

    /* renamed from: g  reason: collision with root package name */
    private AudioManager f26048g;

    /* renamed from: h  reason: collision with root package name */
    private i f26049h;

    /* renamed from: i  reason: collision with root package name */
    private Handler f26050i;

    /* renamed from: j  reason: collision with root package name */
    private Handler f26051j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f26052k;

    /* renamed from: l  reason: collision with root package name */
    private ScaleType f26053l;

    /* renamed from: m  reason: collision with root package name */
    private j f26054m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f26055n;

    /* renamed from: o  reason: collision with root package name */
    public int f26056o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Matrix f26057a;

        a(Matrix matrix) {
            this.f26057a = matrix;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextureVideoView.this.setTransform(this.f26057a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextureVideoView.this.f26049h != null) {
                TextureVideoView.this.f26049h.onError(TextureVideoView.this.f26047f, 1, 0);
            }
        }
    }

    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MediaPlayer f26060a;

        c(MediaPlayer mediaPlayer) {
            this.f26060a = mediaPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextureVideoView.this.f26049h != null) {
                TextureVideoView.this.f26049h.onCompletion(this.f26060a);
            }
        }
    }

    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MediaPlayer f26062a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f26063b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f26064c;

        d(MediaPlayer mediaPlayer, int i9, int i10) {
            this.f26062a = mediaPlayer;
            this.f26063b = i9;
            this.f26064c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextureVideoView.this.f26049h != null) {
                TextureVideoView.this.f26049h.onError(this.f26062a, this.f26063b, this.f26064c);
            }
        }
    }

    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MediaPlayer f26066a;

        e(MediaPlayer mediaPlayer) {
            this.f26066a = mediaPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextureVideoView.this.f26049h != null) {
                TextureVideoView.this.f26049h.onPrepared(this.f26066a);
            }
        }
    }

    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MediaPlayer f26068a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f26069b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f26070c;

        f(MediaPlayer mediaPlayer, int i9, int i10) {
            this.f26068a = mediaPlayer;
            this.f26069b = i9;
            this.f26070c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextureVideoView.this.f26049h != null) {
                TextureVideoView.this.f26049h.onVideoSizeChanged(this.f26068a, this.f26069b, this.f26070c);
            }
        }
    }

    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MediaPlayer f26072a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f26073b;

        g(MediaPlayer mediaPlayer, int i9) {
            this.f26072a = mediaPlayer;
            this.f26073b = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextureVideoView.this.f26049h != null) {
                TextureVideoView.this.f26049h.onBufferingUpdate(this.f26072a, this.f26073b);
            }
        }
    }

    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MediaPlayer f26075a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f26076b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f26077c;

        h(MediaPlayer mediaPlayer, int i9, int i10) {
            this.f26075a = mediaPlayer;
            this.f26076b = i9;
            this.f26077c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextureVideoView.this.f26049h != null) {
                TextureVideoView.this.f26049h.onInfo(this.f26075a, this.f26076b, this.f26077c);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface i {
        void onBufferingUpdate(MediaPlayer mediaPlayer, int i9);

        void onCompletion(MediaPlayer mediaPlayer);

        boolean onError(MediaPlayer mediaPlayer, int i9, int i10);

        boolean onInfo(MediaPlayer mediaPlayer, int i9, int i10);

        void onPrepared(MediaPlayer mediaPlayer);

        void onVideoSizeChanged(MediaPlayer mediaPlayer, int i9, int i10);
    }

    /* loaded from: classes4.dex */
    public interface j {
    }

    static {
        HandlerThread handlerThread = new HandlerThread("VideoPlayThread");
        f26041p = handlerThread;
        handlerThread.start();
    }

    public TextureVideoView(Context context) {
        this(context, null);
    }

    private void c() {
        if (isInEditMode()) {
            return;
        }
        this.f26045d = getContext();
        this.f26042a = 0;
        this.f26043b = 0;
        this.f26050i = new Handler();
        this.f26051j = new Handler(f26041p.getLooper(), this);
        setSurfaceTextureListener(this);
    }

    private boolean d() {
        return (this.f26047f == null || this.f26042a == -1 || this.f26042a == 0 || this.f26042a == 1) ? false : true;
    }

    private void f() {
        if (this.f26044c == null || this.f26046e == null || this.f26043b != 3) {
            return;
        }
        AudioManager audioManager = (AudioManager) this.f26045d.getSystemService("audio");
        this.f26048g = audioManager;
        audioManager.requestAudioFocus(null, 3, 1);
        h(false);
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f26047f = mediaPlayer;
            mediaPlayer.setOnPreparedListener(this);
            this.f26047f.setOnVideoSizeChangedListener(this);
            this.f26047f.setOnCompletionListener(this);
            this.f26047f.setOnErrorListener(this);
            this.f26047f.setOnInfoListener(this);
            this.f26047f.setOnBufferingUpdateListener(this);
            this.f26047f.setDataSource(this.f26045d, this.f26044c);
            this.f26047f.setSurface(this.f26046e);
            this.f26047f.setAudioStreamType(3);
            this.f26047f.setLooping(this.f26055n);
            this.f26047f.prepareAsync();
            this.f26042a = 1;
            this.f26043b = 1;
            this.f26052k = true;
            try {
                MediaExtractor mediaExtractor = new MediaExtractor();
                mediaExtractor.setDataSource(this.f26045d, this.f26044c, (Map<String, String>) null);
                for (int i9 = 0; i9 < mediaExtractor.getTrackCount(); i9++) {
                    if (mediaExtractor.getTrackFormat(i9).getString("mime").startsWith("audio/")) {
                        this.f26052k = true;
                        return;
                    }
                }
            } catch (Exception unused) {
            }
        } catch (IOException | IllegalArgumentException unused2) {
            this.f26042a = -1;
            this.f26043b = -1;
            if (this.f26049h != null) {
                this.f26050i.post(new b());
            }
        }
    }

    private void h(boolean z10) {
        MediaPlayer mediaPlayer = this.f26047f;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f26047f.release();
            this.f26047f = null;
            this.f26042a = 0;
            if (z10) {
                this.f26043b = 0;
            }
        }
    }

    private void j(int i9, int i10) {
        Matrix m10;
        if (i9 == 0 || i10 == 0 || (m10 = new com.guochao.faceshow.myPlayView.widget.a(new za.a(getWidth(), getHeight()), new za.a(i9, i10)).m(this.f26053l)) == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            setTransform(m10);
        } else {
            this.f26050i.postAtFrontOfQueue(new a(m10));
        }
    }

    public boolean e() {
        return d() && this.f26047f.isPlaying();
    }

    public void g() {
        this.f26043b = 4;
        if (e()) {
            this.f26051j.obtainMessage(4).sendToTarget();
        }
    }

    public int getCurrentPosition() {
        if (d()) {
            return this.f26047f.getCurrentPosition();
        }
        return 0;
    }

    public int getDuration() {
        if (d()) {
            return this.f26047f.getDuration();
        }
        return -1;
    }

    public ScaleType getScaleType() {
        return this.f26053l;
    }

    public int getVideoHeight() {
        try {
            MediaPlayer mediaPlayer = this.f26047f;
            if (mediaPlayer != null) {
                return mediaPlayer.getVideoHeight();
            }
            return 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public int getVideoWidth() {
        try {
            MediaPlayer mediaPlayer = this.f26047f;
            if (mediaPlayer != null) {
                return mediaPlayer.getVideoWidth();
            }
            return 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        synchronized (TextureVideoView.class) {
            int i9 = message.what;
            if (i9 == 1) {
                f();
            } else if (i9 == 4) {
                MediaPlayer mediaPlayer = this.f26047f;
                if (mediaPlayer != null) {
                    mediaPlayer.pause();
                }
                this.f26042a = 4;
            } else if (i9 == 6) {
                h(true);
            } else if (i9 == 7) {
                MediaPlayer mediaPlayer2 = this.f26047f;
                if (mediaPlayer2 != null) {
                    mediaPlayer2.start();
                }
                this.f26042a = 7;
            }
        }
        return true;
    }

    public void i() {
        this.f26043b = 3;
        if (e()) {
            return;
        }
        this.f26051j.obtainMessage(7).sendToTarget();
    }

    public void k() {
        this.f26043b = 3;
        if (d()) {
            this.f26051j.obtainMessage(6).sendToTarget();
        }
        if (this.f26044c == null || this.f26046e == null) {
            return;
        }
        this.f26051j.obtainMessage(1).sendToTarget();
    }

    public void l() {
        this.f26043b = 5;
        if (d()) {
            this.f26051j.obtainMessage(6).sendToTarget();
        }
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i9) {
        if (this.f26049h != null) {
            this.f26050i.post(new g(mediaPlayer, i9));
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f26042a = 5;
        this.f26043b = 5;
        if (this.f26049h != null) {
            this.f26050i.post(new c(mediaPlayer));
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i9, int i10) {
        this.f26042a = -1;
        this.f26043b = -1;
        if (this.f26049h != null) {
            this.f26050i.post(new d(mediaPlayer, i9, i10));
            return true;
        }
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i9, int i10) {
        if (this.f26049h != null) {
            this.f26050i.post(new h(mediaPlayer, i9, i10));
            return true;
        }
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.f26056o = mediaPlayer.getDuration();
        if (this.f26043b == 1 && this.f26042a == 1) {
            this.f26042a = 2;
            if (d()) {
                this.f26047f.start();
                this.f26042a = 3;
                this.f26043b = 3;
            }
            if (this.f26049h != null) {
                this.f26050i.post(new e(mediaPlayer));
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i9, int i10) {
        this.f26046e = new Surface(surfaceTexture);
        if (this.f26043b == 3) {
            k();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f26046e = null;
        l();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i9, int i10) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i9, int i10) {
        j(i9, i10);
        if (this.f26049h != null) {
            this.f26050i.post(new f(mediaPlayer, i9, i10));
        }
    }

    public void setLoop(boolean z10) {
        this.f26055n = z10;
    }

    public void setMediaPlayerCallback(i iVar) {
        this.f26049h = iVar;
        if (iVar == null) {
            this.f26050i.removeCallbacksAndMessages(null);
        }
    }

    public void setProgressCallback(j jVar) {
        this.f26054m = jVar;
        if (jVar == null) {
            this.f26050i.removeCallbacksAndMessages(null);
        }
    }

    public void setScaleType(ScaleType scaleType) {
        this.f26053l = scaleType;
        j(getVideoWidth(), getVideoHeight());
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        this.f26044c = uri;
    }

    public TextureVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextureVideoView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        TypedArray obtainStyledAttributes;
        this.f26055n = true;
        this.f26042a = 0;
        this.f26043b = 0;
        ScaleType scaleType = ScaleType.NONE;
        this.f26053l = scaleType;
        if (attributeSet == null || (obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.scaleStyle, 0, 0)) == null) {
            return;
        }
        int i10 = obtainStyledAttributes.getInt(0, scaleType.ordinal());
        obtainStyledAttributes.recycle();
        this.f26053l = ScaleType.values()[i10];
        c();
    }
}

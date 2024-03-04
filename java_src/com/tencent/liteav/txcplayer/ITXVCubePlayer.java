package com.tencent.liteav.txcplayer;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPTrackInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes4.dex */
public interface ITXVCubePlayer {
    public static final int INDEX_AUTO = -1;
    public static final int INITIAL_BITRATE_INDEX_VALUE = -1000;
    public static final int MEDIA_DRM_ERROR = -6101;
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;

    /* loaded from: classes4.dex */
    public interface a {
        int a();
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer);
    }

    /* loaded from: classes4.dex */
    public interface c {
    }

    /* loaded from: classes4.dex */
    public interface d {
        void a();
    }

    /* loaded from: classes4.dex */
    public interface e {
        boolean a(int i9, int i10);
    }

    /* loaded from: classes4.dex */
    public interface f {
        void a();
    }

    /* loaded from: classes4.dex */
    public interface g {
        void a();
    }

    /* loaded from: classes4.dex */
    public interface h {
        boolean a(int i9, int i10, int i11, Object obj);
    }

    /* loaded from: classes4.dex */
    public interface i {
        void a(ITXVCubePlayer iTXVCubePlayer);
    }

    /* loaded from: classes4.dex */
    public interface j {
        void a();
    }

    /* loaded from: classes4.dex */
    public interface k {
    }

    /* loaded from: classes4.dex */
    public interface l {
        void a();
    }

    /* loaded from: classes4.dex */
    public interface m {
        void a(ITXVCubePlayer iTXVCubePlayer, int i9, int i10, String str);
    }

    void addSubtitleSource(String str, String str2, String str3);

    void attachTRTC(Object obj);

    void deselectTrack(int i9);

    void detachTRTC();

    void enableAdaptiveBitrate();

    int getBitrateIndex();

    long getCurrentPosition();

    long getDuration();

    com.tencent.liteav.txcplayer.model.b getMediaInfo();

    long getPlayableDurationMs();

    long getPropertyLong(int i9) throws IllegalStateException;

    float getRate();

    ArrayList<com.tencent.liteav.txcplayer.model.a> getSupportedBitrates();

    Surface getSurface();

    TPTrackInfo[] getTrackInfo();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    boolean isLooping();

    @Deprecated
    boolean isPlayable();

    boolean isPlaying();

    void pause() throws IllegalStateException;

    void prepareAsync() throws IllegalStateException;

    void publishAudioToNetwork();

    void release();

    void reset();

    void seekTo(long j10) throws IllegalStateException;

    void selectTrack(int i9);

    void setAudioStreamType(int i9);

    void setAudioVolume(int i9);

    void setBitrateIndex(int i9);

    void setConfig(com.tencent.liteav.txcplayer.e eVar);

    void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException;

    void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    void setDisplay(SurfaceHolder surfaceHolder);

    @Deprecated
    void setKeepInBackground(boolean z10);

    @Deprecated
    void setLogEnabled(boolean z10);

    void setLooping(boolean z10);

    void setOnBufferingUpdateListener(c cVar);

    void setOnCompletionListener(d dVar);

    void setOnErrorListener(e eVar);

    void setOnGetTXCVodVideoViewTargetState(a aVar);

    void setOnHLSKeyErrorListener(f fVar);

    void setOnHevcVideoDecoderErrorListener(g gVar);

    void setOnInfoListener(h hVar);

    void setOnPreparedListener(i iVar);

    void setOnSeekCompleteListener(j jVar);

    void setOnSubtitleFrameDataListener(b bVar);

    void setOnTimedTextListener(k kVar);

    void setOnVideoDecoderErrorListener(l lVar);

    void setOnVideoSizeChangedListener(m mVar);

    void setPrivateConfig(Map<String, Object> map);

    void setRate(float f10);

    void setScreenOnWhilePlaying(boolean z10);

    void setSurface(Surface surface);

    @Deprecated
    void setWakeMode(Context context, int i9);

    void start() throws IllegalStateException;

    void stop() throws IllegalStateException;

    void unpublishAudioToNetwork();
}

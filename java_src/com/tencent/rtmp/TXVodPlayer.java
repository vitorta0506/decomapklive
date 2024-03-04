package com.tencent.rtmp;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Surface;
import android.view.TextureView;
import androidx.annotation.NonNull;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.TimeUtil;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.common.b;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import com.tencent.liteav.txcvodplayer.TXCVodVideoView;
import com.tencent.liteav.txcvodplayer.b.c;
import com.tencent.liteav.txcvodplayer.b.e;
import com.tencent.liteav.txcvodplayer.b.f;
import com.tencent.liteav.txcvodplayer.renderer.TextureRenderView;
import com.tencent.liteav.txcvodplayer.renderer.d;
import com.tencent.liteav.txcvodplayer.renderer.k;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.g;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.rtmp.ui.TXSubtitleView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.light.device.DeviceInstance;
/* loaded from: classes4.dex */
public class TXVodPlayer {
    public static final String TAG = "TXVodPlayer";
    private final com.tencent.liteav.a mPlayer;

    public TXVodPlayer(Context context) {
        this.mPlayer = new com.tencent.liteav.a(context);
    }

    public static String getEncryptedPlayKey(String str) {
        return com.tencent.liteav.a.b(str);
    }

    public void addSubtitleSource(@NonNull String str, @NonNull String str2, String str3) {
        LiteavLog.i(TAG, "setSubtitleView url =" + str + " ,name=" + str2 + " ,mimeType=" + str3 + " ,player=" + hashCode());
        TXCVodVideoView tXCVodVideoView = this.mPlayer.f30707e;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ITXVCubePlayer iTXVCubePlayer = tXCVodVideoView.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.addSubtitleSource(str, str2, str3);
            return;
        }
        if (tXCVodVideoView.f31419g == null) {
            tXCVodVideoView.f31419g = new ArrayList();
        }
        tXCVodVideoView.f31419g.add(new TXCVodVideoView.b(str, str2, str3));
    }

    public void attachTRTC(Object obj) {
        LiteavLog.i(TAG, "attachTRTC=" + obj + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        if (obj != null) {
            aVar.B = obj;
            if (aVar.A == null) {
                d dVar = new d(aVar);
                aVar.A = dVar;
                synchronized (dVar) {
                    if (dVar.f31633a != null) {
                        LiteavLog.w("VodRenderer", "VodRenderer is initialized!");
                    } else {
                        LiteavLog.i("VodRenderer", "initialize VodRenderer");
                        HandlerThread handlerThread = new HandlerThread("VodRenderer_" + dVar.hashCode());
                        handlerThread.start();
                        dVar.f31633a = new CustomHandler(handlerThread.getLooper());
                        dVar.a(k.a(dVar), "initialize");
                    }
                }
            }
            TXCVodVideoView tXCVodVideoView = aVar.f30707e;
            tXCVodVideoView.f31418f = obj;
            ITXVCubePlayer iTXVCubePlayer = tXCVodVideoView.f31415c;
            if (iTXVCubePlayer != null) {
                iTXVCubePlayer.attachTRTC(obj);
            }
        }
    }

    public void deselectTrack(int i9) {
        LiteavLog.i(TAG, "deselectTrack trackIndex =" + i9 + " ,player=" + hashCode());
        ITXVCubePlayer iTXVCubePlayer = this.mPlayer.f30707e.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.deselectTrack(i9);
        }
    }

    public void detachTRTC() {
        LiteavLog.i(TAG, "detachTRTC player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.B = null;
        final d dVar = aVar.A;
        if (dVar != null) {
            dVar.a(false);
            dVar.a(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.renderer.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    LiteavLog.i("VodRenderer", "uninitialize VodRenderer");
                    if (dVar.f31635c != null) {
                        dVar.f31635c.setDisplayView(null, false);
                        d.d(dVar);
                    }
                    d.e(dVar);
                    dVar.a();
                    synchronized (dVar) {
                        if (dVar.f31633a != null) {
                            dVar.f31633a.a();
                            d.g(dVar);
                        }
                    }
                }
            }, "uninitialize");
            aVar.A = null;
        }
        aVar.e();
        aVar.c();
        TXCVodVideoView tXCVodVideoView = aVar.f30707e;
        tXCVodVideoView.f31418f = null;
        ITXVCubePlayer iTXVCubePlayer = tXCVodVideoView.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.detachTRTC();
        }
    }

    public boolean enableHardwareDecode(boolean z10) {
        LiteavLog.i(TAG, "enableHardwareDecode=" + z10 + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        if (z10) {
            if (LiteavSystemInfo.getSystemOSVersionInt() < 18) {
                LiteavLog.e("HardwareDecode", "enableHardwareDecode failed, android system build.version = " + LiteavSystemInfo.getSystemOSVersionInt() + ", the minimum build.version should be 18(android 4.3 or later)");
                return false;
            }
            if (LiteavSystemInfo.getManufacturer().equalsIgnoreCase(DeviceInstance.BRAND_HUAWEI) && LiteavSystemInfo.getModel().equalsIgnoreCase("Che2-TL00")) {
                LiteavLog.e("HardwareDecode", "enableHardwareDecode failed, MANUFACTURER = " + LiteavSystemInfo.getManufacturer() + ", MODEL" + LiteavSystemInfo.getModel());
                return false;
            }
        }
        aVar.f30713k = z10;
        aVar.a(aVar.f30708f);
        return true;
    }

    public List<TXTrackInfo> getAudioTrackInfo() {
        List<TXTrackInfo> a10 = this.mPlayer.a();
        if (a10.isEmpty()) {
            return new ArrayList(0);
        }
        return com.tencent.liteav.a.a(a10, 2);
    }

    public int getBitrateIndex() {
        return this.mPlayer.f30707e.getBitrateIndex();
    }

    public float getBufferDuration() {
        return ((float) this.mPlayer.f30707e.getBufferDuration()) / 1000.0f;
    }

    public float getCurrentPlaybackTime() {
        return ((float) this.mPlayer.f30707e.getCurrentPosition()) / 1000.0f;
    }

    public float getDuration() {
        return this.mPlayer.f30707e.getDuration() / 1000.0f;
    }

    public int getHeight() {
        return this.mPlayer.f30707e.getVideoHeight();
    }

    public float getPlayableDuration() {
        return ((float) this.mPlayer.f30707e.getBufferDuration()) / 1000.0f;
    }

    public List<TXTrackInfo> getSubtitleTrackInfo() {
        List<TXTrackInfo> a10 = this.mPlayer.a();
        if (a10.isEmpty()) {
            return new ArrayList(0);
        }
        return com.tencent.liteav.a.a(a10, 3);
    }

    public ArrayList<TXBitrateItem> getSupportedBitrates() {
        com.tencent.liteav.a aVar = this.mPlayer;
        ArrayList<TXBitrateItem> arrayList = new ArrayList<>();
        ArrayList<com.tencent.liteav.txcplayer.model.a> supportedBitrates = aVar.f30707e.getSupportedBitrates();
        if (supportedBitrates != null) {
            Iterator<com.tencent.liteav.txcplayer.model.a> it = supportedBitrates.iterator();
            while (it.hasNext()) {
                com.tencent.liteav.txcplayer.model.a next = it.next();
                TXBitrateItem tXBitrateItem = new TXBitrateItem();
                tXBitrateItem.index = next.f31386a;
                tXBitrateItem.width = next.f31387b;
                tXBitrateItem.height = next.f31388c;
                tXBitrateItem.bitrate = next.f31389d;
                arrayList.add(tXBitrateItem);
            }
        }
        return arrayList;
    }

    public int getWidth() {
        return this.mPlayer.f30707e.getVideoWidth();
    }

    public boolean isLoop() {
        return this.mPlayer.f30727y;
    }

    public boolean isPlaying() {
        TXCVodVideoView tXCVodVideoView = this.mPlayer.f30707e;
        return tXCVodVideoView.c() && tXCVodVideoView.f31415c.isPlaying() && tXCVodVideoView.f31410a != 4;
    }

    public void pause() {
        LiteavLog.i(TAG, "pause player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        TXCVodVideoView tXCVodVideoView = aVar.f30707e;
        tXCVodVideoView.f31414b = 4;
        LiteavLog.i("TXCVodVideoView", "pause vod=" + tXCVodVideoView.hashCode());
        if (tXCVodVideoView.c()) {
            try {
                tXCVodVideoView.f31415c.pause();
                tXCVodVideoView.f31423k.removeMessages(103);
            } catch (Exception e10) {
                LiteavLog.e("TXCVodVideoView", "pause exception: " + e10.getMessage());
            }
            tXCVodVideoView.f31410a = 4;
        }
        com.tencent.liteav.txcvodplayer.a.a aVar2 = aVar.f30709g;
        if (aVar2 != null) {
            LiteavLog.i("TXCVodPlayCollection", "pause " + aVar2.f31470k);
            if (!aVar2.f31465f) {
                aVar2.f31470k += System.currentTimeMillis() - aVar2.f31463d;
            }
            aVar2.f31465f = true;
            aVar2.f31463d = System.currentTimeMillis();
        }
    }

    public void publishAudio() {
        LiteavLog.i(TAG, "publishAudio player=" + hashCode());
        this.mPlayer.d();
    }

    public void publishVideo() {
        LiteavLog.i(TAG, "publishVideo player=" + hashCode());
        this.mPlayer.b();
    }

    public void resume() {
        LiteavLog.i(TAG, "resume player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30707e.a();
        com.tencent.liteav.txcvodplayer.a.a aVar2 = aVar.f30709g;
        if (aVar2 != null) {
            long currentTimeMillis = System.currentTimeMillis();
            aVar2.f31463d = currentTimeMillis;
            if (aVar2.f31466g) {
                aVar2.f31462c = currentTimeMillis;
                aVar2.f31466g = false;
            }
            LiteavLog.i("TXCVodPlayCollection", "resume " + aVar2.f31463d);
            aVar2.f31465f = false;
        }
    }

    public void seek(int i9) {
        com.tencent.liteav.txcvodplayer.a.a aVar;
        LiteavLog.i(TAG, "seek time=" + i9 + " player=" + hashCode());
        com.tencent.liteav.a aVar2 = this.mPlayer;
        aVar2.f30707e.a(i9 * 1000);
        if (!aVar2.f30710h || (aVar = aVar2.f30709g) == null) {
            return;
        }
        aVar.e();
    }

    public void selectTrack(int i9) {
        LiteavLog.i(TAG, "selectTrack trackIndex =" + i9 + " ,player=" + hashCode());
        ITXVCubePlayer iTXVCubePlayer = this.mPlayer.f30707e.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.selectTrack(i9);
        }
    }

    public void setAudioPlayoutVolume(int i9) {
        LiteavLog.i(TAG, "setAudioPlayoutVolume=" + i9 + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30724v = i9;
        aVar.f30707e.setAudioPlayoutVolume(i9);
    }

    public void setAutoPlay(boolean z10) {
        LiteavLog.i(TAG, "setAutoPlay=" + z10 + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30712j = z10;
        aVar.f30707e.setAutoPlay(z10);
    }

    public void setBitrateIndex(int i9) {
        LiteavLog.i(TAG, "setBitrateIndex=" + i9 + " player=" + hashCode());
        this.mPlayer.c(i9);
    }

    public void setConfig(TXVodPlayConfig tXVodPlayConfig) {
        this.mPlayer.a(tXVodPlayConfig);
    }

    public void setLoop(boolean z10) {
        LiteavLog.i(TAG, "setLoop=" + z10 + " player=" + hashCode());
        this.mPlayer.f30727y = z10;
    }

    public void setMirror(boolean z10) {
        LiteavLog.i(TAG, "setMirror=" + z10 + " player=" + hashCode());
        this.mPlayer.b(z10);
    }

    public void setMute(boolean z10) {
        LiteavLog.i(TAG, "setMute=" + z10 + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30723u = z10;
        aVar.f30707e.setMute(z10);
    }

    @Deprecated
    public void setPlayListener(ITXLivePlayListener iTXLivePlayListener) {
        LiteavLog.i(TAG, "setPlayListener=" + iTXLivePlayListener + " player=" + hashCode());
        this.mPlayer.f30704b = iTXLivePlayListener;
    }

    public void setPlayerView(TXCloudVideoView tXCloudVideoView) {
        LiteavLog.i(TAG, "setPlayerView TXCloudVideoView=" + tXCloudVideoView + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        TXCloudVideoView tXCloudVideoView2 = aVar.f30703a;
        if (tXCloudVideoView != tXCloudVideoView2) {
            if (tXCloudVideoView2 != null) {
                tXCloudVideoView2.removeVideoView();
            }
            if (tXCloudVideoView != 0) {
                tXCloudVideoView.removeVideoView();
            }
        }
        if (tXCloudVideoView != null) {
            tXCloudVideoView.setVisibility(0);
            if (aVar.A != null && aVar.B != null) {
                if (g.a(tXCloudVideoView) == null) {
                    tXCloudVideoView.addVideoView(new TextureView(tXCloudVideoView.getContext()));
                    d dVar = aVar.A;
                    dVar.a(com.tencent.liteav.txcvodplayer.renderer.g.a(dVar, new DisplayTarget(tXCloudVideoView)), "setDisplayTarget");
                }
            } else if (g.a(tXCloudVideoView) == null) {
                TextureRenderView textureRenderView = new TextureRenderView(tXCloudVideoView.getContext());
                tXCloudVideoView.addVideoView(textureRenderView);
                aVar.f30707e.setTextureRenderView(textureRenderView);
            }
            com.tencent.liteav.a.a(tXCloudVideoView, 0);
        }
        aVar.f30703a = tXCloudVideoView;
    }

    public void setRate(float f10) {
        LiteavLog.i(TAG, "setRate=" + f10 + " player=" + hashCode());
        this.mPlayer.a(f10);
    }

    public void setRenderMode(int i9) {
        LiteavLog.i(TAG, "setRenderMode=" + i9 + " player=" + hashCode());
        this.mPlayer.a(i9);
    }

    public void setRenderRotation(int i9) {
        LiteavLog.i(TAG, "setRenderRotation=" + i9 + " player=" + hashCode());
        this.mPlayer.b(i9);
    }

    public boolean setRequestAudioFocus(boolean z10) {
        LiteavLog.i(TAG, "setRequestAudioFocus=" + z10 + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30711i = z10;
        return aVar.f30707e.b(z10);
    }

    public void setStartTime(float f10) {
        LiteavLog.i(TAG, "setStartTime=" + f10 + " player=" + hashCode());
        this.mPlayer.b(f10);
    }

    public void setStringOption(String str, Object obj) {
        LiteavLog.i(TAG, "setStringOption key=" + str + " value=" + obj + "player=" + hashCode());
        TXCVodVideoView tXCVodVideoView = this.mPlayer.f30707e;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, "PARAM_SUPER_RESOLUTION_TYPE") && (obj instanceof Integer)) {
            RenderProcessService.getInstance().updateRenderProcessMode(tXCVodVideoView.f31415c, ((Integer) obj).intValue());
        }
    }

    public void setSubtitleView(TXSubtitleView tXSubtitleView) {
        LiteavLog.i(TAG, "setSubtitleView view =" + tXSubtitleView + " player=" + hashCode());
        this.mPlayer.C = tXSubtitleView;
    }

    public void setSurface(Surface surface) {
        LiteavLog.i(TAG, "setSurface Surface=" + surface + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30714l = surface;
        aVar.f30707e.setRenderSurface(surface);
    }

    public void setToken(String str) {
        LiteavLog.i(TAG, "setToken=" + str + " player=" + hashCode());
        this.mPlayer.f30716n = str;
    }

    public void setVodListener(ITXVodPlayListener iTXVodPlayListener) {
        LiteavLog.i(TAG, "setVodListener=" + iTXVodPlayListener + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30706d = new WeakReference<>(this);
        aVar.f30705c = iTXVodPlayListener;
    }

    public void snapshot(final TXLivePlayer.ITXSnapshotListener iTXSnapshotListener) {
        LiteavLog.i(TAG, "snapshot=" + iTXSnapshotListener + " player=" + hashCode());
        final com.tencent.liteav.a aVar = this.mPlayer;
        if (aVar.f30718p || iTXSnapshotListener == null) {
            return;
        }
        aVar.f30718p = true;
        TextureView a10 = g.a(aVar.f30703a);
        if (a10 != null) {
            final Bitmap bitmap = a10.getBitmap();
            if (bitmap != null) {
                Matrix transform = a10.getTransform(null);
                if (aVar.f30726x) {
                    transform.postScale(-1.0f, 1.0f);
                }
                Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), transform, true);
                bitmap.recycle();
                bitmap = createBitmap;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.liteav.a.5
                @Override // java.lang.Runnable
                public final void run() {
                    TXLivePlayer.ITXSnapshotListener iTXSnapshotListener2 = iTXSnapshotListener;
                    if (iTXSnapshotListener2 != null) {
                        iTXSnapshotListener2.onSnapshot(bitmap);
                    }
                    a.p(a.this);
                }
            });
            return;
        }
        aVar.f30718p = false;
    }

    public int startPlayDrm(TXPlayerDrmBuilder tXPlayerDrmBuilder) {
        LiteavLog.i(TAG, "startPlayDrm [PlayUrl=" + tXPlayerDrmBuilder.mPlayUrl + "][KeyLicenseUrl=" + tXPlayerDrmBuilder.mKeyLicenseUrl + "][ProvisionUrl=" + tXPlayerDrmBuilder.getDeviceCertificateUrl() + "][player=" + hashCode() + "]");
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30719q = null;
        return aVar.a(tXPlayerDrmBuilder.getPlayUrl(), tXPlayerDrmBuilder.getKeyLicenseUrl(), null, null, null);
    }

    public int startVodPlay(String str) {
        LiteavLog.i(TAG, "StartPlay url=" + str + " player=" + hashCode());
        com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30719q = null;
        if (TextUtils.equals(str, aVar.f30722t)) {
            Object obj = aVar.f30717o.get("TXC_DRM_ENABLE");
            if (obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false) {
                return aVar.a(str, (String) aVar.f30717o.get("TXC_DRM_KEY_URL"), (String) aVar.f30717o.get("TXC_DRM_SIMPLE_AES_URL"), aVar.f30720r, aVar.f30721s);
            }
        } else {
            aVar.a((String) null, (String) null);
        }
        aVar.g();
        return aVar.a(str);
    }

    public int stopPlay(boolean z10) {
        LiteavLog.i(TAG, "stopPlay needClearLastImg=" + z10 + " player=" + hashCode());
        return this.mPlayer.a(z10);
    }

    public void unpublishAudio() {
        LiteavLog.i(TAG, "unpublishAudio player=" + hashCode());
        this.mPlayer.e();
    }

    public void unpublishVideo() {
        LiteavLog.i(TAG, "unpublishVideo player=" + hashCode());
        this.mPlayer.c();
    }

    public void seek(float f10) {
        com.tencent.liteav.txcvodplayer.a.a aVar;
        LiteavLog.i(TAG, "seek time=" + f10 + " player=" + hashCode());
        com.tencent.liteav.a aVar2 = this.mPlayer;
        aVar2.f30707e.a((int) (f10 * 1000.0f));
        if (!aVar2.f30710h || (aVar = aVar2.f30709g) == null) {
            return;
        }
        aVar.e();
    }

    @Deprecated
    public int startVodPlay(TXPlayerAuthBuilder tXPlayerAuthBuilder) {
        LiteavLog.i(TAG, "startPlay [FileId=" + tXPlayerAuthBuilder.fileId + "][Timeout=" + tXPlayerAuthBuilder.timeout + "][Unique identification request=" + tXPlayerAuthBuilder.us + "][Trial duration=" + tXPlayerAuthBuilder.exper + "][Sign=" + tXPlayerAuthBuilder.sign + "][player=" + hashCode() + "]");
        final com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30719q = null;
        aVar.g();
        aVar.a((String) null, (String) null);
        com.tencent.liteav.txcvodplayer.b.d dVar = new com.tencent.liteav.txcvodplayer.b.d();
        aVar.f30725w = dVar;
        dVar.f31546c = tXPlayerAuthBuilder.isHttps();
        aVar.f30725w.a(new e() { // from class: com.tencent.liteav.a.1
            @Override // com.tencent.liteav.txcvodplayer.b.e
            public final void a(com.tencent.liteav.txcvodplayer.b.d dVar2) {
                if (dVar2 != a.this.f30725w) {
                    return;
                }
                f a10 = dVar2.a();
                a.this.a(a10.a());
                Bundle bundle = new Bundle();
                bundle.putInt(TXVodConstants.EVT_ID, 2010);
                bundle.putLong("EVT_TIME", TimeUtil.a());
                bundle.putLong("EVT_UTC_TIME", TimeUtil.b());
                bundle.putString("EVT_MSG", "Requested file information successfully");
                bundle.putString("EVT_PLAY_URL", a10.a());
                bundle.putString("EVT_PLAY_COVER_URL", a10.d());
                bundle.putString("EVT_PLAY_NAME", a10.g());
                bundle.putString("EVT_PLAY_DESCRIPTION", a10.h());
                if (a10.f() != null) {
                    bundle.putInt("EVT_PLAY_DURATION", a10.f().f31571e);
                }
                a.this.a(2010, bundle);
                LiteavLog.i("TXCVodPlayer", "onNetSuccess: Requested file information successfully");
            }

            @Override // com.tencent.liteav.txcvodplayer.b.e
            public final void a(com.tencent.liteav.txcvodplayer.b.d dVar2, String str, int i9) {
                if (dVar2 != a.this.f30725w) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putInt(TXVodConstants.EVT_ID, -2306);
                bundle.putLong("EVT_TIME", TimeUtil.a());
                bundle.putLong("EVT_UTC_TIME", TimeUtil.b());
                bundle.putString("EVT_MSG", str);
                bundle.putInt("EVT_PARAM1", i9);
                a.this.a(-2306, bundle);
                LiteavLog.i("TXCVodPlayer", "onNetFailed: eventId: -2306 description:".concat(String.valueOf(str)));
            }
        });
        LiteavLog.i("TXCVodPlayer", "startPlay [FileId:" + tXPlayerAuthBuilder.getFileId() + "][Timeout:" + tXPlayerAuthBuilder.getTimeout() + "][Unique identification request:" + tXPlayerAuthBuilder.getUs() + "][Trial duration:" + tXPlayerAuthBuilder.getExper() + "][Sign:" + tXPlayerAuthBuilder.getSign() + "]");
        return aVar.f30725w.a(tXPlayerAuthBuilder.getAppId(), tXPlayerAuthBuilder.getFileId(), tXPlayerAuthBuilder.getTimeout(), tXPlayerAuthBuilder.getUs(), tXPlayerAuthBuilder.getExper(), tXPlayerAuthBuilder.getSign());
    }

    public void setPlayerView(TextureRenderView textureRenderView) {
        LiteavLog.i(TAG, "setPlayerView TextureRenderView=" + textureRenderView + " player=" + hashCode());
        this.mPlayer.f30707e.setRenderView(textureRenderView);
    }

    public void startVodPlay(TXPlayInfoParams tXPlayInfoParams) {
        LiteavLog.i(TAG, "startPlay [FileId=" + tXPlayInfoParams.mFileId + "][AppId=" + tXPlayInfoParams.mAppId + "][PSign=" + tXPlayInfoParams.mPSign + "][player=" + hashCode() + "]");
        final com.tencent.liteav.a aVar = this.mPlayer;
        aVar.f30719q = tXPlayInfoParams;
        aVar.g();
        aVar.f30715m = false;
        new c(tXPlayInfoParams).a(new c.a() { // from class: com.tencent.liteav.a.2
            @Override // com.tencent.liteav.txcvodplayer.b.c.a
            public final void a(c cVar, TXPlayInfoParams tXPlayInfoParams2) {
                String d10;
                String g10;
                String h10;
                c.b i9;
                String str;
                String str2;
                LiteavLog.i("TXCVodPlayer", "onSuccess: protocol params = " + tXPlayInfoParams2.toString());
                if (a.this.f30715m) {
                    return;
                }
                List<c.C0326c> list = null;
                if ("SimpleAES".equalsIgnoreCase(cVar.d())) {
                    a.this.a(cVar.f31520d, cVar.f31521e);
                    com.tencent.liteav.txcvodplayer.c.a a10 = com.tencent.liteav.txcvodplayer.c.a.a();
                    String a11 = b.a();
                    if (TextUtils.isEmpty(a11)) {
                        LiteavLog.i("PlayInfoProtocolV4Storage", "clean cacheDir is empty");
                    } else {
                        long currentTimeMillis = System.currentTimeMillis() / 3600000;
                        if (a10.f31579c > 0 && currentTimeMillis - a10.f31579c < 24) {
                            LiteavLog.i("PlayInfoProtocolV4Storage", "clean mLastCacheCleanTime: " + a10.f31579c + " not more than 24h");
                        } else {
                            a10.f31579c = currentTimeMillis;
                            com.tencent.liteav.txcplayer.common.a.a().execute(com.tencent.liteav.txcvodplayer.c.d.a(a10, a11, currentTimeMillis));
                        }
                    }
                } else {
                    a.this.a((String) null, (String) null);
                }
                String a12 = cVar.a();
                com.tencent.liteav.txcvodplayer.b.b bVar = cVar.f31518b;
                String a13 = bVar != null ? bVar.a("Widevine") : null;
                if (TextUtils.isEmpty(a13)) {
                    a.this.g();
                    if (!TextUtils.isEmpty(a12)) {
                        String c10 = a.c(a12, cVar.b());
                        a.this.f30716n = null;
                        Uri parse = Uri.parse(c10);
                        String query = parse.getQuery();
                        String str3 = TextUtils.isEmpty(query) ? "" : query + ContainerUtils.FIELD_DELIMITER;
                        String d11 = cVar.d();
                        if (TextUtils.isEmpty(d11)) {
                            d11 = "plain";
                        }
                        Uri build = parse.buildUpon().query(str3 + "spfileid=" + tXPlayInfoParams2.getFileId() + "&spdrmtype=" + d11 + "&spappid=" + tXPlayInfoParams2.getAppId()).build();
                        StringBuilder sb2 = new StringBuilder("playVodURL: newurl = ");
                        sb2.append(build.toString());
                        sb2.append(" ;url= ");
                        sb2.append(c10);
                        LiteavLog.i("TXCVodPlayer", sb2.toString());
                        a.this.a(build.toString());
                    }
                } else {
                    a.this.f30716n = null;
                    if (TextUtils.isEmpty(a12)) {
                        str = null;
                        str2 = null;
                    } else {
                        str = cVar.f31520d;
                        str2 = cVar.f31521e;
                    }
                    a aVar2 = a.this;
                    com.tencent.liteav.txcvodplayer.b.b bVar2 = cVar.f31518b;
                    aVar2.a(a13, (bVar2 == null || TextUtils.isEmpty(bVar2.f31508h)) ? null : bVar2.f31508h, a.c(a12, cVar.b()), str, str2);
                }
                Bundle bundle = new Bundle();
                bundle.putInt(TXVodConstants.EVT_ID, 2010);
                bundle.putLong("EVT_TIME", TimeUtil.a());
                bundle.putLong("EVT_UTC_TIME", TimeUtil.b());
                bundle.putString("EVT_MSG", "Requested file information successfully");
                bundle.putString("EVT_PLAY_URL", a.this.f30722t);
                com.tencent.liteav.txcvodplayer.b.b bVar3 = cVar.f31518b;
                if (bVar3 != null) {
                    d10 = bVar3.f31503c;
                } else {
                    f fVar = cVar.f31519c;
                    d10 = fVar != null ? fVar.d() : null;
                }
                bundle.putString("EVT_PLAY_COVER_URL", d10);
                com.tencent.liteav.txcvodplayer.b.b bVar4 = cVar.f31518b;
                if (bVar4 != null) {
                    g10 = bVar4.f31501a;
                } else {
                    f fVar2 = cVar.f31519c;
                    g10 = fVar2 != null ? fVar2.g() : null;
                }
                bundle.putString("EVT_PLAY_NAME", g10);
                com.tencent.liteav.txcvodplayer.b.b bVar5 = cVar.f31518b;
                if (bVar5 != null) {
                    h10 = bVar5.f31502b;
                } else {
                    f fVar3 = cVar.f31519c;
                    h10 = fVar3 != null ? fVar3.h() : null;
                }
                bundle.putString("EVT_PLAY_DESCRIPTION", h10);
                bundle.putInt("EVT_PLAY_DURATION", cVar.c());
                com.tencent.liteav.txcvodplayer.b.b bVar6 = cVar.f31518b;
                if (bVar6 != null) {
                    i9 = bVar6.f31509i;
                } else {
                    f fVar4 = cVar.f31519c;
                    i9 = fVar4 != null ? fVar4.i() : null;
                }
                if (i9 != null) {
                    bundle.putString(TXVodConstants.EVT_IMAGESPRIT_WEBVTTURL, i9.f31537b);
                    bundle.putStringArrayList(TXVodConstants.EVT_IMAGESPRIT_IMAGEURL_LIST, i9.f31536a);
                }
                com.tencent.liteav.txcvodplayer.b.b bVar7 = cVar.f31518b;
                if (bVar7 != null) {
                    list = bVar7.f31510j;
                } else {
                    f fVar5 = cVar.f31519c;
                    if (fVar5 != null) {
                        list = fVar5.j();
                    }
                }
                if (list != null && !list.isEmpty()) {
                    ArrayList<String> arrayList = new ArrayList<>();
                    float[] fArr = new float[list.size()];
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        arrayList.add(list.get(i10).f31538a);
                        fArr[i10] = list.get(i10).f31539b;
                    }
                    bundle.putStringArrayList(TXVodConstants.EVT_KEY_FRAME_CONTENT_LIST, arrayList);
                    bundle.putFloatArray(TXVodConstants.EVT_KEY_FRAME_TIME_LIST, fArr);
                }
                bundle.putString(TXVodConstants.EVT_DRM_TYPE, cVar.d());
                a.this.a(2010, bundle);
                LiteavLog.i("TXCVodPlayer", "onSuccess: Requested file information successfully");
            }

            @Override // com.tencent.liteav.txcvodplayer.b.c.a
            public final void a(int i9, String str) {
                LiteavLog.w("TXCVodPlayer", "onFail: errorCode = " + i9 + " message = " + str);
                Bundle bundle = new Bundle();
                bundle.putInt(TXVodConstants.EVT_ID, -2306);
                bundle.putLong("EVT_TIME", TimeUtil.a());
                bundle.putLong("EVT_UTC_TIME", TimeUtil.b());
                bundle.putString("EVT_MSG", str);
                bundle.putInt("EVT_PARAM1", i9);
                a.this.a(-2306, bundle);
                LiteavLog.i("TXCVodPlayer", "onError: eventId: -2306 description:".concat(String.valueOf(str)));
            }
        });
    }
}

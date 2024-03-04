package com.tencent.liteav.thumbplayer;

import android.graphics.Rect;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.framework.common.ExceptionCode;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.model.d;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.thumbplayer.api.ITPPlayer;
import com.tencent.thumbplayer.api.ITPPlayerListener;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
class ThumbMediaPlayerListener implements ITPPlayerListener.IOnAudioFrameOutputListener, ITPPlayerListener.IOnAudioProcessFrameOutputListener, ITPPlayerListener.IOnCompletionListener, ITPPlayerListener.IOnErrorListener, ITPPlayerListener.IOnInfoListener, ITPPlayerListener.IOnPreparedListener, ITPPlayerListener.IOnSeekCompleteListener, ITPPlayerListener.IOnStateChangeListener, ITPPlayerListener.IOnStopAsyncCompleteListener, ITPPlayerListener.IOnSubtitleDataListener, ITPPlayerListener.IOnSubtitleFrameOutListener, ITPPlayerListener.IOnVideoFrameOutListener, ITPPlayerListener.IOnVideoProcessFrameOutputListener, ITPPlayerListener.IOnVideoSizeChangedListener {
    private final String TAG = ThumbMediaPlayerListener.class.getName();
    private final WeakReference<ThumbMediaPlayer> mThumbMediaPlayer;

    public ThumbMediaPlayerListener(ThumbMediaPlayer thumbMediaPlayer) {
        this.mThumbMediaPlayer = new WeakReference<>(thumbMediaPlayer);
    }

    private int transferError(int i9, int i10) {
        if (i9 != 1001) {
            if (i9 == 1100) {
                return (i10 < 11070000 || i10 >= 11080000) ? 1 : -6101;
            }
            if (i9 != 1102) {
                if (i9 != 1210) {
                    if (i9 != 1211) {
                        if (i9 == 1220) {
                            ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
                            if (thumbMediaPlayer != null) {
                                String propertyString = thumbMediaPlayer.getTPPPlayer().getPropertyString(0);
                                if (propertyString != null && (propertyString.toLowerCase().contains("hevc") || propertyString.toLowerCase().contains("h265"))) {
                                    thumbMediaPlayer.notifyHevcVideoDecoderError();
                                } else {
                                    thumbMediaPlayer.notifyVideoDecoderError();
                                }
                            }
                        } else if (i9 != 1221) {
                            if (i9 != 1230) {
                                if (i9 != 1231) {
                                    if (i9 == 2000 || i9 == 2001) {
                                        return transferSystemPlayerError(i10);
                                    }
                                    return 1;
                                }
                            }
                        }
                    }
                }
                return ITXVCubePlayer.MEDIA_ERROR_UNSUPPORTED;
            }
            return ITXVCubePlayer.MEDIA_ERROR_MALFORMED;
        }
        return transferGeneralError(i10);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int transferGeneralError(int i9) {
        switch (i9) {
            case 11010101:
            case 11010103:
                return ITXVCubePlayer.MEDIA_ERROR_MALFORMED;
            case 11010104:
                ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
                if (thumbMediaPlayer != null) {
                    String propertyString = thumbMediaPlayer.getTPPPlayer().getPropertyString(0);
                    if (propertyString != null) {
                        if (propertyString.toLowerCase().contains("hevc") || propertyString.toLowerCase().contains("h265")) {
                            thumbMediaPlayer.notifyHLSKeyError();
                            return ITXVCubePlayer.MEDIA_ERROR_MALFORMED;
                        }
                        return ITXVCubePlayer.MEDIA_ERROR_MALFORMED;
                    }
                    return ITXVCubePlayer.MEDIA_ERROR_MALFORMED;
                }
                break;
            case 11010201:
            case 11010202:
            case 11010401:
            case 11010402:
                return ITXVCubePlayer.MEDIA_ERROR_UNSUPPORTED;
        }
        return 1;
    }

    private int transferInfo(int i9) {
        if (i9 != 4) {
            if (i9 != 104) {
                if (i9 == 106) {
                    ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
                    if (thumbMediaPlayer != null) {
                        thumbMediaPlayer.onReceiveFirstVideoRenderEvent();
                    }
                } else if (i9 == 1001) {
                    LiteavLog.i(this.TAG, "TP_PLAYER_INFO_LONG0_ALL_DOWNLOAD_FINISH");
                    ThumbMediaPlayer thumbMediaPlayer2 = this.mThumbMediaPlayer.get();
                    if (thumbMediaPlayer2 != null) {
                        thumbMediaPlayer2.updateTcpSpeed(0L);
                    }
                } else if (i9 == 1006) {
                    return 1006;
                } else {
                    if (i9 == 200) {
                        return 2007;
                    }
                    if (i9 == 201) {
                        return 2014;
                    }
                }
                return -1;
            }
            return 2008;
        }
        return TXVodConstants.VOD_PLAY_EVT_SELECT_TRACK_COMPLETE;
    }

    private int transferSystemPlayerError(int i9) {
        switch (i9) {
            case ExceptionCode.NETWORK_UNREACHABLE /* 10000200 */:
                return 200;
            case 10001004:
                return -1004;
            case 10001007:
                return ITXVCubePlayer.MEDIA_ERROR_MALFORMED;
            case 10001010:
                return ITXVCubePlayer.MEDIA_ERROR_UNSUPPORTED;
            default:
                return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attachToPlayer() {
        ITPPlayer tPPPlayer;
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer == null || (tPPPlayer = thumbMediaPlayer.getTPPPlayer()) == null) {
            return;
        }
        tPPPlayer.setOnPreparedListener(this);
        tPPPlayer.setOnCompletionListener(this);
        tPPPlayer.setOnInfoListener(this);
        tPPPlayer.setOnErrorListener(this);
        tPPPlayer.setOnSeekCompleteListener(this);
        tPPPlayer.setOnVideoSizeChangedListener(this);
        tPPPlayer.setOnSubtitleDataListener(this);
        tPPPlayer.setOnSubtitleFrameOutListener(this);
        tPPPlayer.setOnVideoFrameOutListener(this);
        tPPPlayer.setOnAudioFrameOutputListener(this);
        tPPPlayer.setOnVideoProcessFrameOutputListener(this);
        tPPPlayer.setOnAudioProcessFrameOutputListener(this);
        tPPPlayer.setOnPlayerStateChangeListener(this);
        tPPPlayer.setOnStopAsyncCompleteListener(this);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioFrameOutputListener
    public void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer) {
        LiteavLog.i(this.TAG, "ThumbMediaPlayerListener onAudioFrameOut");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioProcessFrameOutputListener
    public TPPostProcessFrameBuffer onAudioProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return tPPostProcessFrameBuffer;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnCompletionListener
    public void onCompletion(ITPPlayer iTPPlayer) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifyOnCompletion();
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnErrorListener
    public void onError(ITPPlayer iTPPlayer, int i9, int i10, long j10, long j11) {
        if (i9 != 1000) {
            String str = this.TAG;
            LiteavLog.w(str, "onError type: " + i9 + " code: " + i10);
            ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
            if (thumbMediaPlayer != null) {
                int transferError = transferError(i9, i10);
                if (transferError == -6101) {
                    thumbMediaPlayer.notifyOnError(transferError, i10);
                } else {
                    thumbMediaPlayer.notifyOnError(transferError, (int) j10);
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnInfoListener
    public void onInfo(ITPPlayer iTPPlayer, int i9, long j10, long j11, Object obj) {
        String str;
        String[] split;
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            int transferInfo = transferInfo(i9);
            int i10 = (int) j10;
            if (obj != null && (obj instanceof TPPlayerMsg.TPCDNURLInfo)) {
                TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = (TPPlayerMsg.TPCDNURLInfo) obj;
                LiteavLog.i(this.TAG, "onInfo TPCDNURLInfo:cdnIp:" + tPCDNURLInfo.cdnIp + ":uIp:" + tPCDNURLInfo.uIp + ": url: " + tPCDNURLInfo.url + ":errorStr: " + tPCDNURLInfo.errorStr);
            }
            if (obj != null && (obj instanceof TPPlayerMsg.TPDownLoadProgressInfo)) {
                TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = (TPPlayerMsg.TPDownLoadProgressInfo) obj;
                thumbMediaPlayer.updateBitrate(tPDownLoadProgressInfo.totalFileSize);
                long j12 = tPDownLoadProgressInfo.downloadSpeedKBps;
                if (j12 < 0 && (str = tPDownLoadProgressInfo.extraInfo) != null && (split = str.split(",")) != null) {
                    int length = split.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 < length) {
                            String str2 = split[i11];
                            if (str2 != null && str2.contains("httpAvgSpeedKB")) {
                                j12 = Long.valueOf(str2.substring(str2.indexOf(CertificateUtil.DELIMITER) + 1, str2.length()).trim()).longValue();
                                break;
                            }
                            i11++;
                        } else {
                            break;
                        }
                    }
                }
                thumbMediaPlayer.updateTcpSpeed(j12 * 1024);
            }
            if (obj instanceof TPPlayerMsg.TPVideoCropInfo) {
                TPPlayerMsg.TPVideoCropInfo tPVideoCropInfo = (TPPlayerMsg.TPVideoCropInfo) obj;
                LiteavLog.i(this.TAG, "onInfo TPVideoCropInfo:cropBottom:" + tPVideoCropInfo.cropBottom + ":cropLeft:" + tPVideoCropInfo.cropLeft + ": cropRight: " + tPVideoCropInfo.cropRight + ":cropTop: " + tPVideoCropInfo.cropTop + ":height:" + tPVideoCropInfo.height + ":width:" + tPVideoCropInfo.width);
            }
            thumbMediaPlayer.notifyOnInfo(transferInfo, i10, (int) j11, obj);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnPreparedListener
    public void onPrepared(ITPPlayer iTPPlayer) {
        LiteavLog.i(this.TAG, "ThumbMediaPlayerListener onPrepared");
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifyOnPrepared();
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSeekCompleteListener
    public void onSeekComplete(ITPPlayer iTPPlayer) {
        LiteavLog.i(this.TAG, "ThumbMediaPlayerListener onSeekComplete");
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifyOnSeekComplete();
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnStateChangeListener
    public void onStateChange(int i9, int i10) {
        String str = this.TAG;
        LiteavLog.i(str, "ThumbMediaPlayerListener onStateChange:preState" + i9 + ": curState:" + i10);
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnStopAsyncCompleteListener
    public void onStopAsyncComplete(ITPPlayer iTPPlayer) {
        LiteavLog.i(this.TAG, "ThumbMediaPlayerListener onStopAsyncComplete");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSubtitleDataListener
    public void onSubtitleData(ITPPlayer iTPPlayer, TPSubtitleData tPSubtitleData) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer == null || tPSubtitleData == null) {
            return;
        }
        String str = this.TAG;
        LiteavLog.i(str, "ThumbMediaPlayerListener onSubtitleData:" + tPSubtitleData.subtitleData);
        thumbMediaPlayer.notifyOnTimedText(new d(new Rect(0, 0, 1, 1), tPSubtitleData.subtitleData));
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnSubtitleFrameOutListener
    public void onSubtitleFrameOut(ITPPlayer iTPPlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        LiteavLog.i(this.TAG, "ThumbMediaPlayerListener onSubtitleFrameOut");
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifySubtitleFrameData(tPSubtitleFrameBuffer);
        }
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoFrameOutListener
    public void onVideoFrameOut(ITPPlayer iTPPlayer, TPVideoFrameBuffer tPVideoFrameBuffer) {
        LiteavLog.i(this.TAG, "ThumbMediaPlayerListener onVideoFrameOut");
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoProcessFrameOutputListener
    public TPPostProcessFrameBuffer onVideoProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        LiteavLog.i(this.TAG, "ThumbMediaPlayerListener onVideoProcessFrameOut");
        return tPPostProcessFrameBuffer;
    }

    @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnVideoSizeChangedListener
    public void onVideoSizeChanged(ITPPlayer iTPPlayer, long j10, long j11) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer.get();
        if (thumbMediaPlayer != null) {
            String str = this.TAG;
            LiteavLog.i(str, "ThumbMediaPlayerListener on:videoSizeChanged:width:" + j10 + ":height:" + j11);
            thumbMediaPlayer.notifyOnVideoSizeChanged((int) j10, (int) j11, thumbMediaPlayer.getVideoSarNum(), thumbMediaPlayer.getVideoSarDen(), null);
        }
    }
}

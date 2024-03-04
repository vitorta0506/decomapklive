package com.tencent.thumbplayer.core.player;

import android.content.Context;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.core.common.TPAudioPassThroughPluginDetector;
import com.tencent.thumbplayer.core.common.TPFieldCalledByNative;
import com.tencent.thumbplayer.core.common.TPGeneralError;
import com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector;
import com.tencent.thumbplayer.core.common.TPMediaTrackDashFormat;
import com.tencent.thumbplayer.core.common.TPMediaTrackInfo;
import com.tencent.thumbplayer.core.common.TPNativeLibraryLoader;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.core.demuxer.ITPNativeDemuxerCallback;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;
/* loaded from: classes4.dex */
public class TPNativePlayer {
    private Context mContext;
    @TPFieldCalledByNative
    private long mNativeContext;
    private int m_playerID;

    public TPNativePlayer(Context context) {
        this.m_playerID = -1;
        this.mContext = null;
        this.mContext = context.getApplicationContext();
        TPNativeLibraryLoader.loadLibIfNeeded(context);
        try {
            this.m_playerID = _createPlayer();
            TPHeadsetPluginDetector.init(this.mContext);
            TPAudioPassThroughPluginDetector.init(this.mContext);
            TPScreenRefreshRateDetector.init(this.mContext);
            TPSystemInfo.initAudioBestSettings(this.mContext);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, "Failed to create native player:" + th2.getMessage());
            throw new UnsupportedOperationException("Failed to create native player");
        }
    }

    private native int _addAudioTrackSource(String str, String str2);

    private native int _addAudioTrackSourceWithHttpHeader(String str, String str2, Object[] objArr);

    private native int _addInitConfigQueueInt(int i9, int i10);

    private native int _addInitConfigQueueString(int i9, String str);

    private native int _addSubtitleTrackSource(String str, String str2);

    private native int _addSubtitleTrackSourceWithHttpHeader(String str, String str2, Object[] objArr);

    private native int _applyInitConfig();

    private native int _createPlayer();

    private native int _deselectTrackAsync(int i9, long j10);

    private native long _getBufferedDurationMs();

    private native long _getBufferedSize();

    private native int _getContainerType(int i9);

    private native long _getCurrentPositionMs();

    private native long _getDemuxerOffsetInFile();

    private native long _getDurationMs();

    private native TPDynamicStatisticParams _getDynamicStatisticParams(boolean z10);

    private native TPGeneralPlayFlowParams _getGeneralPlayFlowParams();

    private static native Object _getPlayerCoreParams(int i9);

    private native int _getPlayerID();

    private native int _getProgramCount();

    private native TPNativePlayerProgramInfo _getProgramInfo(int i9);

    private native long _getPropertyLong(int i9);

    private native String _getPropertyString(int i9);

    private native int _getTrackCount();

    private native TPMediaTrackDashFormat _getTrackDashFormat(int i9);

    private native TPNativePlayerHlsTag _getTrackHlsTag(int i9);

    private native boolean _getTrackIsExclusive(int i9);

    private native boolean _getTrackIsInternal(int i9);

    private native boolean _getTrackIsSelected(int i9);

    private native String _getTrackName(int i9);

    private native int _getTrackType(int i9);

    private native int _getVideoHeight();

    private native int _getVideoWidth();

    private native int _pause();

    private static native void _playerCoreNativeSetup();

    private native int _prepare();

    private native int _prepareAsync();

    private native int _release();

    private native int _reset();

    private native int _resetInitConfig();

    private native int _resume();

    private native int _seekToAsync(int i9, int i10, long j10);

    private native int _selectProgramAsync(int i9, long j10);

    private native int _selectTrackAsync(int i9, long j10);

    private native int _setAudioFrameCallback(Object obj);

    private native int _setAudioMute(boolean z10);

    private native int _setAudioNormalizeVolumeParams(String str);

    private native int _setAudioVolume(float f10);

    private native int _setDataSource(String str);

    private native int _setDataSourceFd(int i9, long j10, long j11);

    private native int _setDataSourceWithHttpHeader(String str, Object[] objArr);

    private native int _setDemuxerCallback(Object obj);

    private native int _setEventRecordCallback(Object obj);

    private native int _setInitConfigBool(int i9, boolean z10);

    private native int _setInitConfigFloat(int i9, float f10);

    private native int _setInitConfigInt(int i9, int i10);

    private native int _setInitConfigLong(int i9, long j10);

    private native int _setInitConfigObject(int i9, Object obj);

    private native int _setInitConfigString(int i9, String str);

    private native int _setLoopback(boolean z10, long j10, long j11);

    private native int _setMessageCallback(Object obj);

    private native int _setOptionLong(int i9, long j10, long j11);

    private native int _setOptionObject(int i9, Object obj);

    private native int _setPlaybackRate(float f10);

    private native int _setPostProcessFrameCallback(Object obj);

    private native int _setSubtitleFrameCallback(Object obj);

    private native int _setVideoFrameCallback(Object obj);

    private native int _setVideoSurface(Surface surface);

    private native int _setVideoSurfaceWithType(Surface surface, int i9);

    private native int _start();

    private native int _stop();

    private native int _switchDefinitionAsync(String str, int i9, long j10);

    private native int _switchDefinitionAsyncWithHttpHeader(String str, Object[] objArr, int i9, long j10);

    public static void playerCoreNativeSetup(@NonNull Context context) {
        TPNativeLibraryLoader.loadLibIfNeeded(context);
        try {
            _playerCoreNativeSetup();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    public int addAudioTrackSource(String str, String str2) {
        try {
            return _addAudioTrackSource(str, str2);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int addAudioTrackSource(String str, String str2, Map<String, String> map) {
        try {
            return _addAudioTrackSourceWithHttpHeader(str, str2, TPNativePlayerUtils.tpMapStringToStringArray(map));
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int addSubtitleTrackSource(String str, String str2) {
        try {
            return _addSubtitleTrackSource(str, str2);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int addSubtitleTrackSource(String str, String str2, Map<String, String> map) {
        try {
            return _addSubtitleTrackSourceWithHttpHeader(str, str2, TPNativePlayerUtils.tpMapStringToStringArray(map));
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int deselectTrackAsync(int i9, long j10) {
        try {
            return _deselectTrackAsync(i9, j10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public long getBufferedDurationMs() {
        try {
            return _getBufferedDurationMs();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return 0L;
        }
    }

    public long getBufferedSize() {
        try {
            return _getBufferedSize();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return 0L;
        }
    }

    public long getCurrentPositionMs() {
        try {
            return _getCurrentPositionMs();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return 0L;
        }
    }

    public long getDemuxerOffsetInFile() {
        try {
            return _getDemuxerOffsetInFile();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return -1L;
        }
    }

    public long getDurationMs() {
        try {
            return _getDurationMs();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return 0L;
        }
    }

    public TPDynamicStatisticParams getDynamicStatisticParams(boolean z10) {
        try {
            return _getDynamicStatisticParams(z10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return null;
        }
    }

    public TPGeneralPlayFlowParams getGeneralPlayFlowParams() {
        try {
            return _getGeneralPlayFlowParams();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return null;
        }
    }

    public Object getPlayerCoreParams(int i9) {
        return null;
    }

    public int getPlayerID() {
        try {
            return _getPlayerID();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return 0;
        }
    }

    public int getProgramCount() {
        try {
            return _getProgramCount();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public TPNativePlayerProgramInfo[] getProgramInfo() {
        try {
            int _getProgramCount = _getProgramCount();
            TPNativePlayerProgramInfo[] tPNativePlayerProgramInfoArr = new TPNativePlayerProgramInfo[_getProgramCount];
            for (int i9 = 0; i9 < _getProgramCount; i9++) {
                tPNativePlayerProgramInfoArr[i9] = _getProgramInfo(i9);
            }
            return tPNativePlayerProgramInfoArr;
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return null;
        }
    }

    public long getPropertyLong(int i9) {
        try {
            return _getPropertyLong(i9);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return 0L;
        }
    }

    public String getPropertyString(int i9) {
        try {
            return _getPropertyString(i9);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return "";
        }
    }

    public TPMediaTrackInfo[] getTrackInfo() {
        try {
            int _getTrackCount = _getTrackCount();
            if (_getTrackCount > 0) {
                TPMediaTrackInfo[] tPMediaTrackInfoArr = new TPMediaTrackInfo[_getTrackCount];
                for (int i9 = 0; i9 < _getTrackCount; i9++) {
                    tPMediaTrackInfoArr[i9] = new TPMediaTrackInfo();
                    tPMediaTrackInfoArr[i9].trackType = _getTrackType(i9);
                    tPMediaTrackInfoArr[i9].contianerType = _getContainerType(i9);
                    tPMediaTrackInfoArr[i9].trackName = _getTrackName(i9);
                    tPMediaTrackInfoArr[i9].isSelected = _getTrackIsSelected(i9);
                    tPMediaTrackInfoArr[i9].isExclusive = _getTrackIsExclusive(i9);
                    tPMediaTrackInfoArr[i9].isInternal = _getTrackIsInternal(i9);
                    if (tPMediaTrackInfoArr[i9].contianerType == 1) {
                        TPNativePlayerHlsTag _getTrackHlsTag = _getTrackHlsTag(i9);
                        tPMediaTrackInfoArr[i9].hlsTag.name = _getTrackHlsTag.name;
                        tPMediaTrackInfoArr[i9].hlsTag.language = _getTrackHlsTag.language;
                        tPMediaTrackInfoArr[i9].hlsTag.groupId = _getTrackHlsTag.groupId;
                        tPMediaTrackInfoArr[i9].hlsTag.resolution = _getTrackHlsTag.resolution;
                        tPMediaTrackInfoArr[i9].hlsTag.codecs = _getTrackHlsTag.codecs;
                        tPMediaTrackInfoArr[i9].hlsTag.framerate = _getTrackHlsTag.framerate;
                        tPMediaTrackInfoArr[i9].hlsTag.bandwidth = _getTrackHlsTag.bandwidth;
                    } else if (tPMediaTrackInfoArr[i9].contianerType == 2) {
                        tPMediaTrackInfoArr[i9].dashFormat = _getTrackDashFormat(i9);
                    }
                }
                return tPMediaTrackInfoArr;
            }
            return null;
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return null;
        }
    }

    public int getVideoHeight() {
        try {
            return _getVideoHeight();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return 0;
        }
    }

    public int getVideoWidth() {
        try {
            return _getVideoWidth();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return 0;
        }
    }

    public int pause() {
        try {
            return _pause();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int prepare() {
        try {
            return _prepare();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int prepareAsync() {
        try {
            return _prepareAsync();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public void release() {
        try {
            _release();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    public void reset() {
        try {
            _reset();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    public int seekToAsync(int i9, int i10, long j10) {
        try {
            return _seekToAsync(i9, i10, j10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int selectProgramAsync(int i9, long j10) {
        try {
            return _selectProgramAsync(i9, j10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int selectTrackAsync(int i9, long j10) {
        try {
            return _selectTrackAsync(i9, j10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setAudioFrameCallback(ITPNativePlayerAudioFrameCallback iTPNativePlayerAudioFrameCallback) {
        try {
            return _setAudioFrameCallback(iTPNativePlayerAudioFrameCallback);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setAudioMute(boolean z10) {
        try {
            return _setAudioMute(z10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setAudioNormalizeVolumeParams(String str) {
        try {
            return _setAudioNormalizeVolumeParams(str);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setAudioVolume(float f10) {
        try {
            return _setAudioVolume(f10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setDataSource(int i9, long j10, long j11) {
        try {
            return _setDataSourceFd(i9, j10, j11);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setDataSource(String str) {
        try {
            return _setDataSource(str);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setDataSource(String str, Map<String, String> map) {
        try {
            return _setDataSourceWithHttpHeader(str, TPNativePlayerUtils.tpMapStringToStringArray(map));
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setDemuxerCallback(ITPNativeDemuxerCallback iTPNativeDemuxerCallback) {
        try {
            return _setDemuxerCallback(iTPNativeDemuxerCallback);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setEventRecordCallback(ITPNativePlayerEventRecordCallback iTPNativePlayerEventRecordCallback) {
        try {
            return _setEventRecordCallback(iTPNativePlayerEventRecordCallback);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public void setInitConfig(TPNativePlayerInitConfig tPNativePlayerInitConfig) {
        try {
            _resetInitConfig();
            HashMap<Integer, Integer> intMap = tPNativePlayerInitConfig.getIntMap();
            HashMap<Integer, Long> longMap = tPNativePlayerInitConfig.getLongMap();
            HashMap<Integer, Float> floatMap = tPNativePlayerInitConfig.getFloatMap();
            HashMap<Integer, Boolean> boolMap = tPNativePlayerInitConfig.getBoolMap();
            HashMap<Integer, Vector<Integer>> queueIntMap = tPNativePlayerInitConfig.getQueueIntMap();
            HashMap<Integer, Object> objectMap = tPNativePlayerInitConfig.getObjectMap();
            HashMap<Integer, String> stringMap = tPNativePlayerInitConfig.getStringMap();
            for (Map.Entry<Integer, Integer> entry : intMap.entrySet()) {
                _setInitConfigInt(entry.getKey().intValue(), entry.getValue().intValue());
            }
            for (Map.Entry<Integer, Long> entry2 : longMap.entrySet()) {
                _setInitConfigLong(entry2.getKey().intValue(), entry2.getValue().longValue());
            }
            for (Map.Entry<Integer, Float> entry3 : floatMap.entrySet()) {
                _setInitConfigFloat(entry3.getKey().intValue(), entry3.getValue().floatValue());
            }
            for (Map.Entry<Integer, Boolean> entry4 : boolMap.entrySet()) {
                _setInitConfigBool(entry4.getKey().intValue(), entry4.getValue().booleanValue());
            }
            for (Map.Entry<Integer, Object> entry5 : objectMap.entrySet()) {
                _setInitConfigObject(entry5.getKey().intValue(), entry5.getValue());
            }
            for (Map.Entry<Integer, Vector<Integer>> entry6 : queueIntMap.entrySet()) {
                Vector<Integer> value = entry6.getValue();
                if (value != null) {
                    Iterator<Integer> it = value.iterator();
                    while (it.hasNext()) {
                        _addInitConfigQueueInt(entry6.getKey().intValue(), it.next().intValue());
                    }
                }
            }
            for (Map.Entry<Integer, String> entry7 : stringMap.entrySet()) {
                String value2 = entry7.getValue();
                _setInitConfigString(entry7.getKey().intValue(), value2 != null ? value2 : null);
            }
            for (Map.Entry<Integer, Vector<String>> entry8 : tPNativePlayerInitConfig.getQueueStringMap().entrySet()) {
                Vector<String> value3 = entry8.getValue();
                if (value3 != null) {
                    Iterator<String> it2 = value3.iterator();
                    while (it2.hasNext()) {
                        _addInitConfigQueueString(entry8.getKey().intValue(), it2.next());
                    }
                }
            }
            _applyInitConfig();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
        }
    }

    public int setLoopback(boolean z10, long j10, long j11) {
        try {
            return _setLoopback(z10, j10, j11);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setMessageCallback(ITPNativePlayerMessageCallback iTPNativePlayerMessageCallback) {
        try {
            return _setMessageCallback(iTPNativePlayerMessageCallback);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setOptionLong(int i9, long j10, long j11) {
        try {
            return _setOptionLong(i9, j10, j11);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setOptionObject(int i9, Object obj) {
        try {
            return _setOptionObject(i9, obj);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setPlaybackRate(float f10) {
        try {
            return _setPlaybackRate(f10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setPostProcessFrameCallback(ITPNativePlayerPostProcessFrameCallback iTPNativePlayerPostProcessFrameCallback) {
        try {
            return _setPostProcessFrameCallback(iTPNativePlayerPostProcessFrameCallback);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setSubtitleFrameCallback(ITPNativePlayerSubtitleFrameCallback iTPNativePlayerSubtitleFrameCallback) {
        try {
            return _setSubtitleFrameCallback(iTPNativePlayerSubtitleFrameCallback);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setVideoFrameCallback(ITPNativePlayerVideoFrameCallback iTPNativePlayerVideoFrameCallback) {
        try {
            return _setVideoFrameCallback(iTPNativePlayerVideoFrameCallback);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setVideoSurface(Surface surface) {
        try {
            return _setVideoSurface(surface);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int setVideoSurfaceWithType(Surface surface, int i9) {
        try {
            return _setVideoSurfaceWithType(surface, i9);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int start() {
        try {
            return _start();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int stop() {
        try {
            return _stop();
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    public int switchDefinitionAsync(String str, int i9, long j10) {
        try {
            return _switchDefinitionAsync(str, i9, j10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }

    @Deprecated
    public int switchDefinitionAsync(String str, long j10) {
        return switchDefinitionAsync(str, 0, j10);
    }

    public int switchDefinitionAsync(String str, Map<String, String> map, int i9, long j10) {
        try {
            return _switchDefinitionAsyncWithHttpHeader(str, TPNativePlayerUtils.tpMapStringToStringArray(map), i9, j10);
        } catch (Throwable th2) {
            TPNativeLog.printLog(4, th2.getMessage());
            return TPGeneralError.FAILED;
        }
    }
}

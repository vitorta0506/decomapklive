package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.api.proxy.ITPPreloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.Map;
/* loaded from: classes4.dex */
public class f implements ITPPreloadProxy.IPreloadListener, ITPPlayListener {

    /* renamed from: a  reason: collision with root package name */
    private String f33857a;

    public f(String str) {
        this.f33857a = str;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getAdvRemainTime() {
        TPLogUtil.i(this.f33857a, " empty proxy player listener , notify , getAdvRemainTime");
        return 0L;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public String getContentType(int i9, String str) {
        return null;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public int getCurrentPlayClipNo() {
        TPLogUtil.i(this.f33857a, " empty proxy player listener , notify , getCurrentPlayClipNo");
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getCurrentPlayOffset() {
        TPLogUtil.i(this.f33857a, " empty proxy player listener , notify , getCurrentPlayOffset");
        return -1L;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getCurrentPosition() {
        TPLogUtil.i(this.f33857a, " empty proxy player listener , notify , getCurrentPosition");
        return 0L;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public String getDataFilePath(int i9, String str) {
        return null;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getDataTotalSize(int i9, String str) {
        return 0L;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public Object getPlayInfo(long j10) {
        TPLogUtil.i(this.f33857a, " empty proxy player listener , notify , getPlayInfo with type : ".concat(String.valueOf(j10)));
        return null;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public Object getPlayInfo(String str) {
        TPLogUtil.i(this.f33857a, " empty proxy player listener , notify , getPlayInfo with key : ".concat(String.valueOf(str)));
        return null;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public long getPlayerBufferLength() {
        TPLogUtil.i(this.f33857a, " empty proxy player listener , notify , getPlayerBufferLength");
        return 0L;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadCdnUrlExpired(Map<String, String> map) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadCdnUrlUpdate(String str) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadError(int i9, int i10, String str) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadFinish() {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str) {
        String str2 = this.f33857a;
        TPLogUtil.i(str2, " empty proxy player listener , notify , onPlayProgress, current : " + j10 + ", total : " + j11);
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadProtocolUpdate(String str, String str2) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public void onDownloadStatusUpdate(int i9) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public Object onPlayCallback(int i9, Object obj, Object obj2, Object obj3, Object obj4) {
        String str = this.f33857a;
        TPLogUtil.i(str, " empty proxy player listener , notify , onPlayCallback, messageType : " + i9 + ",ext1:" + obj + ",ext2:" + obj2 + ",ext3" + obj3 + ",ext4" + obj4);
        return null;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy.IPreloadListener
    public void onPrepareDownloadProgressUpdate(int i9, int i10, long j10, long j11) {
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy.IPreloadListener
    public void onPrepareError() {
        TPLogUtil.i(this.f33857a, " empty proxy player listener , notify , onPrepareError : ");
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy.IPreloadListener
    public void onPrepareSuccess() {
        TPLogUtil.i(this.f33857a, " empty proxy player listener , notify , onPrepareSuccess : ");
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public int onReadData(int i9, String str, long j10, long j11) {
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public int onStartReadData(int i9, String str, long j10, long j11) {
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
    public int onStopReadData(int i9, String str, int i10) {
        return 0;
    }
}

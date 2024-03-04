package com.tencent.rtmp.downloader;

import android.text.TextUtils;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import com.tencent.liteav.base.storage.PersistStorage;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcvodplayer.b.c;
import com.tencent.liteav.txcvodplayer.c.a;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.downloader.ITXVodDownloadListener;
import com.tencent.rtmp.downloader.TXVodDownloadManager;
import com.tencent.rtmp.downloader.a.b;
import com.tencent.rtmp.downloader.a.c;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class TXVodDownloadManager {
    public static final int DOWNLOAD_403FORBIDDEN = -5008;
    public static final int DOWNLOAD_AUTH_FAILED = -5001;
    public static final int DOWNLOAD_DISCONNECT = -5005;
    public static final int DOWNLOAD_FORMAT_ERROR = -5004;
    public static final int DOWNLOAD_HLS_KEY_ERROR = -5006;
    public static final int DOWNLOAD_NO_FILE = -5003;
    public static final int DOWNLOAD_PATH_ERROR = -5007;
    public static final int DOWNLOAD_SUCCESS = 0;
    private static final String TAG = "TXVodDownloadManager";
    private static TXVodDownloadManager sInstance;
    private final b mManagerImpl = new b();

    private TXVodDownloadManager() {
    }

    public static TXVodDownloadManager getInstance() {
        synchronized (TXVodDownloadManager.class) {
            if (sInstance == null) {
                sInstance = new TXVodDownloadManager();
            }
        }
        return sInstance;
    }

    @Deprecated
    public boolean deleteDownloadFile(String str) {
        return this.mManagerImpl.a(str);
    }

    public boolean deleteDownloadMediaInfo(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        b bVar = this.mManagerImpl;
        if (bVar.a(tXVodDownloadMediaInfo.getPlayPath())) {
            String b10 = b.b(tXVodDownloadMediaInfo);
            PersistStorage persistStorage = bVar.f33408d;
            if (persistStorage != null) {
                persistStorage.clear(b10);
                PersistStorage persistStorage2 = bVar.f33408d;
                persistStorage2.clear(b10 + "_kv");
                bVar.f33408d.commit();
                TXVodDownloadDataSource dataSource = tXVodDownloadMediaInfo.getDataSource();
                if (dataSource != null && !TextUtils.isEmpty(dataSource.getOverlayKey())) {
                    a a10 = a.a();
                    int appId = dataSource.getAppId();
                    String fileId = dataSource.getFileId();
                    if (!TextUtils.isEmpty(fileId)) {
                        a10.f31578b.clear(a.a(appId, fileId));
                        a10.f31578b.commit();
                    }
                }
                LiteavLog.i("TXVodDownloadManagerImpl", "delete DownloadMediaInfo and file complete");
                return true;
            }
            return false;
        }
        return false;
    }

    public TXVodDownloadMediaInfo getDownloadMediaInfo(int i9, String str, int i10) {
        return this.mManagerImpl.a(i9, str, i10);
    }

    public List<TXVodDownloadMediaInfo> getDownloadMediaInfoList() {
        return this.mManagerImpl.a();
    }

    @Deprecated
    public void setDownloadPath(String str) {
        this.mManagerImpl.f33405a.setDownloadPath(str);
    }

    public void setHeaders(Map<String, String> map) {
        this.mManagerImpl.f33405a.setHeaders(map);
    }

    public void setListener(ITXVodDownloadListener iTXVodDownloadListener) {
        this.mManagerImpl.f33407c = iTXVodDownloadListener;
    }

    public TXVodDownloadMediaInfo startDownload(TXVodDownloadDataSource tXVodDownloadDataSource) {
        final b bVar = this.mManagerImpl;
        if (tXVodDownloadDataSource.getAuthBuilder() != null) {
            LiteavLog.w("TXVodDownloadManagerImpl", "startDownloadV2");
            return bVar.a(tXVodDownloadDataSource);
        }
        LiteavLog.w("TXVodDownloadManagerImpl", "startDownloadV4");
        com.tencent.rtmp.downloader.a.a aVar = new com.tencent.rtmp.downloader.a.a(tXVodDownloadDataSource.getAppId(), tXVodDownloadDataSource.getFileId(), tXVodDownloadDataSource.getQuality(), tXVodDownloadDataSource.getPSign(), tXVodDownloadDataSource.getUserName());
        final c cVar = new c();
        cVar.a(aVar);
        c a10 = bVar.a((TXVodDownloadMediaInfo) cVar);
        if (a10 != null) {
            return a10;
        }
        new com.tencent.liteav.txcvodplayer.b.c(new TXPlayInfoParams(aVar.getAppId(), aVar.getFileId(), aVar.getPSign())).a(new c.a() { // from class: com.tencent.rtmp.downloader.a.b.2
            @Override // com.tencent.liteav.txcvodplayer.b.c.a
            public final void a(com.tencent.liteav.txcvodplayer.b.c cVar2, TXPlayInfoParams tXPlayInfoParams) {
                LiteavLog.i("TXVodDownloadManagerImpl", "onSuccess: protocol params = " + tXPlayInfoParams.toString());
                if (cVar.getDownloadState() == 2) {
                    synchronized (bVar.f33406b) {
                        bVar.f33406b.remove(cVar);
                    }
                    ITXVodDownloadListener iTXVodDownloadListener = bVar.f33407c;
                    if (iTXVodDownloadListener != null) {
                        iTXVodDownloadListener.onDownloadStop(cVar);
                    }
                    LiteavLog.w("TXVodDownloadManagerImpl", "Download task canceled");
                    return;
                }
                if ("SimpleAES".equalsIgnoreCase(cVar2.d()) && !TextUtils.isEmpty(cVar2.f31520d) && !TextUtils.isEmpty(cVar2.f31521e)) {
                    a aVar2 = (a) cVar.getDataSource();
                    String a11 = TXCHLSEncoder.a(aVar2.getAppId(), aVar2.getUserName(), aVar2.getFileId(), aVar2.getQuality());
                    String a12 = TXCHLSEncoder.a(a11, cVar2.f31520d);
                    String a13 = TXCHLSEncoder.a(a11, cVar2.f31521e);
                    if (!TextUtils.isEmpty(a12) && !TextUtils.isEmpty(a13)) {
                        aVar2.a(a12);
                        aVar2.b(a13);
                        com.tencent.liteav.txcvodplayer.c.a a14 = com.tencent.liteav.txcvodplayer.c.a.a();
                        int appId = tXPlayInfoParams.getAppId();
                        String fileId = tXPlayInfoParams.getFileId();
                        String str = cVar2.f31520d;
                        String str2 = cVar2.f31521e;
                        if (!TextUtils.isEmpty(fileId) && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                            com.tencent.liteav.txcplayer.common.a.a().execute(com.tencent.liteav.txcvodplayer.c.c.a(a14, appId, fileId, str, str2));
                        } else {
                            LiteavLog.w("PlayInfoProtocolV4Storage", "put params empty fileId: " + fileId + " overlayKey:" + str + " overlayIv:" + str2);
                        }
                    } else {
                        LiteavLog.e("TXVodDownloadManagerImpl", "create local key exception!");
                        return;
                    }
                }
                b.a(bVar, cVar, cVar2);
            }

            @Override // com.tencent.liteav.txcvodplayer.b.c.a
            public final void a(int i9, String str) {
                LiteavLog.w("TXVodDownloadManagerImpl", "onFail: errorCode = " + i9 + " message = " + str);
                synchronized (bVar.f33406b) {
                    bVar.f33406b.remove(cVar);
                }
                ITXVodDownloadListener iTXVodDownloadListener = bVar.f33407c;
                if (iTXVodDownloadListener != null) {
                    iTXVodDownloadListener.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_AUTH_FAILED, str);
                }
            }
        });
        return cVar;
    }

    @Deprecated
    public TXVodDownloadMediaInfo startDownloadUrl(String str) {
        return this.mManagerImpl.a(str, V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND);
    }

    public void stopDownload(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        b bVar = this.mManagerImpl;
        if (tXVodDownloadMediaInfo != null) {
            if (tXVodDownloadMediaInfo.getTaskId() < 0) {
                LiteavLog.w("TXVodDownloadManagerImpl", "stop download not start task");
                return;
            }
            bVar.f33405a.stop(tXVodDownloadMediaInfo.getTaskId());
            LiteavLog.d("TXVodDownloadManagerImpl", "stop download " + tXVodDownloadMediaInfo.getUrl());
        }
    }

    public TXVodDownloadMediaInfo getDownloadMediaInfo(String str) {
        return this.mManagerImpl.b(str);
    }

    public TXVodDownloadMediaInfo startDownloadUrl(String str, String str2) {
        return this.mManagerImpl.a(str, str2);
    }
}

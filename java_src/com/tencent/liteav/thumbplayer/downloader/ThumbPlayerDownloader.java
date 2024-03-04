package com.tencent.liteav.thumbplayer.downloader;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.gyailib.library.BuildConfig;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcplayer.a.a;
import com.tencent.liteav.txcplayer.common.b;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class ThumbPlayerDownloader extends a {
    private static final String THUMB_PLAYER_GUID = "liteav_tbplayer_android_";
    private static final int THUMB_PLAYER_PLATFORM_ID = 2330303;

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f31297a = 0;
    private static ThumbPlayerDownloader sInstance;
    private ITPDownloadProxy mTpDownloadProxy = TPDownloadProxyFactory.getTPDownloadProxy(THUMB_PLAYER_PLATFORM_ID);

    private ThumbPlayerDownloader(Context context) {
        File externalFilesDir;
        if (context != null) {
            String a10 = b.a();
            this.mDownloadPath = a10;
            try {
                if (TextUtils.isEmpty(a10) && (externalFilesDir = context.getExternalFilesDir(null)) != null) {
                    this.mDownloadPath = externalFilesDir.getAbsolutePath() + "/txcache";
                }
                if (!TextUtils.isEmpty(this.mDownloadPath)) {
                    File file = new File(this.mDownloadPath);
                    if (!file.exists() || !file.isDirectory()) {
                        file.mkdirs();
                    }
                }
            } catch (Exception e10) {
                String str = a.TAG;
                LiteavLog.e(str, "downloader init exception: " + e10.getLocalizedMessage());
            }
            this.mTpDownloadProxy.init(context, new TPDLProxyInitParam(THUMB_PLAYER_PLATFORM_ID, BuildConfig.VERSION_NAME, THUMB_PLAYER_GUID + context.getPackageName(), this.mDownloadPath));
        }
    }

    public static ThumbPlayerDownloader getInstance(Context context) {
        synchronized (ThumbPlayerDownloader.class) {
            if (sInstance == null) {
                sInstance = new ThumbPlayerDownloader(context);
            }
        }
        return sInstance;
    }

    @Override // com.tencent.liteav.txcplayer.a.a
    public boolean deleteDownloadFile(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (str.contains(".sqlite")) {
                new File(str).delete();
                return true;
            }
        } catch (Throwable unused) {
            LiteavLog.d(a.TAG, "deleteDownloadFile!");
        }
        String substring = str.substring(0, str.indexOf(".hls") + 4);
        String substring2 = substring.substring(substring.lastIndexOf(FileUtils.RES_PREFIX_STORAGE) + 1);
        return !TextUtils.isEmpty(substring2) && this.mTpDownloadProxy.removeStorageCache(substring2) == 0;
    }

    @Override // com.tencent.liteav.txcplayer.a.a
    public int downloadHls(String str, String str2) {
        if (!TextUtils.isEmpty(str2) && str2.contains(".hls")) {
            String substring = str2.substring(0, str2.indexOf(".hls") + 4);
            String substring2 = substring.substring(substring.lastIndexOf(FileUtils.RES_PREFIX_STORAGE) + 1);
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            TPDownloadParam tPDownloadParam = new TPDownloadParam(arrayList, 3, null);
            Map<String, String> map = this.mHeaders;
            if (map != null && map.size() > 0) {
                HashMap hashMap = new HashMap();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(this.mHeaders);
                hashMap.put(TPDownloadProxyEnum.DLPARAM_URL_HEADER, arrayList2);
                tPDownloadParam.setExtInfoMap(hashMap);
            }
            final com.tencent.liteav.txcplayer.a.b bVar = new com.tencent.liteav.txcplayer.a.b();
            bVar.f31347b = str;
            int startOfflineDownload = this.mTpDownloadProxy.startOfflineDownload(substring2, tPDownloadParam, new ITPOfflineDownloadListener() { // from class: com.tencent.liteav.thumbplayer.downloader.ThumbPlayerDownloader.1
                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
                public void onDownloadCdnUrlExpired(Map<String, String> map2) {
                    LiteavLog.d(a.TAG, "onDownloadCdnUrlExpired!");
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
                public void onDownloadCdnUrlInfoUpdate(String str3, String str4, String str5, String str6) {
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
                public void onDownloadCdnUrlUpdate(String str3) {
                    LiteavLog.d(a.TAG, "onDownloadCdnUrlUpdate! url:".concat(String.valueOf(str3)));
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
                public void onDownloadError(int i9, int i10, String str3) {
                    String str4 = a.TAG;
                    LiteavLog.d(str4, "HLS offline download error! moduleID:" + i9 + ", errCode:" + i10);
                    if (ThumbPlayerDownloader.this.mDownloadListener != null) {
                        ThumbPlayerDownloader.this.mDownloadListener.a(bVar, i10, str3);
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
                public void onDownloadFinish() {
                    if (ThumbPlayerDownloader.this.mDownloadListener != null) {
                        ThumbPlayerDownloader.this.mDownloadListener.c(bVar);
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
                public void onDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str3) {
                    if (j10 > 1024) {
                        int i11 = (int) j10;
                        com.tencent.liteav.txcplayer.a.b bVar2 = bVar;
                        if (i11 != bVar2.f31348c) {
                            bVar2.f31348c = i11;
                        }
                    }
                    com.tencent.liteav.txcplayer.a.b bVar3 = bVar;
                    bVar3.f31349d = (int) j11;
                    bVar3.f31350e = i10;
                    bVar3.f31353h = i9;
                    if (bVar3.f31354i <= 0 && !TextUtils.isEmpty(str3) && str3.contains("totalDuration")) {
                        String[] split = str3.split(",");
                        int length = split.length;
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length) {
                                break;
                            }
                            String str4 = split[i12];
                            if (str4.contains("totalDuration")) {
                                bVar.f31354i = Integer.valueOf(str4.split(CertificateUtil.DELIMITER)[1]).intValue() * 1000;
                                break;
                            }
                            i12++;
                        }
                    }
                    if (ThumbPlayerDownloader.this.mDownloadListener != null) {
                        ThumbPlayerDownloader.this.mDownloadListener.d(bVar);
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
                public void onDownloadProtocolUpdate(String str3, String str4) {
                    String str5 = a.TAG;
                    LiteavLog.d(str5, "onDownloadProtocolUpdate! protocol:" + str3 + ", protocolVer:" + str4);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
                public void onDownloadStatusUpdate(int i9) {
                    LiteavLog.d(a.TAG, "onDownloadStatusUpdate! statusCode:".concat(String.valueOf(i9)));
                }
            });
            this.mTpDownloadProxy.startTask(startOfflineDownload);
            bVar.f31346a = startOfflineDownload;
            a.InterfaceC0321a interfaceC0321a = this.mDownloadListener;
            if (interfaceC0321a != null) {
                interfaceC0321a.a(bVar);
            }
            return startOfflineDownload;
        }
        return -1;
    }

    @Override // com.tencent.liteav.txcplayer.a.a
    public String makePlayPath(String str) {
        String a10 = b.a();
        if (!TextUtils.equals(this.mDownloadPath, a10)) {
            if (!TextUtils.isEmpty(a10)) {
                this.mDownloadPath = a10;
                this.mTpDownloadProxy.updateStoragePath(a10);
            } else {
                b.a(this.mDownloadPath);
            }
        }
        if (Uri.parse(str).getPath().endsWith(".m3u8")) {
            return this.mDownloadPath + FileUtils.RES_PREFIX_STORAGE + com.tencent.liteav.txcplayer.b.a.b(str) + ".hls?" + str;
        }
        LiteavLog.e(a.TAG, "Unsupported format");
        return null;
    }

    @Override // com.tencent.liteav.txcplayer.a.a
    public void setDownloadPath(String str) {
        super.setDownloadPath(str);
        this.mTpDownloadProxy.updateStoragePath(this.mDownloadPath);
    }

    @Override // com.tencent.liteav.txcplayer.a.a
    public void stop(int i9) {
        if (this.mTpDownloadProxy.pauseDownload(i9) != 0 || this.mDownloadListener == null) {
            return;
        }
        com.tencent.liteav.txcplayer.a.b bVar = new com.tencent.liteav.txcplayer.a.b();
        bVar.f31346a = i9;
        this.mDownloadListener.b(bVar);
    }
}

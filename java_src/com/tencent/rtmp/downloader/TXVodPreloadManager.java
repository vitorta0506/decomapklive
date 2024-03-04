package com.tencent.rtmp.downloader;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.gyailib.library.BuildConfig;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class TXVodPreloadManager {
    private static final String TAG = "TXVodPreloadManager";
    private static final String THUMB_PLAYER_GUID = "liteav_tbplayer_android_";
    private static final int THUMB_PLAYER_PLATFORM_ID = 2330303;
    private static Context mAppContext;
    private boolean mInit;
    private ITPDownloadProxy mTpDownloadProxy;

    /* loaded from: classes4.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        static TXVodPreloadManager f33401a = new TXVodPreloadManager();
    }

    /* loaded from: classes4.dex */
    static class b implements ITPPreLoadListener {

        /* renamed from: a  reason: collision with root package name */
        int f33402a = -1;

        /* renamed from: b  reason: collision with root package name */
        private final ITXVodPreloadListener f33403b;

        /* renamed from: c  reason: collision with root package name */
        private final String f33404c;

        public b(String str, ITXVodPreloadListener iTXVodPreloadListener) {
            this.f33404c = str;
            this.f33403b = iTXVodPreloadListener;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public final void onPrepareDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str) {
            LiteavLog.d(TXVodPreloadManager.TAG, "preload: prepare process:" + i9 + "," + i10 + "," + j10 + "," + j11);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public final void onPrepareError(int i9, int i10, String str) {
            LiteavLog.d(TXVodPreloadManager.TAG, "preload error: moduleId: " + i9 + ", errorCode: " + i10 + ", extInfo: " + str);
            ITXVodPreloadListener iTXVodPreloadListener = this.f33403b;
            if (iTXVodPreloadListener != null) {
                iTXVodPreloadListener.onError(this.f33402a, this.f33404c, i10, str);
            }
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public final void onPrepareOK() {
            LiteavLog.d(TXVodPreloadManager.TAG, "preload: onPrepareOK");
            ITXVodPreloadListener iTXVodPreloadListener = this.f33403b;
            if (iTXVodPreloadListener != null) {
                iTXVodPreloadListener.onComplete(this.f33402a, this.f33404c);
            }
        }
    }

    private synchronized Pair<Integer, String> checkInit() {
        ITPDownloadProxy tPDownloadProxy = TPDownloadProxyFactory.getTPDownloadProxy(THUMB_PLAYER_PLATFORM_ID);
        this.mTpDownloadProxy = tPDownloadProxy;
        if (tPDownloadProxy != null) {
            int b10 = com.tencent.liteav.txcplayer.common.b.b();
            if (b10 < 0) {
                return new Pair<>(-1, "MaxCacheSize not set.");
            }
            String a10 = com.tencent.liteav.txcplayer.common.b.a();
            if (TextUtils.equals(a10, "NO_SET")) {
                return new Pair<>(-2, "CacheFolderPath not set.");
            }
            if (!this.mInit) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("VodCacheReserveSizeMB", b10);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.mTpDownloadProxy.init(mAppContext, new TPDLProxyInitParam(THUMB_PLAYER_PLATFORM_ID, BuildConfig.VERSION_NAME, THUMB_PLAYER_GUID + mAppContext.getPackageName(), null, a10, jSONObject.toString()));
                this.mInit = true;
            }
            this.mTpDownloadProxy.updateStoragePath(a10);
            this.mTpDownloadProxy.setMaxStorageSizeMB(b10);
            return new Pair<>(0, null);
        }
        return new Pair<>(-3, "Inner error.");
    }

    public static TXVodPreloadManager getInstance(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            mAppContext = applicationContext;
            ContextUtils.initApplicationContext(applicationContext);
            ContextUtils.setDataDirectorySuffix("liteav");
            return a.f33401a;
        }
        return null;
    }

    public int startPreload(String str, int i9, long j10, ITXVodPreloadListener iTXVodPreloadListener) {
        Pair<Integer, String> checkInit = checkInit();
        if (((Integer) checkInit.first).intValue() < 0) {
            if (iTXVodPreloadListener != null) {
                iTXVodPreloadListener.onError(-1, str, ((Integer) checkInit.first).intValue(), (String) checkInit.second);
            }
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        HashMap hashMap = new HashMap();
        hashMap.put(TPDownloadProxyEnum.DLPARAM_PRELOAD_SIZE, Integer.valueOf(i9 * 1024 * 1024));
        hashMap.put(TPDownloadProxyEnum.DLPARAM_PREFERRED_RESOLUTION, Long.valueOf(j10));
        TPDownloadParam tPDownloadParam = new TPDownloadParam(arrayList, 0, hashMap);
        b bVar = new b(str, iTXVodPreloadListener);
        int startPreload = this.mTpDownloadProxy.startPreload(com.tencent.liteav.txcplayer.b.a.d(str), tPDownloadParam, bVar);
        bVar.f33402a = startPreload;
        return startPreload;
    }

    public void stopPreload(int i9) {
        if (((Integer) checkInit().first).intValue() < 0) {
            return;
        }
        this.mTpDownloadProxy.stopPreload(i9);
    }

    private TXVodPreloadManager() {
        this.mInit = false;
    }
}

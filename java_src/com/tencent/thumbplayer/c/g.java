package com.tencent.thumbplayer.c;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.tencent.thumbplayer.api.proxy.ITPPreloadProxy;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4.dex */
public class g implements ITPPreloadProxy {

    /* renamed from: a  reason: collision with root package name */
    private Context f33858a;

    /* renamed from: b  reason: collision with root package name */
    private int f33859b;

    /* renamed from: c  reason: collision with root package name */
    private ITPDownloadProxy f33860c;

    /* renamed from: f  reason: collision with root package name */
    private boolean f33863f = false;

    /* renamed from: d  reason: collision with root package name */
    private a f33861d = new a();

    /* renamed from: e  reason: collision with root package name */
    private ITPPreloadProxy.IPreloadListener f33862e = new f("TPPreloadProxyImpl");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ITPDLProxyLogListener, ITPPreLoadListener {
        private a() {
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int d(String str, int i9, String str2, String str3) {
            TPLogUtil.d(str2, "[" + str + CertificateUtil.DELIMITER + i9 + "] " + str3);
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int e(String str, int i9, String str2, String str3) {
            TPLogUtil.e(str2, "[" + str + CertificateUtil.DELIMITER + i9 + "] " + str3);
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int i(String str, int i9, String str2, String str3) {
            TPLogUtil.i(str2, "[" + str + CertificateUtil.DELIMITER + i9 + "] " + str3);
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public void onPrepareDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str) {
            g.this.f33862e.onPrepareDownloadProgressUpdate(i9, i10, j10, j11);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public void onPrepareError(int i9, int i10, String str) {
            g.this.f33862e.onPrepareError();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public void onPrepareOK() {
            g.this.f33862e.onPrepareSuccess();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int w(String str, int i9, String str2, String str3) {
            TPLogUtil.w(str2, "[" + str + CertificateUtil.DELIMITER + i9 + "] " + str3);
            return 0;
        }
    }

    public g(Context context, int i9) {
        this.f33858a = context;
        this.f33859b = i9;
        a();
    }

    private void a() {
        b a10;
        int i9 = 3;
        while (i9 > 0 && !this.f33863f) {
            try {
                a10 = i.a().a(this.f33859b);
            } catch (Exception e10) {
                i9--;
                TPLogUtil.e("TPPreloadProxyImpl", e10);
            }
            if (a10 != null && a10.a() != null) {
                ITPDownloadProxy a11 = a10.a();
                this.f33860c = a11;
                a11.setLogListener(this.f33861d);
                this.f33860c.setUserData(TPDownloadProxyEnum.USER_IS_VIP, Boolean.valueOf(TPPlayerConfig.isUserIsVip()));
                if (!TextUtils.isEmpty(TPPlayerConfig.getUserUin())) {
                    this.f33860c.setUserData(TPDownloadProxyEnum.USER_UIN, TPPlayerConfig.getUserUin());
                }
                if (!TextUtils.isEmpty(TPPlayerConfig.getAppVersionName(this.f33858a))) {
                    this.f33860c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION, TPPlayerConfig.getAppVersionName(this.f33858a));
                }
                if (TPPlayerConfig.getBuildNumber(this.f33858a) != -1) {
                    this.f33860c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION_CODE, String.valueOf(TPPlayerConfig.getBuildNumber(this.f33858a)));
                }
                this.f33860c.setUserData(TPDownloadProxyEnum.USER_UPC, TPPlayerConfig.getUserUpc());
                this.f33860c.setUserData(TPDownloadProxyEnum.USER_UPC_STATE, Integer.valueOf(TPPlayerConfig.getUserUpcState()));
                this.f33860c.setUserData(TPDownloadProxyEnum.USER_EXTERNAL_NETWORK_IP, TPPlayerConfig.getOutNetIp());
                this.f33863f = true;
                return;
            }
            i9--;
            TPLogUtil.e("TPPreloadProxyImpl", "p2p so load failed");
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public String getPlayErrorCodeStr(int i9) {
        return null;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public boolean isAvailable() {
        return this.f33860c != null && this.f33863f;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public void pushEvent(int i9) {
        if (isAvailable()) {
            try {
                this.f33860c.pushEvent(i9);
            } catch (Throwable th2) {
                TPLogUtil.e("TPPreloadProxyImpl", th2);
            }
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public void setPreloadListener(ITPPreloadProxy.IPreloadListener iPreloadListener) {
        if (iPreloadListener == null) {
            this.f33862e = new f("TPPreloadProxyImpl");
        } else {
            this.f33862e = iPreloadListener;
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public int startClipPreload(String str, ArrayList<TPDownloadParamData> arrayList) {
        TPLogUtil.i("TPPreloadProxyImpl", "[startClipPreload] Preloading clips.");
        if (arrayList == null) {
            TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to start clip preload: null download parameter list.");
            return -1;
        }
        if (!isAvailable()) {
            a();
            if (!isAvailable()) {
                TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to initialize proxy.");
                return -1;
            }
        }
        int startClipPreload = this.f33860c.startClipPreload(str, arrayList.size(), this.f33861d);
        if (startClipPreload <= 0) {
            TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to start clip preload: invalid preload ID.");
            stopPreload(startClipPreload);
            return -1;
        }
        Iterator<TPDownloadParamData> it = arrayList.iterator();
        int i9 = 1;
        while (it.hasNext()) {
            TPDownloadParamData next = it.next();
            if (!this.f33860c.setClipInfo(startClipPreload, i9, next.getDownloadFileID(), k.a(next.getUrl(), next, null))) {
                TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to set clip info.");
                stopPreload(startClipPreload);
                return -1;
            }
            i9++;
        }
        try {
            this.f33860c.startTask(startClipPreload);
            return startClipPreload;
        } catch (Throwable th2) {
            TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to start task: " + th2.toString());
            stopPreload(startClipPreload);
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public int startPreload(String str, TPDownloadParamData tPDownloadParamData) {
        return startPreload(str, tPDownloadParamData, null);
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public int startPreload(String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map) {
        if (!isAvailable()) {
            a();
            if (!isAvailable()) {
                return -1;
            }
        }
        if (tPDownloadParamData != null) {
            try {
                return this.f33860c.startPreload(str, k.a(null, tPDownloadParamData, map), this.f33861d);
            } catch (Throwable th2) {
                TPLogUtil.e("TPPreloadProxyImpl", th2);
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public void stopPreload(int i9) {
        ITPDownloadProxy iTPDownloadProxy = this.f33860c;
        if (iTPDownloadProxy == null) {
            return;
        }
        try {
            iTPDownloadProxy.stopPreload(i9);
        } catch (Throwable th2) {
            TPLogUtil.e("TPPreloadProxyImpl", th2);
        }
    }
}

package com.tencent.thumbplayer.c;

import android.content.Context;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.f;
import com.tencent.thumbplayer.utils.i;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class i implements f.a, i.b {

    /* renamed from: a  reason: collision with root package name */
    private int f33865a;

    /* renamed from: b  reason: collision with root package name */
    private String f33866b;

    /* renamed from: c  reason: collision with root package name */
    private int f33867c;

    /* renamed from: d  reason: collision with root package name */
    private ConcurrentHashMap<Integer, b> f33868d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static i f33870a = new i();
    }

    private i() {
        this.f33865a = 0;
        this.f33866b = "";
        this.f33867c = 0;
        if (this.f33868d == null) {
            this.f33868d = new ConcurrentHashMap<>();
        }
        com.tencent.thumbplayer.utils.f.a(this);
        com.tencent.thumbplayer.utils.i.a().a(this);
    }

    public static i a() {
        return a.f33870a;
    }

    private static TPDLProxyInitParam a(Context context) {
        return new TPDLProxyInitParam(TPPlayerConfig.getPlatform(), TPPlayerConfig.getAppVersionName(context), TPPlayerConfig.getGuid(), TPPlayerConfig.getProxyCacheDir(), TPPlayerConfig.getProxyDataDir(), TPPlayerConfig.getProxyConfigDir());
    }

    private void a(String str, int i9) {
        this.f33866b = str;
        this.f33867c = i9;
        for (b bVar : this.f33868d.values()) {
            bVar.a().setUserData(TPDownloadProxyEnum.USER_UPC, str);
            bVar.a().setUserData(TPDownloadProxyEnum.USER_UPC_STATE, Integer.valueOf(i9));
        }
    }

    private String b(boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("EnableReport", z10);
            return jSONObject.toString();
        } catch (JSONException e10) {
            TPLogUtil.e("TPProxyGlobalManager", e10);
            return "";
        }
    }

    private void b(int i9) {
        for (b bVar : this.f33868d.values()) {
            bVar.a(i9);
        }
    }

    private String c(long j10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("MaxUseMemoryLevel1MB", j10);
            jSONObject.put("MaxUseMemoryLevel2MB", j10);
            jSONObject.put("MaxUseMemoryMB", j10);
            return jSONObject.toString();
        } catch (JSONException e10) {
            TPLogUtil.e("TPProxyGlobalManager", e10);
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b9 A[Catch: all -> 0x00dc, TryCatch #0 {all -> 0x00dc, blocks: (B:11:0x0027, B:13:0x0039, B:15:0x0047, B:17:0x0058, B:18:0x005b, B:25:0x0072, B:27:0x009e, B:29:0x00a8, B:31:0x00ae, B:32:0x00b1, B:34:0x00b9, B:35:0x00c0, B:21:0x0062, B:24:0x006e), top: B:40:0x0027 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tencent.thumbplayer.c.b a(int r10) {
        /*
            r9 = this;
            java.lang.String r0 = "proxy_config"
            java.lang.String r1 = "TPProxyGlobalManager"
            r2 = 0
            if (r10 >= 0) goto L8
            return r2
        L8:
            java.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.tencent.thumbplayer.c.b> r3 = r9.f33868d
            java.lang.Integer r4 = java.lang.Integer.valueOf(r10)
            boolean r3 = r3.containsKey(r4)
            if (r3 == 0) goto L21
            java.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.tencent.thumbplayer.c.b> r0 = r9.f33868d
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
            java.lang.Object r10 = r0.get(r10)
            com.tencent.thumbplayer.c.b r10 = (com.tencent.thumbplayer.c.b) r10
            return r10
        L21:
            com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy r3 = com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory.getTPDownloadProxy(r10)
            if (r3 == 0) goto Lea
            android.content.Context r4 = com.tencent.thumbplayer.api.TPPlayerMgr.getAppContext()     // Catch: java.lang.Throwable -> Ldc
            android.content.Context r5 = com.tencent.thumbplayer.api.TPPlayerMgr.getAppContext()     // Catch: java.lang.Throwable -> Ldc
            com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam r5 = a(r5)     // Catch: java.lang.Throwable -> Ldc
            int r4 = r3.init(r4, r5)     // Catch: java.lang.Throwable -> Ldc
            if (r4 >= 0) goto L47
            java.lang.String r10 = "downloadProxy init failed with status:"
            java.lang.String r0 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> Ldc
            java.lang.String r10 = r10.concat(r0)     // Catch: java.lang.Throwable -> Ldc
            com.tencent.thumbplayer.utils.TPLogUtil.i(r1, r10)     // Catch: java.lang.Throwable -> Ldc
            return r2
        L47:
            com.tencent.thumbplayer.c.i$1 r4 = new com.tencent.thumbplayer.c.i$1     // Catch: java.lang.Throwable -> Ldc
            r4.<init>()     // Catch: java.lang.Throwable -> Ldc
            r3.setLogListener(r4)     // Catch: java.lang.Throwable -> Ldc
            int r4 = com.tencent.thumbplayer.utils.i.c()     // Catch: java.lang.Throwable -> Ldc
            r5 = 10
            r6 = 1
            if (r4 != r6) goto L5f
            r3.pushEvent(r6)     // Catch: java.lang.Throwable -> Ldc
        L5b:
            r3.pushEvent(r5)     // Catch: java.lang.Throwable -> Ldc
            goto L72
        L5f:
            r6 = 2
            if (r4 != r6) goto L6b
            r3.pushEvent(r6)     // Catch: java.lang.Throwable -> Ldc
            r4 = 9
            r3.pushEvent(r4)     // Catch: java.lang.Throwable -> Ldc
            goto L72
        L6b:
            r7 = 3
            if (r4 != r7) goto L72
            r3.pushEvent(r6)     // Catch: java.lang.Throwable -> Ldc
            goto L5b
        L72:
            int r4 = r9.f33865a     // Catch: java.lang.Throwable -> Ldc
            r3.pushEvent(r4)     // Catch: java.lang.Throwable -> Ldc
            java.lang.String r4 = "carrier_pesudo_code"
            java.lang.String r5 = r9.f33866b     // Catch: java.lang.Throwable -> Ldc
            r3.setUserData(r4, r5)     // Catch: java.lang.Throwable -> Ldc
            java.lang.String r4 = "carrier_pesudo_state"
            int r5 = r9.f33867c     // Catch: java.lang.Throwable -> Ldc
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> Ldc
            r3.setUserData(r4, r5)     // Catch: java.lang.Throwable -> Ldc
            boolean r4 = com.tencent.thumbplayer.config.TPPlayerConfig.isDataReportEnable()     // Catch: java.lang.Throwable -> Ldc
            java.lang.String r4 = r9.b(r4)     // Catch: java.lang.Throwable -> Ldc
            r3.setUserData(r0, r4)     // Catch: java.lang.Throwable -> Ldc
            long r4 = com.tencent.thumbplayer.config.TPPlayerConfig.getProxyMaxUseMemoryMB()     // Catch: java.lang.Throwable -> Ldc
            r6 = 0
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 <= 0) goto Lb1
            long r4 = com.tencent.thumbplayer.config.TPPlayerConfig.getProxyMaxUseMemoryMB()     // Catch: java.lang.Throwable -> Ldc
            java.lang.String r4 = r9.c(r4)     // Catch: java.lang.Throwable -> Ldc
            if (r4 == 0) goto Lb1
            int r5 = r4.length()     // Catch: java.lang.Throwable -> Ldc
            if (r5 <= 0) goto Lb1
            r3.setUserData(r0, r4)     // Catch: java.lang.Throwable -> Ldc
        Lb1:
            long r4 = com.tencent.thumbplayer.config.TPPlayerConfig.getProxyMaxStorageSizeMB()     // Catch: java.lang.Throwable -> Ldc
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 <= 0) goto Lc0
            long r4 = com.tencent.thumbplayer.config.TPPlayerConfig.getProxyMaxStorageSizeMB()     // Catch: java.lang.Throwable -> Ldc
            r3.setMaxStorageSizeMB(r4)     // Catch: java.lang.Throwable -> Ldc
        Lc0:
            com.tencent.thumbplayer.c.j r0 = new com.tencent.thumbplayer.c.j     // Catch: java.lang.Throwable -> Ldc
            r0.<init>(r3)     // Catch: java.lang.Throwable -> Ldc
            java.util.concurrent.ConcurrentHashMap<java.lang.Integer, com.tencent.thumbplayer.c.b> r3 = r9.f33868d     // Catch: java.lang.Throwable -> Ldc
            java.lang.Integer r4 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> Ldc
            r3.put(r4, r0)     // Catch: java.lang.Throwable -> Ldc
            java.lang.String r3 = "getPlayerProxy, init proxy succeeded, serviceType:"
            java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> Ldc
            java.lang.String r10 = r3.concat(r10)     // Catch: java.lang.Throwable -> Ldc
            com.tencent.thumbplayer.utils.TPLogUtil.i(r1, r10)     // Catch: java.lang.Throwable -> Ldc
            return r0
        Ldc:
            r10 = move-exception
            java.lang.String r10 = java.lang.String.valueOf(r10)
            java.lang.String r0 = "init proxy failed:"
            java.lang.String r10 = r0.concat(r10)
            com.tencent.thumbplayer.utils.TPLogUtil.e(r1, r10)
        Lea:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.c.i.a(int):com.tencent.thumbplayer.c.b");
    }

    @Override // com.tencent.thumbplayer.utils.i.b
    public void a(int i9, int i10, int i11, int i12) {
        int i13 = 10;
        if (i10 == 1) {
            b(1);
        } else if (i10 != 2) {
            if (i10 == 3) {
                b(2);
                b(10);
                return;
            }
            return;
        } else {
            b(2);
            i13 = 9;
        }
        b(i13);
    }

    @Override // com.tencent.thumbplayer.utils.f.a
    public void a(int i9, int i10, int i11, Object obj) {
        int i12;
        TPLogUtil.i("TPProxyGlobalManager", "onEvent eventId: " + i9 + ", arg1: " + i10 + ", arg2: " + i11 + ", object" + obj);
        switch (i9) {
            case TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND /* 100001 */:
                i12 = 13;
                break;
            case TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND /* 100002 */:
                i12 = 14;
                break;
            case 100003:
                a((String) obj, i10);
                return;
            default:
                return;
        }
        this.f33865a = i12;
        b(i12);
    }

    public void a(long j10) {
        for (b bVar : this.f33868d.values()) {
            ITPDownloadProxy a10 = bVar.a();
            if (a10 != null && j10 > 0) {
                a10.setMaxStorageSizeMB(j10);
            }
        }
    }

    public void a(boolean z10) {
        for (b bVar : this.f33868d.values()) {
            bVar.a().setUserData(TPDownloadProxyEnum.USER_PROXY_CONFIG, b(z10));
        }
    }

    public void b(long j10) {
        for (b bVar : this.f33868d.values()) {
            bVar.a().setUserData(TPDownloadProxyEnum.USER_PROXY_CONFIG, c(j10));
        }
    }
}

package com.tencent.bugly.proguard;

import android.content.Context;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.utils.HttpFileUtil;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes4.dex */
public final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private int f30652a;

    /* renamed from: b  reason: collision with root package name */
    private int f30653b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f30654c;

    /* renamed from: d  reason: collision with root package name */
    private final int f30655d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f30656e;

    /* renamed from: f  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f30657f;

    /* renamed from: g  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.strategy.a f30658g;

    /* renamed from: h  reason: collision with root package name */
    private final s f30659h;

    /* renamed from: i  reason: collision with root package name */
    private final u f30660i;

    /* renamed from: j  reason: collision with root package name */
    private final int f30661j;

    /* renamed from: k  reason: collision with root package name */
    private final t f30662k;

    /* renamed from: l  reason: collision with root package name */
    private final t f30663l;

    /* renamed from: m  reason: collision with root package name */
    private String f30664m;

    /* renamed from: n  reason: collision with root package name */
    private final String f30665n;

    /* renamed from: o  reason: collision with root package name */
    private final Map<String, String> f30666o;

    /* renamed from: p  reason: collision with root package name */
    private int f30667p;

    /* renamed from: q  reason: collision with root package name */
    private long f30668q;

    /* renamed from: r  reason: collision with root package name */
    private long f30669r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f30670s;

    public v(Context context, int i9, int i10, byte[] bArr, String str, String str2, t tVar, boolean z10, boolean z11) {
        this(context, i9, i10, bArr, str, str2, tVar, 2, HttpFileUtil.TIMEOUT, z11, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.tencent.bugly.proguard.an r4, boolean r5, int r6, java.lang.String r7) {
        /*
            r3 = this;
            int r4 = r3.f30655d
            r0 = 630(0x276, float:8.83E-43)
            if (r4 == r0) goto L1b
            r0 = 640(0x280, float:8.97E-43)
            if (r4 == r0) goto L17
            r0 = 830(0x33e, float:1.163E-42)
            if (r4 == r0) goto L1b
            r0 = 840(0x348, float:1.177E-42)
            if (r4 == r0) goto L17
            java.lang.String r4 = java.lang.String.valueOf(r4)
            goto L1d
        L17:
            java.lang.String r4 = "userinfo"
            goto L1d
        L1b:
            java.lang.String r4 = "crash"
        L1d:
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L2b
            java.lang.Object[] r6 = new java.lang.Object[r0]
            r6[r1] = r4
            java.lang.String r4 = "[Upload] Success: %s"
            com.tencent.bugly.proguard.x.a(r4, r6)
            goto L3e
        L2b:
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r2[r1] = r6
            r2[r0] = r4
            r4 = 2
            r2[r4] = r7
            java.lang.String r4 = "[Upload] Failed to upload(%d) %s: %s"
            com.tencent.bugly.proguard.x.e(r4, r2)
        L3e:
            long r6 = r3.f30668q
            long r0 = r3.f30669r
            long r6 = r6 + r0
            r0 = 0
            int r4 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r4 <= 0) goto L5e
            com.tencent.bugly.proguard.u r4 = r3.f30660i
            boolean r6 = r3.f30670s
            long r6 = r4.a(r6)
            long r0 = r3.f30668q
            long r6 = r6 + r0
            long r0 = r3.f30669r
            long r6 = r6 + r0
            com.tencent.bugly.proguard.u r4 = r3.f30660i
            boolean r0 = r3.f30670s
            r4.a(r6, r0)
        L5e:
            com.tencent.bugly.proguard.t r4 = r3.f30662k
            if (r4 == 0) goto L65
            r4.a(r5)
        L65:
            com.tencent.bugly.proguard.t r4 = r3.f30663l
            if (r4 == 0) goto L6c
            r4.a(r5)
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.v.a(com.tencent.bugly.proguard.an, boolean, int, java.lang.String):void");
    }

    public final void b(long j10) {
        this.f30669r += j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x021b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01b5 A[Catch: all -> 0x0326, TryCatch #0 {all -> 0x0326, blocks: (B:3:0x0007, B:5:0x001a, B:8:0x0022, B:11:0x0027, B:13:0x003b, B:15:0x003f, B:17:0x0043, B:20:0x0049, B:22:0x004f, B:24:0x0055, B:26:0x0083, B:27:0x0086, B:29:0x00b6, B:31:0x00bc, B:32:0x00d0, B:35:0x00d8, B:37:0x00ef, B:38:0x00fc, B:41:0x013f, B:43:0x0152, B:46:0x015b, B:49:0x0162, B:52:0x016a, B:64:0x01b5, B:66:0x01e1, B:67:0x01e9, B:69:0x01ef, B:70:0x0210, B:75:0x024a, B:77:0x025e, B:79:0x026f, B:80:0x0277, B:82:0x027d, B:83:0x0298, B:85:0x029f, B:88:0x02a7, B:90:0x02ad, B:92:0x02b4, B:96:0x02c8, B:98:0x02db, B:100:0x02e2, B:95:0x02c7, B:103:0x02eb, B:54:0x0174, B:56:0x017a, B:57:0x0182, B:59:0x0190, B:60:0x019c, B:61:0x01a9, B:105:0x0311, B:107:0x0318, B:109:0x031f), top: B:117:0x0007 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 817
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.v.run():void");
    }

    public v(Context context, int i9, int i10, byte[] bArr, String str, String str2, t tVar, int i11, int i12, boolean z10, Map<String, String> map) {
        this.f30652a = 2;
        this.f30653b = HttpFileUtil.TIMEOUT;
        this.f30664m = null;
        this.f30667p = 0;
        this.f30668q = 0L;
        this.f30669r = 0L;
        this.f30670s = false;
        this.f30654c = context;
        this.f30657f = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.f30656e = bArr;
        this.f30658g = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.f30659h = s.a(context);
        this.f30660i = u.a();
        this.f30661j = i9;
        this.f30664m = str;
        this.f30665n = str2;
        this.f30662k = tVar;
        this.f30663l = null;
        this.f30655d = i10;
        if (i11 > 0) {
            this.f30652a = i11;
        }
        if (i12 > 0) {
            this.f30653b = i12;
        }
        this.f30670s = z10;
        this.f30666o = map;
    }

    private static boolean a(an anVar, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.common.strategy.a aVar2) {
        if (anVar == null) {
            x.d("resp == null!", new Object[0]);
            return false;
        }
        byte b10 = anVar.f30516a;
        if (b10 != 0) {
            x.e("resp result error %d", Byte.valueOf(b10));
            return false;
        }
        try {
            if (!z.a(anVar.f30520e) && !com.tencent.bugly.crashreport.common.info.a.b().j().equals(anVar.f30520e)) {
                p.a().a(com.tencent.bugly.crashreport.common.strategy.a.f30243a, DeviceRequestsHelper.DEVICE_INFO_DEVICE, anVar.f30520e.getBytes("UTF-8"), (o) null, true);
                aVar.f(anVar.f30520e);
            }
        } catch (Throwable th2) {
            x.a(th2);
        }
        aVar.f30200i = anVar.f30519d;
        int i9 = anVar.f30517b;
        if (i9 == 510) {
            byte[] bArr = anVar.f30518c;
            if (bArr == null) {
                x.e("[Upload] Strategy data is null. Response cmd: %d", Integer.valueOf(i9));
                return false;
            }
            ap apVar = (ap) a.a(bArr, ap.class);
            if (apVar == null) {
                x.e("[Upload] Failed to decode strategy from server. Response cmd: %d", Integer.valueOf(anVar.f30517b));
                return false;
            }
            aVar2.a(apVar);
        }
        return true;
    }

    public final void a(long j10) {
        this.f30667p++;
        this.f30668q += j10;
    }

    private static String a(String str) {
        if (z.a(str)) {
            return str;
        }
        try {
            return String.format("%s?aid=%s", str, UUID.randomUUID().toString());
        } catch (Throwable th2) {
            x.a(th2);
            return str;
        }
    }
}

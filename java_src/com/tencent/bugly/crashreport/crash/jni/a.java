package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.util.Map;
/* loaded from: classes4.dex */
public final class a implements NativeExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Context f30427a;

    /* renamed from: b  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.crash.b f30428b;

    /* renamed from: c  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f30429c;

    /* renamed from: d  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.strategy.a f30430d;

    public a(Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.b bVar, com.tencent.bugly.crashreport.common.strategy.a aVar2) {
        this.f30427a = context;
        this.f30428b = bVar;
        this.f30429c = aVar;
        this.f30430d = aVar2;
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final void handleNativeException(int i9, int i10, long j10, long j11, String str, String str2, String str3, String str4, int i11, String str5, int i12, int i13, int i14, String str6, String str7) {
        x.a("Native Crash Happen v1", new Object[0]);
        handleNativeException2(i9, i10, j10, j11, str, str2, str3, str4, i11, str5, i12, i13, i14, str6, str7, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x014a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011e A[Catch: all -> 0x0299, TryCatch #2 {all -> 0x0299, blocks: (B:3:0x0010, B:6:0x001c, B:15:0x0069, B:18:0x0071, B:20:0x0074, B:22:0x0078, B:24:0x0093, B:25:0x009c, B:26:0x00a6, B:28:0x00b0, B:30:0x00ba, B:32:0x00c3, B:34:0x00cf, B:36:0x00d9, B:39:0x00e0, B:41:0x00ef, B:43:0x00fb, B:46:0x0102, B:47:0x0118, B:49:0x011e, B:51:0x012e, B:54:0x014e, B:56:0x0188, B:58:0x01ad, B:59:0x01b4, B:62:0x01c0, B:64:0x01c8, B:55:0x0166, B:40:0x00eb, B:27:0x00a9, B:9:0x0041, B:10:0x0045, B:12:0x004f), top: B:98:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x014e A[Catch: all -> 0x0299, TryCatch #2 {all -> 0x0299, blocks: (B:3:0x0010, B:6:0x001c, B:15:0x0069, B:18:0x0071, B:20:0x0074, B:22:0x0078, B:24:0x0093, B:25:0x009c, B:26:0x00a6, B:28:0x00b0, B:30:0x00ba, B:32:0x00c3, B:34:0x00cf, B:36:0x00d9, B:39:0x00e0, B:41:0x00ef, B:43:0x00fb, B:46:0x0102, B:47:0x0118, B:49:0x011e, B:51:0x012e, B:54:0x014e, B:56:0x0188, B:58:0x01ad, B:59:0x01b4, B:62:0x01c0, B:64:0x01c8, B:55:0x0166, B:40:0x00eb, B:27:0x00a9, B:9:0x0041, B:10:0x0045, B:12:0x004f), top: B:98:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ad A[Catch: all -> 0x0299, TryCatch #2 {all -> 0x0299, blocks: (B:3:0x0010, B:6:0x001c, B:15:0x0069, B:18:0x0071, B:20:0x0074, B:22:0x0078, B:24:0x0093, B:25:0x009c, B:26:0x00a6, B:28:0x00b0, B:30:0x00ba, B:32:0x00c3, B:34:0x00cf, B:36:0x00d9, B:39:0x00e0, B:41:0x00ef, B:43:0x00fb, B:46:0x0102, B:47:0x0118, B:49:0x011e, B:51:0x012e, B:54:0x014e, B:56:0x0188, B:58:0x01ad, B:59:0x01b4, B:62:0x01c0, B:64:0x01c8, B:55:0x0166, B:40:0x00eb, B:27:0x00a9, B:9:0x0041, B:10:0x0045, B:12:0x004f), top: B:98:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01c0 A[Catch: all -> 0x0299, TRY_ENTER, TryCatch #2 {all -> 0x0299, blocks: (B:3:0x0010, B:6:0x001c, B:15:0x0069, B:18:0x0071, B:20:0x0074, B:22:0x0078, B:24:0x0093, B:25:0x009c, B:26:0x00a6, B:28:0x00b0, B:30:0x00ba, B:32:0x00c3, B:34:0x00cf, B:36:0x00d9, B:39:0x00e0, B:41:0x00ef, B:43:0x00fb, B:46:0x0102, B:47:0x0118, B:49:0x011e, B:51:0x012e, B:54:0x014e, B:56:0x0188, B:58:0x01ad, B:59:0x01b4, B:62:0x01c0, B:64:0x01c8, B:55:0x0166, B:40:0x00eb, B:27:0x00a9, B:9:0x0041, B:10:0x0045, B:12:0x004f), top: B:98:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0224 A[Catch: all -> 0x0295, TryCatch #1 {all -> 0x0295, blocks: (B:67:0x021e, B:69:0x0224, B:71:0x022d), top: B:97:0x021e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x022d A[Catch: all -> 0x0295, TRY_LEAVE, TryCatch #1 {all -> 0x0295, blocks: (B:67:0x021e, B:69:0x0224, B:71:0x022d), top: B:97:0x021e }] */
    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleNativeException2(int r27, int r28, long r29, long r31, java.lang.String r33, java.lang.String r34, java.lang.String r35, java.lang.String r36, int r37, java.lang.String r38, int r39, int r40, int r41, java.lang.String r42, java.lang.String r43, java.lang.String[] r44) {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.jni.a.handleNativeException2(int, int, long, long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, int, int, int, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final CrashDetailBean packageCrashDatas(String str, String str2, long j10, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, byte[] bArr, Map<String, String> map, boolean z10, boolean z11) {
        int i9;
        String str12;
        int indexOf;
        boolean m10 = c.a().m();
        if (m10) {
            x.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.f30260b = 1;
        crashDetailBean.f30263e = this.f30429c.h();
        com.tencent.bugly.crashreport.common.info.a aVar = this.f30429c;
        crashDetailBean.f30264f = aVar.f30201j;
        crashDetailBean.f30265g = aVar.r();
        crashDetailBean.f30271m = this.f30429c.g();
        crashDetailBean.f30272n = str3;
        crashDetailBean.f30273o = m10 ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        crashDetailBean.f30274p = str4;
        String str13 = str5 != null ? str5 : "";
        crashDetailBean.f30275q = str13;
        crashDetailBean.f30276r = j10;
        crashDetailBean.f30279u = z.a(str13.getBytes());
        crashDetailBean.A = str;
        crashDetailBean.B = str2;
        crashDetailBean.I = this.f30429c.t();
        crashDetailBean.f30266h = this.f30429c.q();
        crashDetailBean.f30267i = this.f30429c.C();
        crashDetailBean.f30280v = str8;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        String dumpFilePath = nativeCrashHandler != null ? nativeCrashHandler.getDumpFilePath() : null;
        String a10 = b.a(dumpFilePath, str8);
        if (!z.a(a10)) {
            crashDetailBean.V = a10;
        }
        crashDetailBean.W = b.b(dumpFilePath);
        crashDetailBean.f30281w = b.a(str9, c.f30340e, null, false);
        crashDetailBean.f30282x = b.a(str10, c.f30340e, null, true);
        crashDetailBean.J = str7;
        crashDetailBean.K = str6;
        crashDetailBean.L = str11;
        crashDetailBean.F = this.f30429c.l();
        crashDetailBean.G = this.f30429c.k();
        crashDetailBean.H = this.f30429c.m();
        if (z10) {
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.g();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.i();
            if (crashDetailBean.f30281w == null) {
                crashDetailBean.f30281w = z.a(this.f30427a, c.f30340e, (String) null);
            }
            crashDetailBean.f30283y = y.a();
            com.tencent.bugly.crashreport.common.info.a aVar2 = this.f30429c;
            crashDetailBean.M = aVar2.f30180a;
            crashDetailBean.N = aVar2.a();
            crashDetailBean.f30284z = z.a(c.f30341f, false);
            int indexOf2 = crashDetailBean.f30275q.indexOf("java:\n");
            if (indexOf2 > 0 && (i9 = indexOf2 + 6) < crashDetailBean.f30275q.length()) {
                String str14 = crashDetailBean.f30275q;
                String substring = str14.substring(i9, str14.length() - 1);
                if (substring.length() > 0 && crashDetailBean.f30284z.containsKey(crashDetailBean.B) && (indexOf = (str12 = crashDetailBean.f30284z.get(crashDetailBean.B)).indexOf(substring)) > 0) {
                    String substring2 = str12.substring(indexOf);
                    crashDetailBean.f30284z.put(crashDetailBean.B, substring2);
                    crashDetailBean.f30275q = crashDetailBean.f30275q.substring(0, i9);
                    crashDetailBean.f30275q += substring2;
                }
            }
            if (str == null) {
                crashDetailBean.A = this.f30429c.f30195d;
            }
            this.f30428b.d(crashDetailBean);
            crashDetailBean.Q = this.f30429c.A();
            crashDetailBean.R = this.f30429c.B();
            crashDetailBean.S = this.f30429c.u();
            crashDetailBean.T = this.f30429c.z();
        } else {
            crashDetailBean.C = -1L;
            crashDetailBean.D = -1L;
            crashDetailBean.E = -1L;
            if (crashDetailBean.f30281w == null) {
                crashDetailBean.f30281w = "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
            }
            crashDetailBean.M = -1L;
            crashDetailBean.Q = -1;
            crashDetailBean.R = -1;
            crashDetailBean.S = map;
            crashDetailBean.T = this.f30429c.z();
            crashDetailBean.f30284z = null;
            if (str == null) {
                crashDetailBean.A = "unknown(record)";
            }
            if (bArr != null) {
                crashDetailBean.f30283y = bArr;
            }
        }
        return crashDetailBean;
    }
}

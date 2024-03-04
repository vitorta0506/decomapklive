package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.fc;
import com.google.android.gms.internal.measurement.kd;
import com.google.android.gms.internal.measurement.nd;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlinx.coroutines.DebugKt;
/* loaded from: classes2.dex */
public final class d9 implements i5 {
    private static volatile d9 F;
    private final Map A;
    private final Map B;
    private r6 C;
    private String D;

    /* renamed from: a  reason: collision with root package name */
    private final h4 f9352a;

    /* renamed from: b  reason: collision with root package name */
    private final o3 f9353b;

    /* renamed from: c  reason: collision with root package name */
    private k f9354c;

    /* renamed from: d  reason: collision with root package name */
    private q3 f9355d;

    /* renamed from: e  reason: collision with root package name */
    private r8 f9356e;

    /* renamed from: f  reason: collision with root package name */
    private b f9357f;

    /* renamed from: g  reason: collision with root package name */
    private final g9 f9358g;

    /* renamed from: h  reason: collision with root package name */
    private q6 f9359h;

    /* renamed from: i  reason: collision with root package name */
    private a8 f9360i;

    /* renamed from: j  reason: collision with root package name */
    private final u8 f9361j;

    /* renamed from: k  reason: collision with root package name */
    private a4 f9362k;

    /* renamed from: l  reason: collision with root package name */
    private final n4 f9363l;

    /* renamed from: n  reason: collision with root package name */
    private boolean f9365n;

    /* renamed from: o  reason: collision with root package name */
    long f9366o;

    /* renamed from: p  reason: collision with root package name */
    private List f9367p;

    /* renamed from: q  reason: collision with root package name */
    private int f9368q;

    /* renamed from: r  reason: collision with root package name */
    private int f9369r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f9370s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f9371t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f9372u;

    /* renamed from: v  reason: collision with root package name */
    private FileLock f9373v;

    /* renamed from: w  reason: collision with root package name */
    private FileChannel f9374w;

    /* renamed from: x  reason: collision with root package name */
    private List f9375x;

    /* renamed from: y  reason: collision with root package name */
    private List f9376y;

    /* renamed from: z  reason: collision with root package name */
    private long f9377z;

    /* renamed from: m  reason: collision with root package name */
    private boolean f9364m = false;
    private final j9 E = new a9(this);

    d9(f9 f9Var, n4 n4Var) {
        com.google.android.gms.common.internal.p.j(f9Var);
        this.f9363l = n4.H(f9Var.f9417a, null, null);
        this.f9377z = -1L;
        this.f9361j = new u8(this);
        g9 g9Var = new g9(this);
        g9Var.j();
        this.f9358g = g9Var;
        o3 o3Var = new o3(this);
        o3Var.j();
        this.f9353b = o3Var;
        h4 h4Var = new h4(this);
        h4Var.j();
        this.f9352a = h4Var;
        this.A = new HashMap();
        this.B = new HashMap();
        a().z(new v8(this, f9Var));
    }

    static final void G(com.google.android.gms.internal.measurement.k4 k4Var, int i9, String str) {
        List H = k4Var.H();
        for (int i10 = 0; i10 < H.size(); i10++) {
            if ("_err".equals(((com.google.android.gms.internal.measurement.p4) H.get(i10)).C())) {
                return;
            }
        }
        com.google.android.gms.internal.measurement.o4 A = com.google.android.gms.internal.measurement.p4.A();
        A.A("_err");
        A.z(Long.valueOf(i9).longValue());
        com.google.android.gms.internal.measurement.o4 A2 = com.google.android.gms.internal.measurement.p4.A();
        A2.A("_ev");
        A2.B(str);
        k4Var.w((com.google.android.gms.internal.measurement.p4) A.o());
        k4Var.w((com.google.android.gms.internal.measurement.p4) A2.o());
    }

    static final void H(com.google.android.gms.internal.measurement.k4 k4Var, @NonNull String str) {
        List H = k4Var.H();
        for (int i9 = 0; i9 < H.size(); i9++) {
            if (str.equals(((com.google.android.gms.internal.measurement.p4) H.get(i9)).C())) {
                k4Var.y(i9);
                return;
            }
        }
    }

    @WorkerThread
    private final zzq I(String str) {
        k kVar = this.f9354c;
        R(kVar);
        j5 R = kVar.R(str);
        if (R != null && !TextUtils.isEmpty(R.g0())) {
            Boolean J = J(R);
            if (J != null && !J.booleanValue()) {
                b().r().b("App version does not match; dropping. appId", j3.z(str));
                return null;
            }
            String i02 = R.i0();
            String g02 = R.g0();
            long L = R.L();
            String f02 = R.f0();
            long W = R.W();
            long T = R.T();
            boolean J2 = R.J();
            String h02 = R.h0();
            R.A();
            return new zzq(str, i02, g02, L, f02, W, T, (String) null, J2, false, h02, 0L, 0L, 0, R.I(), false, R.b0(), R.a0(), R.U(), R.c(), (String) null, V(str).h(), "", (String) null);
        }
        b().q().b("No app data available; dropping", str);
        return null;
    }

    @WorkerThread
    private final Boolean J(j5 j5Var) {
        try {
            if (j5Var.L() != -2147483648L) {
                if (j5Var.L() == g4.c.a(this.f9363l.f()).e(j5Var.d0(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = g4.c.a(this.f9363l.f()).e(j5Var.d0(), 0).versionName;
                String g02 = j5Var.g0();
                if (g02 != null && g02.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @WorkerThread
    private final void K() {
        a().h();
        if (!this.f9370s && !this.f9371t && !this.f9372u) {
            b().v().a("Stopping uploading service(s)");
            List<Runnable> list = this.f9367p;
            if (list == null) {
                return;
            }
            for (Runnable runnable : list) {
                runnable.run();
            }
            ((List) com.google.android.gms.common.internal.p.j(this.f9367p)).clear();
            return;
        }
        b().v().d("Not stopping services. fetch, network, upload", Boolean.valueOf(this.f9370s), Boolean.valueOf(this.f9371t), Boolean.valueOf(this.f9372u));
    }

    private final void L(com.google.android.gms.internal.measurement.v4 v4Var, long j10, boolean z10) {
        i9 i9Var;
        String str = true != z10 ? "_lte" : "_se";
        k kVar = this.f9354c;
        R(kVar);
        i9 X = kVar.X(v4Var.m0(), str);
        if (X != null && X.f9496e != null) {
            i9Var = new i9(v4Var.m0(), DebugKt.DEBUG_PROPERTY_VALUE_AUTO, str, c().a(), Long.valueOf(((Long) X.f9496e).longValue() + j10));
        } else {
            i9Var = new i9(v4Var.m0(), DebugKt.DEBUG_PROPERTY_VALUE_AUTO, str, c().a(), Long.valueOf(j10));
        }
        com.google.android.gms.internal.measurement.e5 z11 = com.google.android.gms.internal.measurement.f5.z();
        z11.w(str);
        z11.x(c().a());
        z11.v(((Long) i9Var.f9496e).longValue());
        com.google.android.gms.internal.measurement.f5 f5Var = (com.google.android.gms.internal.measurement.f5) z11.o();
        int w6 = g9.w(v4Var, str);
        if (w6 >= 0) {
            v4Var.j0(w6, f5Var);
        } else {
            v4Var.J0(f5Var);
        }
        if (j10 > 0) {
            k kVar2 = this.f9354c;
            R(kVar2);
            kVar2.x(i9Var);
            b().v().c("Updated engagement user property. scope, value", true != z10 ? "lifetime" : "session-scoped", i9Var.f9496e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0238  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void M() {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d9.M():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:373:0x0b7e, code lost:
        if (r10 > (com.google.android.gms.measurement.internal.g.i() + r8)) goto L404;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03a7 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x046b A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04c5 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:270:0x081f A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0868 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x088b A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0902  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0904  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x090c A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0938 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0b6e A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0bf5 A[Catch: all -> 0x0d17, TRY_LEAVE, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0c11 A[Catch: SQLiteException -> 0x0c29, all -> 0x0d17, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x0c29, blocks: (B:380:0x0c02, B:382:0x0c11), top: B:414:0x0c02, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01cb  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean N(java.lang.String r42, long r43) {
        /*
            Method dump skipped, instructions count: 3362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d9.N(java.lang.String, long):boolean");
    }

    private final boolean O() {
        a().h();
        g();
        k kVar = this.f9354c;
        R(kVar);
        if (kVar.r()) {
            return true;
        }
        k kVar2 = this.f9354c;
        R(kVar2);
        return !TextUtils.isEmpty(kVar2.Z());
    }

    private final boolean P(com.google.android.gms.internal.measurement.k4 k4Var, com.google.android.gms.internal.measurement.k4 k4Var2) {
        com.google.android.gms.common.internal.p.a("_e".equals(k4Var.G()));
        R(this.f9358g);
        com.google.android.gms.internal.measurement.p4 n9 = g9.n((com.google.android.gms.internal.measurement.l4) k4Var.o(), "_sc");
        String D = n9 == null ? null : n9.D();
        R(this.f9358g);
        com.google.android.gms.internal.measurement.p4 n10 = g9.n((com.google.android.gms.internal.measurement.l4) k4Var2.o(), "_pc");
        String D2 = n10 != null ? n10.D() : null;
        if (D2 == null || !D2.equals(D)) {
            return false;
        }
        com.google.android.gms.common.internal.p.a("_e".equals(k4Var.G()));
        R(this.f9358g);
        com.google.android.gms.internal.measurement.p4 n11 = g9.n((com.google.android.gms.internal.measurement.l4) k4Var.o(), "_et");
        if (n11 == null || !n11.R() || n11.z() <= 0) {
            return true;
        }
        long z10 = n11.z();
        R(this.f9358g);
        com.google.android.gms.internal.measurement.p4 n12 = g9.n((com.google.android.gms.internal.measurement.l4) k4Var2.o(), "_et");
        if (n12 != null && n12.z() > 0) {
            z10 += n12.z();
        }
        R(this.f9358g);
        g9.P(k4Var2, "_et", Long.valueOf(z10));
        R(this.f9358g);
        g9.P(k4Var, "_fr", 1L);
        return true;
    }

    private static final boolean Q(zzq zzqVar) {
        return (TextUtils.isEmpty(zzqVar.zzb) && TextUtils.isEmpty(zzqVar.zzq)) ? false : true;
    }

    private static final t8 R(t8 t8Var) {
        if (t8Var != null) {
            if (t8Var.k()) {
                return t8Var;
            }
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(t8Var.getClass())));
        }
        throw new IllegalStateException("Upload Component not created");
    }

    public static d9 f0(Context context) {
        com.google.android.gms.common.internal.p.j(context);
        com.google.android.gms.common.internal.p.j(context.getApplicationContext());
        if (F == null) {
            synchronized (d9.class) {
                if (F == null) {
                    F = new d9((f9) com.google.android.gms.common.internal.p.j(new f9(context)), null);
                }
            }
        }
        return F;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void k0(d9 d9Var, f9 f9Var) {
        d9Var.a().h();
        d9Var.f9362k = new a4(d9Var);
        k kVar = new k(d9Var);
        kVar.j();
        d9Var.f9354c = kVar;
        d9Var.U().z((f) com.google.android.gms.common.internal.p.j(d9Var.f9352a));
        a8 a8Var = new a8(d9Var);
        a8Var.j();
        d9Var.f9360i = a8Var;
        b bVar = new b(d9Var);
        bVar.j();
        d9Var.f9357f = bVar;
        q6 q6Var = new q6(d9Var);
        q6Var.j();
        d9Var.f9359h = q6Var;
        r8 r8Var = new r8(d9Var);
        r8Var.j();
        d9Var.f9356e = r8Var;
        d9Var.f9355d = new q3(d9Var);
        if (d9Var.f9368q != d9Var.f9369r) {
            d9Var.b().r().c("Not all upload components initialized", Integer.valueOf(d9Var.f9368q), Integer.valueOf(d9Var.f9369r));
        }
        d9Var.f9364m = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void A(String str, p4.a aVar) {
        a().h();
        g();
        this.A.put(str, aVar);
        k kVar = this.f9354c;
        R(kVar);
        com.google.android.gms.common.internal.p.j(str);
        com.google.android.gms.common.internal.p.j(aVar);
        kVar.h();
        kVar.i();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", aVar.h());
        try {
            if (kVar.P().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                kVar.f9432a.b().r().b("Failed to insert/update consent setting (got -1). appId", j3.z(str));
            }
        } catch (SQLiteException e10) {
            kVar.f9432a.b().r().c("Error storing consent setting. appId, error", j3.z(str), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void B(zzlc zzlcVar, zzq zzqVar) {
        long j10;
        a().h();
        g();
        if (Q(zzqVar)) {
            if (!zzqVar.zzh) {
                S(zzqVar);
                return;
            }
            int n02 = h0().n0(zzlcVar.zzb);
            if (n02 != 0) {
                k9 h02 = h0();
                String str = zzlcVar.zzb;
                U();
                String r10 = h02.r(str, 24, true);
                String str2 = zzlcVar.zzb;
                h0().B(this.E, zzqVar.zza, n02, "_ev", r10, str2 != null ? str2.length() : 0);
                return;
            }
            int j02 = h0().j0(zzlcVar.zzb, zzlcVar.I());
            if (j02 != 0) {
                k9 h03 = h0();
                String str3 = zzlcVar.zzb;
                U();
                String r11 = h03.r(str3, 24, true);
                Object I = zzlcVar.I();
                h0().B(this.E, zzqVar.zza, j02, "_ev", r11, (I == null || !((I instanceof String) || (I instanceof CharSequence))) ? 0 : I.toString().length());
                return;
            }
            Object p10 = h0().p(zzlcVar.zzb, zzlcVar.I());
            if (p10 == null) {
                return;
            }
            if ("_sid".equals(zzlcVar.zzb)) {
                long j11 = zzlcVar.zzc;
                String str4 = zzlcVar.zzf;
                String str5 = (String) com.google.android.gms.common.internal.p.j(zzqVar.zza);
                k kVar = this.f9354c;
                R(kVar);
                i9 X = kVar.X(str5, "_sno");
                if (X != null) {
                    Object obj = X.f9496e;
                    if (obj instanceof Long) {
                        j10 = ((Long) obj).longValue();
                        B(new zzlc("_sno", j11, Long.valueOf(j10 + 1), str4), zzqVar);
                    }
                }
                if (X != null) {
                    b().w().b("Retrieved last session number from database does not contain a valid (long) value", X.f9496e);
                }
                k kVar2 = this.f9354c;
                R(kVar2);
                q V = kVar2.V(str5, "_s");
                if (V != null) {
                    j10 = V.f9763c;
                    b().v().b("Backfill the session number. Last used session number", Long.valueOf(j10));
                } else {
                    j10 = 0;
                }
                B(new zzlc("_sno", j11, Long.valueOf(j10 + 1), str4), zzqVar);
            }
            i9 i9Var = new i9((String) com.google.android.gms.common.internal.p.j(zzqVar.zza), (String) com.google.android.gms.common.internal.p.j(zzlcVar.zzf), zzlcVar.zzb, zzlcVar.zzc, p10);
            b().v().c("Setting user property", this.f9363l.D().f(i9Var.f9494c), p10);
            k kVar3 = this.f9354c;
            R(kVar3);
            kVar3.e0();
            try {
                if ("_id".equals(i9Var.f9494c)) {
                    k kVar4 = this.f9354c;
                    R(kVar4);
                    i9 X2 = kVar4.X(zzqVar.zza, "_id");
                    if (X2 != null && !i9Var.f9496e.equals(X2.f9496e)) {
                        k kVar5 = this.f9354c;
                        R(kVar5);
                        kVar5.m(zzqVar.zza, "_lair");
                    }
                }
                S(zzqVar);
                k kVar6 = this.f9354c;
                R(kVar6);
                boolean x10 = kVar6.x(i9Var);
                k kVar7 = this.f9354c;
                R(kVar7);
                kVar7.o();
                if (!x10) {
                    b().r().c("Too many unique user properties are set. Ignoring user property", this.f9363l.D().f(i9Var.f9494c), i9Var.f9496e);
                    h0().B(this.E, zzqVar.zza, 9, null, null, 0);
                }
            } finally {
                k kVar8 = this.f9354c;
                R(kVar8);
                kVar8.f0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0565, code lost:
        if (r11 == null) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0126, code lost:
        if (r11 == null) goto L210;
     */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0583: MOVE  (r9 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:228:0x0583 */
    /* JADX WARN: Removed duplicated region for block: B:132:0x029d A[Catch: all -> 0x058a, TryCatch #6 {all -> 0x058a, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:41:0x0108, B:54:0x0129, B:58:0x0130, B:59:0x0133, B:60:0x0134, B:64:0x015c, B:68:0x0164, B:73:0x0198, B:130:0x0297, B:132:0x029d, B:134:0x02a9, B:135:0x02ad, B:137:0x02b3, B:139:0x02c7, B:143:0x02d0, B:145:0x02d6, B:151:0x02fb, B:148:0x02eb, B:150:0x02f5, B:152:0x02fe, B:154:0x0319, B:158:0x0328, B:160:0x034d, B:162:0x0387, B:164:0x038c, B:166:0x0394, B:167:0x0397, B:169:0x039c, B:170:0x039f, B:172:0x03ab, B:173:0x03c1, B:174:0x03c9, B:176:0x03da, B:178:0x03ec, B:180:0x040e, B:182:0x041f, B:185:0x0467, B:187:0x0479, B:189:0x048e, B:191:0x0499, B:192:0x04a2, B:188:0x0487, B:194:0x04e6, B:183:0x0454, B:184:0x045e, B:117:0x0268, B:129:0x0294, B:198:0x04fd, B:199:0x0500, B:200:0x0501, B:205:0x0542, B:221:0x0569, B:223:0x056f, B:225:0x057a, B:209:0x054b, B:230:0x0586, B:231:0x0589), top: B:240:0x0010, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x056f A[Catch: all -> 0x058a, TryCatch #6 {all -> 0x058a, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:41:0x0108, B:54:0x0129, B:58:0x0130, B:59:0x0133, B:60:0x0134, B:64:0x015c, B:68:0x0164, B:73:0x0198, B:130:0x0297, B:132:0x029d, B:134:0x02a9, B:135:0x02ad, B:137:0x02b3, B:139:0x02c7, B:143:0x02d0, B:145:0x02d6, B:151:0x02fb, B:148:0x02eb, B:150:0x02f5, B:152:0x02fe, B:154:0x0319, B:158:0x0328, B:160:0x034d, B:162:0x0387, B:164:0x038c, B:166:0x0394, B:167:0x0397, B:169:0x039c, B:170:0x039f, B:172:0x03ab, B:173:0x03c1, B:174:0x03c9, B:176:0x03da, B:178:0x03ec, B:180:0x040e, B:182:0x041f, B:185:0x0467, B:187:0x0479, B:189:0x048e, B:191:0x0499, B:192:0x04a2, B:188:0x0487, B:194:0x04e6, B:183:0x0454, B:184:0x045e, B:117:0x0268, B:129:0x0294, B:198:0x04fd, B:199:0x0500, B:200:0x0501, B:205:0x0542, B:221:0x0569, B:223:0x056f, B:225:0x057a, B:209:0x054b, B:230:0x0586, B:231:0x0589), top: B:240:0x0010, inners: #3 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C() {
        /*
            Method dump skipped, instructions count: 1426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d9.C():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:279|(2:281|(1:283)(7:284|285|(1:287)|46|(0)(0)|49|(0)(0)))|288|289|290|291|292|293|294|295|296|297|285|(0)|46|(0)(0)|49|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0731, code lost:
        if (r14.isEmpty() == false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x0924, code lost:
        r13 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0277, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0279, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x027a, code lost:
        r33 = "metadata_fingerprint";
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x027d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x027e, code lost:
        r33 = "metadata_fingerprint";
        r21 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0284, code lost:
        r11.f9432a.b().r().c("Error pruning currencies. appId", com.google.android.gms.measurement.internal.j3.z(r10), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0369 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x04f9 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0538 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x05b1 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x05fe A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x060b A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0618 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0642 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0653 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0694 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x06d6 A[Catch: all -> 0x0a5c, TRY_LEAVE, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0736 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x077c A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x07c4 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x07dd A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0869 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0888 A[Catch: all -> 0x0a5c, TRY_LEAVE, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x091a A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x09c5 A[Catch: SQLiteException -> 0x09e0, all -> 0x0a5c, TRY_LEAVE, TryCatch #4 {SQLiteException -> 0x09e0, blocks: (B:267:0x09b5, B:269:0x09c5), top: B:299:0x09b5, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x09db  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0926 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016b A[Catch: all -> 0x0a5c, TRY_ENTER, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01e6 A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02be A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x030b A[Catch: all -> 0x0a5c, TryCatch #6 {all -> 0x0a5c, blocks: (B:28:0x0124, B:31:0x0135, B:33:0x013f, B:38:0x014b, B:94:0x02f5, B:103:0x032b, B:105:0x0369, B:107:0x036e, B:108:0x0385, B:112:0x0398, B:114:0x03b1, B:116:0x03b8, B:117:0x03cf, B:122:0x03f9, B:126:0x041c, B:127:0x0433, B:130:0x0444, B:133:0x0461, B:134:0x0475, B:136:0x047f, B:138:0x048c, B:140:0x0492, B:141:0x049b, B:142:0x04a9, B:144:0x04c1, B:154:0x04f9, B:155:0x050e, B:157:0x0538, B:160:0x0550, B:163:0x0593, B:165:0x05bf, B:167:0x05fe, B:168:0x0603, B:170:0x060b, B:171:0x0610, B:173:0x0618, B:174:0x061d, B:176:0x062c, B:178:0x0634, B:179:0x0639, B:181:0x0642, B:182:0x0646, B:184:0x0653, B:185:0x0658, B:187:0x067f, B:189:0x0687, B:190:0x068c, B:192:0x0694, B:193:0x0697, B:195:0x06af, B:198:0x06b7, B:199:0x06d0, B:201:0x06d6, B:203:0x06ea, B:205:0x06f6, B:207:0x0703, B:211:0x071d, B:212:0x072d, B:216:0x0736, B:217:0x0739, B:219:0x0757, B:221:0x075b, B:223:0x076d, B:225:0x0771, B:227:0x077c, B:228:0x0785, B:230:0x07c4, B:232:0x07cd, B:233:0x07d0, B:235:0x07dd, B:237:0x07fd, B:238:0x080a, B:239:0x0840, B:241:0x0848, B:243:0x0852, B:244:0x085f, B:246:0x0869, B:247:0x0876, B:248:0x0882, B:250:0x0888, B:252:0x08b8, B:253:0x08fe, B:254:0x0908, B:255:0x0914, B:257:0x091a, B:266:0x0967, B:267:0x09b5, B:269:0x09c5, B:283:0x0a29, B:272:0x09dd, B:274:0x09e1, B:260:0x0926, B:262:0x0952, B:278:0x09fa, B:279:0x0a11, B:282:0x0a14, B:164:0x05b1, B:151:0x04de, B:97:0x030b, B:98:0x0312, B:100:0x0318, B:102:0x0324, B:44:0x015f, B:47:0x016b, B:49:0x0182, B:55:0x01a0, B:63:0x01e0, B:65:0x01e6, B:67:0x01f4, B:69:0x0205, B:72:0x020c, B:90:0x02b3, B:92:0x02be, B:73:0x023a, B:74:0x0257, B:76:0x025e, B:78:0x026f, B:89:0x0297, B:88:0x0284, B:58:0x01ae, B:62:0x01d6), top: B:303:0x0124, inners: #4, #5, #8 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void D(com.google.android.gms.measurement.internal.zzaw r35, com.google.android.gms.measurement.internal.zzq r36) {
        /*
            Method dump skipped, instructions count: 2667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d9.D(com.google.android.gms.measurement.internal.zzaw, com.google.android.gms.measurement.internal.zzq):void");
    }

    @WorkerThread
    final boolean E() {
        a().h();
        FileLock fileLock = this.f9373v;
        if (fileLock != null && fileLock.isValid()) {
            b().v().a("Storage concurrent access okay");
            return true;
        }
        this.f9354c.f9432a.z();
        try {
            FileChannel channel = new RandomAccessFile(new File(this.f9363l.f().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.f9374w = channel;
            FileLock tryLock = channel.tryLock();
            this.f9373v = tryLock;
            if (tryLock != null) {
                b().v().a("Storage concurrent access okay");
                return true;
            }
            b().r().a("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e10) {
            b().r().b("Failed to acquire storage lock", e10);
            return false;
        } catch (IOException e11) {
            b().r().b("Failed to access storage lock file", e11);
            return false;
        } catch (OverlappingFileLockException e12) {
            b().w().b("Storage lock already acquired", e12);
            return false;
        }
    }

    final long F() {
        long a10 = c().a();
        a8 a8Var = this.f9360i;
        a8Var.i();
        a8Var.h();
        long a11 = a8Var.f9276i.a();
        if (a11 == 0) {
            a11 = a8Var.f9432a.N().u().nextInt(86400000) + 1;
            a8Var.f9276i.b(a11);
        }
        return ((((a10 + a11) / 1000) / 60) / 60) / 24;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final j5 S(zzq zzqVar) {
        a().h();
        g();
        com.google.android.gms.common.internal.p.j(zzqVar);
        com.google.android.gms.common.internal.p.f(zzqVar.zza);
        kd.b();
        if (U().B(zzqVar.zza, z2.f10069v0) && !zzqVar.zzw.isEmpty()) {
            this.B.put(zzqVar.zza, new c9(this, zzqVar.zzw));
        }
        k kVar = this.f9354c;
        R(kVar);
        j5 R = kVar.R(zzqVar.zza);
        p4.a c10 = V(zzqVar.zza).c(p4.a.b(zzqVar.zzv));
        zzah zzahVar = zzah.AD_STORAGE;
        String o10 = c10.i(zzahVar) ? this.f9360i.o(zzqVar.zza, zzqVar.zzo) : "";
        if (R == null) {
            R = new j5(this.f9363l, zzqVar.zza);
            if (c10.i(zzah.ANALYTICS_STORAGE)) {
                R.h(i0(c10));
            }
            if (c10.i(zzahVar)) {
                R.F(o10);
            }
        } else if (c10.i(zzahVar) && o10 != null && !o10.equals(R.a())) {
            R.F(o10);
            if (zzqVar.zzo && !"00000000-0000-0000-0000-000000000000".equals(this.f9360i.n(zzqVar.zza, c10).first)) {
                R.h(i0(c10));
                k kVar2 = this.f9354c;
                R(kVar2);
                if (kVar2.X(zzqVar.zza, "_id") != null) {
                    k kVar3 = this.f9354c;
                    R(kVar3);
                    if (kVar3.X(zzqVar.zza, "_lair") == null) {
                        i9 i9Var = new i9(zzqVar.zza, DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_lair", c().a(), 1L);
                        k kVar4 = this.f9354c;
                        R(kVar4);
                        kVar4.x(i9Var);
                    }
                }
            }
        } else if (TextUtils.isEmpty(R.e0()) && c10.i(zzah.ANALYTICS_STORAGE)) {
            R.h(i0(c10));
        }
        R.w(zzqVar.zzb);
        R.f(zzqVar.zzq);
        if (!TextUtils.isEmpty(zzqVar.zzk)) {
            R.v(zzqVar.zzk);
        }
        long j10 = zzqVar.zze;
        if (j10 != 0) {
            R.x(j10);
        }
        if (!TextUtils.isEmpty(zzqVar.zzc)) {
            R.j(zzqVar.zzc);
        }
        R.k(zzqVar.zzj);
        String str = zzqVar.zzd;
        if (str != null) {
            R.i(str);
        }
        R.s(zzqVar.zzf);
        R.D(zzqVar.zzh);
        if (!TextUtils.isEmpty(zzqVar.zzg)) {
            R.y(zzqVar.zzg);
        }
        R.g(zzqVar.zzo);
        R.E(zzqVar.zzr);
        R.t(zzqVar.zzs);
        nd.b();
        if (U().B(null, z2.f10065t0)) {
            R.H(zzqVar.zzx);
        }
        fc.b();
        if (U().B(null, z2.f10049l0)) {
            R.G(zzqVar.zzt);
        } else {
            fc.b();
            if (U().B(null, z2.f10047k0)) {
                R.G(null);
            }
        }
        if (R.K()) {
            k kVar5 = this.f9354c;
            R(kVar5);
            kVar5.p(R);
        }
        return R;
    }

    public final b T() {
        b bVar = this.f9357f;
        R(bVar);
        return bVar;
    }

    public final g U() {
        return ((n4) com.google.android.gms.common.internal.p.j(this.f9363l)).z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final p4.a V(String str) {
        String str2;
        p4.a aVar = p4.a.f56725b;
        a().h();
        g();
        p4.a aVar2 = (p4.a) this.A.get(str);
        if (aVar2 == null) {
            k kVar = this.f9354c;
            R(kVar);
            com.google.android.gms.common.internal.p.j(str);
            kVar.h();
            kVar.i();
            Cursor cursor = null;
            try {
                try {
                    cursor = kVar.P().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                    if (cursor.moveToFirst()) {
                        str2 = cursor.getString(0);
                        cursor.close();
                    } else {
                        cursor.close();
                        str2 = "G1";
                    }
                    p4.a b10 = p4.a.b(str2);
                    A(str, b10);
                    return b10;
                } catch (SQLiteException e10) {
                    kVar.f9432a.b().r().c("Database error", "select consent_state from consent_settings where app_id=? limit 1;", e10);
                    throw e10;
                }
            } catch (Throwable th2) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th2;
            }
        }
        return aVar2;
    }

    public final k W() {
        k kVar = this.f9354c;
        R(kVar);
        return kVar;
    }

    public final e3 X() {
        return this.f9363l.D();
    }

    public final o3 Y() {
        o3 o3Var = this.f9353b;
        R(o3Var);
        return o3Var;
    }

    public final q3 Z() {
        q3 q3Var = this.f9355d;
        if (q3Var != null) {
            return q3Var;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final l4 a() {
        return ((n4) com.google.android.gms.common.internal.p.j(this.f9363l)).a();
    }

    public final h4 a0() {
        h4 h4Var = this.f9352a;
        R(h4Var);
        return h4Var;
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final j3 b() {
        return ((n4) com.google.android.gms.common.internal.p.j(this.f9363l)).b();
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final e4.d c() {
        return ((n4) com.google.android.gms.common.internal.p.j(this.f9363l)).c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final n4 c0() {
        return this.f9363l;
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final c d() {
        throw null;
    }

    public final q6 d0() {
        q6 q6Var = this.f9359h;
        R(q6Var);
        return q6Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void e() {
        a().h();
        g();
        if (this.f9365n) {
            return;
        }
        this.f9365n = true;
        if (E()) {
            FileChannel fileChannel = this.f9374w;
            a().h();
            int i9 = 0;
            if (fileChannel != null && fileChannel.isOpen()) {
                ByteBuffer allocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int read = fileChannel.read(allocate);
                    if (read == 4) {
                        allocate.flip();
                        i9 = allocate.getInt();
                    } else if (read != -1) {
                        b().w().b("Unexpected data length. Bytes read", Integer.valueOf(read));
                    }
                } catch (IOException e10) {
                    b().r().b("Failed to read from channel", e10);
                }
            } else {
                b().r().a("Bad channel to read from");
            }
            int p10 = this.f9363l.B().p();
            a().h();
            if (i9 > p10) {
                b().r().c("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i9), Integer.valueOf(p10));
            } else if (i9 < p10) {
                FileChannel fileChannel2 = this.f9374w;
                a().h();
                if (fileChannel2 != null && fileChannel2.isOpen()) {
                    ByteBuffer allocate2 = ByteBuffer.allocate(4);
                    allocate2.putInt(p10);
                    allocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        fileChannel2.write(allocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            b().r().b("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        b().v().c("Storage version upgraded. Previous, current version", Integer.valueOf(i9), Integer.valueOf(p10));
                        return;
                    } catch (IOException e11) {
                        b().r().b("Failed to write to channel", e11);
                    }
                } else {
                    b().r().a("Bad channel to read from");
                }
                b().r().c("Storage version upgrade failed. Previous, current version", Integer.valueOf(i9), Integer.valueOf(p10));
            }
        }
    }

    public final a8 e0() {
        return this.f9360i;
    }

    @Override // com.google.android.gms.measurement.internal.i5
    public final Context f() {
        return this.f9363l.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        if (!this.f9364m) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    public final g9 g0() {
        g9 g9Var = this.f9358g;
        R(g9Var);
        return g9Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(String str, com.google.android.gms.internal.measurement.v4 v4Var) {
        int w6;
        int indexOf;
        kd.b();
        if (U().B(str, z2.f10055o0)) {
            h4 h4Var = this.f9352a;
            R(h4Var);
            Set y10 = h4Var.y(str);
            if (y10 != null) {
                v4Var.B0(y10);
            }
        }
        if (U().B(str, z2.f10059q0)) {
            h4 h4Var2 = this.f9352a;
            R(h4Var2);
            if (h4Var2.J(str)) {
                v4Var.M0();
            }
            h4 h4Var3 = this.f9352a;
            R(h4Var3);
            if (h4Var3.M(str)) {
                if (U().B(str, z2.A0)) {
                    String o02 = v4Var.o0();
                    if (!TextUtils.isEmpty(o02) && (indexOf = o02.indexOf(".")) != -1) {
                        v4Var.S(o02.substring(0, indexOf));
                    }
                } else {
                    v4Var.T0();
                }
            }
        }
        if (U().B(str, z2.f10061r0)) {
            h4 h4Var4 = this.f9352a;
            R(h4Var4);
            if (h4Var4.N(str) && (w6 = g9.w(v4Var, "_id")) != -1) {
                v4Var.s(w6);
            }
        }
        if (U().B(str, z2.f10063s0)) {
            h4 h4Var5 = this.f9352a;
            R(h4Var5);
            if (h4Var5.L(str)) {
                v4Var.N0();
            }
        }
        if (U().B(str, z2.f10069v0)) {
            h4 h4Var6 = this.f9352a;
            R(h4Var6);
            if (h4Var6.I(str)) {
                v4Var.K0();
                if (U().B(str, z2.f10071w0)) {
                    c9 c9Var = (c9) this.B.get(str);
                    if (c9Var == null || c9Var.f9336b + U().r(str, z2.T) < c().b()) {
                        c9Var = new c9(this);
                        this.B.put(str, c9Var);
                    }
                    v4Var.K(c9Var.f9335a);
                }
            }
        }
        if (U().B(str, z2.f10073x0)) {
            h4 h4Var7 = this.f9352a;
            R(h4Var7);
            if (h4Var7.K(str)) {
                v4Var.X0();
            }
        }
    }

    public final k9 h0() {
        return ((n4) com.google.android.gms.common.internal.p.j(this.f9363l)).N();
    }

    @WorkerThread
    final void i(j5 j5Var) {
        ArrayMap arrayMap;
        ArrayMap arrayMap2;
        a().h();
        if (TextUtils.isEmpty(j5Var.i0()) && TextUtils.isEmpty(j5Var.b0())) {
            n((String) com.google.android.gms.common.internal.p.j(j5Var.d0()), 204, null, null, null);
            return;
        }
        u8 u8Var = this.f9361j;
        Uri.Builder builder = new Uri.Builder();
        String i02 = j5Var.i0();
        if (TextUtils.isEmpty(i02)) {
            i02 = j5Var.b0();
        }
        ArrayMap arrayMap3 = null;
        Uri.Builder appendQueryParameter = builder.scheme((String) z2.f10036f.a(null)).encodedAuthority((String) z2.f10038g.a(null)).path("config/app/".concat(String.valueOf(i02))).appendQueryParameter("platform", "android");
        u8Var.f9432a.z().q();
        appendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(73000L)).appendQueryParameter("runtime_version", "0");
        kd.b();
        if (!u8Var.f9432a.z().B(j5Var.d0(), z2.f10051m0)) {
            builder.appendQueryParameter("app_instance_id", j5Var.e0());
        }
        String uri = builder.build().toString();
        try {
            String str = (String) com.google.android.gms.common.internal.p.j(j5Var.d0());
            URL url = new URL(uri);
            b().v().b("Fetching remote configuration", str);
            h4 h4Var = this.f9352a;
            R(h4Var);
            com.google.android.gms.internal.measurement.x3 t10 = h4Var.t(str);
            h4 h4Var2 = this.f9352a;
            R(h4Var2);
            String v10 = h4Var2.v(str);
            if (t10 != null) {
                if (TextUtils.isEmpty(v10)) {
                    arrayMap2 = null;
                } else {
                    arrayMap2 = new ArrayMap();
                    arrayMap2.put("If-Modified-Since", v10);
                }
                kd.b();
                if (U().B(null, z2.f10075y0)) {
                    h4 h4Var3 = this.f9352a;
                    R(h4Var3);
                    String u10 = h4Var3.u(str);
                    if (!TextUtils.isEmpty(u10)) {
                        if (arrayMap2 == null) {
                            arrayMap2 = new ArrayMap();
                        }
                        arrayMap3 = arrayMap2;
                        arrayMap3.put("If-None-Match", u10);
                    }
                }
                arrayMap = arrayMap2;
                this.f9370s = true;
                o3 o3Var = this.f9353b;
                R(o3Var);
                x8 x8Var = new x8(this);
                o3Var.h();
                o3Var.i();
                com.google.android.gms.common.internal.p.j(url);
                com.google.android.gms.common.internal.p.j(x8Var);
                o3Var.f9432a.a().y(new n3(o3Var, str, url, null, arrayMap, x8Var));
            }
            arrayMap = arrayMap3;
            this.f9370s = true;
            o3 o3Var2 = this.f9353b;
            R(o3Var2);
            x8 x8Var2 = new x8(this);
            o3Var2.h();
            o3Var2.i();
            com.google.android.gms.common.internal.p.j(url);
            com.google.android.gms.common.internal.p.j(x8Var2);
            o3Var2.f9432a.a().y(new n3(o3Var2, str, url, null, arrayMap, x8Var2));
        } catch (MalformedURLException unused) {
            b().r().c("Failed to parse config URL. Not fetching. appId", j3.z(j5Var.d0()), uri);
        }
    }

    @WorkerThread
    final String i0(p4.a aVar) {
        if (aVar.i(zzah.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            h0().u().nextBytes(bArr);
            return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void j(zzaw zzawVar, zzq zzqVar) {
        zzaw zzawVar2;
        List<zzac> b02;
        List<zzac> b03;
        List<zzac> b04;
        String str;
        com.google.android.gms.common.internal.p.j(zzqVar);
        com.google.android.gms.common.internal.p.f(zzqVar.zza);
        a().h();
        g();
        String str2 = zzqVar.zza;
        long j10 = zzawVar.zzd;
        k3 b10 = k3.b(zzawVar);
        a().h();
        r6 r6Var = null;
        if (this.C != null && (str = this.D) != null && str.equals(str2)) {
            r6Var = this.C;
        }
        k9.y(r6Var, b10.f9568d, false);
        zzaw a10 = b10.a();
        R(this.f9358g);
        if (g9.m(a10, zzqVar)) {
            if (!zzqVar.zzh) {
                S(zzqVar);
                return;
            }
            List list = zzqVar.zzt;
            if (list == null) {
                zzawVar2 = a10;
            } else if (list.contains(a10.zza)) {
                Bundle L = a10.zzb.L();
                L.putLong("ga_safelisted", 1L);
                zzawVar2 = new zzaw(a10.zza, new zzau(L), a10.zzc, a10.zzd);
            } else {
                b().q().d("Dropping non-safelisted event. appId, event name, origin", str2, a10.zza, a10.zzc);
                return;
            }
            k kVar = this.f9354c;
            R(kVar);
            kVar.e0();
            try {
                k kVar2 = this.f9354c;
                R(kVar2);
                com.google.android.gms.common.internal.p.f(str2);
                kVar2.h();
                kVar2.i();
                int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                if (i9 < 0) {
                    kVar2.f9432a.b().w().c("Invalid time querying timed out conditional properties", j3.z(str2), Long.valueOf(j10));
                    b02 = Collections.emptyList();
                } else {
                    b02 = kVar2.b0("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j10)});
                }
                for (zzac zzacVar : b02) {
                    if (zzacVar != null) {
                        b().v().d("User property timed out", zzacVar.zza, this.f9363l.D().f(zzacVar.zzc.zzb), zzacVar.zzc.I());
                        zzaw zzawVar3 = zzacVar.zzg;
                        if (zzawVar3 != null) {
                            D(new zzaw(zzawVar3, j10), zzqVar);
                        }
                        k kVar3 = this.f9354c;
                        R(kVar3);
                        kVar3.J(str2, zzacVar.zzc.zzb);
                    }
                }
                k kVar4 = this.f9354c;
                R(kVar4);
                com.google.android.gms.common.internal.p.f(str2);
                kVar4.h();
                kVar4.i();
                if (i9 < 0) {
                    kVar4.f9432a.b().w().c("Invalid time querying expired conditional properties", j3.z(str2), Long.valueOf(j10));
                    b03 = Collections.emptyList();
                } else {
                    b03 = kVar4.b0("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j10)});
                }
                ArrayList<zzaw> arrayList = new ArrayList(b03.size());
                for (zzac zzacVar2 : b03) {
                    if (zzacVar2 != null) {
                        b().v().d("User property expired", zzacVar2.zza, this.f9363l.D().f(zzacVar2.zzc.zzb), zzacVar2.zzc.I());
                        k kVar5 = this.f9354c;
                        R(kVar5);
                        kVar5.m(str2, zzacVar2.zzc.zzb);
                        zzaw zzawVar4 = zzacVar2.zzk;
                        if (zzawVar4 != null) {
                            arrayList.add(zzawVar4);
                        }
                        k kVar6 = this.f9354c;
                        R(kVar6);
                        kVar6.J(str2, zzacVar2.zzc.zzb);
                    }
                }
                for (zzaw zzawVar5 : arrayList) {
                    D(new zzaw(zzawVar5, j10), zzqVar);
                }
                k kVar7 = this.f9354c;
                R(kVar7);
                String str3 = zzawVar2.zza;
                com.google.android.gms.common.internal.p.f(str2);
                com.google.android.gms.common.internal.p.f(str3);
                kVar7.h();
                kVar7.i();
                if (i9 < 0) {
                    kVar7.f9432a.b().w().d("Invalid time querying triggered conditional properties", j3.z(str2), kVar7.f9432a.D().d(str3), Long.valueOf(j10));
                    b04 = Collections.emptyList();
                } else {
                    b04 = kVar7.b0("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j10)});
                }
                ArrayList<zzaw> arrayList2 = new ArrayList(b04.size());
                for (zzac zzacVar3 : b04) {
                    if (zzacVar3 != null) {
                        zzlc zzlcVar = zzacVar3.zzc;
                        i9 i9Var = new i9((String) com.google.android.gms.common.internal.p.j(zzacVar3.zza), zzacVar3.zzb, zzlcVar.zzb, j10, com.google.android.gms.common.internal.p.j(zzlcVar.I()));
                        k kVar8 = this.f9354c;
                        R(kVar8);
                        if (kVar8.x(i9Var)) {
                            b().v().d("User property triggered", zzacVar3.zza, this.f9363l.D().f(i9Var.f9494c), i9Var.f9496e);
                        } else {
                            b().r().d("Too many active user properties, ignoring", j3.z(zzacVar3.zza), this.f9363l.D().f(i9Var.f9494c), i9Var.f9496e);
                        }
                        zzaw zzawVar6 = zzacVar3.zzi;
                        if (zzawVar6 != null) {
                            arrayList2.add(zzawVar6);
                        }
                        zzacVar3.zzc = new zzlc(i9Var);
                        zzacVar3.zze = true;
                        k kVar9 = this.f9354c;
                        R(kVar9);
                        kVar9.w(zzacVar3);
                    }
                }
                D(zzawVar2, zzqVar);
                for (zzaw zzawVar7 : arrayList2) {
                    D(new zzaw(zzawVar7, j10), zzqVar);
                }
                k kVar10 = this.f9354c;
                R(kVar10);
                kVar10.o();
            } finally {
                k kVar11 = this.f9354c;
                R(kVar11);
                kVar11.f0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String j0(zzq zzqVar) {
        try {
            return (String) a().s(new y8(this, zzqVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            b().r().c("Failed to get app instance id. appId", j3.z(zzqVar.zza), e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void k(zzaw zzawVar, String str) {
        k kVar = this.f9354c;
        R(kVar);
        j5 R = kVar.R(str);
        if (R != null && !TextUtils.isEmpty(R.g0())) {
            Boolean J = J(R);
            if (J == null) {
                if (!"_ui".equals(zzawVar.zza)) {
                    b().w().b("Could not find package. appId", j3.z(str));
                }
            } else if (!J.booleanValue()) {
                b().r().b("App version does not match; dropping event. appId", j3.z(str));
                return;
            }
            String i02 = R.i0();
            String g02 = R.g0();
            long L = R.L();
            String f02 = R.f0();
            long W = R.W();
            long T = R.T();
            boolean J2 = R.J();
            String h02 = R.h0();
            R.A();
            l(zzawVar, new zzq(str, i02, g02, L, f02, W, T, (String) null, J2, false, h02, 0L, 0L, 0, R.I(), false, R.b0(), R.a0(), R.U(), R.c(), (String) null, V(str).h(), "", (String) null));
            return;
        }
        b().q().b("No app data available; dropping event", str);
    }

    @WorkerThread
    final void l(zzaw zzawVar, zzq zzqVar) {
        com.google.android.gms.common.internal.p.f(zzqVar.zza);
        k3 b10 = k3.b(zzawVar);
        k9 h02 = h0();
        Bundle bundle = b10.f9568d;
        k kVar = this.f9354c;
        R(kVar);
        h02.z(bundle, kVar.Q(zzqVar.zza));
        h0().A(b10, U().n(zzqVar.zza));
        zzaw a10 = b10.a();
        if ("_cmp".equals(a10.zza) && "referrer API v2".equals(a10.zzb.c0("_cis"))) {
            String c02 = a10.zzb.c0("gclid");
            if (!TextUtils.isEmpty(c02)) {
                B(new zzlc("_lgclid", a10.zzd, c02, DebugKt.DEBUG_PROPERTY_VALUE_AUTO), zzqVar);
            }
        }
        j(a10, zzqVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void l0(Runnable runnable) {
        a().h();
        if (this.f9367p == null) {
            this.f9367p = new ArrayList();
        }
        this.f9367p.add(runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m() {
        this.f9369r++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004a A[Catch: all -> 0x0197, TryCatch #2 {all -> 0x01a1, blocks: (B:4:0x0010, B:5:0x0012, B:72:0x0191, B:52:0x0118, B:51:0x0113, B:59:0x0137, B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:79:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0113 A[Catch: all -> 0x01a1, TRY_ENTER, TryCatch #2 {all -> 0x01a1, blocks: (B:4:0x0010, B:5:0x0012, B:72:0x0191, B:52:0x0118, B:51:0x0113, B:59:0x0137, B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:79:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012c A[Catch: all -> 0x0197, TRY_LEAVE, TryCatch #2 {all -> 0x01a1, blocks: (B:4:0x0010, B:5:0x0012, B:72:0x0191, B:52:0x0118, B:51:0x0113, B:59:0x0137, B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:79:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0152 A[Catch: all -> 0x0197, TryCatch #2 {all -> 0x01a1, blocks: (B:4:0x0010, B:5:0x0012, B:72:0x0191, B:52:0x0118, B:51:0x0113, B:59:0x0137, B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:79:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0160 A[Catch: all -> 0x0197, TryCatch #2 {all -> 0x01a1, blocks: (B:4:0x0010, B:5:0x0012, B:72:0x0191, B:52:0x0118, B:51:0x0113, B:59:0x0137, B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:79:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017c A[Catch: all -> 0x0197, TryCatch #2 {all -> 0x01a1, blocks: (B:4:0x0010, B:5:0x0012, B:72:0x0191, B:52:0x0118, B:51:0x0113, B:59:0x0137, B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:79:0x0010 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(java.lang.String r9, int r10, java.lang.Throwable r11, byte[] r12, java.util.Map r13) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d9.n(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o(boolean z10) {
        M();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void p(int i9, Throwable th2, byte[] bArr, String str) {
        k kVar;
        long longValue;
        a().h();
        g();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.f9371t = false;
                K();
            }
        }
        List<Long> list = (List) com.google.android.gms.common.internal.p.j(this.f9375x);
        this.f9375x = null;
        if (i9 != 200) {
            if (i9 == 204) {
                i9 = 204;
            }
            b().v().c("Network upload failed. Will retry later. code, error", Integer.valueOf(i9), th2);
            this.f9360i.f9275h.b(c().a());
            if (i9 != 503 || i9 == 429) {
                this.f9360i.f9273f.b(c().a());
            }
            k kVar2 = this.f9354c;
            R(kVar2);
            kVar2.g0(list);
            M();
        }
        if (th2 == null) {
            try {
                this.f9360i.f9274g.b(c().a());
                this.f9360i.f9275h.b(0L);
                M();
                b().v().c("Successful upload. Got network response. code, size", Integer.valueOf(i9), Integer.valueOf(bArr.length));
                k kVar3 = this.f9354c;
                R(kVar3);
                kVar3.e0();
            } catch (SQLiteException e10) {
                b().r().b("Database error while trying to delete uploaded bundles", e10);
                this.f9366o = c().b();
                b().v().b("Disable upload, time", Long.valueOf(this.f9366o));
            }
            try {
                for (Long l10 : list) {
                    try {
                        kVar = this.f9354c;
                        R(kVar);
                        longValue = l10.longValue();
                        kVar.h();
                        kVar.i();
                    } catch (SQLiteException e11) {
                        List list2 = this.f9376y;
                        if (list2 == null || !list2.contains(l10)) {
                            throw e11;
                        }
                    }
                    try {
                        if (kVar.P().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                            throw new SQLiteException("Deleted fewer rows from queue than expected");
                            break;
                        }
                    } catch (SQLiteException e12) {
                        kVar.f9432a.b().r().b("Failed to delete a bundle in a queue table", e12);
                        throw e12;
                        break;
                    }
                }
                k kVar4 = this.f9354c;
                R(kVar4);
                kVar4.o();
                k kVar5 = this.f9354c;
                R(kVar5);
                kVar5.f0();
                this.f9376y = null;
                o3 o3Var = this.f9353b;
                R(o3Var);
                if (o3Var.m() && O()) {
                    C();
                } else {
                    this.f9377z = -1L;
                    M();
                }
                this.f9366o = 0L;
            } catch (Throwable th3) {
                k kVar6 = this.f9354c;
                R(kVar6);
                kVar6.f0();
                throw th3;
            }
        }
        b().v().c("Network upload failed. Will retry later. code, error", Integer.valueOf(i9), th2);
        this.f9360i.f9275h.b(c().a());
        if (i9 != 503) {
        }
        this.f9360i.f9273f.b(c().a());
        k kVar22 = this.f9354c;
        R(kVar22);
        kVar22.g0(list);
        M();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(9:(2:93|94)|(2:96|(11:98|(3:100|(2:102|(1:104))(1:129)|128)(1:130)|105|(1:107)(1:127)|108|109|110|111|112|113|(4:115|(1:117)|118|(1:120))))|131|109|110|111|112|113|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x04b8, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x04ba, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x04bb, code lost:
        r3 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x04bd, code lost:
        b().r().c("Application info is null, first open report might be inaccurate. appId", com.google.android.gms.measurement.internal.j3.z(r3), r0);
        r0 = r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03ea A[Catch: all -> 0x057b, TryCatch #5 {all -> 0x057b, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01c5, B:52:0x01cb, B:54:0x01d4, B:64:0x0206, B:66:0x0211, B:70:0x021e, B:73:0x022f, B:77:0x023a, B:79:0x023d, B:80:0x025b, B:82:0x0260, B:85:0x027f, B:88:0x0293, B:90:0x02b9, B:93:0x02c1, B:95:0x02d0, B:124:0x03b6, B:126:0x03ea, B:127:0x03ed, B:129:0x0416, B:173:0x04ed, B:174:0x04f0, B:182:0x056a, B:131:0x042b, B:136:0x0450, B:138:0x0458, B:140:0x0460, B:144:0x0473, B:148:0x0486, B:152:0x0492, B:155:0x04a6, B:157:0x04b3, B:165:0x04d1, B:167:0x04d7, B:168:0x04dc, B:170:0x04e2, B:163:0x04bd, B:146:0x047e, B:134:0x043c, B:96:0x02e1, B:98:0x030c, B:99:0x031d, B:101:0x0324, B:103:0x032a, B:105:0x0334, B:107:0x033a, B:109:0x0340, B:111:0x0346, B:112:0x034b, B:117:0x036e, B:120:0x0373, B:121:0x0387, B:122:0x0397, B:123:0x03a7, B:175:0x0505, B:177:0x0535, B:178:0x0538, B:179:0x054d, B:181:0x0551, B:83:0x026f, B:60:0x01ed, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:199:0x00a4, inners: #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0416 A[Catch: all -> 0x057b, TRY_LEAVE, TryCatch #5 {all -> 0x057b, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01c5, B:52:0x01cb, B:54:0x01d4, B:64:0x0206, B:66:0x0211, B:70:0x021e, B:73:0x022f, B:77:0x023a, B:79:0x023d, B:80:0x025b, B:82:0x0260, B:85:0x027f, B:88:0x0293, B:90:0x02b9, B:93:0x02c1, B:95:0x02d0, B:124:0x03b6, B:126:0x03ea, B:127:0x03ed, B:129:0x0416, B:173:0x04ed, B:174:0x04f0, B:182:0x056a, B:131:0x042b, B:136:0x0450, B:138:0x0458, B:140:0x0460, B:144:0x0473, B:148:0x0486, B:152:0x0492, B:155:0x04a6, B:157:0x04b3, B:165:0x04d1, B:167:0x04d7, B:168:0x04dc, B:170:0x04e2, B:163:0x04bd, B:146:0x047e, B:134:0x043c, B:96:0x02e1, B:98:0x030c, B:99:0x031d, B:101:0x0324, B:103:0x032a, B:105:0x0334, B:107:0x033a, B:109:0x0340, B:111:0x0346, B:112:0x034b, B:117:0x036e, B:120:0x0373, B:121:0x0387, B:122:0x0397, B:123:0x03a7, B:175:0x0505, B:177:0x0535, B:178:0x0538, B:179:0x054d, B:181:0x0551, B:83:0x026f, B:60:0x01ed, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:199:0x00a4, inners: #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x04d1 A[Catch: all -> 0x057b, TryCatch #5 {all -> 0x057b, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01c5, B:52:0x01cb, B:54:0x01d4, B:64:0x0206, B:66:0x0211, B:70:0x021e, B:73:0x022f, B:77:0x023a, B:79:0x023d, B:80:0x025b, B:82:0x0260, B:85:0x027f, B:88:0x0293, B:90:0x02b9, B:93:0x02c1, B:95:0x02d0, B:124:0x03b6, B:126:0x03ea, B:127:0x03ed, B:129:0x0416, B:173:0x04ed, B:174:0x04f0, B:182:0x056a, B:131:0x042b, B:136:0x0450, B:138:0x0458, B:140:0x0460, B:144:0x0473, B:148:0x0486, B:152:0x0492, B:155:0x04a6, B:157:0x04b3, B:165:0x04d1, B:167:0x04d7, B:168:0x04dc, B:170:0x04e2, B:163:0x04bd, B:146:0x047e, B:134:0x043c, B:96:0x02e1, B:98:0x030c, B:99:0x031d, B:101:0x0324, B:103:0x032a, B:105:0x0334, B:107:0x033a, B:109:0x0340, B:111:0x0346, B:112:0x034b, B:117:0x036e, B:120:0x0373, B:121:0x0387, B:122:0x0397, B:123:0x03a7, B:175:0x0505, B:177:0x0535, B:178:0x0538, B:179:0x054d, B:181:0x0551, B:83:0x026f, B:60:0x01ed, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:199:0x00a4, inners: #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x04ed A[Catch: all -> 0x057b, TryCatch #5 {all -> 0x057b, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01c5, B:52:0x01cb, B:54:0x01d4, B:64:0x0206, B:66:0x0211, B:70:0x021e, B:73:0x022f, B:77:0x023a, B:79:0x023d, B:80:0x025b, B:82:0x0260, B:85:0x027f, B:88:0x0293, B:90:0x02b9, B:93:0x02c1, B:95:0x02d0, B:124:0x03b6, B:126:0x03ea, B:127:0x03ed, B:129:0x0416, B:173:0x04ed, B:174:0x04f0, B:182:0x056a, B:131:0x042b, B:136:0x0450, B:138:0x0458, B:140:0x0460, B:144:0x0473, B:148:0x0486, B:152:0x0492, B:155:0x04a6, B:157:0x04b3, B:165:0x04d1, B:167:0x04d7, B:168:0x04dc, B:170:0x04e2, B:163:0x04bd, B:146:0x047e, B:134:0x043c, B:96:0x02e1, B:98:0x030c, B:99:0x031d, B:101:0x0324, B:103:0x032a, B:105:0x0334, B:107:0x033a, B:109:0x0340, B:111:0x0346, B:112:0x034b, B:117:0x036e, B:120:0x0373, B:121:0x0387, B:122:0x0397, B:123:0x03a7, B:175:0x0505, B:177:0x0535, B:178:0x0538, B:179:0x054d, B:181:0x0551, B:83:0x026f, B:60:0x01ed, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:199:0x00a4, inners: #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x054d A[Catch: all -> 0x057b, TryCatch #5 {all -> 0x057b, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01c5, B:52:0x01cb, B:54:0x01d4, B:64:0x0206, B:66:0x0211, B:70:0x021e, B:73:0x022f, B:77:0x023a, B:79:0x023d, B:80:0x025b, B:82:0x0260, B:85:0x027f, B:88:0x0293, B:90:0x02b9, B:93:0x02c1, B:95:0x02d0, B:124:0x03b6, B:126:0x03ea, B:127:0x03ed, B:129:0x0416, B:173:0x04ed, B:174:0x04f0, B:182:0x056a, B:131:0x042b, B:136:0x0450, B:138:0x0458, B:140:0x0460, B:144:0x0473, B:148:0x0486, B:152:0x0492, B:155:0x04a6, B:157:0x04b3, B:165:0x04d1, B:167:0x04d7, B:168:0x04dc, B:170:0x04e2, B:163:0x04bd, B:146:0x047e, B:134:0x043c, B:96:0x02e1, B:98:0x030c, B:99:0x031d, B:101:0x0324, B:103:0x032a, B:105:0x0334, B:107:0x033a, B:109:0x0340, B:111:0x0346, B:112:0x034b, B:117:0x036e, B:120:0x0373, B:121:0x0387, B:122:0x0397, B:123:0x03a7, B:175:0x0505, B:177:0x0535, B:178:0x0538, B:179:0x054d, B:181:0x0551, B:83:0x026f, B:60:0x01ed, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:199:0x00a4, inners: #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x042b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0206 A[Catch: all -> 0x057b, TryCatch #5 {all -> 0x057b, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01c5, B:52:0x01cb, B:54:0x01d4, B:64:0x0206, B:66:0x0211, B:70:0x021e, B:73:0x022f, B:77:0x023a, B:79:0x023d, B:80:0x025b, B:82:0x0260, B:85:0x027f, B:88:0x0293, B:90:0x02b9, B:93:0x02c1, B:95:0x02d0, B:124:0x03b6, B:126:0x03ea, B:127:0x03ed, B:129:0x0416, B:173:0x04ed, B:174:0x04f0, B:182:0x056a, B:131:0x042b, B:136:0x0450, B:138:0x0458, B:140:0x0460, B:144:0x0473, B:148:0x0486, B:152:0x0492, B:155:0x04a6, B:157:0x04b3, B:165:0x04d1, B:167:0x04d7, B:168:0x04dc, B:170:0x04e2, B:163:0x04bd, B:146:0x047e, B:134:0x043c, B:96:0x02e1, B:98:0x030c, B:99:0x031d, B:101:0x0324, B:103:0x032a, B:105:0x0334, B:107:0x033a, B:109:0x0340, B:111:0x0346, B:112:0x034b, B:117:0x036e, B:120:0x0373, B:121:0x0387, B:122:0x0397, B:123:0x03a7, B:175:0x0505, B:177:0x0535, B:178:0x0538, B:179:0x054d, B:181:0x0551, B:83:0x026f, B:60:0x01ed, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:199:0x00a4, inners: #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0260 A[Catch: all -> 0x057b, TryCatch #5 {all -> 0x057b, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01c5, B:52:0x01cb, B:54:0x01d4, B:64:0x0206, B:66:0x0211, B:70:0x021e, B:73:0x022f, B:77:0x023a, B:79:0x023d, B:80:0x025b, B:82:0x0260, B:85:0x027f, B:88:0x0293, B:90:0x02b9, B:93:0x02c1, B:95:0x02d0, B:124:0x03b6, B:126:0x03ea, B:127:0x03ed, B:129:0x0416, B:173:0x04ed, B:174:0x04f0, B:182:0x056a, B:131:0x042b, B:136:0x0450, B:138:0x0458, B:140:0x0460, B:144:0x0473, B:148:0x0486, B:152:0x0492, B:155:0x04a6, B:157:0x04b3, B:165:0x04d1, B:167:0x04d7, B:168:0x04dc, B:170:0x04e2, B:163:0x04bd, B:146:0x047e, B:134:0x043c, B:96:0x02e1, B:98:0x030c, B:99:0x031d, B:101:0x0324, B:103:0x032a, B:105:0x0334, B:107:0x033a, B:109:0x0340, B:111:0x0346, B:112:0x034b, B:117:0x036e, B:120:0x0373, B:121:0x0387, B:122:0x0397, B:123:0x03a7, B:175:0x0505, B:177:0x0535, B:178:0x0538, B:179:0x054d, B:181:0x0551, B:83:0x026f, B:60:0x01ed, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:199:0x00a4, inners: #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x026f A[Catch: all -> 0x057b, TryCatch #5 {all -> 0x057b, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01c5, B:52:0x01cb, B:54:0x01d4, B:64:0x0206, B:66:0x0211, B:70:0x021e, B:73:0x022f, B:77:0x023a, B:79:0x023d, B:80:0x025b, B:82:0x0260, B:85:0x027f, B:88:0x0293, B:90:0x02b9, B:93:0x02c1, B:95:0x02d0, B:124:0x03b6, B:126:0x03ea, B:127:0x03ed, B:129:0x0416, B:173:0x04ed, B:174:0x04f0, B:182:0x056a, B:131:0x042b, B:136:0x0450, B:138:0x0458, B:140:0x0460, B:144:0x0473, B:148:0x0486, B:152:0x0492, B:155:0x04a6, B:157:0x04b3, B:165:0x04d1, B:167:0x04d7, B:168:0x04dc, B:170:0x04e2, B:163:0x04bd, B:146:0x047e, B:134:0x043c, B:96:0x02e1, B:98:0x030c, B:99:0x031d, B:101:0x0324, B:103:0x032a, B:105:0x0334, B:107:0x033a, B:109:0x0340, B:111:0x0346, B:112:0x034b, B:117:0x036e, B:120:0x0373, B:121:0x0387, B:122:0x0397, B:123:0x03a7, B:175:0x0505, B:177:0x0535, B:178:0x0538, B:179:0x054d, B:181:0x0551, B:83:0x026f, B:60:0x01ed, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:199:0x00a4, inners: #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x027f A[Catch: all -> 0x057b, TRY_LEAVE, TryCatch #5 {all -> 0x057b, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01c5, B:52:0x01cb, B:54:0x01d4, B:64:0x0206, B:66:0x0211, B:70:0x021e, B:73:0x022f, B:77:0x023a, B:79:0x023d, B:80:0x025b, B:82:0x0260, B:85:0x027f, B:88:0x0293, B:90:0x02b9, B:93:0x02c1, B:95:0x02d0, B:124:0x03b6, B:126:0x03ea, B:127:0x03ed, B:129:0x0416, B:173:0x04ed, B:174:0x04f0, B:182:0x056a, B:131:0x042b, B:136:0x0450, B:138:0x0458, B:140:0x0460, B:144:0x0473, B:148:0x0486, B:152:0x0492, B:155:0x04a6, B:157:0x04b3, B:165:0x04d1, B:167:0x04d7, B:168:0x04dc, B:170:0x04e2, B:163:0x04bd, B:146:0x047e, B:134:0x043c, B:96:0x02e1, B:98:0x030c, B:99:0x031d, B:101:0x0324, B:103:0x032a, B:105:0x0334, B:107:0x033a, B:109:0x0340, B:111:0x0346, B:112:0x034b, B:117:0x036e, B:120:0x0373, B:121:0x0387, B:122:0x0397, B:123:0x03a7, B:175:0x0505, B:177:0x0535, B:178:0x0538, B:179:0x054d, B:181:0x0551, B:83:0x026f, B:60:0x01ed, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:199:0x00a4, inners: #4, #6 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(com.google.android.gms.measurement.internal.zzq r25) {
        /*
            Method dump skipped, instructions count: 1414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d9.q(com.google.android.gms.measurement.internal.zzq):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void r() {
        this.f9368q++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void s(zzac zzacVar) {
        zzq I = I((String) com.google.android.gms.common.internal.p.j(zzacVar.zza));
        if (I != null) {
            t(zzacVar, I);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void t(zzac zzacVar, zzq zzqVar) {
        com.google.android.gms.common.internal.p.j(zzacVar);
        com.google.android.gms.common.internal.p.f(zzacVar.zza);
        com.google.android.gms.common.internal.p.j(zzacVar.zzc);
        com.google.android.gms.common.internal.p.f(zzacVar.zzc.zzb);
        a().h();
        g();
        if (Q(zzqVar)) {
            if (zzqVar.zzh) {
                k kVar = this.f9354c;
                R(kVar);
                kVar.e0();
                try {
                    S(zzqVar);
                    String str = (String) com.google.android.gms.common.internal.p.j(zzacVar.zza);
                    k kVar2 = this.f9354c;
                    R(kVar2);
                    zzac S = kVar2.S(str, zzacVar.zzc.zzb);
                    if (S != null) {
                        b().q().c("Removing conditional user property", zzacVar.zza, this.f9363l.D().f(zzacVar.zzc.zzb));
                        k kVar3 = this.f9354c;
                        R(kVar3);
                        kVar3.J(str, zzacVar.zzc.zzb);
                        if (S.zze) {
                            k kVar4 = this.f9354c;
                            R(kVar4);
                            kVar4.m(str, zzacVar.zzc.zzb);
                        }
                        zzaw zzawVar = zzacVar.zzk;
                        if (zzawVar != null) {
                            zzau zzauVar = zzawVar.zzb;
                            D((zzaw) com.google.android.gms.common.internal.p.j(h0().w0(str, ((zzaw) com.google.android.gms.common.internal.p.j(zzacVar.zzk)).zza, zzauVar != null ? zzauVar.L() : null, S.zzb, zzacVar.zzk.zzd, true, true)), zzqVar);
                        }
                    } else {
                        b().w().c("Conditional user property doesn't exist", j3.z(zzacVar.zza), this.f9363l.D().f(zzacVar.zzc.zzb));
                    }
                    k kVar5 = this.f9354c;
                    R(kVar5);
                    kVar5.o();
                    return;
                } finally {
                    k kVar6 = this.f9354c;
                    R(kVar6);
                    kVar6.f0();
                }
            }
            S(zzqVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void u(zzlc zzlcVar, zzq zzqVar) {
        a().h();
        g();
        if (Q(zzqVar)) {
            if (!zzqVar.zzh) {
                S(zzqVar);
            } else if ("_npa".equals(zzlcVar.zzb) && zzqVar.zzr != null) {
                b().q().a("Falling back to manifest metadata value for ad personalization");
                B(new zzlc("_npa", c().a(), Long.valueOf(true != zzqVar.zzr.booleanValue() ? 0L : 1L), DebugKt.DEBUG_PROPERTY_VALUE_AUTO), zzqVar);
            } else {
                b().q().b("Removing user property", this.f9363l.D().f(zzlcVar.zzb));
                k kVar = this.f9354c;
                R(kVar);
                kVar.e0();
                try {
                    S(zzqVar);
                    if ("_id".equals(zzlcVar.zzb)) {
                        k kVar2 = this.f9354c;
                        R(kVar2);
                        kVar2.m((String) com.google.android.gms.common.internal.p.j(zzqVar.zza), "_lair");
                    }
                    k kVar3 = this.f9354c;
                    R(kVar3);
                    kVar3.m((String) com.google.android.gms.common.internal.p.j(zzqVar.zza), zzlcVar.zzb);
                    k kVar4 = this.f9354c;
                    R(kVar4);
                    kVar4.o();
                    b().q().b("User property removed", this.f9363l.D().f(zzlcVar.zzb));
                } finally {
                    k kVar5 = this.f9354c;
                    R(kVar5);
                    kVar5.f0();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void v(zzq zzqVar) {
        if (this.f9375x != null) {
            ArrayList arrayList = new ArrayList();
            this.f9376y = arrayList;
            arrayList.addAll(this.f9375x);
        }
        k kVar = this.f9354c;
        R(kVar);
        String str = (String) com.google.android.gms.common.internal.p.j(zzqVar.zza);
        com.google.android.gms.common.internal.p.f(str);
        kVar.h();
        kVar.i();
        try {
            SQLiteDatabase P = kVar.P();
            String[] strArr = {str};
            int delete = P.delete("apps", "app_id=?", strArr) + P.delete("events", "app_id=?", strArr) + P.delete("user_attributes", "app_id=?", strArr) + P.delete("conditional_properties", "app_id=?", strArr) + P.delete("raw_events", "app_id=?", strArr) + P.delete("raw_events_metadata", "app_id=?", strArr) + P.delete("queue", "app_id=?", strArr) + P.delete("audience_filter_values", "app_id=?", strArr) + P.delete("main_event_params", "app_id=?", strArr) + P.delete("default_event_params", "app_id=?", strArr);
            if (delete > 0) {
                kVar.f9432a.b().v().c("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e10) {
            kVar.f9432a.b().r().c("Error resetting analytics data. appId, error", j3.z(str), e10);
        }
        if (zzqVar.zzh) {
            q(zzqVar);
        }
    }

    @WorkerThread
    public final void w(String str, r6 r6Var) {
        a().h();
        String str2 = this.D;
        if (str2 == null || str2.equals(str) || r6Var != null) {
            this.D = str;
            this.C = r6Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void x() {
        a().h();
        k kVar = this.f9354c;
        R(kVar);
        kVar.h0();
        if (this.f9360i.f9274g.a() == 0) {
            this.f9360i.f9274g.b(c().a());
        }
        M();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void y(zzac zzacVar) {
        zzq I = I((String) com.google.android.gms.common.internal.p.j(zzacVar.zza));
        if (I != null) {
            z(zzacVar, I);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void z(zzac zzacVar, zzq zzqVar) {
        com.google.android.gms.common.internal.p.j(zzacVar);
        com.google.android.gms.common.internal.p.f(zzacVar.zza);
        com.google.android.gms.common.internal.p.j(zzacVar.zzb);
        com.google.android.gms.common.internal.p.j(zzacVar.zzc);
        com.google.android.gms.common.internal.p.f(zzacVar.zzc.zzb);
        a().h();
        g();
        if (Q(zzqVar)) {
            if (!zzqVar.zzh) {
                S(zzqVar);
                return;
            }
            zzac zzacVar2 = new zzac(zzacVar);
            boolean z10 = false;
            zzacVar2.zze = false;
            k kVar = this.f9354c;
            R(kVar);
            kVar.e0();
            try {
                k kVar2 = this.f9354c;
                R(kVar2);
                zzac S = kVar2.S((String) com.google.android.gms.common.internal.p.j(zzacVar2.zza), zzacVar2.zzc.zzb);
                if (S != null && !S.zzb.equals(zzacVar2.zzb)) {
                    b().w().d("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f9363l.D().f(zzacVar2.zzc.zzb), zzacVar2.zzb, S.zzb);
                }
                if (S != null && S.zze) {
                    zzacVar2.zzb = S.zzb;
                    zzacVar2.zzd = S.zzd;
                    zzacVar2.zzh = S.zzh;
                    zzacVar2.zzf = S.zzf;
                    zzacVar2.zzi = S.zzi;
                    zzacVar2.zze = true;
                    zzlc zzlcVar = zzacVar2.zzc;
                    zzacVar2.zzc = new zzlc(zzlcVar.zzb, S.zzc.zzc, zzlcVar.I(), S.zzc.zzf);
                } else if (TextUtils.isEmpty(zzacVar2.zzf)) {
                    zzlc zzlcVar2 = zzacVar2.zzc;
                    zzacVar2.zzc = new zzlc(zzlcVar2.zzb, zzacVar2.zzd, zzlcVar2.I(), zzacVar2.zzc.zzf);
                    zzacVar2.zze = true;
                    z10 = true;
                }
                if (zzacVar2.zze) {
                    zzlc zzlcVar3 = zzacVar2.zzc;
                    i9 i9Var = new i9((String) com.google.android.gms.common.internal.p.j(zzacVar2.zza), zzacVar2.zzb, zzlcVar3.zzb, zzlcVar3.zzc, com.google.android.gms.common.internal.p.j(zzlcVar3.I()));
                    k kVar3 = this.f9354c;
                    R(kVar3);
                    if (kVar3.x(i9Var)) {
                        b().q().d("User property updated immediately", zzacVar2.zza, this.f9363l.D().f(i9Var.f9494c), i9Var.f9496e);
                    } else {
                        b().r().d("(2)Too many active user properties, ignoring", j3.z(zzacVar2.zza), this.f9363l.D().f(i9Var.f9494c), i9Var.f9496e);
                    }
                    if (z10 && zzacVar2.zzi != null) {
                        D(new zzaw(zzacVar2.zzi, zzacVar2.zzd), zzqVar);
                    }
                }
                k kVar4 = this.f9354c;
                R(kVar4);
                if (kVar4.w(zzacVar2)) {
                    b().q().d("Conditional property added", zzacVar2.zza, this.f9363l.D().f(zzacVar2.zzc.zzb), zzacVar2.zzc.I());
                } else {
                    b().r().d("Too many conditional properties, ignoring", j3.z(zzacVar2.zza), this.f9363l.D().f(zzacVar2.zzc.zzb), zzacVar2.zzc.I());
                }
                k kVar5 = this.f9354c;
                R(kVar5);
                kVar5.o();
            } finally {
                k kVar6 = this.f9354c;
                R(kVar6);
                kVar6.f0();
            }
        }
    }
}

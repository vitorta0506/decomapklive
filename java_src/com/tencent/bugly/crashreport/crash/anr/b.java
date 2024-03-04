package com.tencent.bugly.crashreport.crash.anr;

import android.app.ActivityManager;
import android.content.Context;
import android.os.FileObserver;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.ac;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class b implements ac {

    /* renamed from: m  reason: collision with root package name */
    private static b f30307m;

    /* renamed from: c  reason: collision with root package name */
    private final Context f30310c;

    /* renamed from: d  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f30311d;

    /* renamed from: e  reason: collision with root package name */
    private final w f30312e;

    /* renamed from: f  reason: collision with root package name */
    private String f30313f;

    /* renamed from: g  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.crash.b f30314g;

    /* renamed from: h  reason: collision with root package name */
    private FileObserver f30315h;

    /* renamed from: j  reason: collision with root package name */
    private ab f30317j;

    /* renamed from: k  reason: collision with root package name */
    private int f30318k;

    /* renamed from: a  reason: collision with root package name */
    private AtomicInteger f30308a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    private long f30309b = -1;

    /* renamed from: i  reason: collision with root package name */
    private boolean f30316i = true;

    /* renamed from: l  reason: collision with root package name */
    private ActivityManager.ProcessErrorStateInfo f30319l = new ActivityManager.ProcessErrorStateInfo();

    private b(Context context, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2, w wVar, com.tencent.bugly.crashreport.crash.b bVar) {
        this.f30310c = z.a(context);
        this.f30313f = context.getDir("bugly", 0).getAbsolutePath();
        this.f30311d = aVar2;
        this.f30312e = wVar;
        this.f30314g = bVar;
    }

    private synchronized void c(boolean z10) {
        if (this.f30316i != z10) {
            x.a("user change anr %b", Boolean.valueOf(z10));
            this.f30316i = z10;
        }
    }

    private synchronized void d() {
        if (f()) {
            x.d("start when started!", new Object[0]);
            return;
        }
        FileObserver fileObserver = new FileObserver("/data/anr/", 8) { // from class: com.tencent.bugly.crashreport.crash.anr.b.1
            @Override // android.os.FileObserver
            public final void onEvent(int i9, String str) {
                if (str == null) {
                    return;
                }
                final String str2 = "/data/anr/" + str;
                x.d("watching file %s", str2);
                if (str2.contains("trace")) {
                    b.this.f30312e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.this.a(str2);
                        }
                    });
                } else {
                    x.d("not anr file %s", str2);
                }
            }
        };
        this.f30315h = fileObserver;
        fileObserver.startWatching();
        x.a("start anr monitor!", new Object[0]);
        this.f30312e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.2
            @Override // java.lang.Runnable
            public final void run() {
                b.this.b();
            }
        });
    }

    private synchronized void e() {
        if (!f()) {
            x.d("close when closed!", new Object[0]);
            return;
        }
        this.f30315h.stopWatching();
        this.f30315h = null;
        x.d("close anr monitor!", new Object[0]);
    }

    private synchronized boolean f() {
        return this.f30315h != null;
    }

    private synchronized boolean g() {
        return this.f30316i;
    }

    private File h() {
        int indexOf;
        long currentTimeMillis = System.currentTimeMillis();
        File file = new File(this.f30313f);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    int i9 = 24;
                    int length = listFiles.length;
                    int i10 = 0;
                    while (i10 < length) {
                        File file2 = listFiles[i10];
                        String name = file2.getName();
                        if (name.startsWith("jni_mannual_bugly_trace_") && (indexOf = name.indexOf(".txt")) > 0) {
                            long parseLong = Long.parseLong(name.substring(i9, indexOf));
                            long j10 = (currentTimeMillis - parseLong) / 1000;
                            x.c("current time %d trace time is %d s", Long.valueOf(currentTimeMillis), Long.valueOf(parseLong));
                            x.c("current time minus trace time is %d s", Long.valueOf(j10));
                            if (j10 < 30) {
                                return file2;
                            }
                        }
                        i10++;
                        i9 = 24;
                    }
                }
                return null;
            } catch (Throwable th2) {
                x.a(th2);
                return null;
            }
        }
        return null;
    }

    private synchronized void i() {
        if (f()) {
            x.d("start when started!", new Object[0]);
        } else if (TextUtils.isEmpty(this.f30313f)) {
        } else {
            ab abVar = this.f30317j;
            if (abVar == null || !abVar.isAlive()) {
                ab abVar2 = new ab();
                this.f30317j = abVar2;
                StringBuilder sb2 = new StringBuilder("Bugly-ThreadMonitor");
                int i9 = this.f30318k;
                this.f30318k = i9 + 1;
                sb2.append(i9);
                abVar2.setName(sb2.toString());
                this.f30317j.a();
                this.f30317j.a(this);
                this.f30317j.d();
                this.f30312e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.this.b();
                    }
                });
            }
            FileObserver fileObserver = new FileObserver(this.f30313f, 256) { // from class: com.tencent.bugly.crashreport.crash.anr.b.4
                @Override // android.os.FileObserver
                public final void onEvent(int i10, String str) {
                    if (str == null) {
                        return;
                    }
                    x.d("startWatchingPrivateAnrDir %s", str);
                    if (b.a(b.this, str)) {
                        if (b.this.f30317j != null) {
                            b.this.f30317j.a(true);
                            return;
                        }
                        return;
                    }
                    x.c("trace file not caused by sigquit , ignore ", new Object[0]);
                }
            };
            this.f30315h = fileObserver;
            fileObserver.startWatching();
            x.a("startWatchingPrivateAnrDir! dumFilePath is %s", this.f30313f);
            this.f30312e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.anr.b.5
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.b();
                }
            });
        }
    }

    private synchronized void j() {
        if (!f()) {
            x.d("close when closed!", new Object[0]);
            return;
        }
        ab abVar = this.f30317j;
        if (abVar != null) {
            abVar.c();
            this.f30317j.b();
            this.f30317j.b(this);
            this.f30317j = null;
        }
        x.a("stopWatchingPrivateAnrDir", new Object[0]);
        this.f30315h.stopWatching();
        this.f30315h = null;
        x.d("close anr monitor!", new Object[0]);
    }

    static /* synthetic */ boolean a(b bVar, String str) {
        return str.startsWith("bugly_trace_");
    }

    private synchronized void b(boolean z10) {
        if (z10) {
            i();
        } else {
            j();
        }
    }

    public static b a(Context context, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2, w wVar, p pVar, com.tencent.bugly.crashreport.crash.b bVar, BuglyStrategy.a aVar3) {
        if (f30307m == null) {
            f30307m = new b(context, aVar, aVar2, wVar, bVar);
        }
        return f30307m;
    }

    protected final void b() {
        int indexOf;
        long b10 = z.b() - c.f30342g;
        File file = new File(this.f30313f);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    int i9 = 0;
                    int i10 = 0;
                    for (File file2 : listFiles) {
                        String name = file2.getName();
                        boolean z10 = true;
                        if (!name.startsWith("bugly_trace_") && !name.startsWith("bugly_trace_")) {
                            z10 = false;
                            x.c("Number Trace file : " + name, new Object[0]);
                            if (z10 && (((indexOf = name.indexOf(".txt")) <= 0 || Long.parseLong(name.substring(i10, indexOf)) < b10) && file2.delete())) {
                                i9++;
                            }
                        }
                        i10 = 12;
                        x.c("Number Trace file : " + name, new Object[0]);
                        if (z10) {
                            i9++;
                        }
                    }
                    x.c("Number of overdue trace files that has deleted: " + i9, new Object[0]);
                }
            } catch (Throwable th2) {
                x.a(th2);
            }
        }
    }

    public final synchronized void c() {
        x.d("customer decides whether to open or close.", new Object[0]);
    }

    private ActivityManager.ProcessErrorStateInfo a(Context context, long j10) {
        try {
            x.c("to find!", new Object[0]);
            ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
            int i9 = 0;
            while (true) {
                x.c("waiting!", new Object[0]);
                List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
                if (processesInErrorState != null) {
                    for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                        if (processErrorStateInfo.condition == 2) {
                            x.c("found!", new Object[0]);
                            return processErrorStateInfo;
                        }
                    }
                }
                z.b(500L);
                int i10 = i9 + 1;
                if (i9 >= 40) {
                    x.c("end!", new Object[0]);
                    return null;
                }
                i9 = i10;
            }
        } catch (Exception e10) {
            x.b(e10);
            return null;
        } catch (OutOfMemoryError e11) {
            this.f30319l.pid = Process.myPid();
            ActivityManager.ProcessErrorStateInfo processErrorStateInfo2 = this.f30319l;
            processErrorStateInfo2.shortMsg = "bugly sdk waitForAnrProcessStateChanged encount error:" + e11.getMessage();
            return this.f30319l;
        }
    }

    private CrashDetailBean a(a aVar) {
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        try {
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.g();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.i();
            crashDetailBean.F = this.f30311d.l();
            crashDetailBean.G = this.f30311d.k();
            crashDetailBean.H = this.f30311d.m();
            if (!com.tencent.bugly.crashreport.common.info.b.m()) {
                crashDetailBean.f30281w = z.a(this.f30310c, c.f30340e, (String) null);
            }
            crashDetailBean.f30260b = 3;
            crashDetailBean.f30263e = this.f30311d.h();
            com.tencent.bugly.crashreport.common.info.a aVar2 = this.f30311d;
            crashDetailBean.f30264f = aVar2.f30201j;
            crashDetailBean.f30265g = aVar2.r();
            crashDetailBean.f30271m = this.f30311d.g();
            crashDetailBean.f30272n = "ANR_EXCEPTION";
            crashDetailBean.f30273o = aVar.f30305f;
            crashDetailBean.f30275q = aVar.f30306g;
            HashMap hashMap = new HashMap();
            crashDetailBean.P = hashMap;
            hashMap.put("BUGLY_CR_01", aVar.f30304e);
            String str = crashDetailBean.f30275q;
            int indexOf = str != null ? str.indexOf(IOUtils.LINE_SEPARATOR_UNIX) : -1;
            crashDetailBean.f30274p = indexOf > 0 ? crashDetailBean.f30275q.substring(0, indexOf) : "GET_FAIL";
            crashDetailBean.f30276r = aVar.f30302c;
            String str2 = crashDetailBean.f30275q;
            if (str2 != null) {
                crashDetailBean.f30279u = z.a(str2.getBytes());
            }
            crashDetailBean.f30284z = aVar.f30301b;
            crashDetailBean.A = aVar.f30300a;
            crashDetailBean.B = "main(1)";
            crashDetailBean.I = this.f30311d.t();
            crashDetailBean.f30266h = this.f30311d.q();
            crashDetailBean.f30267i = this.f30311d.C();
            crashDetailBean.f30280v = aVar.f30303d;
            com.tencent.bugly.crashreport.common.info.a aVar3 = this.f30311d;
            crashDetailBean.L = aVar3.f30205n;
            crashDetailBean.M = aVar3.f30180a;
            crashDetailBean.N = aVar3.a();
            if (!com.tencent.bugly.crashreport.common.info.b.m()) {
                this.f30314g.d(crashDetailBean);
            }
            crashDetailBean.Q = this.f30311d.A();
            crashDetailBean.R = this.f30311d.B();
            crashDetailBean.S = this.f30311d.u();
            crashDetailBean.T = this.f30311d.z();
            crashDetailBean.f30283y = y.a();
        } catch (Throwable th2) {
            if (!x.a(th2)) {
                th2.printStackTrace();
            }
        }
        return crashDetailBean;
    }

    private static boolean a(String str, String str2, String str3) {
        Map<String, String[]> map;
        Throwable th2;
        BufferedWriter bufferedWriter;
        TraceFileHelper.a readTargetDumpInfo = TraceFileHelper.readTargetDumpInfo(str3, str, true);
        if (readTargetDumpInfo != null && (map = readTargetDumpInfo.f30299d) != null && map.size() > 0) {
            File file = new File(str2);
            try {
                if (!file.exists()) {
                    if (!file.getParentFile().exists()) {
                        file.getParentFile().mkdirs();
                    }
                    file.createNewFile();
                }
                if (file.exists() && file.canWrite()) {
                    BufferedWriter bufferedWriter2 = null;
                    try {
                        try {
                            bufferedWriter = new BufferedWriter(new FileWriter(file, false));
                        } catch (IOException e10) {
                            e = e10;
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                    }
                    try {
                        String[] strArr = readTargetDumpInfo.f30299d.get("main");
                        int i9 = 3;
                        if (strArr != null && strArr.length >= 3) {
                            String str4 = strArr[0];
                            String str5 = strArr[1];
                            String str6 = strArr[2];
                            bufferedWriter.write("\"main\" tid=" + str6 + " :\n" + str4 + IOUtils.LINE_SEPARATOR_UNIX + str5 + "\n\n");
                            bufferedWriter.flush();
                        }
                        for (Map.Entry<String, String[]> entry : readTargetDumpInfo.f30299d.entrySet()) {
                            if (!entry.getKey().equals("main")) {
                                if (entry.getValue() != null && entry.getValue().length >= i9) {
                                    String str7 = entry.getValue()[0];
                                    String str8 = entry.getValue()[1];
                                    String str9 = entry.getValue()[2];
                                    bufferedWriter.write("\"" + entry.getKey() + "\" tid=" + str9 + " :\n" + str7 + IOUtils.LINE_SEPARATOR_UNIX + str8 + "\n\n");
                                    bufferedWriter.flush();
                                }
                                i9 = 3;
                            }
                        }
                        try {
                            bufferedWriter.close();
                        } catch (IOException e11) {
                            if (!x.a(e11)) {
                                e11.printStackTrace();
                            }
                        }
                        return true;
                    } catch (IOException e12) {
                        e = e12;
                        bufferedWriter2 = bufferedWriter;
                        if (!x.a(e)) {
                            e.printStackTrace();
                        }
                        x.e("dump trace fail %s", e.getClass().getName() + CertificateUtil.DELIMITER + e.getMessage());
                        if (bufferedWriter2 != null) {
                            try {
                                bufferedWriter2.close();
                            } catch (IOException e13) {
                                if (!x.a(e13)) {
                                    e13.printStackTrace();
                                }
                            }
                        }
                        return false;
                    } catch (Throwable th4) {
                        th2 = th4;
                        bufferedWriter2 = bufferedWriter;
                        if (bufferedWriter2 != null) {
                            try {
                                bufferedWriter2.close();
                            } catch (IOException e14) {
                                if (!x.a(e14)) {
                                    e14.printStackTrace();
                                }
                            }
                        }
                        throw th2;
                    }
                }
                x.e("backup file create fail %s", str2);
                return false;
            } catch (Exception e15) {
                if (!x.a(e15)) {
                    e15.printStackTrace();
                }
                x.e("backup file create error! %s  %s", e15.getClass().getName() + CertificateUtil.DELIMITER + e15.getMessage(), str2);
                return false;
            }
        }
        x.e("not found trace dump for %s", str3);
        return false;
    }

    public final boolean a() {
        return this.f30308a.get() != 0;
    }

    private boolean a(Context context, String str, ActivityManager.ProcessErrorStateInfo processErrorStateInfo, long j10, Map<String, String> map) {
        a aVar = new a();
        aVar.f30302c = j10;
        aVar.f30300a = processErrorStateInfo != null ? processErrorStateInfo.processName : AppInfo.a(Process.myPid());
        aVar.f30305f = processErrorStateInfo != null ? processErrorStateInfo.shortMsg : "";
        aVar.f30304e = processErrorStateInfo != null ? processErrorStateInfo.longMsg : "";
        aVar.f30301b = map;
        Thread thread = Looper.getMainLooper().getThread();
        if (map != null) {
            Iterator<String> it = map.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (next.startsWith(thread.getName())) {
                    aVar.f30306g = map.get(next);
                    break;
                }
            }
        }
        if (TextUtils.isEmpty(aVar.f30306g)) {
            aVar.f30306g = "main stack is null , some error may be encountered.";
        }
        Object[] objArr = new Object[7];
        objArr[0] = Long.valueOf(aVar.f30302c);
        objArr[1] = aVar.f30303d;
        objArr[2] = aVar.f30300a;
        objArr[3] = aVar.f30306g;
        objArr[4] = aVar.f30305f;
        objArr[5] = aVar.f30304e;
        Map<String, String> map2 = aVar.f30301b;
        objArr[6] = Integer.valueOf(map2 == null ? 0 : map2.size());
        x.c("anr tm:%d\ntr:%s\nproc:%s\nmain stack:%s\nsMsg:%s\n lMsg:%s\n threads:%d", objArr);
        x.a("found visiable anr , start to upload!", new Object[0]);
        CrashDetailBean a10 = a(aVar);
        if (a10 == null) {
            x.e("pack anr fail!", new Object[0]);
            return false;
        }
        c.a().a(a10);
        if (a10.f30259a >= 0) {
            x.a("backup anr record success!", new Object[0]);
        } else {
            x.d("backup anr record fail!", new Object[0]);
        }
        if (str != null && new File(str).exists()) {
            String str2 = this.f30313f;
            aVar.f30303d = new File(str2, "bugly_trace_" + j10 + ".txt").getAbsolutePath();
            this.f30308a.set(3);
            if (a(str, aVar.f30303d, aVar.f30300a)) {
                x.a("backup trace success", new Object[0]);
            }
        } else {
            File h10 = h();
            x.a("traceFile is %s", h10);
            if (h10 != null) {
                a10.f30280v = h10.getAbsolutePath();
            }
        }
        com.tencent.bugly.crashreport.crash.b.a("ANR", z.a(), aVar.f30300a, "main", aVar.f30306g, a10);
        if (!this.f30314g.a(a10)) {
            this.f30314g.a(a10, 3000L, true);
        }
        this.f30314g.c(a10);
        return true;
    }

    public final void a(String str) {
        synchronized (this) {
            if (this.f30308a.get() != 0) {
                x.c("trace started return ", new Object[0]);
                return;
            }
            this.f30308a.set(1);
            try {
                x.c("read trace first dump for create time!", new Object[0]);
                TraceFileHelper.a readFirstDumpInfo = TraceFileHelper.readFirstDumpInfo(str, false);
                long j10 = readFirstDumpInfo != null ? readFirstDumpInfo.f30298c : -1L;
                if (j10 == -1) {
                    x.d("trace dump fail could not get time!", new Object[0]);
                    j10 = System.currentTimeMillis();
                }
                long j11 = j10;
                if (Math.abs(j11 - this.f30309b) < 10000) {
                    x.d("should not process ANR too Fre in %d", 10000);
                } else {
                    this.f30309b = j11;
                    this.f30308a.set(1);
                    Map<String, String> a10 = z.a(c.f30341f, false);
                    if (a10 != null && a10.size() > 0) {
                        ActivityManager.ProcessErrorStateInfo a11 = a(this.f30310c, 20000L);
                        this.f30319l = a11;
                        if (a11 == null) {
                            x.c("proc state is unvisiable!", new Object[0]);
                        } else if (a11.pid != Process.myPid()) {
                            x.c("not mind proc!", this.f30319l.processName);
                        } else {
                            x.a("found visiable anr , start to process!", new Object[0]);
                            a(this.f30310c, str, this.f30319l, j11, a10);
                        }
                    }
                    x.d("can't get all thread skip this anr", new Object[0]);
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public final void a(boolean z10) {
        c(z10);
        boolean g10 = g();
        com.tencent.bugly.crashreport.common.strategy.a a10 = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (a10 != null) {
            g10 = g10 && a10.c().f30225e;
        }
        if (g10 != f()) {
            x.a("anr changed to %b", Boolean.valueOf(g10));
            b(g10);
        }
    }

    @Override // com.tencent.bugly.proguard.ac
    public final boolean a(aa aaVar) {
        Map<String, String> hashMap = new HashMap<>();
        if (aaVar.e().equals(Looper.getMainLooper())) {
            try {
                hashMap = z.a(200000, false);
            } catch (Throwable th2) {
                x.b(th2);
                hashMap.put("main", th2.getMessage());
            }
            Map<String, String> map = hashMap;
            x.c("onThreadBlock found visiable anr , start to process!", new Object[0]);
            String c10 = com.tencent.bugly.crashreport.common.info.b.c(this.f30310c);
            if (!TextUtils.isEmpty(c10) && (c10.contains("XiaoMi") || c10.contains("samsung"))) {
                this.f30319l = a(this.f30310c, 20000L);
            }
            a(this.f30310c, "", this.f30319l, System.currentTimeMillis(), map);
        } else {
            x.c("anr handler onThreadBlock only care main thread ,current thread is: %s", aaVar.d());
        }
        return true;
    }
}

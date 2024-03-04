package com.meizu.cloud.pushsdk.b;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class b implements f {

    /* renamed from: j  reason: collision with root package name */
    private ThreadPoolExecutor f28203j;

    /* renamed from: d  reason: collision with root package name */
    private long f28197d = 60;

    /* renamed from: e  reason: collision with root package name */
    private int f28198e = 10;

    /* renamed from: i  reason: collision with root package name */
    private boolean f28202i = false;

    /* renamed from: a  reason: collision with root package name */
    private final SimpleDateFormat f28194a = new SimpleDateFormat("MM-dd HH:mm:ss");

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f28195b = Collections.synchronizedList(new ArrayList());

    /* renamed from: c  reason: collision with root package name */
    private final Handler f28196c = new Handler(Looper.getMainLooper());

    /* renamed from: g  reason: collision with root package name */
    private String f28200g = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/pushSdk/defaultLog";

    /* renamed from: f  reason: collision with root package name */
    private final e f28199f = new e();

    /* renamed from: h  reason: collision with root package name */
    private final String f28201h = String.valueOf(Process.myPid());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        final String f28210a;

        /* renamed from: b  reason: collision with root package name */
        final String f28211b;

        /* renamed from: c  reason: collision with root package name */
        final String f28212c;

        public a(String str, String str2, String str3) {
            this.f28210a = b.this.f28194a.format(new Date()) + " " + b.this.f28201h + "-" + Thread.currentThread().getId() + " " + str + FileUtils.RES_PREFIX_STORAGE;
            this.f28211b = str2;
            this.f28212c = str3;
        }
    }

    public b() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new j().a("log-pool-%d").a());
        this.f28203j = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    private void a(a aVar) {
        try {
            this.f28195b.add(aVar);
        } catch (Exception e10) {
            Log.e("Logger", "add logInfo error " + e10.getMessage());
        }
    }

    private void b() {
        if (this.f28195b.size() == 0) {
            this.f28196c.postDelayed(new Runnable() { // from class: com.meizu.cloud.pushsdk.b.b.1
                @Override // java.lang.Runnable
                public void run() {
                    b.this.a(true);
                }
            }, this.f28197d * 1000);
        }
    }

    private void c() {
        if (this.f28195b.size() == this.f28198e) {
            a(true);
        }
    }

    @Override // com.meizu.cloud.pushsdk.b.f
    public void a(String str) {
        this.f28200g = str;
    }

    @Override // com.meizu.cloud.pushsdk.b.f
    public void a(String str, String str2) {
        if (this.f28202i) {
            Log.d(str, str2);
        }
        synchronized (this.f28195b) {
            b();
            a(new a("D", str, str2));
            c();
        }
    }

    @Override // com.meizu.cloud.pushsdk.b.f
    public void a(String str, String str2, Throwable th2) {
        if (this.f28202i) {
            Log.e(str, str2, th2);
        }
        synchronized (this.f28195b) {
            b();
            a(new a(ExifInterface.LONGITUDE_EAST, str, str2 + IOUtils.LINE_SEPARATOR_UNIX + Log.getStackTraceString(th2)));
            c();
        }
    }

    @Override // com.meizu.cloud.pushsdk.b.f
    public void a(boolean z10) {
        ThreadPoolExecutor threadPoolExecutor;
        Runnable runnable = new Runnable() { // from class: com.meizu.cloud.pushsdk.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<a> arrayList;
                b bVar;
                synchronized (b.this.f28195b) {
                    b.this.f28196c.removeCallbacksAndMessages(null);
                    arrayList = new ArrayList(b.this.f28195b);
                    b.this.f28195b.clear();
                }
                try {
                    try {
                        b.this.f28199f.a(b.this.f28200g);
                        for (a aVar : arrayList) {
                            b.this.f28199f.a(aVar.f28210a, aVar.f28211b, aVar.f28212c);
                        }
                        bVar = b.this;
                    } catch (Exception unused) {
                        return;
                    }
                } catch (Exception unused2) {
                    bVar = b.this;
                } catch (Throwable th2) {
                    try {
                        b.this.f28199f.a();
                    } catch (Exception unused3) {
                    }
                    throw th2;
                }
                bVar.f28199f.a();
            }
        };
        if (!z10 || (threadPoolExecutor = this.f28203j) == null) {
            runnable.run();
        } else {
            threadPoolExecutor.execute(runnable);
        }
    }

    @Override // com.meizu.cloud.pushsdk.b.f
    public boolean a() {
        return this.f28202i;
    }

    @Override // com.meizu.cloud.pushsdk.b.f
    public void b(String str, String str2) {
        if (this.f28202i) {
            Log.i(str, str2);
        }
        synchronized (this.f28195b) {
            b();
            a(new a("I", str, str2));
            c();
        }
    }

    @Override // com.meizu.cloud.pushsdk.b.f
    public void b(boolean z10) {
        this.f28202i = z10;
    }

    @Override // com.meizu.cloud.pushsdk.b.f
    public void c(String str, String str2) {
        if (this.f28202i) {
            Log.w(str, str2);
        }
        synchronized (this.f28195b) {
            b();
            a(new a(ExifInterface.LONGITUDE_WEST, str, str2));
            c();
        }
    }

    @Override // com.meizu.cloud.pushsdk.b.f
    public void d(String str, String str2) {
        if (this.f28202i) {
            Log.e(str, str2);
        }
        synchronized (this.f28195b) {
            b();
            a(new a(ExifInterface.LONGITUDE_EAST, str, str2));
            c();
        }
    }
}

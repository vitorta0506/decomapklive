package com.huawei.hms.framework.network.grs;

import android.content.Context;
import android.text.TextUtils;
import com.guochao.faceshow.utils.TimeUtil;
import com.huawei.hms.framework.common.ExecutorsUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.framework.network.grs.g.h;
import com.huawei.hms.framework.network.grs.g.i;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: i  reason: collision with root package name */
    private static final String f27306i = "c";

    /* renamed from: j  reason: collision with root package name */
    private static final ExecutorService f27307j = ExecutorsUtils.newSingleThreadExecutor("GRS_GrsClient-Init");

    /* renamed from: k  reason: collision with root package name */
    private static AtomicInteger f27308k = new AtomicInteger(0);

    /* renamed from: a  reason: collision with root package name */
    private GrsBaseInfo f27309a;

    /* renamed from: b  reason: collision with root package name */
    private Context f27310b;

    /* renamed from: c  reason: collision with root package name */
    private h f27311c;

    /* renamed from: d  reason: collision with root package name */
    private com.huawei.hms.framework.network.grs.e.a f27312d;

    /* renamed from: e  reason: collision with root package name */
    private com.huawei.hms.framework.network.grs.e.c f27313e;

    /* renamed from: f  reason: collision with root package name */
    private com.huawei.hms.framework.network.grs.e.c f27314f;

    /* renamed from: g  reason: collision with root package name */
    private com.huawei.hms.framework.network.grs.a f27315g;

    /* renamed from: h  reason: collision with root package name */
    private FutureTask<Boolean> f27316h;

    /* loaded from: classes4.dex */
    class a implements Callable<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27317a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GrsBaseInfo f27318b;

        a(Context context, GrsBaseInfo grsBaseInfo) {
            this.f27317a = context;
            this.f27318b = grsBaseInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            c.this.f27311c = new h();
            c cVar = c.this;
            Context context = this.f27317a;
            cVar.f27313e = new com.huawei.hms.framework.network.grs.e.c(context, GrsApp.getInstance().getBrand("_") + "share_pre_grs_conf_");
            c cVar2 = c.this;
            Context context2 = this.f27317a;
            cVar2.f27314f = new com.huawei.hms.framework.network.grs.e.c(context2, GrsApp.getInstance().getBrand("_") + "share_pre_grs_services_");
            c cVar3 = c.this;
            cVar3.f27312d = new com.huawei.hms.framework.network.grs.e.a(cVar3.f27313e, c.this.f27314f, c.this.f27311c);
            c cVar4 = c.this;
            cVar4.f27315g = new com.huawei.hms.framework.network.grs.a(cVar4.f27309a, c.this.f27312d, c.this.f27311c, c.this.f27314f);
            if (c.f27308k.incrementAndGet() <= 2 || com.huawei.hms.framework.network.grs.f.b.a(this.f27317a.getPackageName(), c.this.f27309a) == null) {
                new com.huawei.hms.framework.network.grs.f.b(this.f27317a, this.f27318b, true).a(this.f27318b);
            }
            String c10 = new com.huawei.hms.framework.network.grs.g.k.c(this.f27318b, this.f27317a).c();
            String str = c.f27306i;
            Logger.v(str, "scan serviceSet is:" + c10);
            String a10 = c.this.f27314f.a("services", "");
            String a11 = i.a(a10, c10);
            if (!TextUtils.isEmpty(a11)) {
                c.this.f27314f.b("services", a11);
                String str2 = c.f27306i;
                Logger.i(str2, "postList is:" + StringUtils.anonymizeMessage(a11));
                String str3 = c.f27306i;
                Logger.i(str3, "currentServices:" + StringUtils.anonymizeMessage(a10));
                if (!a11.equals(a10)) {
                    c.this.f27311c.a(c.this.f27309a.getGrsParasKey(true, true, this.f27317a));
                    c.this.f27311c.a(new com.huawei.hms.framework.network.grs.g.k.c(this.f27318b, this.f27317a), (String) null, c.this.f27314f);
                }
            }
            c cVar5 = c.this;
            cVar5.a(cVar5.f27313e.a());
            c.this.f27312d.b(this.f27318b, this.f27317a);
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, GrsBaseInfo grsBaseInfo) {
        this.f27316h = null;
        this.f27310b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        a(grsBaseInfo);
        GrsBaseInfo grsBaseInfo2 = this.f27309a;
        FutureTask<Boolean> futureTask = new FutureTask<>(new a(this.f27310b, grsBaseInfo2));
        this.f27316h = futureTask;
        f27307j.execute(futureTask);
        Logger.i(f27306i, "GrsClient Instance is init, GRS SDK version: %s, GrsBaseInfoParam: app_name=%s, reg_country=%s, ser_country=%s, issue_country=%s", com.huawei.hms.framework.network.grs.h.a.a(), grsBaseInfo2.getAppName(), grsBaseInfo.getRegCountry(), grsBaseInfo.getSerCountry(), grsBaseInfo.getIssueCountry());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(GrsBaseInfo grsBaseInfo) {
        this.f27316h = null;
        a(grsBaseInfo);
    }

    private void a(GrsBaseInfo grsBaseInfo) {
        try {
            this.f27309a = grsBaseInfo.m813clone();
        } catch (CloneNotSupportedException e10) {
            Logger.w(f27306i, "GrsClient catch CloneNotSupportedException", e10);
            this.f27309a = grsBaseInfo.copy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, ?> map) {
        if (map == null || map.isEmpty()) {
            Logger.v(f27306i, "sp's content is empty.");
            return;
        }
        for (String str : map.keySet()) {
            if (str.endsWith(CrashHianalyticsData.TIME)) {
                String a10 = this.f27313e.a(str, "");
                long j10 = 0;
                if (!TextUtils.isEmpty(a10) && a10.matches("\\d+")) {
                    try {
                        j10 = Long.parseLong(a10);
                    } catch (NumberFormatException e10) {
                        Logger.w(f27306i, "convert expire time from String to Long catch NumberFormatException.", e10);
                    }
                }
                if (!a(j10)) {
                    Logger.i(f27306i, "init interface auto clear some invalid sp's data.");
                    String substring = str.substring(0, str.length() - 4);
                    this.f27313e.a(substring);
                    this.f27313e.a(str);
                    this.f27313e.a(substring + "ETag");
                }
            }
        }
    }

    private boolean a(long j10) {
        return System.currentTimeMillis() - j10 <= TimeUtil.WEEK;
    }

    private boolean e() {
        String str;
        String str2;
        FutureTask<Boolean> futureTask = this.f27316h;
        if (futureTask == null) {
            return false;
        }
        try {
            return futureTask.get(8L, TimeUnit.SECONDS).booleanValue();
        } catch (InterruptedException e10) {
            e = e10;
            str = f27306i;
            str2 = "init compute task interrupted.";
            Logger.w(str, str2, e);
            return false;
        } catch (CancellationException unused) {
            Logger.i(f27306i, "init compute task canceled.");
            return false;
        } catch (ExecutionException e11) {
            e = e11;
            str = f27306i;
            str2 = "init compute task failed.";
            Logger.w(str, str2, e);
            return false;
        } catch (TimeoutException unused2) {
            Logger.w(f27306i, "init compute task timed out");
            return false;
        } catch (Exception e12) {
            e = e12;
            str = f27306i;
            str2 = "init compute task occur unknown Exception";
            Logger.w(str, str2, e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str, String str2) {
        if (this.f27309a == null || str == null || str2 == null) {
            Logger.w(f27306i, "invalid para!");
            return null;
        } else if (e()) {
            return this.f27315g.a(str, str2, this.f27310b);
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> a(String str) {
        if (this.f27309a != null && str != null) {
            return e() ? this.f27315g.a(str, this.f27310b) : new HashMap();
        }
        Logger.w(f27306i, "invalid para!");
        return new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (e()) {
            String grsParasKey = this.f27309a.getGrsParasKey(true, true, this.f27310b);
            this.f27313e.a(grsParasKey);
            com.huawei.hms.framework.network.grs.e.c cVar = this.f27313e;
            cVar.a(grsParasKey + CrashHianalyticsData.TIME);
            com.huawei.hms.framework.network.grs.e.c cVar2 = this.f27313e;
            cVar2.a(grsParasKey + "ETag");
            this.f27311c.a(grsParasKey);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, IQueryUrlsCallBack iQueryUrlsCallBack) {
        if (iQueryUrlsCallBack == null) {
            Logger.w(f27306i, "IQueryUrlsCallBack is must not null for process continue.");
        } else if (this.f27309a == null || str == null) {
            iQueryUrlsCallBack.onCallBackFail(-6);
        } else if (e()) {
            this.f27315g.a(str, iQueryUrlsCallBack, this.f27310b);
        } else {
            Logger.i(f27306i, "grs init task has not completed.");
            iQueryUrlsCallBack.onCallBackFail(-7);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack) {
        if (iQueryUrlCallBack == null) {
            Logger.w(f27306i, "IQueryUrlCallBack is must not null for process continue.");
        } else if (this.f27309a == null || str == null || str2 == null) {
            iQueryUrlCallBack.onCallBackFail(-6);
        } else if (e()) {
            this.f27315g.a(str, str2, iQueryUrlCallBack, this.f27310b);
        } else {
            Logger.i(f27306i, "grs init task has not completed.");
            iQueryUrlCallBack.onCallBackFail(-7);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c.class == obj.getClass() && (obj instanceof c)) {
            return this.f27309a.compare(((c) obj).f27309a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        GrsBaseInfo grsBaseInfo;
        Context context;
        if (!e() || (grsBaseInfo = this.f27309a) == null || (context = this.f27310b) == null) {
            return false;
        }
        this.f27312d.a(grsBaseInfo, context);
        return true;
    }
}

package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f30121a = true;

    /* renamed from: b  reason: collision with root package name */
    public static List<a> f30122b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public static boolean f30123c;

    /* renamed from: d  reason: collision with root package name */
    private static p f30124d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f30125e;

    private static boolean a(com.tencent.bugly.crashreport.common.info.a aVar) {
        List<String> list = aVar.f30206o;
        return list != null && list.contains("bugly");
    }

    public static synchronized void a(Context context) {
        synchronized (b.class) {
            a(context, null);
        }
    }

    public static synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        synchronized (b.class) {
            if (f30125e) {
                x.d("[init] initial Multi-times, ignore this.", new Object[0]);
            } else if (context == null) {
                Log.w(x.f30674a, "[init] context of init() is null, check it.");
            } else {
                com.tencent.bugly.crashreport.common.info.a a10 = com.tencent.bugly.crashreport.common.info.a.a(context);
                if (a(a10)) {
                    f30121a = false;
                    return;
                }
                String f10 = a10.f();
                if (f10 == null) {
                    Log.e(x.f30674a, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set.");
                } else {
                    a(context, f10, a10.f30212u, buglyStrategy);
                }
            }
        }
    }

    public static synchronized void a(Context context, String str, boolean z10, BuglyStrategy buglyStrategy) {
        byte[] bArr;
        synchronized (b.class) {
            if (f30125e) {
                x.d("[init] initial Multi-times, ignore this.", new Object[0]);
            } else if (context == null) {
                Log.w(x.f30674a, "[init] context is null, check it.");
            } else if (str == null) {
                Log.e(x.f30674a, "init arg 'crashReportAppID' should not be null!");
            } else {
                f30125e = true;
                if (z10) {
                    f30123c = true;
                    x.f30675b = true;
                    x.d("Bugly debug模式开启，请在发布时把isDebug关闭。 -- Running in debug model for 'isDebug' is enabled. Please disable it when you release.", new Object[0]);
                    x.e("--------------------------------------------------------------------------------------------", new Object[0]);
                    x.d("Bugly debug模式将有以下行为特性 -- The following list shows the behaviour of debug model: ", new Object[0]);
                    x.d("[1] 输出详细的Bugly SDK的Log -- More detailed log of Bugly SDK will be output to logcat;", new Object[0]);
                    x.d("[2] 每一条Crash都会被立即上报 -- Every crash caught by Bugly will be uploaded immediately.", new Object[0]);
                    x.d("[3] 自定义日志将会在Logcat中输出 -- Custom log will be output to logcat.", new Object[0]);
                    x.e("--------------------------------------------------------------------------------------------", new Object[0]);
                    x.b("[init] Open debug mode of Bugly.", new Object[0]);
                }
                x.a(" crash report start initializing...", new Object[0]);
                x.b("[init] Bugly start initializing...", new Object[0]);
                x.a("[init] Bugly complete version: v%s", "3.4.4");
                Context a10 = z.a(context);
                com.tencent.bugly.crashreport.common.info.a a11 = com.tencent.bugly.crashreport.common.info.a.a(a10);
                a11.p();
                y.a(a10);
                f30124d = p.a(a10, f30122b);
                u.a(a10);
                com.tencent.bugly.crashreport.common.strategy.a a12 = com.tencent.bugly.crashreport.common.strategy.a.a(a10, f30122b);
                n a13 = n.a(a10);
                if (a(a11)) {
                    f30121a = false;
                    return;
                }
                a11.a(str);
                x.a("[param] Set APP ID:%s", str);
                if (buglyStrategy != null) {
                    String appVersion = buglyStrategy.getAppVersion();
                    if (!TextUtils.isEmpty(appVersion)) {
                        if (appVersion.length() > 100) {
                            String substring = appVersion.substring(0, 100);
                            x.d("appVersion %s length is over limit %d substring to %s", appVersion, 100, substring);
                            appVersion = substring;
                        }
                        a11.f30201j = appVersion;
                        x.a("[param] Set App version: %s", buglyStrategy.getAppVersion());
                    }
                    try {
                        if (buglyStrategy.isReplaceOldChannel()) {
                            String appChannel = buglyStrategy.getAppChannel();
                            if (!TextUtils.isEmpty(appChannel)) {
                                if (appChannel.length() > 100) {
                                    String substring2 = appChannel.substring(0, 100);
                                    x.d("appChannel %s length is over limit %d substring to %s", appChannel, 100, substring2);
                                    appChannel = substring2;
                                }
                                f30124d.a(556, "app_channel", appChannel.getBytes(), (o) null, false);
                                a11.f30203l = appChannel;
                            }
                        } else {
                            Map<String, byte[]> a14 = f30124d.a(556, (o) null, true);
                            if (a14 != null && (bArr = a14.get("app_channel")) != null) {
                                a11.f30203l = new String(bArr);
                            }
                        }
                        x.a("[param] Set App channel: %s", a11.f30203l);
                    } catch (Exception e10) {
                        if (f30123c) {
                            e10.printStackTrace();
                        }
                    }
                    String appPackageName = buglyStrategy.getAppPackageName();
                    if (!TextUtils.isEmpty(appPackageName)) {
                        if (appPackageName.length() > 100) {
                            String substring3 = appPackageName.substring(0, 100);
                            x.d("appPackageName %s length is over limit %d substring to %s", appPackageName, 100, substring3);
                            appPackageName = substring3;
                        }
                        a11.f30194c = appPackageName;
                        x.a("[param] Set App package: %s", buglyStrategy.getAppPackageName());
                    }
                    String deviceID = buglyStrategy.getDeviceID();
                    if (deviceID != null) {
                        if (deviceID.length() > 100) {
                            String substring4 = deviceID.substring(0, 100);
                            x.d("deviceId %s length is over limit %d substring to %s", deviceID, 100, substring4);
                            deviceID = substring4;
                        }
                        a11.c(deviceID);
                        x.a("[param] Set device ID: %s", deviceID);
                    }
                    String deviceModel = buglyStrategy.getDeviceModel();
                    if (deviceModel != null) {
                        a11.d(deviceModel);
                        x.a("[param] Set device model: %s", deviceModel);
                    }
                    a11.f30196e = buglyStrategy.isUploadProcess();
                    y.f30677a = buglyStrategy.isBuglyLogUpload();
                }
                for (int i9 = 0; i9 < f30122b.size(); i9++) {
                    if (a13.a(f30122b.get(i9).f30120id)) {
                        f30122b.get(i9).init(a10, z10, buglyStrategy);
                    }
                }
                com.tencent.bugly.crashreport.biz.b.a(a10, buglyStrategy);
                a12.a(buglyStrategy != null ? buglyStrategy.getAppReportDelay() : 0L);
                x.b("[init] Bugly initialization finished.", new Object[0]);
            }
        }
    }

    public static synchronized void a(a aVar) {
        synchronized (b.class) {
            if (!f30122b.contains(aVar)) {
                f30122b.add(aVar);
            }
        }
    }
}

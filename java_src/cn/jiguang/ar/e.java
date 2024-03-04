package cn.jiguang.ar;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.android.IDataShare;
import cn.jiguang.az.h;
import cn.jiguang.internal.ActionManager;
import cn.jiguang.internal.JConstants;
import cn.jiguang.internal.JCoreInternalHelper;
import cn.jpush.android.service.DataShare;
import cn.jpush.android.service.JCommonService;
import cn.jpush.android.service.PushReceiver;
import com.facebook.internal.ServerProtocol;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f2075a;

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, String> f2076b = new HashMap();

    private e() {
    }

    private Bundle a(String str, String str2, Bundle bundle, String str3) {
        String str4 = str + "." + str2;
        try {
            IDataShare dataShare = DataShare.getInstance(str3);
            if (dataShare == null) {
                cn.jiguang.as.d.c("JMessenger", str3 + "'s aidl not found, " + str4);
                return null;
            }
            cn.jiguang.as.d.c("JMessenger", "sendByAidl, " + str4);
            if ("INTERNAL_API".equals(str)) {
                return dataShare.execute(str, str2, bundle);
            }
            dataShare.onAction(str, str2, bundle);
            return new Bundle();
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("JMessenger", "sendByAidl, " + str4 + ", e=" + th2);
            return null;
        }
    }

    public static e a() {
        if (f2075a == null) {
            synchronized (e.class) {
                if (f2075a == null) {
                    f2075a = new e();
                }
            }
        }
        return f2075a;
    }

    private static String a(Context context, String str) {
        StringBuilder sb2;
        String str2 = f2076b.get(str);
        if (TextUtils.isEmpty(str2)) {
            String str3 = context.getPackageName() + JConstants.DATA_PROVIDER_SUFFIX;
            ProviderInfo a10 = cn.jiguang.f.a.a(context, context.getPackageName(), str3);
            if (str.equals(a10 != null ? a10.processName : null)) {
                sb2 = new StringBuilder();
            } else {
                str3 = context.getPackageName() + ".DownloadProvider";
                ProviderInfo a11 = cn.jiguang.f.a.a(context, context.getPackageName(), str3);
                if (!str.equals(a11 != null ? a11.processName : null)) {
                    return "";
                }
                sb2 = new StringBuilder();
            }
            sb2.append("content://");
            sb2.append(str3);
            sb2.append(FileUtils.RES_PREFIX_STORAGE);
            String sb3 = sb2.toString();
            f2076b.put(str, sb3);
            return sb3;
        }
        return str2;
    }

    private boolean a(Context context, Class cls, String str, Bundle bundle) {
        Intent intent;
        if (cls == null) {
            return false;
        }
        String str2 = cls.getName() + "." + str;
        try {
            intent = new Intent();
            intent.setClass(context, cls);
            intent.setAction(str);
            intent.setPackage(context.getPackageName());
            if (bundle != null) {
                intent.putExtras(bundle);
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("JMessenger", "sendByComponent, " + str2 + " e=" + th2);
        }
        if (BroadcastReceiver.class.isAssignableFrom(cls)) {
            context.sendBroadcast(intent);
            cn.jiguang.as.d.c("JMessenger", "sendByReceiver, " + str2);
            return true;
        }
        if (Service.class.isAssignableFrom(cls)) {
            if (context.startService(intent) != null) {
                cn.jiguang.as.d.c("JMessenger", "sendByService, " + str2);
                return true;
            }
            cn.jiguang.as.d.g("JMessenger", "startService, " + str2 + ", can't find component");
        }
        return false;
    }

    private Bundle b(Context context, String str, String str2, Bundle bundle, String str3) {
        String str4 = str + "." + str2;
        try {
            String a10 = a(context, str3);
            if (TextUtils.isEmpty(a10)) {
                cn.jiguang.as.d.c("JMessenger", "uri is null, check provider config");
                return null;
            }
            Uri parse = Uri.parse(a10);
            cn.jiguang.as.d.c("JMessenger", "sendByProvider, uri=" + a10 + ", " + str4);
            return context.getContentResolver().call(parse, str, str2, bundle);
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("JMessenger", "provider call:" + th2);
            return null;
        }
    }

    public Bundle a(Context context, String str, String str2, Bundle bundle, String str3) {
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        String a10 = cn.jiguang.f.a.a(context);
        if (TextUtils.isEmpty(a10)) {
            return null;
        }
        if (a10.equals(str3)) {
            return b(context, str, str2, bundle);
        }
        Bundle a11 = a(str, str2, bundle, str3);
        if (a11 != null) {
            return a11;
        }
        Bundle b10 = b(context, str, str2, bundle, str3);
        if (b10 != null) {
            return b10;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #0 {all -> 0x0066, blocks: (B:17:0x0057, B:20:0x005f), top: B:27:0x0057 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(android.content.Context r11, java.lang.String r12, java.lang.String r13, android.os.Bundle r14) {
        /*
            r10 = this;
            java.lang.String r7 = " meet e:"
            java.lang.String r8 = "JMessenger"
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r12)
            java.lang.String r1 = "."
            r0.append(r1)
            r0.append(r13)
            java.lang.String r9 = r0.toString()
            r1 = 0
            java.lang.Class r2 = java.lang.Class.forName(r12)     // Catch: java.lang.Throwable -> L39
            java.lang.Class<android.app.Service> r0 = android.app.Service.class
            boolean r0 = r0.isAssignableFrom(r2)     // Catch: java.lang.Throwable -> L37
            if (r0 == 0) goto L2a
            java.lang.String r1 = cn.jiguang.f.a.a(r11, r12)     // Catch: java.lang.Throwable -> L37
            goto L50
        L2a:
            java.lang.Class<android.content.BroadcastReceiver> r0 = android.content.BroadcastReceiver.class
            boolean r0 = r0.isAssignableFrom(r2)     // Catch: java.lang.Throwable -> L37
            if (r0 == 0) goto L50
            java.lang.String r1 = cn.jiguang.f.a.b(r11, r12)     // Catch: java.lang.Throwable -> L37
            goto L50
        L37:
            r0 = move-exception
            goto L3b
        L39:
            r0 = move-exception
            r2 = r1
        L3b:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r9)
            r4.append(r7)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            cn.jiguang.as.d.c(r8, r0)
        L50:
            r6 = r1
            r0 = r2
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r13
            r5 = r14
            android.os.Bundle r1 = r1.a(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L66
            r2 = 1
            if (r1 == 0) goto L5f
            return r2
        L5f:
            boolean r0 = r10.a(r11, r0, r13, r14)     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L81
            return r2
        L66:
            r0 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "send, "
            r2.append(r3)
            r2.append(r9)
            r2.append(r7)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            cn.jiguang.as.d.g(r8, r0)
        L81:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "send all failed, "
            r0.append(r2)
            r0.append(r9)
            java.lang.String r0 = r0.toString()
            cn.jiguang.as.d.i(r8, r0)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ar.e.a(android.content.Context, java.lang.String, java.lang.String, android.os.Bundle):boolean");
    }

    public Bundle b(Context context, String str, String str2, Bundle bundle) {
        try {
            cn.jiguang.as.d.c("JMessenger", "directHandle, " + str + "." + str2);
            if ("INTERNAL_API".equals(str)) {
                if (str2.equals("isTcpLoggedIn")) {
                    boolean d10 = h.a().d();
                    Bundle bundle2 = new Bundle();
                    bundle2.putBoolean(ServerProtocol.DIALOG_PARAM_STATE, d10);
                    return bundle2;
                }
                cn.jiguang.as.d.i("JMessenger", "directHandle, not support " + str + "." + str2);
                return null;
            }
            Class<?> cls = Class.forName(str);
            if (!BroadcastReceiver.class.isAssignableFrom(cls) && !Service.class.isAssignableFrom(cls)) {
                cn.jiguang.as.d.i("JMessenger", "directHandle, not support " + str + "." + str2);
                return null;
            } else if (JCommonService.class.isAssignableFrom(cls)) {
                cn.jiguang.as.d.c("JMessenger", "JCommonService handle succeed," + str + "." + str2);
                JCoreInternalHelper.getInstance().onEvent(context, JConstants.SDK_TYPE, 2, true, str2, bundle, new Object[0]);
                return new Bundle();
            } else {
                Intent intent = new Intent(str2);
                intent.setClass(context, cls);
                if (bundle != null) {
                    intent.putExtras(bundle);
                }
                intent.setPackage(context.getPackageName());
                intent.addCategory(context.getPackageName());
                if (PushReceiver.class.isAssignableFrom(cls)) {
                    cn.jiguang.as.d.c("JMessenger", "PushReceiver handle succeed," + str + "." + str2);
                    ActionManager.getInstance().handleMessage(context, bundle != null ? bundle.getString("sdktype") : null, intent);
                } else if (BroadcastReceiver.class.isAssignableFrom(cls)) {
                    cn.jiguang.as.d.c("JMessenger", "Receiver onReceive," + str + "." + str2);
                    ((BroadcastReceiver) cls.newInstance()).onReceive(context, intent);
                } else {
                    cn.jiguang.as.d.c("JMessenger", "Service onStartCommand," + str + "." + str2);
                    ((Service) cls.newInstance()).onStartCommand(intent, 0, 0);
                }
                return new Bundle();
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.i("JMessenger", "directHandle e:" + th2);
            return null;
        }
    }
}

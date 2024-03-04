package com.meizu.cloud.pushsdk.platform.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public abstract class c<T extends BasicPushStatus> {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f28791a;

    /* renamed from: b  reason: collision with root package name */
    protected String f28792b;

    /* renamed from: c  reason: collision with root package name */
    protected String f28793c;

    /* renamed from: d  reason: collision with root package name */
    protected String f28794d;

    /* renamed from: e  reason: collision with root package name */
    protected final com.meizu.cloud.pushsdk.platform.a.a f28795e;

    /* renamed from: h  reason: collision with root package name */
    private ScheduledExecutorService f28798h;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f28796f = true;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f28797g = true;

    /* renamed from: i  reason: collision with root package name */
    private String f28799i = null;

    public c(Context context, String str, String str2, com.meizu.cloud.pushsdk.platform.a.a aVar, ScheduledExecutorService scheduledExecutorService) {
        this.f28798h = scheduledExecutorService;
        this.f28791a = context;
        this.f28792b = str;
        this.f28793c = str2;
        this.f28795e = aVar;
    }

    private boolean a(int i9) {
        return i9 >= 110000 && i9 <= 200000;
    }

    private boolean b(T t10) {
        int intValue = Integer.valueOf(t10.getCode()).intValue();
        return (intValue > 200 && intValue < 600) || (intValue > 1000 && intValue < 2000) || intValue == 0;
    }

    private boolean h() {
        return this.f28797g && !this.f28791a.getPackageName().equals(this.f28799i);
    }

    protected String a(Context context, String str) {
        String str2 = null;
        if (!TextUtils.isEmpty(str)) {
            List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(new Intent(str), 0);
            if (queryIntentServices != null) {
                Iterator<ResolveInfo> it = queryIntentServices.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ResolveInfo next = it.next();
                    if (PushConstants.PUSH_PACKAGE_NAME.equals(next.serviceInfo.packageName)) {
                        ServiceInfo serviceInfo = next.serviceInfo;
                        this.f28799i = serviceInfo.packageName;
                        str2 = serviceInfo.name;
                        break;
                    }
                }
                if (TextUtils.isEmpty(str2) && queryIntentServices.size() > 0) {
                    this.f28799i = queryIntentServices.get(0).serviceInfo.packageName;
                    str2 = queryIntentServices.get(0).serviceInfo.name;
                }
            }
        }
        DebugLogger.i("Strategy", "current process packageName " + this.f28799i);
        return str2;
    }

    protected void a(Intent intent) {
        try {
            intent.setPackage(this.f28799i);
            intent.setAction(PushConstants.MZ_PUSH_MANAGER_SERVICE_ACTION);
            this.f28791a.startService(intent);
        } catch (Exception e10) {
            DebugLogger.e("Strategy", "start RemoteService error " + e10.getMessage());
        }
    }

    protected abstract void a(T t10);

    public void a(boolean z10) {
        this.f28796f = z10;
    }

    protected abstract boolean a();

    protected abstract T b();

    public void b(String str) {
        this.f28792b = str;
    }

    protected abstract Intent c();

    public void c(String str) {
        this.f28793c = str;
    }

    public void d(String str) {
        this.f28794d = str;
    }

    protected Intent[] d() {
        return null;
    }

    protected abstract T e();

    protected abstract T f();

    protected abstract int g();

    protected boolean k() {
        return this.f28797g && this.f28796f && !TextUtils.isEmpty(a(this.f28791a, PushConstants.MZ_PUSH_MANAGER_SERVICE_ACTION));
    }

    protected boolean l() {
        return 2 == g() || 32 == g();
    }

    public boolean m() {
        ScheduledExecutorService scheduledExecutorService = this.f28798h;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.execute(new Runnable() { // from class: com.meizu.cloud.pushsdk.platform.b.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.n();
                }
            });
            return true;
        }
        return n();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean n() {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meizu.cloud.pushsdk.platform.b.c.n():boolean");
    }
}

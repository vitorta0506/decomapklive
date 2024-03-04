package com.huawei.hms.availableupdate;

import android.app.Activity;
import com.huawei.hms.support.log.HMSLog;
import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    public static final a f27251b = new a();

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<Activity> f27252a;

    public boolean a(Activity activity) {
        HMSLog.i("UpdateAdapterMgr", "onActivityCreate");
        Activity a10 = a();
        if (a10 != null && !a10.isFinishing()) {
            activity.finish();
            HMSLog.i("UpdateAdapterMgr", "finish one");
            return false;
        }
        this.f27252a = new WeakReference<>(activity);
        return true;
    }

    public void b(Activity activity) {
        HMSLog.i("UpdateAdapterMgr", "onActivityDestroy");
        Activity a10 = a();
        if (activity == null || !activity.equals(a10)) {
            return;
        }
        HMSLog.i("UpdateAdapterMgr", "reset");
        this.f27252a = null;
    }

    public final Activity a() {
        WeakReference<Activity> weakReference = this.f27252a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}

package y4;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.play.core.internal.g;
import com.google.android.play.core.missingsplits.PlayCoreMissingSplitsActivity;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
final class d implements a {

    /* renamed from: e  reason: collision with root package name */
    private static final g f60115e = new g("MissingSplitsManagerImpl");

    /* renamed from: a  reason: collision with root package name */
    private final Context f60116a;

    /* renamed from: b  reason: collision with root package name */
    private final Runtime f60117b;

    /* renamed from: c  reason: collision with root package name */
    private final c f60118c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference f60119d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, Runtime runtime, c cVar, AtomicReference atomicReference) {
        this.f60116a = context;
        this.f60117b = runtime;
        this.f60118c = cVar;
        this.f60119d = atomicReference;
    }

    private final List b() {
        List<ActivityManager.AppTask> appTasks = ((ActivityManager) this.f60116a.getSystemService(PushConstants.INTENT_ACTIVITY_NAME)).getAppTasks();
        return appTasks != null ? appTasks : Collections.emptyList();
    }

    @Override // y4.a
    public final boolean a() {
        boolean booleanValue;
        boolean z10;
        Intent intent;
        Class<?> cls;
        boolean z11;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Set emptySet;
        String[] strArr;
        synchronized (this.f60119d) {
            if (((Boolean) this.f60119d.get()) == null) {
                AtomicReference atomicReference = this.f60119d;
                try {
                    applicationInfo = this.f60116a.getPackageManager().getApplicationInfo(this.f60116a.getPackageName(), 128);
                } catch (PackageManager.NameNotFoundException unused) {
                    f60115e.e("App '%s' is not found in the PackageManager", this.f60116a.getPackageName());
                }
                if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                    if (Boolean.TRUE.equals(bundle.get("com.android.vending.splits.required"))) {
                        try {
                            PackageInfo packageInfo = this.f60116a.getPackageManager().getPackageInfo(this.f60116a.getPackageName(), 0);
                            emptySet = new HashSet();
                            if (packageInfo != null && (strArr = packageInfo.splitNames) != null) {
                                Collections.addAll(emptySet, strArr);
                            }
                        } catch (PackageManager.NameNotFoundException unused2) {
                            f60115e.e("App '%s' is not found in PackageManager", this.f60116a.getPackageName());
                            emptySet = Collections.emptySet();
                        }
                        if (emptySet.isEmpty() || (emptySet.size() == 1 && emptySet.contains(""))) {
                            z11 = true;
                            atomicReference.set(Boolean.valueOf(z11));
                        }
                    }
                }
                z11 = false;
                atomicReference.set(Boolean.valueOf(z11));
            }
            booleanValue = ((Boolean) this.f60119d.get()).booleanValue();
        }
        if (booleanValue) {
            Iterator it = b().iterator();
            while (true) {
                if (it.hasNext()) {
                    ActivityManager.AppTask appTask = (ActivityManager.AppTask) it.next();
                    if (appTask.getTaskInfo() != null && appTask.getTaskInfo().baseIntent != null && appTask.getTaskInfo().baseIntent.getComponent() != null && PlayCoreMissingSplitsActivity.class.getName().equals(appTask.getTaskInfo().baseIntent.getComponent().getClassName())) {
                        break;
                    }
                } else {
                    loop1: for (ActivityManager.AppTask appTask2 : b()) {
                        ActivityManager.RecentTaskInfo taskInfo = appTask2.getTaskInfo();
                        if (taskInfo != null && (intent = taskInfo.baseIntent) != null && intent.getComponent() != null) {
                            ComponentName component = taskInfo.baseIntent.getComponent();
                            String className = component.getClassName();
                            try {
                                cls = Class.forName(className);
                            } catch (ClassNotFoundException unused3) {
                                f60115e.e("ClassNotFoundException when scanning class hierarchy of '%s'", className);
                                try {
                                    if (this.f60116a.getPackageManager().getActivityInfo(component, 0) != null) {
                                    }
                                } catch (PackageManager.NameNotFoundException unused4) {
                                }
                            }
                            while (cls != null) {
                                if (cls.equals(Activity.class)) {
                                    z10 = true;
                                    break;
                                }
                                Class<? super Object> superclass = cls.getSuperclass();
                                cls = superclass != cls ? superclass : null;
                            }
                            continue;
                        }
                    }
                    z10 = false;
                    this.f60118c.a();
                    for (ActivityManager.AppTask appTask3 : b()) {
                        appTask3.finishAndRemoveTask();
                    }
                    if (z10) {
                        this.f60116a.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f60116a, PlayCoreMissingSplitsActivity.class), 1, 1);
                        this.f60116a.startActivity(new Intent(this.f60116a, PlayCoreMissingSplitsActivity.class).addFlags(884998144));
                    }
                    this.f60117b.exit(0);
                }
            }
            return true;
        }
        if (this.f60118c.c()) {
            this.f60118c.b();
            this.f60117b.exit(0);
        }
        return false;
    }
}

package com.huawei.hms.adapter.ui;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.availableupdate.a;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.kpms.KpmsConstant;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
public class UpdateAdapter implements IBridgeActivityDelegate {

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<Activity> f27196a;

    /* renamed from: b  reason: collision with root package name */
    public int f27197b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f27198c = false;

    public final boolean a(Intent intent, Activity activity) {
        if (intent.getBooleanExtra(CommonCode.MapKey.NEW_UPDATE, false)) {
            HMSLog.i("UpdateAdapter", "4.0 framework HMSCore upgrade process");
            String hMSPackageName = HMSPackageManager.getInstance(activity.getApplicationContext()).getHMSPackageName();
            ComponentName componentName = new ComponentName(hMSPackageName, "com.huawei.hms.fwksdk.stub.UpdateStubActivity");
            Intent intent2 = new Intent();
            intent2.putExtra(KpmsConstant.CALLER_PACKAGE_NAME, activity.getApplicationContext().getPackageName());
            intent2.putExtra(KpmsConstant.UPDATE_PACKAGE_NAME, hMSPackageName);
            intent2.setComponent(componentName);
            activity.startActivityForResult(intent2, 1001);
            return true;
        }
        return false;
    }

    public final Activity b() {
        WeakReference<Activity> weakReference = this.f27196a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public final void c() {
        SystemManager.getInstance().notifyUpdateResult(8);
        a();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 1001;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        if (activity == null) {
            HMSLog.i("UpdateAdapter", "activity == null");
            c();
            return;
        }
        activity.getApplicationContext();
        this.f27196a = new WeakReference<>(activity);
        if (a.f27251b.a(b())) {
            Intent intent = activity.getIntent();
            if (intent == null) {
                c();
                return;
            }
            int intExtra = intent.getIntExtra(CommonCode.MapKey.UPDATE_VERSION, 0);
            this.f27197b = intExtra;
            if (intExtra == 0) {
                c();
                return;
            }
            if (intent.hasExtra("installHMS")) {
                this.f27198c = true;
            }
            a(intent, activity);
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.i("UpdateAdapter", "onBridgeActivityDestroy");
        a.f27251b.b(b());
        this.f27196a = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i9, int i10, Intent intent) {
        if (i9 != getRequestCode()) {
            return false;
        }
        HMSLog.i("UpdateAdapter", "onBridgeActivityResult " + i10);
        if (i10 == -1) {
            if (intent != null) {
                if (intent.getIntExtra(KpmsConstant.KIT_UPDATE_RESULT, 0) == 1) {
                    HMSLog.i("UpdateAdapter", "new framework update process,Error resolved successfully!");
                    SystemManager.getInstance().notifyUpdateResult(0);
                    a();
                    return true;
                }
                a(intent);
            }
        } else if (i10 == 0) {
            HMSLog.i("UpdateAdapter", "Activity.RESULT_CANCELED");
            Activity b10 = b();
            if (b10 == null) {
                return true;
            }
            String hMSPackageName = HMSPackageManager.getInstance(b10.getApplicationContext()).getHMSPackageName();
            if (!this.f27198c && !a(b10, hMSPackageName, this.f27197b)) {
                SystemManager.getInstance().notifyUpdateResult(0);
            } else {
                HMSLog.i("UpdateAdapter", "Resolve error, process canceled by user clicking back button!");
                SystemManager.getInstance().notifyUpdateResult(13);
            }
        } else if (i10 == 1) {
            SystemManager.getInstance().notifyUpdateResult(28);
        }
        a();
        return true;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        HMSLog.i("UpdateAdapter", "onBridgeConfigurationChanged");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i9, KeyEvent keyEvent) {
        HMSLog.i("UpdateAdapter", "On key up when resolve conn error");
    }

    public final void a(Intent intent) {
        int intExtra = intent.getIntExtra(BridgeActivity.EXTRA_RESULT, -1);
        if (intExtra == 0) {
            HMSLog.i("UpdateAdapter", "Error resolved successfully!");
            SystemManager.getInstance().notifyUpdateResult(0);
        } else if (intExtra == 13) {
            HMSLog.i("UpdateAdapter", "Resolve error process canceled by user!");
            SystemManager.getInstance().notifyUpdateResult(13);
        } else if (intExtra == 8) {
            HMSLog.i("UpdateAdapter", "Internal error occurred, recommended retry.");
            SystemManager.getInstance().notifyUpdateResult(8);
        } else {
            HMSLog.i("UpdateAdapter", "Other error codes.");
            SystemManager.getInstance().notifyUpdateResult(intExtra);
        }
    }

    public final void a() {
        Activity b10 = b();
        if (b10 == null || b10.isFinishing()) {
            return;
        }
        b10.finish();
    }

    public final boolean a(Context context, String str, int i9) {
        if (context == null || TextUtils.isEmpty(str) || i9 == 0) {
            return false;
        }
        PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context);
        return PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(packageManagerHelper.getPackageStates(str)) || packageManagerHelper.getPackageVersionCode(str) < i9;
    }
}

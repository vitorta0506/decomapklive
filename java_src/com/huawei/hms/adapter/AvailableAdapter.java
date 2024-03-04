package com.huawei.hms.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.adapter.sysobs.SystemObserver;
import com.huawei.hms.adapter.ui.NotInstalledHmsAdapter;
import com.huawei.hms.adapter.ui.UpdateAdapter;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.note.AppSpoofResolution;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.UIUtil;
/* loaded from: classes4.dex */
public class AvailableAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final int f27179a;

    /* renamed from: b  reason: collision with root package name */
    public AvailableCallBack f27180b;

    /* renamed from: d  reason: collision with root package name */
    public SystemObserver f27182d = new a();

    /* renamed from: c  reason: collision with root package name */
    public boolean f27181c = false;

    /* loaded from: classes4.dex */
    public interface AvailableCallBack {
        void onComplete(int i9);
    }

    /* loaded from: classes4.dex */
    public class a implements SystemObserver {
        public a() {
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemObserver
        public boolean onNoticeResult(int i9) {
            AvailableCallBack a10 = AvailableAdapter.this.a();
            if (a10 == null) {
                HMSLog.e("AvailableAdapter", "onNoticeResult baseCallBack null");
                return true;
            }
            a10.onComplete(i9);
            return true;
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemObserver
        public boolean onSolutionResult(Intent intent, String str) {
            return false;
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemObserver
        public boolean onUpdateResult(int i9) {
            AvailableCallBack a10 = AvailableAdapter.this.a();
            if (a10 == null) {
                HMSLog.e("AvailableAdapter", "onUpdateResult baseCallBack null");
                return true;
            }
            a10.onComplete(i9);
            return true;
        }
    }

    public AvailableAdapter(int i9) {
        this.f27179a = i9;
    }

    public int checkHuaweiMobileServicesForUpdate(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        int a10 = a(context);
        if (a10 == 0 && HMSPackageManager.getInstance(context).isApkNeedUpdate(this.f27179a)) {
            HMSLog.i("AvailableAdapter", "The current version does not meet the target version requirements");
            return 2;
        }
        return a10;
    }

    public int isHuaweiMobileServicesAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        int a10 = a(context);
        if (a10 == 0 && HMSPackageManager.getInstance(context).isApkUpdateNecessary(this.f27179a)) {
            HMSLog.i("AvailableAdapter", "The current version does not meet the minimum version requirements");
            return 2;
        }
        return a10;
    }

    public boolean isUserNoticeError(int i9) {
        return i9 == 29;
    }

    public boolean isUserResolvableError(int i9) {
        return i9 == 1 || i9 == 2;
    }

    public void setCalledBySolutionInstallHms(boolean z10) {
        this.f27181c = z10;
    }

    public void startNotice(Activity activity, AvailableCallBack availableCallBack) {
        if (activity == null || availableCallBack == null) {
            return;
        }
        if (UIUtil.isBackground(activity)) {
            HMSLog.i("AvailableAdapter", "current app is in Background");
            availableCallBack.onComplete(28);
            return;
        }
        HMSLog.i("AvailableAdapter", "startNotice");
        this.f27180b = availableCallBack;
        SystemManager.getSystemNotifier().registerObserver(this.f27182d);
        activity.startActivity(BridgeActivity.getIntentStartBridgeActivity(activity, AppSpoofResolution.class.getName()));
    }

    public void startResolution(Activity activity, AvailableCallBack availableCallBack) {
        if (activity == null || availableCallBack == null) {
            return;
        }
        if (UIUtil.isBackground(activity)) {
            HMSLog.i("AvailableAdapter", "current app is in Background");
            availableCallBack.onComplete(28);
        } else if (!a(activity)) {
            a(activity, availableCallBack);
        } else {
            HMSLog.i("AvailableAdapter", "startResolution");
            this.f27180b = availableCallBack;
            SystemManager.getSystemNotifier().registerObserver(this.f27182d);
            Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, UpdateAdapter.class.getName());
            intentStartBridgeActivity.putExtra(CommonCode.MapKey.UPDATE_VERSION, this.f27179a);
            if (this.f27181c) {
                intentStartBridgeActivity.putExtra("installHMS", "installHMS");
            }
            intentStartBridgeActivity.putExtra(CommonCode.MapKey.NEW_UPDATE, true);
            activity.startActivity(intentStartBridgeActivity);
        }
    }

    public final int a(Context context) {
        PackageManagerHelper.PackageStates hMSPackageStatesForMultiService = HMSPackageManager.getInstance(context).getHMSPackageStatesForMultiService();
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(hMSPackageStatesForMultiService)) {
            HMSLog.i("AvailableAdapter", "HMS is not installed");
            return 1;
        } else if (PackageManagerHelper.PackageStates.SPOOF.equals(hMSPackageStatesForMultiService)) {
            HMSLog.i("AvailableAdapter", "HMS is spoofed");
            return 29;
        } else if (PackageManagerHelper.PackageStates.DISABLED.equals(hMSPackageStatesForMultiService)) {
            HMSLog.i("AvailableAdapter", "HMS is disabled");
            return 3;
        } else {
            return 0;
        }
    }

    public final void a(Activity activity, AvailableCallBack availableCallBack) {
        HMSLog.i("AvailableAdapter", "<showHmsApkNotInstalledDialog> startResolution");
        if (NotInstalledHmsAdapter.getShowLock()) {
            this.f27180b = availableCallBack;
            SystemManager.getSystemNotifier().registerObserver(this.f27182d);
            activity.startActivity(BridgeActivity.getIntentStartBridgeActivity(activity, NotInstalledHmsAdapter.class.getName()));
            return;
        }
        availableCallBack.onComplete(31);
    }

    public final boolean a(Activity activity) {
        if (HMSPackageManager.getInstance(activity).getHmsVersionCode() >= 40000000) {
            HMSLog.i("AvailableAdapter", "enter 4.0 HmsCore upgrade process");
            return true;
        }
        return false;
    }

    public final AvailableCallBack a() {
        return this.f27180b;
    }
}

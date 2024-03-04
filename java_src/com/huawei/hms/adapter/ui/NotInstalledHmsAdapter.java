package com.huawei.hms.adapter.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.KeyEvent;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.ui.NotInstalledHmsDialogHelper;
/* loaded from: classes4.dex */
public class NotInstalledHmsAdapter implements IBridgeActivityDelegate {

    /* renamed from: c  reason: collision with root package name */
    public static final Object f27190c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public static boolean f27191d;

    /* renamed from: a  reason: collision with root package name */
    public Activity f27192a;

    /* renamed from: b  reason: collision with root package name */
    public Dialog f27193b;

    /* loaded from: classes4.dex */
    public static class a implements DialogInterface.OnCancelListener {

        /* renamed from: a  reason: collision with root package name */
        public final Activity f27194a;

        public a(Activity activity) {
            this.f27194a = activity;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            HMSLog.i("NotInstalledHmsAdapter", "<Dialog onCancel>");
            SystemManager.getInstance().notifyUpdateResult(13);
            this.f27194a.finish();
        }
    }

    /* loaded from: classes4.dex */
    public static class b implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        public final Activity f27195a;

        public b(Activity activity) {
            this.f27195a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i9) {
            HMSLog.i("NotInstalledHmsAdapter", "<Dialog onClick>");
            SystemManager.getInstance().notifyUpdateResult(30);
            this.f27195a.finish();
        }
    }

    public static boolean getShowLock() {
        synchronized (f27190c) {
            HMSLog.i("NotInstalledHmsAdapter", "<canShowDialog> sIsShowingDialog: " + f27191d);
            if (f27191d) {
                return false;
            }
            f27191d = true;
            return true;
        }
    }

    public final void a(Activity activity) {
        Dialog dialog = this.f27193b;
        if (dialog != null && dialog.isShowing()) {
            this.f27193b.setOnCancelListener(null);
            this.f27193b.cancel();
        }
        this.f27193b = NotInstalledHmsDialogHelper.getDialogBuilder(activity).setPositiveButton(NotInstalledHmsDialogHelper.getConfirmResId(activity), new b(activity)).setOnCancelListener(new a(activity)).show();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        HMSLog.i("NotInstalledHmsAdapter", "<getRequestCode>");
        return 0;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        HMSLog.i("NotInstalledHmsAdapter", "<onBridgeActivityCreate>");
        if (activity != null && !activity.isFinishing()) {
            this.f27192a = activity;
            a(activity);
            return;
        }
        HMSLog.e("NotInstalledHmsAdapter", "<onBridgeActivityCreate> activity is null or finishing");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.i("NotInstalledHmsAdapter", "<onBridgeActivityDestroy>");
        synchronized (f27190c) {
            f27191d = false;
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i9, int i10, Intent intent) {
        HMSLog.i("NotInstalledHmsAdapter", "<onBridgeActivityResult>");
        return false;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        HMSLog.i("NotInstalledHmsAdapter", "<onBridgeConfigurationChanged>");
        Activity activity = this.f27192a;
        if (activity != null && !activity.isFinishing()) {
            a(this.f27192a);
        } else {
            HMSLog.e("NotInstalledHmsAdapter", "<onBridgeConfigurationChanged> mActivity is null or finishing");
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i9, KeyEvent keyEvent) {
        HMSLog.i("NotInstalledHmsAdapter", "<onKeyUp>");
    }
}

package com.huawei.hms.update.note;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.KeyEvent;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.availableupdate.c;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.ui.NotInstalledHmsDialogHelper;
/* loaded from: classes4.dex */
public class NotInstalledHmsResolution implements IBridgeActivityDelegate {

    /* renamed from: a  reason: collision with root package name */
    public Dialog f27840a;

    /* renamed from: b  reason: collision with root package name */
    public Activity f27841b;

    /* loaded from: classes4.dex */
    public static class a implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        public final Activity f27842a;

        public a(Activity activity) {
            this.f27842a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i9) {
            HMSLog.i("NotInstalledHmsResolution", "<Dialog onClick>");
            this.f27842a.finish();
        }
    }

    public final void a(Activity activity) {
        a();
        this.f27840a = NotInstalledHmsDialogHelper.getDialogBuilder(activity).setPositiveButton(NotInstalledHmsDialogHelper.getConfirmResId(activity), new a(activity)).show();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution getRequestCode>");
        return 0;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onBridgeActivityCreate>");
        if (activity != null && !activity.isFinishing()) {
            this.f27841b = activity;
            c.f27257b.a(activity);
            a(activity);
            return;
        }
        HMSLog.e("NotInstalledHmsResolution", "<Resolution onBridgeActivityCreate> activity is null or finishing");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onBridgeActivityDestroy>");
        a();
        c.f27257b.b(this.f27841b);
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i9, int i10, Intent intent) {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onBridgeActivityResult>");
        return false;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onBridgeConfigurationChanged>");
        Activity activity = this.f27841b;
        if (activity != null && !activity.isFinishing()) {
            a(this.f27841b);
        } else {
            HMSLog.e("NotInstalledHmsResolution", "<Resolution onBridgeActivityCreate> mActivity is null or finishing");
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i9, KeyEvent keyEvent) {
        HMSLog.i("NotInstalledHmsResolution", "<Resolution onKeyUp>");
    }

    public final void a() {
        Dialog dialog = this.f27840a;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.f27840a.cancel();
    }
}

package com.huawei.hms.api;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Fragment;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.activity.EnableServiceActivity;
import com.huawei.hms.activity.ForegroundIntentBuilder;
import com.huawei.hms.activity.internal.BusResponseCallback;
import com.huawei.hms.activity.internal.BusResponseResult;
import com.huawei.hms.common.ErrorDialogFragment;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.api.AvailabilityException;
import com.huawei.hms.common.api.HuaweiApiCallable;
import com.huawei.hms.common.internal.ConnectionErrorMessages;
import com.huawei.hms.common.internal.DialogRedirect;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.note.AppSpoofResolution;
import com.huawei.hms.update.note.DoNothingResolution;
import com.huawei.hms.update.note.NotInstalledHmsResolution;
import com.huawei.hms.update.ui.NotInstalledHmsDialogHelper;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.Util;
import wb.f;
import wb.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class b extends HuaweiApiAvailability {

    /* renamed from: a  reason: collision with root package name */
    private static final b f27249a = new b();

    /* loaded from: classes4.dex */
    class a implements BusResponseCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g[] f27250a;

        a(b bVar, g[] gVarArr) {
            this.f27250a = gVarArr;
        }

        @Override // com.huawei.hms.activity.internal.BusResponseCallback
        public BusResponseResult innerError(Activity activity, int i9, String str) {
            HMSLog.e("HuaweiApiAvailabilityImpl", "Test foreground bus error: resultCode " + i9 + ", errMessage" + str);
            this.f27250a[0].b(new AvailabilityException());
            return null;
        }

        @Override // com.huawei.hms.activity.internal.BusResponseCallback
        public BusResponseResult succeedReturn(Activity activity, int i9, Intent intent) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "Test foreground bus success: resultCode " + i9 + ", data" + intent);
            return null;
        }
    }

    private b() {
    }

    private static Intent a(Activity activity, String str) {
        return BridgeActivity.getIntentStartBridgeActivity(activity, str);
    }

    public static b getInstance() {
        return f27249a;
    }

    public PendingIntent b(Context context, int i9) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorPendingIntent, errorCode: " + i9);
        Intent a10 = a(context, i9);
        if (a10 != null) {
            return PendingIntent.getActivity(context, 0, a10, 67108864);
        }
        return null;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public f<Void> checkApiAccessible(HuaweiApi<?> huaweiApi, HuaweiApi<?>... huaweiApiArr) {
        f<Void> a10 = new g().a();
        if (huaweiApi != null) {
            try {
                a(huaweiApi);
            } catch (AvailabilityException e10) {
                HMSLog.i("HuaweiApiAvailabilityImpl", "checkApi has AvailabilityException " + e10.getMessage());
            }
        }
        if (huaweiApiArr != null) {
            for (HuaweiApi<?> huaweiApi2 : huaweiApiArr) {
                a(huaweiApi2);
            }
        }
        return a10;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public PendingIntent getErrPendingIntent(Context context, ConnectionResult connectionResult) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(connectionResult);
        return b(context, connectionResult.getErrorCode());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public Dialog getErrorDialog(Activity activity, int i9, int i10) {
        Checker.checkNonNull(activity, "activity must not be null.");
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getErrorDialog, errorCode: " + i9);
        return getErrorDialog(activity, i9, i10, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public String getErrorString(int i9) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getErrorString, errorCode: " + i9);
        return ConnectionResult.getErrorString(i9);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public f<Void> getHuaweiServicesReady(Activity activity) {
        Preconditions.checkNotNull(activity);
        g[] gVarArr = {new g()};
        f<Void> a10 = gVarArr[0].a();
        int isHuaweiMobileServicesAvailable = isHuaweiMobileServicesAvailable(activity.getApplicationContext(), 30000000);
        Intent resolveErrorIntent = getResolveErrorIntent(activity, isHuaweiMobileServicesAvailable);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, ResolutionDelegate.class.getName());
        if (resolveErrorIntent != null) {
            ForegroundIntentBuilder.registerResponseCallback(ResolutionDelegate.CALLBACK_METHOD, new a(this, gVarArr));
            Bundle bundle = new Bundle();
            bundle.putParcelable("resolution", resolveErrorIntent);
            intentStartBridgeActivity.putExtras(bundle);
            activity.startActivity(intentStartBridgeActivity);
        } else if (isHuaweiMobileServicesAvailable == 3) {
            Intent intent = new Intent();
            intent.setClass(activity, EnableServiceActivity.class);
            activity.startActivity(intent);
        } else if (isHuaweiMobileServicesAvailable == 0) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "The HMS service is available.");
        } else {
            HMSLog.e("HuaweiApiAvailabilityImpl", "Framework can not solve the availability problem.");
            gVarArr[0].b(new AvailabilityException());
        }
        return a10;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public Intent getResolveErrorIntent(Activity activity, int i9) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorIntent, errorCode: " + i9);
        if (i9 == 1 || i9 == 2) {
            return a(activity, NotInstalledHmsResolution.class.getName());
        }
        if (i9 != 6) {
            if (i9 == 9 && Util.isAvailableLibExist(activity)) {
                return a(activity, AppSpoofResolution.class.getName());
            }
            return null;
        }
        return a(activity, BindingFailedResolution.class.getName());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public PendingIntent getResolveErrorPendingIntent(Activity activity, int i9) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorPendingIntent, errorCode: " + i9);
        Intent resolveErrorIntent = getResolveErrorIntent(activity, i9);
        if (resolveErrorIntent != null) {
            return PendingIntent.getActivity(activity, 0, resolveErrorIntent, 67108864);
        }
        return null;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public int isHuaweiMobileNoticeAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(new PackageManagerHelper(context).getPackageStates(HMSPackageManager.getInstance(context).getHMSPackageNameForMultiService()))) {
            return 1;
        }
        return HMSPackageManager.getInstance(context).isApkUpdateNecessary(20600000) ? 2 : 0;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public int isHuaweiMobileServicesAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        return HuaweiMobileServicesUtil.isHuaweiMobileServicesAvailable(context, HuaweiApiAvailability.getServicesVersionCode());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean isUserResolvableError(int i9) {
        return isUserResolvableError(i9, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean isUserResolvableError(int i9, PendingIntent pendingIntent) {
        if (i9 == 0) {
            return false;
        }
        return pendingIntent != null || i9 == 1 || i9 == 2 || i9 == 6 || i9 == 9;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void popupErrNotification(Context context, ConnectionResult connectionResult) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(connectionResult);
        showErrorNotification(context, connectionResult.getErrorCode());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void resolveError(Activity activity, int i9, int i10) {
        resolveError(activity, i9, i10, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean showErrorDialogFragment(Activity activity, int i9, int i10) {
        return showErrorDialogFragment(activity, i9, i10, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void showErrorNotification(Context context, int i9) {
        Checker.checkNonNull(context, "context must not be null.");
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter showErrorNotification, errorCode: " + i9);
        if (!(context instanceof Activity)) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "context not instanceof Activity");
            return;
        }
        Dialog errorDialog = getErrorDialog((Activity) context, i9, 0);
        if (errorDialog == null) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "showErrorNotification errorDialog can not be null");
        } else {
            errorDialog.show();
        }
    }

    private static Intent a(Context context, String str) {
        return BridgeActivity.getIntentStartBridgeActivity(context, str);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void resolveError(Activity activity, int i9, int i10, PendingIntent pendingIntent) {
        Checker.checkNonNull(activity, "activity must not be null.");
        if (pendingIntent != null) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "Enter resolveError, param pendingIntent is not null. and.errorCode: " + i9);
        } else {
            HMSLog.i("HuaweiApiAvailabilityImpl", "Enter resolveError, param pendingIntent is  null. get pendingIntent from error code.and.errorCode: " + i9);
            pendingIntent = getResolveErrorPendingIntent(activity, i9);
        }
        if (pendingIntent != null) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "In resolveError, start pendingIntent.errorCode: " + i9);
            try {
                activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i10, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException unused) {
                HMSLog.e("HuaweiApiAvailabilityImpl", "Enter resolveError, start pendingIntent failed.errorCode: " + i9);
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean showErrorDialogFragment(Activity activity, int i9, int i10, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i9, i10, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        a(activity, errorDialog, HuaweiMobileServicesUtil.HMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public Intent a(Context context, int i9) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorIntent, errorCode: " + i9);
        if (i9 == 1 || i9 == 2) {
            return a(context, NotInstalledHmsResolution.class.getName());
        }
        if (i9 != 6) {
            if (i9 == 9 && Util.isAvailableLibExist(context)) {
                return a(context, AppSpoofResolution.class.getName());
            }
            return null;
        }
        return a(context, BindingFailedResolution.class.getName());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public Dialog getErrorDialog(Activity activity, int i9, int i10, DialogInterface.OnCancelListener onCancelListener) {
        Checker.checkNonNull(activity, "activity must not be null.");
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getErrorDialog, errorCode: " + i9);
        return a(activity, i9, DialogRedirect.getInstance(activity, a(activity, i9), i10), onCancelListener);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public int isHuaweiMobileServicesAvailable(Context context, int i9) {
        Checker.checkNonNull(context, "context must not be null.");
        return HuaweiMobileServicesUtil.isHuaweiMobileServicesAvailable(context, i9);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean showErrorDialogFragment(Activity activity, int i9, Fragment fragment, int i10, DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(activity, i9, i10, onCancelListener);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public PendingIntent getErrPendingIntent(Context context, int i9, int i10) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorPendingIntent, errorCode: " + i9 + " requestCode: " + i10);
        Intent a10 = a(context, i9);
        if (a10 != null) {
            return PendingIntent.getActivity(context, i10, a10, 67108864);
        }
        return null;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public f<Void> checkApiAccessible(HuaweiApiCallable huaweiApiCallable, HuaweiApiCallable... huaweiApiCallableArr) {
        f<Void> a10 = new g().a();
        if (huaweiApiCallable != null) {
            try {
                a(huaweiApiCallable);
            } catch (AvailabilityException e10) {
                HMSLog.i("HuaweiApiAvailabilityImpl", "HuaweiApiCallable checkApi has AvailabilityException " + e10.getMessage());
            }
        }
        if (huaweiApiCallableArr != null) {
            for (HuaweiApiCallable huaweiApiCallable2 : huaweiApiCallableArr) {
                a(huaweiApiCallable2);
            }
        }
        return a10;
    }

    private Intent a(Activity activity, int i9) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "getErrorResolutionIntent, errorCode: " + i9);
        if (i9 == 1 || i9 == 2) {
            return BridgeActivity.getIntentStartBridgeActivity(activity, DoNothingResolution.class.getName());
        }
        if (i9 != 6) {
            if (i9 == 9 && Util.isAvailableLibExist(activity)) {
                return BridgeActivity.getIntentStartBridgeActivity(activity, AppSpoofResolution.class.getName());
            }
            return null;
        }
        return BridgeActivity.getIntentStartBridgeActivity(activity, BindingFailedResolution.class.getName());
    }

    private static Dialog a(Activity activity, int i9, DialogRedirect dialogRedirect, DialogInterface.OnCancelListener onCancelListener) {
        if (i9 == 0) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, NotInstalledHmsDialogHelper.getDialogThemeId(activity));
        builder.setMessage(ConnectionErrorMessages.getErrorMessage(activity, i9));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        builder.setPositiveButton(ConnectionErrorMessages.getErrorDialogButtonMessage(activity, i9), dialogRedirect);
        String errorTitle = ConnectionErrorMessages.getErrorTitle(activity, i9);
        if (errorTitle != null) {
            builder.setTitle(errorTitle);
        }
        return builder.create();
    }

    private static void a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        Checker.checkNonNull(activity, "activity must not be null.");
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    private void a(Object obj) throws AvailabilityException {
        ConnectionResult connectionResult;
        AvailabilityException availabilityException = new AvailabilityException();
        if (obj instanceof HuaweiApi) {
            connectionResult = availabilityException.getConnectionResult((HuaweiApi) obj);
        } else {
            connectionResult = availabilityException.getConnectionResult((HuaweiApiCallable) obj);
        }
        if (connectionResult.getErrorCode() == 0) {
            return;
        }
        HMSLog.i("HuaweiApiAvailabilityImpl", "The service is unavailable: " + availabilityException.getMessage());
        throw availabilityException;
    }
}

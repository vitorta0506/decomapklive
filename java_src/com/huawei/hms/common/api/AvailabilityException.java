package com.huawei.hms.common.api;

import com.facebook.GraphResponse;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes4.dex */
public class AvailabilityException extends Exception {
    private String TAG = "AvailabilityException";
    private String message = null;

    private ConnectionResult generateConnectionResult(int i9) {
        String str = this.TAG;
        HMSLog.i(str, "The availability check result is: " + i9);
        setMessage(i9);
        return new ConnectionResult(i9);
    }

    private void setMessage(int i9) {
        if (i9 == 21) {
            this.message = "ANDROID_VERSION_UNSUPPORT";
        } else if (i9 == 0) {
            this.message = GraphResponse.SUCCESS_KEY;
        } else if (i9 == 1) {
            this.message = "SERVICE_MISSING";
        } else if (i9 == 2) {
            this.message = "SERVICE_VERSION_UPDATE_REQUIRED";
        } else if (i9 != 3) {
            this.message = "INTERNAL_ERROR";
        } else {
            this.message = "SERVICE_DISABLED";
        }
    }

    public ConnectionResult getConnectionResult(HuaweiApiCallable huaweiApiCallable) {
        if (huaweiApiCallable != null && huaweiApiCallable.getHuaweiApi() != null) {
            return generateConnectionResult(HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(huaweiApiCallable.getHuaweiApi().getContext(), 30000000));
        }
        HMSLog.e(this.TAG, "The huaweiApi is null.");
        return generateConnectionResult(8);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public ConnectionResult getConnectionResult(HuaweiApi<? extends Api.ApiOptions> huaweiApi) {
        if (huaweiApi == null) {
            HMSLog.e(this.TAG, "The huaweiApi is null.");
            return generateConnectionResult(8);
        }
        return generateConnectionResult(HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(huaweiApi.getContext(), 30000000));
    }
}

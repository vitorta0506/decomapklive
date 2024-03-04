package com.huawei.hms.opendevice;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
/* loaded from: classes4.dex */
public class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public Context f27634a;

    public f(Context context) {
        this.f27634a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        Bundle bundle;
        try {
            int internalCode = ErrorEnum.SUCCESS.getInternalCode();
            ApiException apiException = null;
            try {
                str = HmsInstanceId.getInstance(this.f27634a).getToken(Util.getAppId(this.f27634a), null);
            } catch (ApiException e10) {
                e = e10;
                str = null;
            }
            try {
                try {
                    HMSLog.i("AutoInit", "Push init succeed");
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                } catch (ApiException e11) {
                    e = e11;
                    apiException = e;
                    internalCode = apiException.getStatusCode();
                    HMSLog.e("AutoInit", "new Push init failed");
                    bundle = this.f27634a.getPackageManager().getApplicationInfo(this.f27634a.getPackageName(), 128).metaData;
                    if (bundle == null) {
                    }
                    HMSLog.i("AutoInit", "push kit sdk not exists");
                }
                bundle = this.f27634a.getPackageManager().getApplicationInfo(this.f27634a.getPackageName(), 128).metaData;
                if (bundle == null && bundle.getString("com.huawei.hms.client.service.name:push") != null) {
                    Intent intent = new Intent("com.huawei.push.action.MESSAGING_EVENT");
                    intent.setPackage(this.f27634a.getPackageName());
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(RemoteMessageConst.MSGTYPE, "new_token");
                    bundle2.putString(RemoteMessageConst.DEVICE_TOKEN, str);
                    bundle2.putInt("error", internalCode);
                    if (apiException != null) {
                        bundle2.putSerializable("exception_key", apiException);
                    }
                    if (new h().a(this.f27634a, bundle2, intent)) {
                        return;
                    }
                    HMSLog.e("AutoInit", "start service failed");
                    return;
                }
                HMSLog.i("AutoInit", "push kit sdk not exists");
            } catch (PackageManager.NameNotFoundException unused) {
                HMSLog.i("AutoInit", "push kit sdk not exists");
            }
        } catch (Exception e12) {
            HMSLog.e("AutoInit", "Push init failed", e12);
        }
    }
}

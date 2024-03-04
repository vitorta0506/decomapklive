package com.huawei.hms.push;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.task.PushClientBuilder;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.push.task.ProfileTask;
import com.huawei.hms.push.utils.PushBiUtil;
import com.huawei.hms.support.api.entity.push.ProfileReq;
import com.huawei.hms.support.api.entity.push.PushNaming;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
/* loaded from: classes4.dex */
public class HmsProfile {
    public static final int CUSTOM_PROFILE = 2;
    public static final int HUAWEI_PROFILE = 1;

    /* renamed from: a  reason: collision with root package name */
    public static final String f27680a = "HmsProfile";

    /* renamed from: b  reason: collision with root package name */
    public Context f27681b;

    /* renamed from: c  reason: collision with root package name */
    public HuaweiApi<Api.ApiOptions.NoOptions> f27682c;

    public HmsProfile(Context context) {
        this.f27681b = null;
        Preconditions.checkNotNull(context);
        this.f27681b = context;
        HuaweiApi<Api.ApiOptions.NoOptions> huaweiApi = new HuaweiApi<>(context, new Api(HuaweiApiAvailability.HMS_API_NAME_PUSH), (Api.ApiOptions) null, new PushClientBuilder());
        this.f27682c = huaweiApi;
        huaweiApi.setKitSdkVersion(60500300);
    }

    public static HmsProfile getInstance(Context context) {
        return new HmsProfile(context);
    }

    public final wb.f<Void> a(int i9, String str, int i10, String str2) {
        if (!isSupportProfile()) {
            wb.g gVar = new wb.g();
            gVar.b(ErrorEnum.ERROR_OPERATION_NOT_SUPPORTED.toApiException());
            return gVar.a();
        }
        if (!TextUtils.isEmpty(str)) {
            String a10 = a(this.f27681b);
            if (TextUtils.isEmpty(a10)) {
                HMSLog.i(f27680a, "agc connect services config missing project id.");
                wb.g gVar2 = new wb.g();
                gVar2.b(ErrorEnum.ERROR_MISSING_PROJECT_ID.toApiException());
                return gVar2.a();
            } else if (str.equals(a10)) {
                str = "";
            }
        }
        ProfileReq profileReq = new ProfileReq();
        if (i9 == 0) {
            profileReq.setOperation(0);
            profileReq.setType(i10);
        } else {
            profileReq.setOperation(1);
        }
        String reportEntry = PushBiUtil.reportEntry(this.f27681b, PushNaming.PUSH_PROFILE);
        try {
            profileReq.setSubjectId(str);
            profileReq.setProfileId(zb.b.b(str2));
            profileReq.setPkgName(this.f27681b.getPackageName());
            return this.f27682c.doWrite(new ProfileTask(PushNaming.PUSH_PROFILE, JsonUtil.createJsonString(profileReq), reportEntry));
        } catch (Exception e10) {
            if (e10.getCause() instanceof ApiException) {
                wb.g gVar3 = new wb.g();
                ApiException apiException = (ApiException) e10.getCause();
                gVar3.b(apiException);
                PushBiUtil.reportExit(this.f27681b, PushNaming.PUSH_PROFILE, reportEntry, apiException.getStatusCode());
                return gVar3.a();
            }
            wb.g gVar4 = new wb.g();
            Context context = this.f27681b;
            ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
            PushBiUtil.reportExit(context, PushNaming.PUSH_PROFILE, reportEntry, errorEnum);
            gVar4.b(errorEnum.toApiException());
            return gVar4.a();
        }
    }

    public wb.f<Void> addProfile(int i9, String str) {
        return addProfile("", i9, str);
    }

    public final boolean b(Context context) {
        return s.b(context) >= 110001400;
    }

    public wb.f<Void> deleteProfile(String str) {
        return deleteProfile("", str);
    }

    public boolean isSupportProfile() {
        if (s.d(this.f27681b)) {
            if (s.c()) {
                HMSLog.i(f27680a, "current EMUI version below 9.1, not support profile operation.");
                return false;
            } else if (b(this.f27681b)) {
                return true;
            } else {
                HMSLog.i(f27680a, "current HwPushService.apk version below 11.0.1.400,please upgrade your HwPushService.apk version.");
                return false;
            }
        }
        return true;
    }

    public wb.f<Void> addProfile(String str, int i9, String str2) {
        if (i9 != 1 && i9 != 2) {
            HMSLog.i(f27680a, "add profile type undefined.");
            wb.g gVar = new wb.g();
            gVar.b(ErrorEnum.ERROR_PUSH_ARGUMENTS_INVALID.toApiException());
            return gVar.a();
        } else if (TextUtils.isEmpty(str2)) {
            HMSLog.i(f27680a, "add profile params is empty.");
            wb.g gVar2 = new wb.g();
            gVar2.b(ErrorEnum.ERROR_PUSH_ARGUMENTS_INVALID.toApiException());
            return gVar2.a();
        } else {
            return a(0, str, i9, str2);
        }
    }

    public wb.f<Void> deleteProfile(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            HMSLog.e(f27680a, "del profile params is empty.");
            wb.g gVar = new wb.g();
            gVar.b(ErrorEnum.ERROR_PUSH_ARGUMENTS_INVALID.toApiException());
            return gVar.a();
        }
        return a(1, str, -1, str2);
    }

    public static String a(Context context) {
        return sb.a.d(context).b("client/project_id");
    }
}

package com.huawei.hms.push;

import android.content.Context;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.task.PushClientBuilder;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.push.task.ConsentTask;
import com.huawei.hms.push.utils.PushBiUtil;
import com.huawei.hms.support.api.entity.push.EnableConsentReq;
import com.huawei.hms.support.api.entity.push.PushNaming;
import com.huawei.hms.utils.JsonUtil;
/* loaded from: classes4.dex */
public class HmsConsent {

    /* renamed from: a  reason: collision with root package name */
    public HuaweiApi<Api.ApiOptions.NoOptions> f27673a;

    /* renamed from: b  reason: collision with root package name */
    public Context f27674b;

    public HmsConsent(Context context) {
        Preconditions.checkNotNull(context);
        this.f27674b = context;
        HuaweiApi<Api.ApiOptions.NoOptions> huaweiApi = new HuaweiApi<>(context, new Api(HuaweiApiAvailability.HMS_API_NAME_PUSH), (Api.ApiOptions) null, new PushClientBuilder());
        this.f27673a = huaweiApi;
        huaweiApi.setKitSdkVersion(60500300);
    }

    public static HmsConsent getInstance(Context context) {
        return new HmsConsent(context);
    }

    public final wb.f<Void> a(boolean z10) {
        wb.g gVar;
        int externalCode;
        String reportEntry = PushBiUtil.reportEntry(this.f27674b, PushNaming.PUSH_CONSENT);
        try {
            if (s.d(this.f27674b)) {
                EnableConsentReq enableConsentReq = new EnableConsentReq();
                enableConsentReq.setPackageName(this.f27674b.getPackageName());
                enableConsentReq.setEnable(z10);
                return this.f27673a.doWrite(new ConsentTask(PushNaming.PUSH_CONSENT, JsonUtil.createJsonString(enableConsentReq), reportEntry));
            }
            throw ErrorEnum.ERROR_OPERATION_NOT_SUPPORTED.toApiException();
        } catch (ApiException e10) {
            wb.g gVar2 = new wb.g();
            gVar2.b(e10);
            externalCode = e10.getStatusCode();
            gVar = gVar2;
            PushBiUtil.reportExit(this.f27674b, PushNaming.PUSH_CONSENT, reportEntry, externalCode);
            return gVar.a();
        } catch (Exception unused) {
            gVar = new wb.g();
            ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
            gVar.b(errorEnum.toApiException());
            externalCode = errorEnum.getExternalCode();
            PushBiUtil.reportExit(this.f27674b, PushNaming.PUSH_CONSENT, reportEntry, externalCode);
            return gVar.a();
        }
    }

    public wb.f<Void> consentOff() {
        return a(false);
    }

    public wb.f<Void> consentOn() {
        return a(true);
    }
}

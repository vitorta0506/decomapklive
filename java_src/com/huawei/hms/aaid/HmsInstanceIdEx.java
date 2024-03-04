package com.huawei.hms.aaid;

import android.content.Context;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.entity.TokenReq;
import com.huawei.hms.aaid.entity.TokenResult;
import com.huawei.hms.aaid.plugin.ProxyCenter;
import com.huawei.hms.aaid.task.PushClientBuilder;
import com.huawei.hms.aaid.utils.PushPreferences;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.opendevice.l;
import com.huawei.hms.opendevice.o;
import com.huawei.hms.opendevice.q;
import com.huawei.hms.support.log.HMSLog;
import java.util.UUID;
import wb.f;
import wb.g;
@Deprecated
/* loaded from: classes4.dex */
public class HmsInstanceIdEx {
    public static final String TAG = "HmsInstanceIdEx";

    /* renamed from: a  reason: collision with root package name */
    public Context f27170a;

    /* renamed from: b  reason: collision with root package name */
    public PushPreferences f27171b;

    /* renamed from: c  reason: collision with root package name */
    public HuaweiApi<Api.ApiOptions.NoOptions> f27172c;

    public HmsInstanceIdEx(Context context) {
        this.f27171b = null;
        this.f27170a = context;
        this.f27171b = new PushPreferences(context, "aaid");
        HuaweiApi<Api.ApiOptions.NoOptions> huaweiApi = new HuaweiApi<>(context, new Api(HuaweiApiAvailability.HMS_API_NAME_PUSH), (Api.ApiOptions) null, new PushClientBuilder());
        this.f27172c = huaweiApi;
        huaweiApi.setKitSdkVersion(60300305);
    }

    public static HmsInstanceIdEx getInstance(Context context) {
        Preconditions.checkNotNull(context);
        return new HmsInstanceIdEx(context);
    }

    public final String a(String str) {
        return "creationTime" + str;
    }

    public void deleteAAID(String str) throws ApiException {
        if (str != null) {
            try {
                if (this.f27171b.containsKey(str)) {
                    this.f27171b.removeKey(str);
                    this.f27171b.removeKey(a(str));
                    return;
                }
                return;
            } catch (RuntimeException unused) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            } catch (Exception unused2) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            }
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public String getAAId(String str) throws ApiException {
        if (str != null) {
            try {
                if (this.f27171b.containsKey(str)) {
                    return this.f27171b.getString(str);
                }
                String uuid = UUID.randomUUID().toString();
                this.f27171b.saveString(str, uuid);
                this.f27171b.saveLong(a(str), Long.valueOf(System.currentTimeMillis()));
                return uuid;
            } catch (RuntimeException unused) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            } catch (Exception unused2) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            }
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public long getCreationTime(String str) throws ApiException {
        if (str != null) {
            try {
                if (!this.f27171b.containsKey(a(str))) {
                    getAAId(str);
                }
                return this.f27171b.getLong(a(str));
            } catch (RuntimeException unused) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            } catch (Exception unused2) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            }
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public f<TokenResult> getToken() {
        if (ProxyCenter.getProxy() != null) {
            try {
                HMSLog.i(TAG, "use proxy get token, please check HmsMessageService.onNewToken receive result.");
                ProxyCenter.getProxy().getToken(this.f27170a, null, null);
                g gVar = new g();
                gVar.c(new TokenResult());
                return gVar.a();
            } catch (ApiException e10) {
                return a(e10);
            } catch (Exception unused) {
                return a(ErrorEnum.ERROR_INTERNAL_ERROR.toApiException());
            }
        }
        String a10 = q.a(this.f27170a, "push.gettoken");
        try {
            TokenReq b10 = o.b(this.f27170a, null, null);
            b10.setAaid(HmsInstanceId.getInstance(this.f27170a).getId());
            return this.f27172c.doWrite(new l("push.gettoken", b10, this.f27170a, a10));
        } catch (RuntimeException unused2) {
            Context context = this.f27170a;
            ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
            q.a(context, "push.gettoken", a10, errorEnum);
            return a(errorEnum.toApiException());
        } catch (Exception unused3) {
            Context context2 = this.f27170a;
            ErrorEnum errorEnum2 = ErrorEnum.ERROR_INTERNAL_ERROR;
            q.a(context2, "push.gettoken", a10, errorEnum2);
            return a(errorEnum2.toApiException());
        }
    }

    public final f<TokenResult> a(Exception exc) {
        g gVar = new g();
        gVar.b(exc);
        return gVar.a();
    }
}

package com.huawei.hms.aaid;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.entity.AAIDResult;
import com.huawei.hms.aaid.entity.DeleteTokenReq;
import com.huawei.hms.aaid.entity.TokenReq;
import com.huawei.hms.aaid.entity.TokenResult;
import com.huawei.hms.aaid.plugin.ProxyCenter;
import com.huawei.hms.aaid.task.PushClientBuilder;
import com.huawei.hms.aaid.utils.BaseUtils;
import com.huawei.hms.aaid.utils.PushPreferences;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.opendevice.c;
import com.huawei.hms.opendevice.i;
import com.huawei.hms.opendevice.j;
import com.huawei.hms.opendevice.k;
import com.huawei.hms.opendevice.l;
import com.huawei.hms.opendevice.o;
import com.huawei.hms.opendevice.p;
import com.huawei.hms.opendevice.q;
import com.huawei.hms.support.log.HMSLog;
import wb.f;
import wb.g;
/* loaded from: classes4.dex */
public class HmsInstanceId {
    public static final String TAG = "HmsInstanceId";

    /* renamed from: a  reason: collision with root package name */
    public Context f27167a;

    /* renamed from: b  reason: collision with root package name */
    public PushPreferences f27168b;

    /* renamed from: c  reason: collision with root package name */
    public HuaweiApi<Api.ApiOptions.NoOptions> f27169c;

    public HmsInstanceId(Context context) {
        this.f27167a = context.getApplicationContext();
        this.f27168b = new PushPreferences(context, "aaid");
        HuaweiApi<Api.ApiOptions.NoOptions> huaweiApi = new HuaweiApi<>(context, new Api(HuaweiApiAvailability.HMS_API_NAME_PUSH), (Api.ApiOptions) null, new PushClientBuilder());
        this.f27169c = huaweiApi;
        huaweiApi.setKitSdkVersion(60300305);
    }

    public static HmsInstanceId getInstance(Context context) {
        Preconditions.checkNotNull(context);
        c.c(context);
        return new HmsInstanceId(context);
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (p.e(this.f27167a)) {
            String string = i.a(this.f27167a).getString("subjectId");
            if (TextUtils.isEmpty(string)) {
                i.a(this.f27167a).saveString("subjectId", str);
                return;
            } else if (string.contains(str)) {
                return;
            } else {
                i a10 = i.a(this.f27167a);
                a10.saveString("subjectId", string + "," + str);
                return;
            }
        }
        i.a(this.f27167a).removeKey("subjectId");
    }

    public final void b() throws ApiException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw ErrorEnum.ERROR_MAIN_THREAD.toApiException();
        }
    }

    public void deleteAAID() throws ApiException {
        b();
        try {
            if (this.f27168b.containsKey("aaid")) {
                this.f27168b.removeKey("aaid");
                this.f27168b.removeKey("creationTime");
                if (o.e(this.f27167a)) {
                    if (ProxyCenter.getProxy() != null) {
                        HMSLog.i(TAG, "use proxy delete all token after delete AaId.");
                        ProxyCenter.getProxy().deleteAllToken(this.f27167a);
                        return;
                    }
                    DeleteTokenReq b10 = o.b(this.f27167a);
                    b10.setDeleteType(1);
                    b10.setMultiSender(false);
                    a(b10, 1);
                    BaseUtils.deleteAllTokenCache(this.f27167a);
                }
            }
        } catch (ApiException e10) {
            throw e10;
        } catch (Exception unused) {
            throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
        }
    }

    public void deleteToken(String str, String str2) throws ApiException {
        b();
        a();
        DeleteTokenReq a10 = o.a(this.f27167a, str, str2);
        a10.setMultiSender(false);
        a(a10, 1);
    }

    public f<AAIDResult> getAAID() {
        try {
            return wb.i.b(new j(this.f27167a.getApplicationContext()));
        } catch (Exception unused) {
            g gVar = new g();
            gVar.b(ErrorEnum.ERROR_INTERNAL_ERROR.toApiException());
            return gVar.a();
        }
    }

    public long getCreationTime() {
        try {
            if (!this.f27168b.containsKey("creationTime")) {
                getAAID();
            }
            return this.f27168b.getLong("creationTime");
        } catch (Exception unused) {
            return 0L;
        }
    }

    public String getId() {
        return o.c(this.f27167a);
    }

    @Deprecated
    public String getToken() {
        try {
            return getToken(null, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public String getToken(String str, String str2) throws ApiException {
        b();
        a();
        TokenReq b10 = o.b(this.f27167a, null, str2);
        b10.setAaid(getId());
        b10.setMultiSender(false);
        i.a(this.f27167a).saveString(this.f27167a.getPackageName(), "1");
        return a(b10, 1);
    }

    public void deleteToken(String str) throws ApiException {
        b();
        a();
        if (!TextUtils.isEmpty(str)) {
            String d10 = o.d(this.f27167a);
            if (!TextUtils.isEmpty(d10)) {
                if (str.equals(d10)) {
                    deleteToken(null, null);
                    return;
                }
                DeleteTokenReq a10 = o.a(this.f27167a, str);
                a10.setMultiSender(true);
                a(a10, 2);
                return;
            }
            throw ErrorEnum.ERROR_MISSING_PROJECT_ID.toApiException();
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public String getToken(String str) throws ApiException {
        b();
        a();
        if (!TextUtils.isEmpty(str)) {
            String d10 = o.d(this.f27167a);
            if (!TextUtils.isEmpty(d10)) {
                if (str.equals(d10)) {
                    return getToken(null, null);
                }
                TokenReq b10 = o.b(this.f27167a, str);
                b10.setAaid(getId());
                b10.setMultiSender(true);
                return a(b10, 2);
            }
            throw ErrorEnum.ERROR_MISSING_PROJECT_ID.toApiException();
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public final String a(TokenReq tokenReq, int i9) throws ApiException {
        if (ProxyCenter.getProxy() != null) {
            HMSLog.i(TAG, "use proxy get token, please check HmsMessageService.onNewToken receive result.");
            ProxyCenter.getProxy().getToken(this.f27167a, tokenReq.getSubjectId(), null);
            return null;
        }
        a(tokenReq.getSubjectId());
        String a10 = q.a(this.f27167a, "push.gettoken");
        try {
            String str = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getToken req :");
            sb2.append(tokenReq.toString());
            HMSLog.d(str, sb2.toString());
            l lVar = new l("push.gettoken", tokenReq, this.f27167a, a10);
            lVar.setApiLevel(i9);
            return ((TokenResult) wb.i.a(this.f27169c.doWrite(lVar))).getToken();
        } catch (Exception e10) {
            if (e10.getCause() instanceof ApiException) {
                ApiException apiException = (ApiException) e10.getCause();
                q.a(this.f27167a, "push.gettoken", a10, apiException.getStatusCode());
                throw apiException;
            }
            Context context = this.f27167a;
            ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
            q.a(context, "push.gettoken", a10, errorEnum);
            throw errorEnum.toApiException();
        }
    }

    public final void a(DeleteTokenReq deleteTokenReq, int i9) throws ApiException {
        String subjectId = deleteTokenReq.getSubjectId();
        if (ProxyCenter.getProxy() != null) {
            HMSLog.i(TAG, "use proxy delete token");
            ProxyCenter.getProxy().deleteToken(this.f27167a, subjectId, null);
            return;
        }
        String a10 = q.a(this.f27167a, "push.deletetoken");
        try {
            String b10 = i.a(this.f27167a).b(subjectId);
            if (deleteTokenReq.isMultiSender() && (TextUtils.isEmpty(b10) || b10.equals(i.a(this.f27167a).b(null)))) {
                i.a(this.f27167a).removeKey(subjectId);
                HMSLog.i(TAG, "The local subject token is null");
                return;
            }
            deleteTokenReq.setToken(b10);
            k kVar = new k("push.deletetoken", deleteTokenReq, a10);
            kVar.setApiLevel(i9);
            wb.i.a(this.f27169c.doWrite(kVar));
            i.a(this.f27167a).c(subjectId);
        } catch (Exception e10) {
            if (e10.getCause() instanceof ApiException) {
                ApiException apiException = (ApiException) e10.getCause();
                q.a(this.f27167a, "push.deletetoken", a10, apiException.getStatusCode());
                throw apiException;
            }
            Context context = this.f27167a;
            ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
            q.a(context, "push.deletetoken", a10, errorEnum);
            throw errorEnum.toApiException();
        }
    }

    public final void a() throws ApiException {
        if (BaseUtils.getProxyInit(this.f27167a) && ProxyCenter.getProxy() == null && !BaseUtils.isMainProc(this.f27167a)) {
            HMSLog.e(TAG, "Operations in child processes are not supported.");
            throw ErrorEnum.ERROR_OPER_IN_CHILD_PROCESS.toApiException();
        }
    }
}

package com.guochao.faceshow.aaspring.modulars.push.huawei;

import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper;
import com.guochao.faceshow.aaspring.modulars.push.huawei.HuaweiPushHelper;
import com.guochao.faceshow.aaspring.utils.AsyncUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.push.HmsMessaging;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import sb.a;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;", "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;", "tokenType", "", "(Ljava/lang/String;)V", "getTokenType", "()Ljava/lang/String;", "checkToken", "", "initOnce", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HuaweiPushHelper extends BasePushHelper {
    @NotNull
    private final String tokenType;

    public HuaweiPushHelper() {
        this(null, 1, null);
    }

    public /* synthetic */ HuaweiPushHelper(String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? ThirdPushHelper.TYPE_HUAWEI : str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkToken$lambda-1  reason: not valid java name */
    public static final void m546checkToken$lambda1(HuaweiPushHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            String token = HmsInstanceId.getInstance(BaseApplication.getInstance()).getToken(a.d(BaseApplication.getInstance()).b("client/app_id"), HmsMessaging.DEFAULT_TOKEN_SCOPE);
            if (TextUtils.isEmpty(token)) {
                return;
            }
            ThirdPushHelper.setThirdPushToken$default(this$0.getTokenType(), token, false, 4, null);
        } catch (ApiException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initOnce$lambda-0  reason: not valid java name */
    public static final void m547initOnce$lambda0(HuaweiPushHelper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            String token = HmsInstanceId.getInstance(BaseApplication.getInstance()).getToken(a.d(BaseApplication.getInstance()).b("client/app_id"), HmsMessaging.DEFAULT_TOKEN_SCOPE);
            LogUtils.d("HuaweiPushHelper::", token);
            if (TextUtils.isEmpty(token)) {
                return;
            }
            ThirdPushHelper.setThirdPushToken$default(this$0.getTokenType(), token, false, 4, null);
        } catch (ApiException e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper
    public void checkToken() {
        AsyncUtils.run$default(new Runnable() { // from class: t9.a
            @Override // java.lang.Runnable
            public final void run() {
                HuaweiPushHelper.m546checkToken$lambda1(HuaweiPushHelper.this);
            }
        }, (Runnable) null, (Runnable) null, 6, (Object) null);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper
    @NotNull
    public String getTokenType() {
        return this.tokenType;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper
    public void initOnce() {
        AsyncUtils.run$default(new Runnable() { // from class: t9.b
            @Override // java.lang.Runnable
            public final void run() {
                HuaweiPushHelper.m547initOnce$lambda0(HuaweiPushHelper.this);
            }
        }, (Runnable) null, (Runnable) null, 6, (Object) null);
    }

    public HuaweiPushHelper(@NotNull String tokenType) {
        Intrinsics.checkNotNullParameter(tokenType, "tokenType");
        this.tokenType = tokenType;
    }
}

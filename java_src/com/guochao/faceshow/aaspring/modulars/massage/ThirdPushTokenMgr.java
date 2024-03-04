package com.guochao.faceshow.aaspring.modulars.massage;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.lib_service_center.push.service.ThirdPushTokenManager;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMOfflinePushConfig;
/* loaded from: classes3.dex */
public class ThirdPushTokenMgr {

    /* renamed from: a  reason: collision with root package name */
    private String f20903a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f20904b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f20905c = false;

    /* renamed from: d  reason: collision with root package name */
    private int f20906d = -1;

    @Route(path = RouterPath.ROUTER_THIRD_PUSH_TOKEN_MANAGER)
    /* loaded from: classes3.dex */
    public static class PushManager implements ThirdPushTokenManager {
        @Override // com.guochao.lib_service_center.push.service.ThirdPushTokenManager
        @NonNull
        public String getThirdPushToken() {
            return ThirdPushTokenMgr.c().d();
        }

        @Override // com.guochao.lib_service_center.push.service.ThirdPushTokenManager
        public int getThirdPushType() {
            return ThirdPushTokenMgr.c().e();
        }

        @Override // com.alibaba.android.arouter.facade.template.IProvider
        public void init(Context context) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements V2TIMCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20907a;

        a(String str) {
            this.f20907a = str;
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            LogUtils.i(PushUtils.KEY_FROM_PUSH, "setOfflinePushToken err code = " + i9);
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            LogUtils.i(PushUtils.KEY_FROM_PUSH, "setOfflinePushToken success  token = " + this.f20907a + "  证书id：" + ThirdPushTokenMgr.this.f20906d);
            ThirdPushTokenMgr.this.f20904b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final ThirdPushTokenMgr f20909a = new ThirdPushTokenMgr();
    }

    public static ThirdPushTokenMgr c() {
        return b.f20909a;
    }

    public String d() {
        return this.f20903a;
    }

    public int e() {
        return this.f20906d;
    }

    public void f(boolean z10) {
        this.f20905c = z10;
    }

    public void g() {
        String d10 = d();
        if (TextUtils.isEmpty(d10)) {
            LogUtils.i(PushUtils.KEY_FROM_PUSH, "setPushTokenToTIM third token is empty");
            this.f20904b = false;
        } else if (this.f20904b) {
        } else {
            if (!this.f20905c) {
                LogUtils.i(PushUtils.KEY_FROM_PUSH, "setPushTokenToTIM not login, ignore");
                return;
            }
            V2TIMManager.getOfflinePushManager().setOfflinePushConfig(new V2TIMOfflinePushConfig(this.f20906d, d10), new a(d10));
        }
    }

    public void h(int i9, String str) {
        this.f20906d = i9;
        this.f20903a = str;
    }

    public void i(boolean z10) {
        this.f20904b = z10;
    }
}

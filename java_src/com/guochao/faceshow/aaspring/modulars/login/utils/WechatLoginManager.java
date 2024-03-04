package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import com.facebook.login.LoginConfiguration;
import com.guochao.faceshow.aaspring.modulars.login.utils.l;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class WechatLoginManager extends l {

    /* renamed from: e  reason: collision with root package name */
    Handler f20527e;

    /* renamed from: f  reason: collision with root package name */
    WXReceiver f20528f;

    /* loaded from: classes3.dex */
    public class WXReceiver extends BroadcastReceiver {
        public WXReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.guochao.faceshow.wechat".equals(intent.getAction())) {
                if (intent.getIntExtra("cancel", -1) != -1) {
                    WechatLoginManager.this.d();
                    return;
                }
                f.b(WechatLoginManager.this.f20527e, String.format("https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code", BaseConfig.APP_ID, BaseConfig.APP_KEY, intent.getStringExtra("code")), 1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<WechatLoginManager> f20530a;

        a(WechatLoginManager wechatLoginManager) {
            this.f20530a = new WeakReference<>(wechatLoginManager);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            WechatLoginManager wechatLoginManager = this.f20530a.get();
            if (wechatLoginManager == null || wechatLoginManager.h()) {
                return;
            }
            Bundle data = message.getData();
            if (data == null) {
                wechatLoginManager.e(-1, "api empty");
                return;
            }
            int i9 = data.getInt("code");
            if (i9 != 200) {
                wechatLoginManager.e(i9, "api error");
                return;
            }
            int i10 = message.what;
            if (i10 == 1) {
                try {
                    JSONObject jSONObject = new JSONObject(data.getString("result"));
                    String string = jSONObject.getString(LoginConfiguration.OPENID);
                    String string2 = jSONObject.getString("unionid");
                    String string3 = jSONObject.getString("access_token");
                    jSONObject.getString("refresh_token");
                    jSONObject.getString("scope");
                    wechatLoginManager.b(4, string3, string, string2, null);
                } catch (JSONException e10) {
                    LogUtils.e("WechatLoginManager", e10.getMessage());
                    wechatLoginManager.e(-1, "json error");
                }
            } else if (i10 != 4) {
            } else {
                try {
                    JSONObject jSONObject2 = new JSONObject(message.getData().getString("result"));
                    l.d dVar = new l.d();
                    dVar.j(jSONObject2.getString(LoginConfiguration.OPENID));
                    dVar.i(jSONObject2.getString("headimgurl"));
                    dVar.h(StringUtils.convertCharset(jSONObject2.getString(Contants.USER_NICKNAME)));
                    dVar.g(jSONObject2.getString("sex"));
                } catch (JSONException e11) {
                    e11.printStackTrace();
                    wechatLoginManager.e(-1, "json error");
                }
            }
        }
    }

    public WechatLoginManager(Context context) {
        super(context);
        this.f20527e = new a(this);
        WXReceiver wXReceiver = new WXReceiver();
        this.f20528f = wXReceiver;
        this.f20570b.registerReceiver(wXReceiver, new IntentFilter("com.guochao.faceshow.wechat"));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void g() {
        super.g();
        this.f20570b.unregisterReceiver(this.f20528f);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void m() {
    }
}

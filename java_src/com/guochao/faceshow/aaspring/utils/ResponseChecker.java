package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import i7.a;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ResponseChecker implements a.b {
    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        return GCApplication.app();
    }

    @Override // i7.a.b
    public boolean checkFreeze(int i9, final JSONObject jSONObject) {
        if (i9 == 40001 || i9 == 40002) {
            HandlerGetter.runOnUIThread(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.ResponseChecker.1
                @Override // java.lang.Runnable
                public void run() {
                    ToastUtils.showToast(ResponseChecker.this.getContext(), ResponseChecker.this.getContext().getString(R.string.Login_Invalid));
                    BaseApplication.getInstance().accountForceLogout(LOCAL_EVENT_MSG.ACCOUNT_FORCE_LOGOUT, null);
                }
            });
            return true;
        } else if (i9 == 40004) {
            y7.b bVar = new y7.b();
            bVar.f60127f = true;
            EventBus.getDefault().post(bVar);
            HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.ResponseChecker.2
                @Override // java.lang.Runnable
                public void run() {
                    if (jSONObject.has("msg")) {
                        try {
                            ToastUtils.showToast(BaseApplication.getInstance(), jSONObject.getString("msg"));
                            BaseApplication.getInstance().accountForceLogout(LOCAL_EVENT_MSG.ACCOUNT_FORCE_LOGOUT, null);
                        } catch (JSONException e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            }, 1000L);
            return true;
        } else if (i9 == 40005) {
            y7.b bVar2 = new y7.b();
            bVar2.f60127f = true;
            EventBus.getDefault().post(bVar2);
            HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.ResponseChecker.3
                @Override // java.lang.Runnable
                public void run() {
                    if (jSONObject.has("msg")) {
                        try {
                            ToastUtils.showToast(BaseApplication.getInstance(), jSONObject.getString("msg"));
                            BaseApplication.getInstance().accountForceLogout(LOCAL_EVENT_MSG.ACCOUNT_FORCE_LOGOUT, null);
                        } catch (JSONException e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            }, 1000L);
            return true;
        } else if (i9 == 40006) {
            y7.b bVar3 = new y7.b();
            bVar3.f60127f = true;
            EventBus.getDefault().post(bVar3);
            HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.ResponseChecker.4
                @Override // java.lang.Runnable
                public void run() {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.Operation_failed);
                    BaseApplication.getInstance().accountForceLogout(LOCAL_EVENT_MSG.ACCOUNT_FORCE_LOGOUT, null);
                }
            }, 1000L);
            return true;
        } else if (i9 == 40013) {
            HandlerGetter.runOnUIThread(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.ResponseChecker.5
                @Override // java.lang.Runnable
                public void run() {
                    ToastUtils.showToast(ResponseChecker.this.getContext(), (int) R.string.Vpn_is_not_allowed);
                }
            });
            return true;
        } else {
            if (i9 == 80013) {
                HandlerGetter.runOnUIThread(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.ResponseChecker.6
                    @Override // java.lang.Runnable
                    public void run() {
                        ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.other_verson_outdated_to_upgrade);
                    }
                });
            }
            if (i9 == 80014) {
                HandlerGetter.runOnUIThread(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.ResponseChecker.7
                    @Override // java.lang.Runnable
                    public void run() {
                        ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.the_version_is_too_low);
                    }
                });
                return false;
            }
            return false;
        }
    }
}

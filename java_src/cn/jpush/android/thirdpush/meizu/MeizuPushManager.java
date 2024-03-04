package cn.jpush.android.thirdpush.meizu;

import android.content.Context;
import cn.jpush.android.api.JThirdPlatFormInterface;
/* loaded from: classes.dex */
public class MeizuPushManager extends JThirdPlatFormInterface {
    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public void clearNotification(Context context, int i9) {
        a.a(context, i9);
    }

    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public String getAppId(Context context) {
        return a.f(context);
    }

    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public String getAppkey(Context context) {
        return a.e(context);
    }

    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public String getRomName() {
        return a.f3334a;
    }

    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public byte getRomType(Context context) {
        return a.d(context);
    }

    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public String getToken(Context context) {
        return a.g(context);
    }

    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public void init(Context context) {
        a.b(context);
    }

    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public boolean isNeedClearToken(Context context) {
        return a.h(context);
    }

    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public boolean isSupport(Context context) {
        return a.a(context);
    }

    @Override // cn.jpush.android.api.JThirdPlatFormInterface
    public void register(Context context) {
        a.c(context);
    }
}

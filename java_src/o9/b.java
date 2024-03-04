package o9;

import android.content.Context;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.massage.ThirdPushTokenMgr;
import com.guochao.faceshow.utils.BaseConfig;
import com.meizu.cloud.pushsdk.PushManager;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
/* loaded from: classes3.dex */
public class b extends a {

    /* renamed from: a  reason: collision with root package name */
    static b f55530a;

    public static a d() {
        if (f55530a == null) {
            synchronized (b.class) {
                if (f55530a == null) {
                    f55530a = new b();
                }
            }
        }
        return f55530a;
    }

    public static boolean e() {
        return com.google.android.gms.common.a.m().g(BaseApplication.getInstance()) == 0;
    }

    private void f() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        if (MzSystemUtils.isBrandMeizu(baseApplication)) {
            PushManager.register(baseApplication, BaseConfig.MZ_PUSH_APPID, BaseConfig.MZ_PUSH_APPKEY);
        }
    }

    @Override // o9.a
    public void c(Context context) {
        boolean z10 = true;
        ThirdPushTokenMgr.c().f(true);
        if (i.u().s() != null && i.u().s().getChat_switch() != 1) {
            z10 = false;
        }
        if (z10) {
            ThirdPushTokenMgr.c().g();
        }
        f();
    }
}

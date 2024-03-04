package t8;

import android.text.TextUtils;
import b8.e;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.BaseConfig;
/* loaded from: classes3.dex */
public class a {
    public static int a(int i9) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        String str = SpUtils.getStr(baseApplication, e.g().getUserId() + "resourceType" + i9);
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return -1;
        }
    }

    public static boolean b(int i9) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        return SpUtils.getBool(baseApplication, e.g().getUserId() + BaseConfig.IS_FIST_CHECK_GIF + i9, false);
    }

    public static void c(int i9, int i10) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        SpUtils.setStr(baseApplication, e.g().getUserId() + "resourceType" + i9, String.valueOf(i10));
    }

    public static void d(boolean z10, int i9) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        SpUtils.setBool(baseApplication, e.g().getUserId() + BaseConfig.IS_FIST_CHECK_GIF + i9, z10);
    }
}

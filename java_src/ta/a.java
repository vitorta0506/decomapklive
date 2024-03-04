package ta;

import android.text.TextUtils;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.utils.ReportController;
/* loaded from: classes3.dex */
public class a {
    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals("1") || str.equals(ReportController.REPORT_TYPE_ONE_V_ONE) || str.equals("2") || str.equals("99") || str.equals("100") || str.equals(ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL);
    }
}

package y6;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.modulars.login.bean.ThirdPartyLoginPlatform;
import com.guochao.faceshow.aaspring.modulars.login.utils.WechatLoginManager;
import com.guochao.faceshow.aaspring.modulars.login.utils.b;
import com.guochao.faceshow.aaspring.modulars.login.utils.c;
import com.guochao.faceshow.aaspring.modulars.login.utils.d;
import com.guochao.faceshow.aaspring.modulars.login.utils.k;
import com.guochao.faceshow.aaspring.modulars.login.utils.l;
import com.guochao.faceshow.aaspring.modulars.login.utils.n;
import com.guochao.faceshow.aaspring.modulars.login.utils.p;
import com.guochao.faceshow.aaspring.modulars.login.utils.r;
/* loaded from: classes3.dex */
public class a {
    @Nullable
    public static l a(ThirdPartyLoginPlatform thirdPartyLoginPlatform, Context context) {
        switch (thirdPartyLoginPlatform.getType()) {
            case 4:
                return new WechatLoginManager(context);
            case 5:
                return new k(context);
            case 6:
                return new r(context);
            case 7:
                return new b(context);
            case 8:
                return new n(context);
            case 9:
                return new c(context);
            case 10:
                return new m9.a((Activity) context);
            case 11:
                return new d(context);
            case 12:
                return new p(context);
            default:
                return null;
        }
    }
}

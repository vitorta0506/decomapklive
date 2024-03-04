package v9;

import android.app.Activity;
import android.text.TextUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.snapchat.kit.sdk.creative.api.SnapCreativeKitSendError;
import com.snapchat.kit.sdk.creative.exceptions.SnapKitBaseException;
import java.io.File;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements le.c {
        a() {
        }

        @Override // le.c
        public void a(SnapCreativeKitSendError snapCreativeKitSendError) {
            LogUtils.i("zune", "onSendFailed = " + snapCreativeKitSendError.name());
        }

        @Override // le.c
        public void b() {
            LogUtils.i("zune", "onSendSuccess");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements le.c {
        b() {
        }

        @Override // le.c
        public void a(SnapCreativeKitSendError snapCreativeKitSendError) {
            LogUtils.i("zune", "onSendFailed = " + snapCreativeKitSendError.name());
        }

        @Override // le.c
        public void b() {
            LogUtils.i("zune", "onSendSuccess");
        }
    }

    public static void a(Activity activity, String str, String str2, String str3, String str4) {
        ne.a c10 = com.snapchat.kit.sdk.a.c(activity);
        le.a b10 = com.snapchat.kit.sdk.a.b(activity);
        try {
            oe.c cVar = new oe.c(c10.a(new File(str4)));
            cVar.g(str);
            StringBuilder sb2 = new StringBuilder();
            if (TextUtils.isEmpty(str3) || !str3.contains(str2)) {
                sb2.append(str2);
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            if (!TextUtils.isEmpty(str3)) {
                sb2.append(str3);
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            sb2.append(str);
            cVar.h(sb2.toString());
            b10.a(cVar, new b());
        } catch (SnapKitBaseException unused) {
            ToastUtils.showToast(activity, "Media too large to share");
        }
    }

    public static void b(Activity activity, String str, String str2) {
        ne.a c10 = com.snapchat.kit.sdk.a.c(activity);
        le.a b10 = com.snapchat.kit.sdk.a.b(activity);
        try {
            oe.d dVar = new oe.d(c10.b(new File(str2)));
            dVar.h(str);
            b10.a(dVar, new a());
        } catch (SnapKitBaseException unused) {
            ToastUtils.showToast(activity, "Media too large to share");
        }
    }
}

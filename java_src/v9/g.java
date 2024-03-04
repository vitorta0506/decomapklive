package v9;

import android.content.Context;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
/* loaded from: classes3.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static g f59071a;

    private g() {
        DelayIniter.initWeiBo();
    }

    public static g a() {
        if (f59071a == null) {
            synchronized (g.class) {
                if (f59071a == null) {
                    f59071a = new g();
                }
            }
        }
        return f59071a;
    }

    public void b(Context context, int i9, String str, String str2, String str3, String str4, @Nullable String str5) {
    }

    public void c() {
    }
}

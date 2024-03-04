package z7;

import androidx.annotation.Nullable;
import com.guochao.faceshow.bean.UserBean;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class a implements r7.a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f60367b;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Boolean> f60368a = new HashMap();

    private a() {
    }

    public static a a() {
        if (f60367b == null) {
            synchronized (a.class) {
                if (f60367b == null) {
                    f60367b = new a();
                }
            }
        }
        return f60367b;
    }

    public void b() {
        this.f60368a.put("COUNTREY_BEAN", Boolean.FALSE);
    }

    public void c(@Nullable UserBean userBean) {
    }
}

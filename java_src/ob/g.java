package ob;

import android.app.Application;
import android.os.Handler;
import android.widget.Toast;
import java.lang.reflect.Field;
/* loaded from: classes4.dex */
public class g extends e {

    /* renamed from: c  reason: collision with root package name */
    private boolean f55577c;

    public g(Application application) {
        super(application);
    }

    private void c() {
        if (this.f55577c) {
            return;
        }
        this.f55577c = true;
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
            declaredField2.setAccessible(true);
            Handler handler = (Handler) declaredField2.get(obj);
            if (handler instanceof f) {
                return;
            }
            declaredField2.set(obj, new f(handler));
        } catch (IllegalAccessException | NoSuchFieldException e10) {
            e10.printStackTrace();
        }
    }

    @Override // ob.e, android.widget.Toast, pb.b
    public void show() {
        c();
        super.show();
    }
}

package ob;

import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import java.lang.reflect.Modifier;
/* loaded from: classes4.dex */
public class k implements pb.c {
    @Override // pb.c
    public boolean a(CharSequence charSequence) {
        e(charSequence);
        return false;
    }

    protected boolean b(Class<?> cls) {
        return k.class.equals(cls) || m.class.equals(cls) || cls.isInterface() || Modifier.isAbstract(cls.getModifiers());
    }

    protected boolean c() {
        return m.d();
    }

    protected void d(String str) {
        Log.i("ToastUtils", str);
    }

    protected void e(CharSequence charSequence) {
        StackTraceElement[] stackTrace;
        if (c()) {
            for (StackTraceElement stackTraceElement : new Throwable().getStackTrace()) {
                int lineNumber = stackTraceElement.getLineNumber();
                if (lineNumber > 0) {
                    try {
                        if (!b(Class.forName(stackTraceElement.getClassName()))) {
                            d("(" + stackTraceElement.getFileName() + CertificateUtil.DELIMITER + lineNumber + ") " + charSequence.toString());
                            return;
                        }
                        continue;
                    } catch (ClassNotFoundException e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }
}

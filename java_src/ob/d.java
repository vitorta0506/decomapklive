package ob;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
final class d implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Object f55574a;

    public d(Object obj) {
        this.f55574a = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        name.hashCode();
        char c10 = 65535;
        switch (name.hashCode()) {
            case -1581943859:
                if (name.equals("cancelToast")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1230397970:
                if (name.equals("enqueueToastEx")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1967758591:
                if (name.equals("enqueueToast")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
                objArr[0] = "android";
                break;
        }
        return method.invoke(this.f55574a, objArr);
    }
}

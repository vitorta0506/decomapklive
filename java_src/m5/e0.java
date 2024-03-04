package m5;

import com.google.api.gax.rpc.StatusCode;
import java.util.Set;
/* loaded from: classes2.dex */
public class e0 {
    public static <RequestT, ResponseT> com.google.api.gax.rpc.h<RequestT, ResponseT> a(q<RequestT, ResponseT> qVar, Set<StatusCode.Code> set) {
        return new x(new u(qVar.a()), set);
    }

    public static <RequestT, ResponseT> com.google.api.gax.rpc.k0<RequestT, ResponseT> b(q<RequestT, ResponseT> qVar, Set<StatusCode.Code> set) {
        com.google.api.gax.rpc.k0 vVar = new v(qVar.a(), qVar.d());
        if (qVar.b() != null) {
            vVar = new i0(vVar, qVar.b());
        }
        return new y(vVar, set);
    }
}

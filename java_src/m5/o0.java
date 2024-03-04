package m5;

import com.google.api.gax.rpc.StatusCode;
import com.google.protobuf.Any;
import com.google.protobuf.l1;
/* loaded from: classes2.dex */
public class o0<ResponseT extends l1> implements k5.b<n5.b, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final m0<ResponseT> f54881a;

    private o0(Class<ResponseT> cls) {
        this.f54881a = new m0<>(cls);
    }

    public static <ResponseT extends l1> o0<ResponseT> b(Class<ResponseT> cls) {
        return new o0<>(cls);
    }

    @Override // k5.b
    /* renamed from: a */
    public ResponseT apply(n5.b bVar) {
        if (bVar.getErrorCode().getCode().equals(StatusCode.Code.OK)) {
            if (!(bVar.b() instanceof Any)) {
                return (ResponseT) bVar.b();
            }
            try {
                return this.f54881a.apply((Any) bVar.b());
            } catch (RuntimeException e10) {
                throw com.google.api.gax.rpc.b.a("Operation with name \"" + bVar.getName() + "\" succeeded, but encountered a problem unpacking it.", e10, bVar.getErrorCode(), false);
            }
        }
        throw com.google.api.gax.rpc.b.a("Operation with name \"" + bVar.getName() + "\" failed with status = " + bVar.getErrorCode() + " and message = " + bVar.a(), null, bVar.getErrorCode(), false);
    }
}

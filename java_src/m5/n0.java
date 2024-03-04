package m5;

import com.google.protobuf.Any;
import com.google.protobuf.l1;
/* loaded from: classes2.dex */
public class n0<MetadataT extends l1> implements k5.b<n5.b, MetadataT> {

    /* renamed from: a  reason: collision with root package name */
    private final m0<MetadataT> f54879a;

    private n0(Class<MetadataT> cls) {
        this.f54879a = new m0<>(cls);
    }

    public static <ResponseT extends l1> n0<ResponseT> b(Class<ResponseT> cls) {
        return new n0<>(cls);
    }

    @Override // k5.b
    /* renamed from: a */
    public MetadataT apply(n5.b bVar) {
        if (!(bVar.getMetadata() instanceof Any)) {
            return (MetadataT) bVar.getMetadata();
        }
        try {
            return this.f54879a.apply((Any) bVar.getMetadata());
        } catch (RuntimeException e10) {
            throw com.google.api.gax.rpc.b.a("Polling operation with name \"" + bVar.getName() + "\" succeeded, but encountered a problem unpacking it.", e10, bVar.getErrorCode(), false);
        }
    }
}

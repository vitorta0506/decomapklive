package m5;

import com.google.protobuf.Any;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.l1;
/* loaded from: classes2.dex */
class m0<PackedT extends l1> implements k5.b<Any, PackedT> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<PackedT> f54875a;

    public m0(Class<PackedT> cls) {
        this.f54875a = cls;
    }

    @Override // k5.b
    /* renamed from: a */
    public PackedT apply(Any any) {
        if (any != null) {
            try {
                Class<PackedT> cls = this.f54875a;
                if (cls != null) {
                    return (PackedT) any.unpack(cls);
                }
            } catch (InvalidProtocolBufferException | ClassCastException unused) {
                throw new IllegalStateException("Failed to unpack object from 'any' field. Expected " + this.f54875a.getName() + ", found " + any.getTypeUrl());
            }
        }
        return null;
    }
}

package eh;

import com.google.common.collect.ImmutableMap;
import com.google.protobuf.Any;
import com.google.protobuf.InvalidProtocolBufferException;
import eh.u0;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes5.dex */
final class c2 implements u0 {

    /* renamed from: a  reason: collision with root package name */
    static final c2 f38703a = new c2();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class a implements u0.b {
        static a b(Map<String, ?> map) {
            return new v(ImmutableMap.copyOf((Map) map));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract ImmutableMap<String, ?> a();
    }

    private c2() {
    }

    @Override // eh.u0
    public String[] a() {
        return new String[]{"type.googleapis.com/grpc.lookup.v1.RouteLookupClusterSpecifier"};
    }

    @Override // eh.u0
    public w0<a> b(com.google.protobuf.l1 l1Var) {
        String str;
        if (!(l1Var instanceof Any)) {
            return w0.b("Invalid config type: " + l1Var.getClass());
        }
        try {
            try {
                try {
                    try {
                        return w0.a(a.b(io.grpc.internal.b1.k((Map) io.grpc.internal.a1.a(u1.a(((Any) l1Var).unpack(Class.forName("io.grpc.lookup.v1.RouteLookupClusterSpecifier")))), "routeLookupConfig")));
                    } catch (IOException unused) {
                        return w0.b("Unable to parse RouteLookupClusterSpecifier: " + str);
                    }
                } catch (InvalidProtocolBufferException e10) {
                    return w0.b("Invalid proto: " + e10);
                }
            } catch (ClassNotFoundException e11) {
                return w0.b("Dependency for 'io.grpc:grpc-rls' is missing: " + e11);
            }
        } catch (RuntimeException e12) {
            return w0.b("Error parsing RouteLookupConfig: " + e12);
        }
    }
}

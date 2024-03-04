package m5;

import io.grpc.c;
import io.grpc.s0;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
class d {

    /* renamed from: a  reason: collision with root package name */
    private static final c.a<Map<s0.i<String>, String>> f54800a = c.a.c("gax_dynamic_headers", Collections.emptyMap());

    /* renamed from: b  reason: collision with root package name */
    static s0.i<String> f54801b = s0.i.e("x-goog-request-params", s0.f45383e);

    /* renamed from: c  reason: collision with root package name */
    private static final c.a<p0> f54802c = c.a.c("gax_metadata_handler", null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<s0.i<String>, String> a(io.grpc.c cVar) {
        return (Map) cVar.h(f54800a);
    }

    public static p0 b(io.grpc.c cVar) {
        return (p0) cVar.h(f54802c);
    }
}

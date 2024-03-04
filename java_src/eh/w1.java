package eh;

import io.grpc.internal.e2;
import io.grpc.n0;
import io.grpc.t0;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public final class w1 extends io.grpc.o0 {

    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Map<String, C0418a> f39399a;

        /* renamed from: b  reason: collision with root package name */
        final List<String> f39400b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: eh.w1$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0418a {

            /* renamed from: a  reason: collision with root package name */
            final e2.b f39401a;

            /* renamed from: b  reason: collision with root package name */
            final boolean f39402b;

            /* JADX INFO: Access modifiers changed from: package-private */
            public C0418a(e2.b bVar, boolean z10) {
                this.f39401a = (e2.b) com.google.common.base.o.t(bVar, "policySelection");
                this.f39402b = z10;
            }

            public String toString() {
                return com.google.common.base.j.c(this).d("policySelection", this.f39401a).e("ignoreReresolution", this.f39402b).toString();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Map<String, C0418a> map, List<String> list) {
            this.f39399a = Collections.unmodifiableMap((Map) com.google.common.base.o.t(map, "childConfigs"));
            this.f39400b = Collections.unmodifiableList((List) com.google.common.base.o.t(list, "priorities"));
            com.google.common.base.o.e(!list.isEmpty(), "priority list is empty");
            com.google.common.base.o.e(map.keySet().containsAll(list), "missing child config for at lease one of the priorities");
            com.google.common.base.o.e(list.size() == new HashSet(list).size(), "duplicate names in priorities");
            com.google.common.base.o.e(list.size() == map.keySet().size(), "some names in childConfigs are not referenced by priorities");
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("childConfigs", this.f39399a).d("priorities", this.f39400b).toString();
        }
    }

    @Override // io.grpc.n0.c
    public io.grpc.n0 a(n0.d dVar) {
        return new v1(dVar);
    }

    @Override // io.grpc.o0
    public String b() {
        return "priority_experimental";
    }

    @Override // io.grpc.o0
    public int c() {
        return 5;
    }

    @Override // io.grpc.o0
    public boolean d() {
        return true;
    }

    @Override // io.grpc.o0
    public t0.c e(Map<String, ?> map) {
        throw new UnsupportedOperationException();
    }
}

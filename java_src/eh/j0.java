package eh;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import eh.a1;
import eh.d;
import io.grpc.xds.XdsInitializationException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class j0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static a b(String str, List<d> list) {
            com.google.common.base.o.e(!list.isEmpty(), "xdsServers must not be empty");
            return new eh.c(str, ImmutableList.copyOf((Collection) list));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract ImmutableList<d> c();
    }

    /* loaded from: classes5.dex */
    public static abstract class b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public static abstract class a {
            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract a a(Map<String, a> map);

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract b b();

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract a c(Map<String, c> map);

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract a d(String str);

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract a e(a1.c cVar);

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract a f(String str);

            /* JADX INFO: Access modifiers changed from: package-private */
            public abstract a g(List<d> list);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a b() {
            return new d.b().d("%s").a(ImmutableMap.of());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract ImmutableMap<String, a> a();

        public abstract ImmutableMap<String, c> c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String d();

        public abstract a1.c e();

        public abstract String f();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract ImmutableList<d> g();
    }

    /* loaded from: classes5.dex */
    public static abstract class c {
        public static c b(String str, Map<String, ?> map) {
            return new e(str, ImmutableMap.copyOf((Map) map));
        }

        public abstract ImmutableMap<String, ?> a();

        public abstract String c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static abstract class d {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static d b(String str, io.grpc.e eVar, boolean z10) {
            return new f(str, eVar, z10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract io.grpc.e a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean d();
    }

    public abstract b a() throws XdsInitializationException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b b(Map<String, ?> map) throws XdsInitializationException {
        throw new UnsupportedOperationException();
    }
}

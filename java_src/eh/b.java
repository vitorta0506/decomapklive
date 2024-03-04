package eh;

import com.facebook.appevents.integrity.IntegrityManager;
import io.grpc.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final a.c<a> f38687a = a.c.a("io.grpc.xds.AddressFilter.PATH_CHAIN_KEY");

    /* loaded from: classes5.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f38688a;

        /* renamed from: b  reason: collision with root package name */
        a f38689b;

        a(String str) {
            this.f38688a = (String) com.google.common.base.o.t(str, "name");
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f38688a);
            if (this.f38689b == null) {
                str = "";
            } else {
                str = ", " + this.f38689b;
            }
            sb2.append(str);
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<io.grpc.x> a(List<io.grpc.x> list, String str) {
        com.google.common.base.o.t(list, "addresses");
        com.google.common.base.o.t(str, "name");
        ArrayList arrayList = new ArrayList();
        for (io.grpc.x xVar : list) {
            io.grpc.a b10 = xVar.b();
            a.c<a> cVar = f38687a;
            a aVar = (a) b10.b(cVar);
            if (aVar != null && aVar.f38688a.equals(str)) {
                arrayList.add(new io.grpc.x(xVar.a(), xVar.b().d().d(cVar, aVar.f38689b).a()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static io.grpc.x b(io.grpc.x xVar, List<String> list) {
        com.google.common.base.o.t(xVar, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        com.google.common.base.o.t(list, "names");
        a.b c10 = xVar.b().d().c(f38687a);
        a aVar = null;
        for (String str : list) {
            if (aVar == null) {
                aVar = new a(str);
                c10.d(f38687a, aVar);
            } else {
                aVar.f38689b = new a(str);
            }
        }
        return new io.grpc.x(xVar.a(), c10.a());
    }
}

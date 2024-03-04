package eh;

import io.grpc.t0;
import io.grpc.xds.XdsInitializationException;
import java.net.URI;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
public final class s2 extends io.grpc.u0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f39324a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, ?> f39325b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a {
        AtomicLong a(String str, String str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface b {
        void a(Map<String, ?> map);

        io.grpc.internal.p1<p2> b() throws XdsInitializationException;
    }

    public s2() {
        this("xds", null);
    }

    @Override // io.grpc.t0.d
    public String a() {
        return this.f39324a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.u0
    public boolean d() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.u0
    public int e() {
        return 4;
    }

    @Override // io.grpc.t0.d
    /* renamed from: f */
    public r2 b(URI uri, t0.b bVar) {
        if (this.f39324a.equals(uri.getScheme())) {
            String str = (String) com.google.common.base.o.t(uri.getPath(), "targetPath");
            com.google.common.base.o.n(str.startsWith(FileUtils.RES_PREFIX_STORAGE), "the path component (%s) of the target (%s) must start with '/'", str, uri);
            return new r2(uri.getAuthority(), str.substring(1), bVar.e(), bVar.f(), bVar.d(), this.f39325b);
        }
        return null;
    }

    private s2(String str, Map<String, ?> map) {
        this.f39324a = (String) com.google.common.base.o.t(str, "scheme");
        this.f39325b = map;
    }
}

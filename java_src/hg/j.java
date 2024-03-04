package hg;

import com.google.common.base.o;
import com.google.common.base.u;
import io.grpc.internal.GrpcUtil;
import io.grpc.j0;
import io.grpc.t0;
import io.grpc.u0;
import java.net.URI;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
public final class j extends u0 {
    @Override // io.grpc.t0.d
    public String a() {
        return "dns";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.u0
    public boolean d() {
        return true;
    }

    @Override // io.grpc.u0
    public int e() {
        return 6;
    }

    @Override // io.grpc.t0.d
    /* renamed from: f */
    public h b(URI uri, t0.b bVar) {
        if ("dns".equals(uri.getScheme())) {
            String str = (String) o.t(uri.getPath(), "targetPath");
            o.n(str.startsWith(FileUtils.RES_PREFIX_STORAGE), "the path component (%s) of the target (%s) must start with '/'", str, uri);
            return new h(uri.getAuthority(), str.substring(1), bVar, GrpcUtil.f42361t, u.c(), j0.a(j.class.getClassLoader()));
        }
        return null;
    }
}

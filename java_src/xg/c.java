package xg;

import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import io.grpc.h0;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.n2;
import io.grpc.s0;
import java.util.ArrayList;
import java.util.List;
import okio.ByteString;
/* loaded from: classes5.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    public static final yg.c f59750a;

    /* renamed from: b  reason: collision with root package name */
    public static final yg.c f59751b;

    /* renamed from: c  reason: collision with root package name */
    public static final yg.c f59752c;

    /* renamed from: d  reason: collision with root package name */
    public static final yg.c f59753d;

    /* renamed from: e  reason: collision with root package name */
    public static final yg.c f59754e;

    /* renamed from: f  reason: collision with root package name */
    public static final yg.c f59755f;

    static {
        ByteString byteString = yg.c.f60209g;
        f59750a = new yg.c(byteString, ProxyConfig.MATCH_HTTPS);
        f59751b = new yg.c(byteString, "http");
        ByteString byteString2 = yg.c.f60207e;
        f59752c = new yg.c(byteString2, "POST");
        f59753d = new yg.c(byteString2, "GET");
        f59754e = new yg.c(GrpcUtil.f42350i.d(), "application/grpc");
        f59755f = new yg.c("te", "trailers");
    }

    public static List<yg.c> a(s0 s0Var, String str, String str2, String str3, boolean z10, boolean z11) {
        com.google.common.base.o.t(s0Var, "headers");
        com.google.common.base.o.t(str, "defaultPath");
        com.google.common.base.o.t(str2, "authority");
        s0Var.i(GrpcUtil.f42350i);
        s0Var.i(GrpcUtil.f42351j);
        s0.i<String> iVar = GrpcUtil.f42352k;
        s0Var.i(iVar);
        ArrayList arrayList = new ArrayList(h0.a(s0Var) + 7);
        if (z11) {
            arrayList.add(f59751b);
        } else {
            arrayList.add(f59750a);
        }
        if (z10) {
            arrayList.add(f59753d);
        } else {
            arrayList.add(f59752c);
        }
        arrayList.add(new yg.c(yg.c.f60210h, str2));
        arrayList.add(new yg.c(yg.c.f60208f, str));
        arrayList.add(new yg.c(iVar.d(), str3));
        arrayList.add(f59754e);
        arrayList.add(f59755f);
        byte[][] d10 = n2.d(s0Var);
        for (int i9 = 0; i9 < d10.length; i9 += 2) {
            ByteString of2 = ByteString.of(d10[i9]);
            if (b(of2.utf8())) {
                arrayList.add(new yg.c(of2, ByteString.of(d10[i9 + 1])));
            }
        }
        return arrayList;
    }

    private static boolean b(String str) {
        return (str.startsWith(CertificateUtil.DELIMITER) || GrpcUtil.f42350i.d().equalsIgnoreCase(str) || GrpcUtil.f42352k.d().equalsIgnoreCase(str)) ? false : true;
    }
}

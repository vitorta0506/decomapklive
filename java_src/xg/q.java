package xg;

import io.grpc.h0;
import io.grpc.internal.n2;
import io.grpc.s0;
import java.util.List;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
class q {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f59909a = Logger.getLogger(q.class.getName());

    private q() {
    }

    public static s0 a(List<yg.c> list) {
        return h0.d(b(list));
    }

    private static byte[][] b(List<yg.c> list) {
        byte[][] bArr = new byte[list.size() * 2];
        int i9 = 0;
        for (yg.c cVar : list) {
            int i10 = i9 + 1;
            bArr[i9] = cVar.f60213a.toByteArray();
            i9 = i10 + 1;
            bArr[i10] = cVar.f60214b.toByteArray();
        }
        return n2.e(bArr);
    }

    public static s0 c(List<yg.c> list) {
        return h0.d(b(list));
    }
}

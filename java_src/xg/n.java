package xg;

import io.grpc.internal.q2;
import io.grpc.internal.r2;
import okio.Buffer;
/* loaded from: classes5.dex */
class n implements r2 {
    @Override // io.grpc.internal.r2
    public q2 a(int i9) {
        return new m(new Buffer(), Math.min(1048576, Math.max(4096, i9)));
    }
}

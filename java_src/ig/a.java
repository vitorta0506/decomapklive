package ig;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
abstract class a implements Http2Headers {
    @Override // pg.i
    /* renamed from: c */
    public Http2Headers Z0(CharSequence charSequence, CharSequence charSequence2) {
        throw new UnsupportedOperationException();
    }

    @Override // pg.i
    /* renamed from: d */
    public CharSequence get(CharSequence charSequence) {
        throw new UnsupportedOperationException();
    }

    @Override // pg.i
    /* renamed from: f */
    public List<CharSequence> d0(CharSequence charSequence) {
        throw new UnsupportedOperationException();
    }

    @Override // pg.i
    /* renamed from: g */
    public Http2Headers K0(CharSequence charSequence, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers, pg.i, java.lang.Iterable
    public Iterator<Map.Entry<CharSequence, CharSequence>> iterator() {
        throw new UnsupportedOperationException();
    }
}

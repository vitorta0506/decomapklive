package ig;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
/* loaded from: classes5.dex */
final class m extends l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public m(int i9) {
        super(i9);
    }

    @Override // ig.a, pg.i
    /* renamed from: c */
    public Http2Headers Z0(CharSequence charSequence, CharSequence charSequence2) {
        return m(M(l.K(charSequence)), l.K(charSequence2));
    }

    @Override // ig.a, pg.i
    /* renamed from: d */
    public CharSequence get(CharSequence charSequence) {
        return F(l.K(charSequence));
    }

    public String toString() {
        return m.class.getSimpleName() + '[' + H() + ']';
    }
}

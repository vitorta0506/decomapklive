package kg;
/* loaded from: classes5.dex */
public class p implements l {

    /* renamed from: a  reason: collision with root package name */
    private final j f53875a;

    public p(j jVar) {
        this.f53875a = (j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "data");
    }

    @Override // kg.l
    public j content() {
        return n.l(this.f53875a);
    }

    public l h() {
        this.f53875a.retain();
        return this;
    }

    public l i(Object obj) {
        this.f53875a.touch(obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public int refCnt() {
        return this.f53875a.refCnt();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return this.f53875a.release();
    }
}

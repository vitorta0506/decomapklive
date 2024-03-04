package mh;

import java.util.Arrays;
/* loaded from: classes7.dex */
public final class j {

    /* renamed from: e  reason: collision with root package name */
    private static final n f55117e;

    /* renamed from: f  reason: collision with root package name */
    public static final j f55118f;

    /* renamed from: a  reason: collision with root package name */
    private final l f55119a;

    /* renamed from: b  reason: collision with root package name */
    private final k f55120b;

    /* renamed from: c  reason: collision with root package name */
    private final m f55121c;

    /* renamed from: d  reason: collision with root package name */
    private final n f55122d;

    static {
        n b10 = n.b().b();
        f55117e = b10;
        f55118f = new j(l.f55125c, k.f55123b, m.f55128b, b10);
    }

    private j(l lVar, k kVar, m mVar, n nVar) {
        this.f55119a = lVar;
        this.f55120b = kVar;
        this.f55121c = mVar;
        this.f55122d = nVar;
    }

    public k a() {
        return this.f55120b;
    }

    public l b() {
        return this.f55119a;
    }

    public m c() {
        return this.f55121c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            return this.f55119a.equals(jVar.f55119a) && this.f55120b.equals(jVar.f55120b) && this.f55121c.equals(jVar.f55121c);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f55119a, this.f55120b, this.f55121c});
    }

    public String toString() {
        return "SpanContext{traceId=" + this.f55119a + ", spanId=" + this.f55120b + ", traceOptions=" + this.f55121c + "}";
    }
}

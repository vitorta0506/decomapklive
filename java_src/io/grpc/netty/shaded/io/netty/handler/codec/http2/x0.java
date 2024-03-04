package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public final class x0 extends tg.a<Long> {

    /* renamed from: k  reason: collision with root package name */
    private static final Long f44469k = 0L;

    /* renamed from: l  reason: collision with root package name */
    private static final Long f44470l = 1L;

    public x0() {
        this(13);
    }

    private static void L(int i9, Long l10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(l10, "value");
        switch (i9) {
            case 1:
                if (l10.longValue() < 0 || l10.longValue() > 4294967295L) {
                    throw new IllegalArgumentException("Setting HEADER_TABLE_SIZE is invalid: " + l10);
                }
                return;
            case 2:
                if (l10.longValue() == 0 || l10.longValue() == 1) {
                    return;
                }
                throw new IllegalArgumentException("Setting ENABLE_PUSH is invalid: " + l10);
            case 3:
                if (l10.longValue() < 0 || l10.longValue() > 4294967295L) {
                    throw new IllegalArgumentException("Setting MAX_CONCURRENT_STREAMS is invalid: " + l10);
                }
                return;
            case 4:
                if (l10.longValue() < 0 || l10.longValue() > 2147483647L) {
                    throw new IllegalArgumentException("Setting INITIAL_WINDOW_SIZE is invalid: " + l10);
                }
                return;
            case 5:
                if (x.f(l10.intValue())) {
                    return;
                }
                throw new IllegalArgumentException("Setting MAX_FRAME_SIZE is invalid: " + l10);
            case 6:
                if (l10.longValue() < 0 || l10.longValue() > 4294967295L) {
                    throw new IllegalArgumentException("Setting MAX_HEADER_LIST_SIZE is invalid: " + l10);
                }
                return;
            default:
                return;
        }
    }

    public x0 A(int i9) {
        q((char) 4, Long.valueOf(i9));
        return this;
    }

    public Integer B() {
        return x((char) 4);
    }

    public x0 C(long j10) {
        q((char) 3, Long.valueOf(j10));
        return this;
    }

    public Long D() {
        return u0((char) 3);
    }

    public x0 E(int i9) {
        q((char) 5, Long.valueOf(i9));
        return this;
    }

    public Integer F() {
        return x((char) 5);
    }

    public x0 G(long j10) {
        q((char) 6, Long.valueOf(j10));
        return this;
    }

    public Long H() {
        return u0((char) 6);
    }

    public x0 I(boolean z10) {
        q((char) 2, z10 ? f44470l : f44469k);
        return this;
    }

    public Boolean J() {
        Long u02 = u0((char) 2);
        if (u02 == null) {
            return null;
        }
        return Boolean.valueOf(f44470l.equals(u02));
    }

    @Override // tg.a
    /* renamed from: K */
    public Long q(char c10, Long l10) {
        L(c10, l10);
        return (Long) super.q(c10, l10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // tg.a
    public String n(char c10) {
        switch (c10) {
            case 1:
                return "HEADER_TABLE_SIZE";
            case 2:
                return "ENABLE_PUSH";
            case 3:
                return "MAX_CONCURRENT_STREAMS";
            case 4:
                return "INITIAL_WINDOW_SIZE";
            case 5:
                return "MAX_FRAME_SIZE";
            case 6:
                return "MAX_HEADER_LIST_SIZE";
            default:
                return super.n(c10);
        }
    }

    public Integer x(char c10) {
        Long u02 = u0(c10);
        if (u02 == null) {
            return null;
        }
        return Integer.valueOf(u02.intValue());
    }

    public x0 y(long j10) {
        q((char) 1, Long.valueOf(j10));
        return this;
    }

    public Long z() {
        return u0((char) 1);
    }

    public x0(int i9) {
        super(i9);
    }
}

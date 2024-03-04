package io.grpc.netty.shaded.io.netty.channel;
/* loaded from: classes5.dex */
public final class f1 {

    /* renamed from: c  reason: collision with root package name */
    public static final f1 f43687c = new f1(32768, 65536, false);

    /* renamed from: a  reason: collision with root package name */
    private final int f43688a;

    /* renamed from: b  reason: collision with root package name */
    private final int f43689b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(int i9, int i10, boolean z10) {
        if (z10) {
            io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "low");
            if (i10 < i9) {
                throw new IllegalArgumentException("write buffer's high water mark cannot be less than  low water mark (" + i9 + "): " + i10);
            }
        }
        this.f43688a = i9;
        this.f43689b = i10;
    }

    public int a() {
        return this.f43689b;
    }

    public int b() {
        return this.f43688a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(55);
        sb2.append("WriteBufferWaterMark(low: ");
        sb2.append(this.f43688a);
        sb2.append(", high: ");
        sb2.append(this.f43689b);
        sb2.append(")");
        return sb2.toString();
    }
}

package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.util.Arrays;
/* loaded from: classes5.dex */
final class a1 {

    /* renamed from: c  reason: collision with root package name */
    static final a1 f44496c = new a1(io.grpc.netty.shaded.io.netty.util.internal.h.f45065b);

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f44497a;

    /* renamed from: b  reason: collision with root package name */
    private final int f44498b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(byte[] bArr) {
        this.f44497a = bArr;
        this.f44498b = Arrays.hashCode(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a() {
        return (byte[]) this.f44497a.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a1) {
            return Arrays.equals(this.f44497a, ((a1) obj).f44497a);
        }
        return false;
    }

    public int hashCode() {
        return this.f44498b;
    }

    public String toString() {
        return "OpenSslSessionId{id=" + Arrays.toString(this.f44497a) + '}';
    }
}

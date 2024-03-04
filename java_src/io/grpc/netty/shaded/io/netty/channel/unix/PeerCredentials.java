package io.grpc.netty.shaded.io.netty.channel.unix;
/* loaded from: classes5.dex */
public final class PeerCredentials {

    /* renamed from: a  reason: collision with root package name */
    private final int f43816a;

    /* renamed from: b  reason: collision with root package name */
    private final int f43817b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f43818c;

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("UserCredentials[pid=");
        sb2.append(this.f43816a);
        sb2.append("; uid=");
        sb2.append(this.f43817b);
        sb2.append("; gids=[");
        int[] iArr = this.f43818c;
        if (iArr.length > 0) {
            sb2.append(iArr[0]);
            for (int i9 = 1; i9 < this.f43818c.length; i9++) {
                sb2.append(", ");
                sb2.append(this.f43818c[i9]);
            }
        }
        sb2.append(']');
        return sb2.toString();
    }
}

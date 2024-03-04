package io.grpc.netty.shaded.io.netty.channel.local;

import io.grpc.netty.shaded.io.netty.channel.e;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public final class LocalAddress extends SocketAddress implements Comparable<LocalAddress> {
    public static final LocalAddress ANY = new LocalAddress("ANY");
    private static final long serialVersionUID = 4644331421130916435L;

    /* renamed from: id  reason: collision with root package name */
    private final String f43715id;
    private final String strVal;

    LocalAddress(e eVar) {
        StringBuilder sb2 = new StringBuilder(16);
        sb2.append("local:E");
        sb2.append(Long.toHexString((eVar.hashCode() & 4294967295L) | 4294967296L));
        sb2.setCharAt(7, ':');
        this.f43715id = sb2.substring(6);
        this.strVal = sb2.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof LocalAddress) {
            return this.f43715id.equals(((LocalAddress) obj).f43715id);
        }
        return false;
    }

    public int hashCode() {
        return this.f43715id.hashCode();
    }

    public String id() {
        return this.f43715id;
    }

    public String toString() {
        return this.strVal;
    }

    @Override // java.lang.Comparable
    public int compareTo(LocalAddress localAddress) {
        return this.f43715id.compareTo(localAddress.f43715id);
    }

    public LocalAddress(String str) {
        String lowerCase = s.g(str, "id").toLowerCase();
        this.f43715id = lowerCase;
        this.strVal = "local:" + lowerCase;
    }
}

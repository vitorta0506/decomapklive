package io.grpc.netty.shaded.io.netty.channel.unix;

import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import kotlin.UByte;
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f43833c = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1};

    /* renamed from: a  reason: collision with root package name */
    final byte[] f43834a;

    /* renamed from: b  reason: collision with root package name */
    final int f43835b;

    public c(byte[] bArr, int i9) {
        this.f43834a = bArr;
        this.f43835b = i9;
    }

    public static InetSocketAddress a(byte[] bArr, int i9, int i10) {
        InetAddress byAddress;
        int i11 = i9 + i10;
        int d10 = d(bArr, i11 - 4);
        try {
            if (i10 == 8) {
                byte[] bArr2 = new byte[4];
                System.arraycopy(bArr, i9, bArr2, 0, 4);
                byAddress = InetAddress.getByAddress(bArr2);
            } else if (i10 == 24) {
                byte[] bArr3 = new byte[16];
                System.arraycopy(bArr, i9, bArr3, 0, 16);
                byAddress = Inet6Address.getByAddress((String) null, bArr3, d(bArr, i11 - 8));
            } else {
                throw new Error();
            }
            return new InetSocketAddress(byAddress, d10);
        } catch (UnknownHostException e10) {
            throw new Error("Should never happen", e10);
        }
    }

    public static void c(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = f43833c;
        System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
        System.arraycopy(bArr, 0, bArr2, 12, bArr.length);
    }

    static int d(byte[] bArr, int i9) {
        return (bArr[i9 + 3] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 24) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 8);
    }

    public static byte[] e(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        c(bArr, bArr2);
        return bArr2;
    }

    public static c f(InetAddress inetAddress) {
        byte[] address = inetAddress.getAddress();
        if (inetAddress instanceof Inet6Address) {
            return new c(address, ((Inet6Address) inetAddress).getScopeId());
        }
        return new c(e(address));
    }

    public byte[] b() {
        return this.f43834a;
    }

    public int g() {
        return this.f43835b;
    }

    public c(byte[] bArr) {
        this(bArr, 0);
    }
}

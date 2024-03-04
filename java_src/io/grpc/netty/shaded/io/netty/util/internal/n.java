package io.grpc.netty.shaded.io.netty.util.internal;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.UByte;
/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45111a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(n.class);

    private n() {
    }

    public static byte[] a() {
        int b10;
        byte[] bArr = h.f45065b;
        InetAddress inetAddress = io.grpc.netty.shaded.io.netty.util.n.f45222a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces != null) {
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface nextElement = networkInterfaces.nextElement();
                    Enumeration<InetAddress> b11 = a0.b(nextElement);
                    if (b11.hasMoreElements()) {
                        InetAddress nextElement2 = b11.nextElement();
                        if (!nextElement2.isLoopbackAddress()) {
                            linkedHashMap.put(nextElement, nextElement2);
                        }
                    }
                }
            }
        } catch (SocketException e10) {
            f45111a.warn("Failed to retrieve the list of available network interfaces", (Throwable) e10);
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        while (true) {
            boolean z10 = false;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            NetworkInterface networkInterface = (NetworkInterface) entry.getKey();
            InetAddress inetAddress2 = (InetAddress) entry.getValue();
            if (!networkInterface.isVirtual()) {
                try {
                    byte[] g10 = a0.g(networkInterface);
                    int c10 = c(bArr, g10);
                    if (c10 < 0 || (c10 == 0 && ((b10 = b(inetAddress, inetAddress2)) < 0 || (b10 == 0 && bArr.length < g10.length)))) {
                        z10 = true;
                    }
                    if (z10) {
                        inetAddress = inetAddress2;
                        bArr = g10;
                    }
                } catch (SocketException e11) {
                    f45111a.debug("Failed to get the hardware address of a network interface: {}", networkInterface, e11);
                }
            }
        }
        if (bArr == h.f45065b) {
            return null;
        }
        if (bArr.length != 6) {
            return Arrays.copyOf(bArr, 8);
        }
        byte[] bArr2 = new byte[8];
        System.arraycopy(bArr, 0, bArr2, 0, 3);
        bArr2[3] = -1;
        bArr2[4] = -2;
        System.arraycopy(bArr, 3, bArr2, 5, 3);
        return bArr2;
    }

    private static int b(InetAddress inetAddress, InetAddress inetAddress2) {
        return g(inetAddress) - g(inetAddress2);
    }

    static int c(byte[] bArr, byte[] bArr2) {
        boolean z10;
        if (bArr2 == null || bArr2.length < 6) {
            return 1;
        }
        int length = bArr2.length;
        int i9 = 0;
        while (true) {
            if (i9 < length) {
                byte b10 = bArr2[i9];
                if (b10 != 0 && b10 != 1) {
                    z10 = false;
                    break;
                }
                i9++;
            } else {
                z10 = true;
                break;
            }
        }
        if (!z10 && (bArr2[0] & 1) == 0) {
            return (bArr2[0] & 2) == 0 ? (bArr.length == 0 || (bArr[0] & 2) != 0) ? -1 : 0 : (bArr.length == 0 || (bArr[0] & 2) != 0) ? 0 : 1;
        }
        return 1;
    }

    public static byte[] d() {
        byte[] a10 = a();
        if (a10 == null) {
            byte[] bArr = new byte[8];
            t.Q0().nextBytes(bArr);
            f45111a.warn("Failed to find a usable hardware address from the network interfaces; using random bytes: {}", e(bArr));
            return bArr;
        }
        return a10;
    }

    public static String e(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(24);
        int length = bArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            sb2.append(String.format("%02x:", Integer.valueOf(bArr[i9] & UByte.MAX_VALUE)));
        }
        return sb2.substring(0, sb2.length() - 1);
    }

    public static byte[] f(String str) {
        char charAt;
        byte[] bArr;
        int length = str.length();
        if (length == 17) {
            charAt = str.charAt(2);
            h(charAt);
            bArr = new byte[6];
        } else if (length == 23) {
            charAt = str.charAt(2);
            h(charAt);
            bArr = new byte[8];
        } else {
            throw new IllegalArgumentException("value is not supported [MAC-48, EUI-48, EUI-64]");
        }
        int length2 = bArr.length - 1;
        int i9 = 0;
        int i10 = 0;
        while (i9 < length2) {
            int i11 = i10 + 2;
            bArr[i9] = b0.b(str, i10);
            if (str.charAt(i11) != charAt) {
                throw new IllegalArgumentException("expected separator '" + charAt + " but got '" + str.charAt(i11) + "' at index: " + i11);
            }
            i9++;
            i10 += 3;
        }
        bArr[length2] = b0.b(str, i10);
        return bArr;
    }

    private static int g(InetAddress inetAddress) {
        if (inetAddress.isAnyLocalAddress() || inetAddress.isLoopbackAddress()) {
            return 0;
        }
        if (inetAddress.isMulticastAddress()) {
            return 1;
        }
        if (inetAddress.isLinkLocalAddress()) {
            return 2;
        }
        return inetAddress.isSiteLocalAddress() ? 3 : 4;
    }

    private static void h(char c10) {
        if (c10 == ':' || c10 == '-') {
            return;
        }
        throw new IllegalArgumentException("unsupported separator: " + c10 + " (expected: [:-])");
    }
}

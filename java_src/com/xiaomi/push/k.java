package com.xiaomi.push;

import com.facebook.internal.security.CertificateUtil;
import java.net.InetSocketAddress;
/* loaded from: classes5.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private String f36935a;

    /* renamed from: b  reason: collision with root package name */
    private int f36936b;

    public k(String str, int i9) {
        this.f36935a = str;
        this.f36936b = i9;
    }

    public static k b(String str, int i9) {
        int lastIndexOf = str.lastIndexOf(CertificateUtil.DELIMITER);
        if (lastIndexOf != -1) {
            String substring = str.substring(0, lastIndexOf);
            try {
                int parseInt = Integer.parseInt(str.substring(lastIndexOf + 1));
                if (parseInt > 0) {
                    i9 = parseInt;
                }
            } catch (NumberFormatException unused) {
            }
            str = substring;
        }
        return new k(str, i9);
    }

    public static InetSocketAddress d(String str, int i9) {
        k b10 = b(str, i9);
        return new InetSocketAddress(b10.c(), b10.a());
    }

    public int a() {
        return this.f36936b;
    }

    public String c() {
        return this.f36935a;
    }

    public String toString() {
        if (this.f36936b > 0) {
            return this.f36935a + CertificateUtil.DELIMITER + this.f36936b;
        }
        return this.f36935a;
    }
}

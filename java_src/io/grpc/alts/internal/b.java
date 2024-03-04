package io.grpc.alts.internal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes5.dex */
final class b implements a {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f41837c = Logger.getLogger(b.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static final Provider f41838d = e();

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f41839a;

    /* renamed from: b  reason: collision with root package name */
    private final Cipher f41840b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(byte[] bArr) throws GeneralSecurityException {
        com.google.common.base.o.d(bArr.length == 16);
        this.f41839a = bArr;
        Provider provider = f41838d;
        if (provider != null) {
            this.f41840b = Cipher.getInstance("AES/GCM/NoPadding", provider);
        } else {
            this.f41840b = Cipher.getInstance("AES/GCM/NoPadding");
        }
    }

    private void c(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, byte[] bArr) throws GeneralSecurityException {
        com.google.common.base.o.d(bArr.length == 12);
        this.f41840b.init(2, new SecretKeySpec(this.f41839a, "AES"), new GCMParameterSpec(128, bArr));
        if (byteBuffer3 != null) {
            this.f41840b.updateAAD(byteBuffer3);
        }
        this.f41840b.doFinal(byteBuffer2, byteBuffer);
    }

    private int d(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, byte[] bArr) throws GeneralSecurityException {
        com.google.common.base.o.d(bArr.length == 12);
        this.f41840b.init(1, new SecretKeySpec(this.f41839a, "AES"), new GCMParameterSpec(128, bArr));
        if (byteBuffer3 != null) {
            this.f41840b.updateAAD(byteBuffer3);
        }
        return this.f41840b.doFinal(byteBuffer2, byteBuffer);
    }

    static Provider e() {
        if (io.grpc.internal.w.b()) {
            try {
                Provider c10 = io.grpc.internal.w.c();
                try {
                    Cipher.getInstance("AES/GCM/NoPadding", c10);
                    return c10;
                } catch (SecurityException e10) {
                    f41837c.log(Level.WARNING, "Could not load Conscrypt. Will try slower JDK implementation. This may be because the JDK is older than Java 7 update 121 or Java 8 update 111. If so, please update", (Throwable) e10);
                    return null;
                } catch (Throwable th2) {
                    f41837c.log(Level.INFO, "Could not load Conscrypt. Will use slower JDK implementation", th2);
                    return null;
                }
            } catch (Throwable th3) {
                f41837c.log(Level.INFO, "Could not load Conscrypt. Will use slower JDK implementation", th3);
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f() {
        return 16;
    }

    @Override // io.grpc.alts.internal.a
    public void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, byte[] bArr) throws GeneralSecurityException {
        d(byteBuffer, byteBuffer2, null, bArr);
    }

    @Override // io.grpc.alts.internal.a
    public void b(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, byte[] bArr) throws GeneralSecurityException {
        c(byteBuffer, byteBuffer2, null, bArr);
    }
}

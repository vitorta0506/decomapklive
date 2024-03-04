package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.KeyException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class g1 {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44562a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(g1.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f44563b = Pattern.compile("-+BEGIN\\s+.*CERTIFICATE[^-]*-+(?:\\s|\\r|\\n)+([a-z0-9+/=\\r\\n]+)-+END\\s+.*CERTIFICATE[^-]*-+", 2);

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f44564c = Pattern.compile("-+BEGIN\\s+.*PRIVATE\\s+KEY[^-]*-+(?:\\s|\\r|\\n)+([a-z0-9+/=\\r\\n]+)-+END\\s+.*PRIVATE\\s+KEY[^-]*-+", 2);

    private g1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static kg.j[] a(InputStream inputStream) throws CertificateException {
        try {
            String b10 = b(inputStream);
            ArrayList arrayList = new ArrayList();
            Matcher matcher = f44563b.matcher(b10);
            for (int i9 = 0; matcher.find(i9); i9 = matcher.end()) {
                kg.j c10 = kg.s0.c(matcher.group(1), io.grpc.netty.shaded.io.netty.util.h.f45018f);
                kg.j e10 = io.grpc.netty.shaded.io.netty.handler.codec.base64.a.e(c10);
                c10.release();
                arrayList.add(e10);
            }
            if (!arrayList.isEmpty()) {
                return (kg.j[]) arrayList.toArray(new kg.j[0]);
            }
            throw new CertificateException("found no certificates in input stream");
        } catch (IOException e11) {
            throw new CertificateException("failed to read certificate input stream", e11);
        }
    }

    private static String b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr);
                if (read < 0) {
                    return byteArrayOutputStream.toString(io.grpc.netty.shaded.io.netty.util.h.f45018f.name());
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } finally {
            d(byteArrayOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static kg.j c(InputStream inputStream) throws KeyException {
        try {
            Matcher matcher = f44564c.matcher(b(inputStream));
            if (matcher.find()) {
                kg.j c10 = kg.s0.c(matcher.group(1), io.grpc.netty.shaded.io.netty.util.h.f45018f);
                kg.j e10 = io.grpc.netty.shaded.io.netty.handler.codec.base64.a.e(c10);
                c10.release();
                return e10;
            }
            throw new KeyException("could not find a PKCS #8 private key in input stream (see https://netty.io/wiki/sslcontextbuilder-and-private-key.html for more information)");
        } catch (IOException e11) {
            throw new KeyException("failed to read key input stream", e11);
        }
    }

    private static void d(OutputStream outputStream) {
        try {
            outputStream.close();
        } catch (IOException e10) {
            f44562a.warn("Failed to close a stream.", (Throwable) e10);
        }
    }
}

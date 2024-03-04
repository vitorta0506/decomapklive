package com.google.api.gax.rpc.mtls;

import com.facebook.internal.ServerProtocol;
import com.google.api.client.util.a0;
import com.google.common.collect.ImmutableList;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import m5.l0;
/* loaded from: classes2.dex */
public class MtlsProvider {

    /* renamed from: d  reason: collision with root package name */
    private static final String f11340d = System.getProperty("user.home") + "/.secureConnect/context_aware_metadata.json";

    /* renamed from: a  reason: collision with root package name */
    private String f11341a;

    /* renamed from: b  reason: collision with root package name */
    private p5.b f11342b;

    /* renamed from: c  reason: collision with root package name */
    private b f11343c;

    /* loaded from: classes2.dex */
    public enum MtlsEndpointUsagePolicy {
        NEVER,
        AUTO,
        ALWAYS
    }

    /* loaded from: classes2.dex */
    static class a implements b {
        a() {
        }

        @Override // com.google.api.gax.rpc.mtls.MtlsProvider.b
        public Process a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            return new ProcessBuilder(MtlsProvider.a(inputStream)).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface b {
        Process a(InputStream inputStream) throws IOException;
    }

    MtlsProvider(p5.b bVar, b bVar2, String str) {
        this.f11342b = bVar;
        this.f11343c = bVar2;
        this.f11341a = str;
    }

    static ImmutableList<String> a(InputStream inputStream) throws IOException {
        return ((q5.a) new h5.a().b(inputStream).y(q5.a.class)).j();
    }

    static KeyStore c(InputStream inputStream, b bVar) throws IOException, InterruptedException, GeneralSecurityException {
        Process a10 = bVar.a(inputStream);
        int e10 = e(a10, 1000L);
        if (e10 == 0) {
            return a0.a(a10.getInputStream());
        }
        throw new IOException("Cert provider command failed with exit code: " + e10);
    }

    static int e(Process process, long j10) throws IOException, InterruptedException {
        long currentTimeMillis = System.currentTimeMillis();
        while (j10 > 0) {
            Thread.sleep(Math.min(1 + j10, 100L));
            j10 -= System.currentTimeMillis() - currentTimeMillis;
            try {
                return process.exitValue();
            } catch (IllegalThreadStateException unused) {
            }
        }
        process.destroy();
        throw new IOException("cert provider command timed out");
    }

    public KeyStore b() throws IOException {
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(this.f11341a);
                try {
                    KeyStore c10 = c(fileInputStream, this.f11343c);
                    fileInputStream.close();
                    return c10;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
            } catch (FileNotFoundException | GeneralSecurityException unused) {
                return null;
            }
        } catch (InterruptedException e10) {
            throw new IOException("Interrupted executing certificate provider command", e10);
        }
    }

    public MtlsEndpointUsagePolicy d() {
        String a10 = this.f11342b.a("GOOGLE_API_USE_MTLS_ENDPOINT");
        if ("never".equals(a10)) {
            return MtlsEndpointUsagePolicy.NEVER;
        }
        if ("always".equals(a10)) {
            return MtlsEndpointUsagePolicy.ALWAYS;
        }
        return MtlsEndpointUsagePolicy.AUTO;
    }

    public boolean f() {
        return ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(this.f11342b.a("GOOGLE_API_USE_CLIENT_CERTIFICATE"));
    }

    public MtlsProvider() {
        this(l0.f54869a, new a(), f11340d);
    }
}

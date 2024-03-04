package com.meizu.cloud.pushsdk.c.g;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Logger;
/* loaded from: classes4.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f28485a = Logger.getLogger(g.class.getName());

    private g() {
    }

    public static c a(l lVar) {
        if (lVar != null) {
            return new h(lVar);
        }
        throw new IllegalArgumentException("sink == null");
    }

    public static d a(m mVar) {
        if (mVar != null) {
            return new i(mVar);
        }
        throw new IllegalArgumentException("source == null");
    }

    public static l a(OutputStream outputStream) {
        return a(outputStream, new n());
    }

    private static l a(final OutputStream outputStream, final n nVar) {
        if (outputStream != null) {
            if (nVar != null) {
                return new l() { // from class: com.meizu.cloud.pushsdk.c.g.g.1
                    @Override // com.meizu.cloud.pushsdk.c.g.l
                    public void a(b bVar, long j10) throws IOException {
                        o.a(bVar.f28477b, 0L, j10);
                        while (j10 > 0) {
                            n.this.a();
                            j jVar = bVar.f28476a;
                            int min = (int) Math.min(j10, jVar.f28499c - jVar.f28498b);
                            outputStream.write(jVar.f28497a, jVar.f28498b, min);
                            int i9 = jVar.f28498b + min;
                            jVar.f28498b = i9;
                            long j11 = min;
                            j10 -= j11;
                            bVar.f28477b -= j11;
                            if (i9 == jVar.f28499c) {
                                bVar.f28476a = jVar.a();
                                k.a(jVar);
                            }
                        }
                    }

                    @Override // com.meizu.cloud.pushsdk.c.g.l, java.io.Closeable, java.lang.AutoCloseable, com.meizu.cloud.pushsdk.c.g.m
                    public void close() throws IOException {
                        outputStream.close();
                    }

                    @Override // com.meizu.cloud.pushsdk.c.g.l, java.io.Flushable
                    public void flush() throws IOException {
                        outputStream.flush();
                    }

                    public String toString() {
                        return "sink(" + outputStream + ")";
                    }
                };
            }
            throw new IllegalArgumentException("timeout == null");
        }
        throw new IllegalArgumentException("out == null");
    }

    public static m a(File file) throws FileNotFoundException {
        if (file != null) {
            return a(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static m a(InputStream inputStream) {
        return a(inputStream, new n());
    }

    private static m a(final InputStream inputStream, final n nVar) {
        if (inputStream != null) {
            if (nVar != null) {
                return new m() { // from class: com.meizu.cloud.pushsdk.c.g.g.2
                    @Override // com.meizu.cloud.pushsdk.c.g.m
                    public long b(b bVar, long j10) throws IOException {
                        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                        if (i9 < 0) {
                            throw new IllegalArgumentException("byteCount < 0: " + j10);
                        } else if (i9 == 0) {
                            return 0L;
                        } else {
                            n.this.a();
                            j c10 = bVar.c(1);
                            int read = inputStream.read(c10.f28497a, c10.f28499c, (int) Math.min(j10, 2048 - c10.f28499c));
                            if (read == -1) {
                                return -1L;
                            }
                            c10.f28499c += read;
                            long j11 = read;
                            bVar.f28477b += j11;
                            return j11;
                        }
                    }

                    @Override // com.meizu.cloud.pushsdk.c.g.m, java.lang.AutoCloseable
                    public void close() throws IOException {
                        inputStream.close();
                    }

                    public String toString() {
                        return "source(" + inputStream + ")";
                    }
                };
            }
            throw new IllegalArgumentException("timeout == null");
        }
        throw new IllegalArgumentException("in == null");
    }
}

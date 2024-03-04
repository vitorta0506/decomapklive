package com.meizu.cloud.pushsdk.c.c;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes4.dex */
public abstract class j {
    public static j a(final g gVar, final File file) {
        Objects.requireNonNull(file, "content == null");
        return new j() { // from class: com.meizu.cloud.pushsdk.c.c.j.2
            @Override // com.meizu.cloud.pushsdk.c.c.j
            public g a() {
                return g.this;
            }

            @Override // com.meizu.cloud.pushsdk.c.c.j
            public void a(com.meizu.cloud.pushsdk.c.g.c cVar) throws IOException {
                com.meizu.cloud.pushsdk.c.g.m mVar = null;
                try {
                    mVar = com.meizu.cloud.pushsdk.c.g.g.a(file);
                    cVar.a(mVar);
                } finally {
                    m.a(mVar);
                }
            }

            @Override // com.meizu.cloud.pushsdk.c.c.j
            public long b() {
                return file.length();
            }
        };
    }

    public static j a(g gVar, String str) {
        Charset charset = m.f28460c;
        if (gVar != null) {
            Charset b10 = gVar.b();
            if (b10 == null) {
                gVar = g.a(gVar + "; charset=utf-8");
            } else {
                charset = b10;
            }
        }
        return a(gVar, str.getBytes(charset));
    }

    public static j a(g gVar, byte[] bArr) {
        return a(gVar, bArr, 0, bArr.length);
    }

    public static j a(final g gVar, final byte[] bArr, final int i9, final int i10) {
        Objects.requireNonNull(bArr, "content == null");
        m.a(bArr.length, i9, i10);
        return new j() { // from class: com.meizu.cloud.pushsdk.c.c.j.1
            @Override // com.meizu.cloud.pushsdk.c.c.j
            public g a() {
                return g.this;
            }

            @Override // com.meizu.cloud.pushsdk.c.c.j
            public void a(com.meizu.cloud.pushsdk.c.g.c cVar) throws IOException {
                cVar.c(bArr, i9, i10);
            }

            @Override // com.meizu.cloud.pushsdk.c.c.j
            public long b() {
                return i10;
            }
        };
    }

    public abstract g a();

    public abstract void a(com.meizu.cloud.pushsdk.c.g.c cVar) throws IOException;

    public long b() throws IOException {
        return -1L;
    }
}

package com.google.common.io;

import com.google.common.base.o;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public abstract class b {

    /* loaded from: classes2.dex */
    class a extends d {

        /* renamed from: a  reason: collision with root package name */
        final Charset f13572a;

        a(Charset charset) {
            this.f13572a = (Charset) o.s(charset);
        }

        @Override // com.google.common.io.d
        public Reader b() throws IOException {
            return new InputStreamReader(b.this.b(), this.f13572a);
        }

        public String toString() {
            String obj = b.this.toString();
            String valueOf = String.valueOf(this.f13572a);
            StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 15 + valueOf.length());
            sb2.append(obj);
            sb2.append(".asCharSource(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public d a(Charset charset) {
        return new a(charset);
    }

    public abstract InputStream b() throws IOException;
}

package com.google.common.io;

import com.google.common.base.o;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final w5.a<File> f13582a = new a();

    /* loaded from: classes2.dex */
    class a implements w5.a<File> {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b extends com.google.common.io.b {

        /* renamed from: a  reason: collision with root package name */
        private final File f13583a;

        /* synthetic */ b(File file, h hVar) {
            this(file);
        }

        @Override // com.google.common.io.b
        /* renamed from: c */
        public FileInputStream b() throws IOException {
            return new FileInputStream(this.f13583a);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f13583a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 20);
            sb2.append("Files.asByteSource(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        private b(File file) {
            this.f13583a = (File) o.s(file);
        }
    }

    public static com.google.common.io.b a(File file) {
        return new b(file, null);
    }

    public static d b(File file, Charset charset) {
        return a(file).a(charset);
    }
}

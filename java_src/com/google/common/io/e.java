package com.google.common.io;

import com.google.common.base.o;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.CharBuffer;
/* loaded from: classes2.dex */
public final class e {
    public static Writer a(Appendable appendable) {
        if (appendable instanceof Writer) {
            return (Writer) appendable;
        }
        return new a(appendable);
    }

    public static long b(Readable readable, Appendable appendable) throws IOException {
        if (readable instanceof Reader) {
            if (appendable instanceof StringBuilder) {
                return c((Reader) readable, (StringBuilder) appendable);
            }
            return d((Reader) readable, a(appendable));
        }
        o.s(readable);
        o.s(appendable);
        long j10 = 0;
        CharBuffer e10 = e();
        while (readable.read(e10) != -1) {
            j.b(e10);
            appendable.append(e10);
            j10 += e10.remaining();
            j.a(e10);
        }
        return j10;
    }

    static long c(Reader reader, StringBuilder sb2) throws IOException {
        o.s(reader);
        o.s(sb2);
        char[] cArr = new char[2048];
        long j10 = 0;
        while (true) {
            int read = reader.read(cArr);
            if (read == -1) {
                return j10;
            }
            sb2.append(cArr, 0, read);
            j10 += read;
        }
    }

    static long d(Reader reader, Writer writer) throws IOException {
        o.s(reader);
        o.s(writer);
        char[] cArr = new char[2048];
        long j10 = 0;
        while (true) {
            int read = reader.read(cArr);
            if (read == -1) {
                return j10;
            }
            writer.write(cArr, 0, read);
            j10 += read;
        }
    }

    static CharBuffer e() {
        return CharBuffer.allocate(2048);
    }

    public static String f(Readable readable) throws IOException {
        return g(readable).toString();
    }

    private static StringBuilder g(Readable readable) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (readable instanceof Reader) {
            c((Reader) readable, sb2);
        } else {
            b(readable, sb2);
        }
        return sb2;
    }
}

package com.google.common.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
/* loaded from: classes2.dex */
public abstract class d {
    public BufferedReader a() throws IOException {
        Reader b10 = b();
        if (b10 instanceof BufferedReader) {
            return (BufferedReader) b10;
        }
        return new BufferedReader(b10);
    }

    public abstract Reader b() throws IOException;

    public String c() throws IOException {
        try {
            return ((BufferedReader) g.a().b(a())).readLine();
        } finally {
        }
    }
}

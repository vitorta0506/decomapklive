package com.meizu.cloud.pushsdk.c.g;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
/* loaded from: classes4.dex */
public interface l extends Closeable, Flushable {
    void a(b bVar, long j10) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable, com.meizu.cloud.pushsdk.c.g.m
    void close() throws IOException;

    void flush() throws IOException;
}

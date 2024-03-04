package com.meizu.cloud.pushsdk.c.g;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes4.dex */
public interface m extends Closeable {
    long b(b bVar, long j10) throws IOException;

    @Override // java.lang.AutoCloseable, com.meizu.cloud.pushsdk.c.g.m
    void close() throws IOException;
}

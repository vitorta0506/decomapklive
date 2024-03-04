package com.google.android.play.core.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public abstract class e1 implements Closeable {
    public abstract long a();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract InputStream b(long j10, long j11) throws IOException;

    public final synchronized InputStream c() throws IOException {
        return b(0L, a());
    }
}

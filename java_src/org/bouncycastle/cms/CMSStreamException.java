package org.bouncycastle.cms;

import java.io.IOException;
/* loaded from: classes7.dex */
public class CMSStreamException extends IOException {
    private final Throwable underlying;

    CMSStreamException(String str) {
        super(str);
        this.underlying = null;
    }

    CMSStreamException(String str, Throwable th2) {
        super(str);
        this.underlying = th2;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.underlying;
    }
}

package org.bouncycastle.cms;
/* loaded from: classes7.dex */
public class CMSRuntimeException extends RuntimeException {

    /* renamed from: e  reason: collision with root package name */
    Exception f56010e;

    public CMSRuntimeException(String str) {
        super(str);
    }

    public CMSRuntimeException(String str, Exception exc) {
        super(str);
        this.f56010e = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f56010e;
    }

    public Exception getUnderlyingException() {
        return this.f56010e;
    }
}

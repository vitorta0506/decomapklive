package org.bouncycastle.cms;
/* loaded from: classes7.dex */
public class CMSException extends Exception {

    /* renamed from: e  reason: collision with root package name */
    Exception f56009e;

    public CMSException(String str) {
        super(str);
    }

    public CMSException(String str, Exception exc) {
        super(str);
        this.f56009e = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f56009e;
    }

    public Exception getUnderlyingException() {
        return this.f56009e;
    }
}

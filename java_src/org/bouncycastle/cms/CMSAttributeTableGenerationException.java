package org.bouncycastle.cms;
/* loaded from: classes7.dex */
public class CMSAttributeTableGenerationException extends CMSRuntimeException {

    /* renamed from: e  reason: collision with root package name */
    Exception f56008e;

    public CMSAttributeTableGenerationException(String str) {
        super(str);
    }

    public CMSAttributeTableGenerationException(String str, Exception exc) {
        super(str);
        this.f56008e = exc;
    }

    @Override // org.bouncycastle.cms.CMSRuntimeException, java.lang.Throwable
    public Throwable getCause() {
        return this.f56008e;
    }

    @Override // org.bouncycastle.cms.CMSRuntimeException
    public Exception getUnderlyingException() {
        return this.f56008e;
    }
}

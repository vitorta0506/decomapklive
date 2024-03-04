package org.apache.commons.logging;

import com.facebook.internal.security.CertificateUtil;
import java.io.IOException;
import java.security.PrivilegedAction;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class e implements PrivilegedAction {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ClassLoader f55854a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f55855b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(ClassLoader classLoader, String str) {
        this.f55854a = classLoader;
        this.f55855b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        try {
            ClassLoader classLoader = this.f55854a;
            if (classLoader != null) {
                return classLoader.getResources(this.f55855b);
            }
            return ClassLoader.getSystemResources(this.f55855b);
        } catch (IOException e10) {
            if (h.u()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Exception while trying to find configuration file ");
                stringBuffer.append(this.f55855b);
                stringBuffer.append(CertificateUtil.DELIMITER);
                stringBuffer.append(e10.getMessage());
                h.w(stringBuffer.toString());
            }
            return null;
        } catch (NoSuchMethodError unused) {
            return null;
        }
    }
}

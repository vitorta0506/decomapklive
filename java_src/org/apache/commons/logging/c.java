package org.apache.commons.logging;

import java.security.PrivilegedAction;
/* loaded from: classes7.dex */
final class c implements PrivilegedAction {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f55850a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ClassLoader f55851b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, ClassLoader classLoader) {
        this.f55850a = str;
        this.f55851b = classLoader;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return h.d(this.f55850a, this.f55851b);
    }
}

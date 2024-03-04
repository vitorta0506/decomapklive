package org.apache.commons.logging;

import java.security.PrivilegedAction;
/* loaded from: classes7.dex */
final class d implements PrivilegedAction {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ClassLoader f55852a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f55853b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(ClassLoader classLoader, String str) {
        this.f55852a = classLoader;
        this.f55853b = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader classLoader = this.f55852a;
        if (classLoader != null) {
            return classLoader.getResourceAsStream(this.f55853b);
        }
        return ClassLoader.getSystemResourceAsStream(this.f55853b);
    }
}

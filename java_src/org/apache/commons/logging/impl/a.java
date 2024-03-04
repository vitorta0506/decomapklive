package org.apache.commons.logging.impl;

import java.security.PrivilegedAction;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class a implements PrivilegedAction {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f55870a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str) {
        this.f55870a = str;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        ClassLoader contextClassLoader;
        contextClassLoader = SimpleLog.getContextClassLoader();
        if (contextClassLoader != null) {
            return contextClassLoader.getResourceAsStream(this.f55870a);
        }
        return ClassLoader.getSystemResourceAsStream(this.f55870a);
    }
}

package org.apache.commons.logging;

import java.security.PrivilegedAction;
/* loaded from: classes7.dex */
final class g implements PrivilegedAction {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f55857a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f55858b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(String str, String str2) {
        this.f55857a = str;
        this.f55858b = str2;
    }

    @Override // java.security.PrivilegedAction
    public Object run() {
        return System.getProperty(this.f55857a, this.f55858b);
    }
}

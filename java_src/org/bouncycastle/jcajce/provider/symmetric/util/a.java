package org.bouncycastle.jcajce.provider.symmetric.util;

import java.security.AccessController;
import java.security.PrivilegedAction;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static class C0592a implements PrivilegedAction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56084a;

        C0592a(String str) {
            this.f56084a = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return Class.forName(this.f56084a);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static Class a(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new C0592a(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}

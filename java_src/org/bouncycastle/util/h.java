package org.bouncycastle.util;

import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Security;
import java.util.Map;
/* loaded from: classes7.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal f56276a = new ThreadLocal();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a implements PrivilegedAction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56277a;

        a(String str) {
            this.f56277a = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return Security.getProperty(this.f56277a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class b implements PrivilegedAction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56278a;

        b(String str) {
            this.f56278a = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            return System.getProperty(this.f56278a);
        }
    }

    public static String a(String str) {
        String str2;
        String str3 = (String) AccessController.doPrivileged(new a(str));
        if (str3 != null) {
            return str3;
        }
        Map map = (Map) f56276a.get();
        return (map == null || (str2 = (String) map.get(str)) == null) ? (String) AccessController.doPrivileged(new b(str)) : str2;
    }

    public static boolean b(String str) {
        try {
            return c(a(str));
        } catch (AccessControlException unused) {
            return false;
        }
    }

    private static boolean c(String str) {
        if (str == null || str.length() != 4) {
            return false;
        }
        if (str.charAt(0) == 't' || str.charAt(0) == 'T') {
            if (str.charAt(1) == 'r' || str.charAt(1) == 'R') {
                if (str.charAt(2) == 'u' || str.charAt(2) == 'U') {
                    return str.charAt(3) == 'e' || str.charAt(3) == 'E';
                }
                return false;
            }
            return false;
        }
        return false;
    }
}

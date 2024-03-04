package org.conscrypt;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.conscrypt.p;
/* loaded from: classes7.dex */
final class o {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class a implements Comparator<p.c> {

        /* renamed from: a  reason: collision with root package name */
        static final a f56395a = new a();

        private a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(p.c cVar, p.c cVar2) {
            Throwable th2 = cVar.f56409e;
            Throwable th3 = cVar2.f56409e;
            boolean z10 = th2 instanceof UnsatisfiedLinkError;
            boolean z11 = th3 instanceof UnsatisfiedLinkError;
            if (z10 != z11) {
                return (z11 ? 1 : 0) - (z10 ? 1 : 0);
            }
            String message = th2.getMessage();
            String message2 = th3.getMessage();
            int i9 = 0;
            return ((message2 == null || !message2.contains("java.library.path")) ? 1 : 1) - ((message == null || !message.contains("java.library.path")) ? 1 : 0);
        }
    }

    private static String a() {
        return n.f56368c.a();
    }

    private static ClassLoader b() {
        return NativeCrypto.class.getClassLoader();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() throws UnsatisfiedLinkError {
        ArrayList arrayList = new ArrayList();
        if (p.i(b(), arrayList, f(), "conscrypt_openjdk_jni", "conscrypt")) {
            return;
        }
        d(arrayList);
        g(arrayList);
    }

    private static void d(List<p.c> list) {
        for (p.c cVar : list) {
            cVar.c();
        }
    }

    private static String e() {
        return n.f56367b.a();
    }

    private static String f() {
        return "conscrypt_openjdk_jni-" + e() + '-' + a();
    }

    private static void g(List<p.c> list) {
        Collections.sort(list, a.f56395a);
        Throwable th2 = list.get(0).f56409e;
        for (p.c cVar : list.subList(1, list.size())) {
            th2.addSuppressed(cVar.f56409e);
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        throw ((Error) new UnsatisfiedLinkError(th2.getMessage()).initCause(th2));
    }
}

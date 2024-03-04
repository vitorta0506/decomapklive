package io.grpc.netty.shaded.io.netty.internal.tcnative;

import io.jsonwebtoken.JwtParser;
/* loaded from: classes5.dex */
public final class Library {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f44932a = {"netty_tcnative", "libnetty_tcnative"};

    /* renamed from: b  reason: collision with root package name */
    private static Library f44933b = null;

    static {
        e(ClassLoader.getSystemClassLoader(), Exception.class, NullPointerException.class, IllegalArgumentException.class, OutOfMemoryError.class, String.class, byte[].class, f.class, b.class, CertificateCallback.class, e.class, d.class, c.class);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
        if (r4 == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006a, code lost:
        throw new java.lang.UnsatisfiedLinkError(r1.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private Library() throws java.lang.Exception {
        /*
            r10 = this;
            r10.<init>()
            java.lang.String r0 = "java.library.path"
            java.lang.String r0 = java.lang.System.getProperty(r0)
            java.lang.String r1 = java.io.File.pathSeparator
            java.lang.String[] r0 = r0.split(r1)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 0
            r3 = 0
            r4 = 0
        L17:
            java.lang.String[] r5 = io.grpc.netty.shaded.io.netty.internal.tcnative.Library.f44932a
            int r6 = r5.length
            if (r3 >= r6) goto L5e
            r5 = r5[r3]     // Catch: java.lang.Throwable -> L23 java.lang.VirtualMachineError -> L5a java.lang.ThreadDeath -> L5c
            c(r5)     // Catch: java.lang.Throwable -> L23 java.lang.VirtualMachineError -> L5a java.lang.ThreadDeath -> L5c
            r4 = 1
            goto L54
        L23:
            r5 = move-exception
            java.lang.String[] r6 = io.grpc.netty.shaded.io.netty.internal.tcnative.Library.f44932a
            r6 = r6[r3]
            java.lang.String r6 = java.lang.System.mapLibraryName(r6)
            r7 = 0
        L2d:
            int r8 = r0.length
            if (r7 >= r8) goto L46
            java.io.File r8 = new java.io.File
            r9 = r0[r7]
            r8.<init>(r9, r6)
            boolean r8 = r8.exists()
            if (r8 != 0) goto L40
            int r7 = r7 + 1
            goto L2d
        L40:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>(r5)
            throw r0
        L46:
            if (r3 <= 0) goto L4d
            java.lang.String r6 = ", "
            r1.append(r6)
        L4d:
            java.lang.String r5 = r5.getMessage()
            r1.append(r5)
        L54:
            if (r4 == 0) goto L57
            goto L5e
        L57:
            int r3 = r3 + 1
            goto L17
        L5a:
            r0 = move-exception
            throw r0
        L5c:
            r0 = move-exception
            throw r0
        L5e:
            if (r4 == 0) goto L61
            return
        L61:
            java.lang.UnsatisfiedLinkError r0 = new java.lang.UnsatisfiedLinkError
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.internal.tcnative.Library.<init>():void");
    }

    private static String a() {
        String name = Library.class.getName();
        String replace = "io!netty!internal!tcnative!Library".replace('!', (char) JwtParser.SEPARATOR_CHAR);
        if (name.endsWith(replace)) {
            return name.substring(0, name.length() - replace.length());
        }
        throw new UnsatisfiedLinkError(String.format("Could not find prefix added to %s to get %s. When shading, only adding a package prefix is supported", replace, name));
    }

    private static native boolean aprHasThreads();

    private static native int aprMajorVersion();

    private static native String aprVersionString();

    public static boolean b(String str, String str2) throws Exception {
        if (f44933b == null) {
            f44933b = str == null ? new Library() : new Library(str);
            if (aprMajorVersion() >= 1) {
                if (!aprHasThreads()) {
                    throw new UnsatisfiedLinkError("Missing APR_HAS_THREADS");
                }
            } else {
                throw new UnsatisfiedLinkError("Unsupported APR Version (" + aprVersionString() + ")");
            }
        }
        return initialize0() && SSL.initialize(str2) == 0;
    }

    private static void c(String str) {
        System.loadLibrary(a().replace(JwtParser.SEPARATOR_CHAR, '_') + str);
    }

    private static void d(ClassLoader classLoader, String str) {
        try {
            Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException | SecurityException unused) {
        }
    }

    private static void e(ClassLoader classLoader, Class<?>... clsArr) {
        for (Class<?> cls : clsArr) {
            d(classLoader, cls.getName());
        }
    }

    private static native boolean initialize0();

    private Library(String str) {
        if ("provided".equals(str)) {
            return;
        }
        c(str);
    }
}

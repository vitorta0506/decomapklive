package io.grpc.netty.shaded.io.netty.util.internal;

import io.jsonwebtoken.JwtParser;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.PosixFilePermission;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Enumeration;
import java.util.Set;
/* loaded from: classes5.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45112a;

    /* renamed from: b  reason: collision with root package name */
    private static final File f45113b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f45114c;

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f45115d;

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f45116e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a implements PrivilegedAction<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f45117a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f45118b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f45119c;

        a(Class cls, String str, boolean z10) {
            this.f45117a = cls;
            this.f45118b = str;
            this.f45119c = z10;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                Method method = this.f45117a.getMethod("loadLibrary", String.class, Boolean.TYPE);
                method.setAccessible(true);
                return method.invoke(null, this.f45118b, Boolean.valueOf(this.f45119c));
            } catch (Exception e10) {
                return e10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b implements PrivilegedAction<Class<?>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ClassLoader f45120a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f45121b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ byte[] f45122c;

        b(ClassLoader classLoader, Class cls, byte[] bArr) {
            this.f45120a = classLoader;
            this.f45121b = cls;
            this.f45122c = bArr;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public Class<?> run() {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = ClassLoader.class.getDeclaredMethod("defineClass", String.class, byte[].class, cls, cls);
                declaredMethod.setAccessible(true);
                return (Class) declaredMethod.invoke(this.f45120a, this.f45121b.getName(), this.f45122c, 0, Integer.valueOf(this.f45122c.length));
            } catch (Exception e10) {
                throw new IllegalStateException("Define class failed!", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {
        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(File file) throws IOException {
            if (t.l0() >= 7 && !file.canExecute()) {
                Set<PosixFilePermission> posixFilePermissions = Files.getPosixFilePermissions(file.toPath(), new LinkOption[0]);
                EnumSet of2 = EnumSet.of(PosixFilePermission.OWNER_EXECUTE, PosixFilePermission.GROUP_EXECUTE, PosixFilePermission.OTHERS_EXECUTE);
                if (posixFilePermissions.containsAll(of2)) {
                    return false;
                }
                EnumSet copyOf = EnumSet.copyOf((Collection) posixFilePermissions);
                copyOf.addAll(of2);
                Files.setPosixFilePermissions(file.toPath(), copyOf);
                return file.canExecute();
            }
            return true;
        }
    }

    static {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(p.class);
        f45112a = b10;
        f45116e = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".getBytes(io.grpc.netty.shaded.io.netty.util.h.f45018f);
        String b11 = c0.b("io.grpc.netty.shaded.io.netty.native.workdir");
        if (b11 != null) {
            File file = new File(b11);
            file.mkdirs();
            try {
                file = file.getAbsoluteFile();
            } catch (Exception unused) {
            }
            f45113b = file;
            io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = f45112a;
            bVar.debug("-Dio.netty.native.workdir: " + file);
        } else {
            File T0 = t.T0();
            f45113b = T0;
            b10.debug("-Dio.netty.native.workdir: " + T0 + " (io.netty.tmpdir)");
        }
        boolean d10 = c0.d("io.grpc.netty.shaded.io.netty.native.deleteLibAfterLoading", true);
        f45114c = d10;
        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar2 = f45112a;
        bVar2.debug("-Dio.netty.native.deleteLibAfterLoading: {}", Boolean.valueOf(d10));
        boolean d11 = c0.d("io.grpc.netty.shaded.io.netty.native.tryPatchShadedId", true);
        f45115d = d11;
        bVar2.debug("-Dio.netty.native.tryPatchShadedId: {}", Boolean.valueOf(d11));
    }

    private p() {
    }

    private static String a() {
        String name = p.class.getName();
        String replace = "io!netty!util!internal!NativeLibraryLoader".replace('!', (char) JwtParser.SEPARATOR_CHAR);
        if (name.endsWith(replace)) {
            return name.substring(0, name.length() - replace.length());
        }
        throw new UnsatisfiedLinkError(String.format("Could not find prefix added to %s to get %s. When shading, only adding a package prefix is supported", replace, name));
    }

    private static byte[] b(Class<?> cls) throws ClassNotFoundException {
        String name = cls.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf > 0) {
            name = name.substring(lastIndexOf + 1);
        }
        URL resource = cls.getResource(name + ".class");
        if (resource != null) {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
            InputStream inputStream = null;
            try {
                try {
                    inputStream = resource.openStream();
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read != -1) {
                            byteArrayOutputStream.write(bArr, 0, read);
                        } else {
                            return byteArrayOutputStream.toByteArray();
                        }
                    }
                } catch (IOException e10) {
                    throw new ClassNotFoundException(cls.getName(), e10);
                }
            } finally {
                c(inputStream);
                c(byteArrayOutputStream);
            }
        } else {
            throw new ClassNotFoundException(cls.getName());
        }
    }

    private static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static byte[] d(int i9) {
        byte[] bArr = new byte[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            byte[] bArr2 = f45116e;
            bArr[i10] = bArr2[t.Q0().nextInt(bArr2.length)];
        }
        return bArr;
    }

    private static URL e(String str, ClassLoader classLoader) {
        Enumeration<URL> resources;
        try {
            if (classLoader == null) {
                resources = ClassLoader.getSystemResources(str);
            } else {
                resources = classLoader.getResources(str);
            }
            ArrayList list = Collections.list(resources);
            int size = list.size();
            if (size != 0) {
                if (size == 1) {
                    return (URL) list.get(0);
                }
                throw new IllegalStateException("Multiple resources found for '" + str + "': " + list);
            }
            return null;
        } catch (IOException e10) {
            throw new RuntimeException("An error occurred while getting the resources for " + str, e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0132 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void f(java.lang.String r10, java.lang.ClassLoader r11) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.internal.p.f(java.lang.String, java.lang.ClassLoader):void");
    }

    public static void g(ClassLoader classLoader, String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            try {
                f(str, classLoader);
                f45112a.debug("Loaded library with name '{}'", str);
                return;
            } catch (Throwable th2) {
                arrayList.add(th2);
            }
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Failed to load any of the given libraries: " + Arrays.toString(strArr));
        e0.c(illegalArgumentException, arrayList);
        throw illegalArgumentException;
    }

    private static void h(ClassLoader classLoader, String str, boolean z10) {
        try {
            try {
                i(n(classLoader, q.class), str, z10);
                f45112a.debug("Successfully loaded the library {}", str);
            } catch (NoSuchMethodError e10) {
                if (0 != 0) {
                    e0.a(e10, null);
                }
                j(str, e10);
            }
        } catch (Exception | UnsatisfiedLinkError e11) {
            try {
                q.a(str, z10);
                f45112a.debug("Successfully loaded the library {}", str);
            } catch (UnsatisfiedLinkError e12) {
                e0.a(e12, e11);
                throw e12;
            }
        }
    }

    private static void i(Class<?> cls, String str, boolean z10) throws UnsatisfiedLinkError {
        Object doPrivileged = AccessController.doPrivileged(new a(cls, str, z10));
        if (doPrivileged instanceof Throwable) {
            Throwable th2 = (Throwable) doPrivileged;
            Throwable cause = th2.getCause();
            if (cause instanceof UnsatisfiedLinkError) {
                throw ((UnsatisfiedLinkError) cause);
            }
            UnsatisfiedLinkError unsatisfiedLinkError = new UnsatisfiedLinkError(th2.getMessage());
            unsatisfiedLinkError.initCause(th2);
            throw unsatisfiedLinkError;
        }
    }

    private static void j(String str, NoSuchMethodError noSuchMethodError) {
        if (t.l0() >= 7) {
            throw new LinkageError("Possible multiple incompatible native libraries on the classpath for '" + str + "'?", noSuchMethodError);
        }
        throw noSuchMethodError;
    }

    private static boolean k(String str) {
        return f45115d && t.g0() && !str.isEmpty();
    }

    private static boolean l(String str) {
        try {
            int waitFor = Runtime.getRuntime().exec(str).waitFor();
            if (waitFor != 0) {
                f45112a.debug("Execution of '{}' failed: {}", str, Integer.valueOf(waitFor));
                return false;
            }
            f45112a.debug("Execution of '{}' succeed: {}", str, Integer.valueOf(waitFor));
            return true;
        } catch (IOException e10) {
            f45112a.info("Execution of '{}' failed.", str, e10);
            return false;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        } catch (SecurityException e11) {
            f45112a.error("Execution of '{}' failed.", str, e11);
            return false;
        }
    }

    static void m(File file, String str) {
        String str2 = new String(d(str.length()), io.grpc.netty.shaded.io.netty.util.h.f45016d);
        if (l("install_name_tool -id " + str2 + " " + file.getAbsolutePath())) {
            l("codesign -s - " + file.getAbsolutePath());
        }
    }

    private static Class<?> n(ClassLoader classLoader, Class<?> cls) throws ClassNotFoundException {
        try {
            return Class.forName(cls.getName(), false, classLoader);
        } catch (ClassNotFoundException e10) {
            if (classLoader != null) {
                try {
                    return (Class) AccessController.doPrivileged(new b(classLoader, cls, b(cls)));
                } catch (ClassNotFoundException e11) {
                    e0.a(e11, e10);
                    throw e11;
                } catch (Error e12) {
                    e0.a(e12, e10);
                    throw e12;
                } catch (RuntimeException e13) {
                    e0.a(e13, e10);
                    throw e13;
                }
            }
            throw e10;
        }
    }
}

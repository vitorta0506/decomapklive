package org.conscrypt;

import com.facebook.internal.ServerProtocol;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.text.MessageFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f56396a = Logger.getLogger(p.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final File f56397b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f56398c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements PrivilegedAction<c> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f56399a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56400b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f56401c;

        a(Class cls, String str, boolean z10) {
            this.f56399a = cls;
            this.f56400b = str;
            this.f56401c = z10;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public c run() {
            try {
                Method method = this.f56399a.getMethod("loadLibrary", String.class, Boolean.TYPE);
                method.setAccessible(true);
                method.invoke(null, this.f56400b, Boolean.valueOf(this.f56401c));
                return c.e(this.f56400b, this.f56401c, true);
            } catch (InvocationTargetException e10) {
                return c.d(this.f56400b, this.f56401c, true, e10.getCause());
            } catch (Throwable th2) {
                return c.d(this.f56400b, this.f56401c, true, th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class b implements PrivilegedAction<Class<?>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ClassLoader f56402a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f56403b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ byte[] f56404c;

        b(ClassLoader classLoader, Class cls, byte[] bArr) {
            this.f56402a = classLoader;
            this.f56403b = cls;
            this.f56404c = bArr;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public Class<?> run() {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = ClassLoader.class.getDeclaredMethod("defineClass", String.class, byte[].class, cls, cls);
                declaredMethod.setAccessible(true);
                return (Class) declaredMethod.invoke(this.f56402a, this.f56403b.getName(), this.f56404c, 0, Integer.valueOf(this.f56404c.length));
            } catch (Exception e10) {
                throw new IllegalStateException("Define class failed!", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final String f56405a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f56406b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f56407c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f56408d;

        /* renamed from: e  reason: collision with root package name */
        final Throwable f56409e;

        private c(String str, boolean z10, boolean z11, boolean z12, Throwable th2) {
            this.f56405a = str;
            this.f56406b = z10;
            this.f56407c = z11;
            this.f56408d = z12;
            this.f56409e = th2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c d(String str, boolean z10, boolean z11, Throwable th2) {
            return new c(str, z10, false, z11, th2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c e(String str, boolean z10, boolean z11) {
            return new c(str, z10, true, z11, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void c() {
            if (this.f56409e != null) {
                p.p("Unable to load the library {0} (using helper classloader={1})", this.f56405a, Boolean.valueOf(this.f56408d), this.f56409e);
            } else {
                p.o("Successfully loaded library {0}  (using helper classloader={1})", this.f56405a, Boolean.valueOf(this.f56408d));
            }
        }
    }

    static {
        File g10 = g();
        if (g10 == null) {
            g10 = n.c();
        }
        f56397b = g10;
        o("-D{0}: {1}", "org.conscrypt.native.workdir", g10);
        f56398c = Boolean.valueOf(System.getProperty("org.conscrypt.native.deleteLibAfterLoading", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)).booleanValue();
    }

    private p() {
    }

    private static byte[] c(Class<?> cls) throws ClassNotFoundException {
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
                d(inputStream);
                d(byteArrayOutputStream);
            }
        } else {
            throw new ClassNotFoundException(cls.getName());
        }
    }

    private static void d(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static void e(URL url, File file) throws IOException {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            InputStream openStream = url.openStream();
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = openStream.read(bArr);
                        if (read > 0) {
                            fileOutputStream.write(bArr, 0, read);
                        } else {
                            fileOutputStream.flush();
                            d(openStream);
                            d(fileOutputStream);
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = openStream;
                    d(inputStream);
                    d(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    private static void f(String str, Throwable th2) {
        f56396a.log(Level.FINE, str, th2);
    }

    private static File g() {
        String property = System.getProperty("org.conscrypt.native.workdir");
        if (property == null) {
            return null;
        }
        File file = new File(property);
        if (!file.mkdirs() && !file.exists()) {
            n("Unable to find or create working directory: {0}", property);
            return null;
        }
        try {
            return file.getAbsoluteFile();
        } catch (Exception unused) {
            return file;
        }
    }

    private static boolean h(String str, ClassLoader classLoader, List<c> list) {
        return j(str, classLoader, list) || k(classLoader, str, false, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(ClassLoader classLoader, List<c> list, String... strArr) {
        for (String str : strArr) {
            if (h(str, classLoader, list)) {
                return true;
            }
        }
        return false;
    }

    private static boolean j(String str, ClassLoader classLoader, List<c> list) {
        String mapLibraryName = System.mapLibraryName(str);
        String str2 = "META-INF/native/" + mapLibraryName;
        URL resource = classLoader.getResource(str2);
        if (resource == null && n.d()) {
            if (str2.endsWith(".jnilib")) {
                resource = classLoader.getResource("META-INF/native/lib" + str + ".dynlib");
            } else {
                resource = classLoader.getResource("META-INF/native/lib" + str + ".jnilib");
            }
        }
        if (resource == null) {
            return false;
        }
        int lastIndexOf = mapLibraryName.lastIndexOf(46);
        String substring = mapLibraryName.substring(0, lastIndexOf);
        String substring2 = mapLibraryName.substring(lastIndexOf, mapLibraryName.length());
        File file = null;
        try {
            try {
                File b10 = a0.b(substring, substring2, f56397b);
                if (b10.isFile() && b10.canRead() && !a0.a(b10)) {
                    throw new IOException(MessageFormat.format("{0} exists but cannot be executed even when execute permissions set; check volume for \"noexec\" flag; use -D{1}=[path] to set native working directory separately.", b10.getPath(), "org.conscrypt.native.workdir"));
                }
                e(resource, b10);
                boolean k10 = k(classLoader, b10.getPath(), true, list);
                if (!(f56398c ? b10.delete() : false)) {
                    b10.deleteOnExit();
                }
                return k10;
            } catch (IOException e10) {
                list.add(c.d(str, true, false, new UnsatisfiedLinkError(MessageFormat.format("Failed creating temp file ({0})", null)).initCause(e10)));
                if (0 != 0) {
                    if (!(f56398c ? file.delete() : false)) {
                        file.deleteOnExit();
                    }
                }
                return false;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                if (!(f56398c ? file.delete() : false)) {
                    file.deleteOnExit();
                }
            }
            throw th2;
        }
    }

    private static boolean k(ClassLoader classLoader, String str, boolean z10, List<c> list) {
        try {
            c m10 = m(q(classLoader, q.class), str, z10);
            list.add(m10);
            if (m10.f56407c) {
                return true;
            }
        } catch (Exception unused) {
        }
        c l10 = l(str, z10);
        list.add(l10);
        return l10.f56407c;
    }

    private static c l(String str, boolean z10) {
        try {
            q.a(str, z10);
            return c.e(str, z10, false);
        } catch (Throwable th2) {
            return c.d(str, z10, false, th2);
        }
    }

    private static c m(Class<?> cls, String str, boolean z10) {
        return (c) AccessController.doPrivileged(new a(cls, str, z10));
    }

    private static void n(String str, Object obj) {
        f56396a.log(Level.FINE, str, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(String str, Object obj, Object obj2) {
        f56396a.log(Level.FINE, str, new Object[]{obj, obj2});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p(String str, Object obj, Object obj2, Throwable th2) {
        f(MessageFormat.format(str, obj, obj2), th2);
    }

    private static Class<?> q(ClassLoader classLoader, Class<?> cls) throws ClassNotFoundException {
        try {
            return classLoader.loadClass(cls.getName());
        } catch (ClassNotFoundException unused) {
            return (Class) AccessController.doPrivileged(new b(classLoader, cls, c(cls)));
        }
    }
}

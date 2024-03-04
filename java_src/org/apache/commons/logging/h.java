package org.apache.commons.logging;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.security.AccessController;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
/* loaded from: classes7.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private static PrintStream f55859a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f55860b;

    /* renamed from: c  reason: collision with root package name */
    private static final ClassLoader f55861c;

    /* renamed from: d  reason: collision with root package name */
    protected static Hashtable f55862d;

    /* renamed from: e  reason: collision with root package name */
    protected static volatile h f55863e;

    /* renamed from: f  reason: collision with root package name */
    static /* synthetic */ Class f55864f;

    static {
        String str;
        Class cls = f55864f;
        if (cls == null) {
            cls = c("org.apache.commons.logging.LogFactory");
            f55864f = cls;
        }
        ClassLoader h10 = h(cls);
        f55861c = h10;
        if (h10 == null) {
            str = "BOOTLOADER";
        } else {
            try {
                str = z(h10);
            } catch (SecurityException unused) {
                str = GrsBaseInfo.CountryCodeSource.UNKNOWN;
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[LogFactory from ");
        stringBuffer.append(str);
        stringBuffer.append("] ");
        f55860b = stringBuffer.toString();
        f55859a = t();
        Class cls2 = f55864f;
        if (cls2 == null) {
            cls2 = c("org.apache.commons.logging.LogFactory");
            f55864f = cls2;
        }
        v(cls2);
        f55862d = e();
        if (u()) {
            w("BOOTSTRAP COMPLETED");
        }
    }

    protected h() {
    }

    private static String B(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    private static void b(ClassLoader classLoader, h hVar) {
        if (hVar != null) {
            if (classLoader == null) {
                f55863e = hVar;
            } else {
                f55862d.put(classLoader, hVar);
            }
        }
    }

    static /* synthetic */ Class c(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object d(String str, ClassLoader classLoader) {
        Class<?> cls = null;
        try {
            if (classLoader != null) {
                try {
                    try {
                        cls = classLoader.loadClass(str);
                        Class cls2 = f55864f;
                        if (cls2 == null) {
                            cls2 = c("org.apache.commons.logging.LogFactory");
                            f55864f = cls2;
                        }
                        if (cls2.isAssignableFrom(cls)) {
                            if (u()) {
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append("Loaded class ");
                                stringBuffer.append(cls.getName());
                                stringBuffer.append(" from classloader ");
                                stringBuffer.append(z(classLoader));
                                w(stringBuffer.toString());
                            }
                        } else if (u()) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("Factory class ");
                            stringBuffer2.append(cls.getName());
                            stringBuffer2.append(" loaded from classloader ");
                            stringBuffer2.append(z(cls.getClassLoader()));
                            stringBuffer2.append(" does not extend '");
                            Class cls3 = f55864f;
                            if (cls3 == null) {
                                cls3 = c("org.apache.commons.logging.LogFactory");
                                f55864f = cls3;
                            }
                            stringBuffer2.append(cls3.getName());
                            stringBuffer2.append("' as loaded by this classloader.");
                            w(stringBuffer2.toString());
                            x("[BAD CL TREE] ", classLoader);
                        }
                        return (h) cls.newInstance();
                    } catch (ClassNotFoundException e10) {
                        if (classLoader == f55861c) {
                            if (u()) {
                                StringBuffer stringBuffer3 = new StringBuffer();
                                stringBuffer3.append("Unable to locate any class called '");
                                stringBuffer3.append(str);
                                stringBuffer3.append("' via classloader ");
                                stringBuffer3.append(z(classLoader));
                                w(stringBuffer3.toString());
                            }
                            throw e10;
                        }
                    }
                } catch (ClassCastException unused) {
                    if (classLoader == f55861c) {
                        boolean s10 = s(cls);
                        StringBuffer stringBuffer4 = new StringBuffer();
                        stringBuffer4.append("The application has specified that a custom LogFactory implementation ");
                        stringBuffer4.append("should be used but Class '");
                        stringBuffer4.append(str);
                        stringBuffer4.append("' cannot be converted to '");
                        Class cls4 = f55864f;
                        if (cls4 == null) {
                            cls4 = c("org.apache.commons.logging.LogFactory");
                            f55864f = cls4;
                        }
                        stringBuffer4.append(cls4.getName());
                        stringBuffer4.append("'. ");
                        if (s10) {
                            stringBuffer4.append("The conflict is caused by the presence of multiple LogFactory classes ");
                            stringBuffer4.append("in incompatible classloaders. ");
                            stringBuffer4.append("Background can be found in http://commons.apache.org/logging/tech.html. ");
                            stringBuffer4.append("If you have not explicitly specified a custom LogFactory then it is likely ");
                            stringBuffer4.append("that the container has set one without your knowledge. ");
                            stringBuffer4.append("In this case, consider using the commons-logging-adapters.jar file or ");
                            stringBuffer4.append("specifying the standard LogFactory from the command line. ");
                        } else {
                            stringBuffer4.append("Please check the custom implementation. ");
                        }
                        stringBuffer4.append("Help can be found @http://commons.apache.org/logging/troubleshooting.html.");
                        if (u()) {
                            w(stringBuffer4.toString());
                        }
                        throw new ClassCastException(stringBuffer4.toString());
                    }
                } catch (NoClassDefFoundError e11) {
                    if (classLoader == f55861c) {
                        if (u()) {
                            StringBuffer stringBuffer5 = new StringBuffer();
                            stringBuffer5.append("Class '");
                            stringBuffer5.append(str);
                            stringBuffer5.append("' cannot be loaded");
                            stringBuffer5.append(" via classloader ");
                            stringBuffer5.append(z(classLoader));
                            stringBuffer5.append(" - it depends on some other class that cannot be found.");
                            w(stringBuffer5.toString());
                        }
                        throw e11;
                    }
                }
            }
            if (u()) {
                StringBuffer stringBuffer6 = new StringBuffer();
                stringBuffer6.append("Unable to load factory class via classloader ");
                stringBuffer6.append(z(classLoader));
                stringBuffer6.append(" - trying the classloader associated with this LogFactory.");
                w(stringBuffer6.toString());
            }
            return (h) Class.forName(str).newInstance();
        } catch (Exception e12) {
            if (u()) {
                w("Unable to create LogFactory instance.");
            }
            if (cls != null) {
                Class cls5 = f55864f;
                if (cls5 == null) {
                    cls5 = c("org.apache.commons.logging.LogFactory");
                    f55864f = cls5;
                }
                if (!cls5.isAssignableFrom(cls)) {
                    return new LogConfigurationException("The chosen LogFactory implementation does not extend LogFactory. Please check your configuration.", e12);
                }
            }
            return new LogConfigurationException(e12);
        }
    }

    private static final Hashtable e() {
        String str;
        Hashtable hashtable = null;
        try {
            str = q("org.apache.commons.logging.LogFactory.HashtableImpl", null);
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            str = "org.apache.commons.logging.impl.WeakHashtable";
        }
        try {
            hashtable = (Hashtable) Class.forName(str).newInstance();
        } catch (Throwable th2) {
            r(th2);
            if (!"org.apache.commons.logging.impl.WeakHashtable".equals(str)) {
                if (u()) {
                    w("[ERROR] LogFactory: Load of custom hashtable failed");
                } else {
                    System.err.println("[ERROR] LogFactory: Load of custom hashtable failed");
                }
            }
        }
        return hashtable == null ? new Hashtable() : hashtable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ClassLoader f() throws LogConfigurationException {
        try {
            return Thread.currentThread().getContextClassLoader();
        } catch (SecurityException unused) {
            return null;
        }
    }

    private static h g(ClassLoader classLoader) {
        if (classLoader == null) {
            return f55863e;
        }
        return (h) f55862d.get(classLoader);
    }

    protected static ClassLoader h(Class cls) {
        try {
            return cls.getClassLoader();
        } catch (SecurityException e10) {
            if (u()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unable to get classloader for class '");
                stringBuffer.append(cls);
                stringBuffer.append("' due to security restrictions - ");
                stringBuffer.append(e10.getMessage());
                w(stringBuffer.toString());
            }
            throw e10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.util.Properties i(java.lang.ClassLoader r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.logging.h.i(java.lang.ClassLoader, java.lang.String):java.util.Properties");
    }

    private static ClassLoader j() throws LogConfigurationException {
        return (ClassLoader) AccessController.doPrivileged(new b());
    }

    public static h k() throws LogConfigurationException {
        BufferedReader bufferedReader;
        String property;
        ClassLoader j10 = j();
        if (j10 == null && u()) {
            w("Context classloader is null.");
        }
        h g10 = g(j10);
        if (g10 != null) {
            return g10;
        }
        if (u()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[LOOKUP] LogFactory implementation requested for the first time for context classloader ");
            stringBuffer.append(z(j10));
            w(stringBuffer.toString());
            x("[LOOKUP] ", j10);
        }
        Properties i9 = i(j10, "commons-logging.properties");
        ClassLoader classLoader = (i9 == null || (property = i9.getProperty("use_tccl")) == null || Boolean.valueOf(property).booleanValue()) ? j10 : f55861c;
        if (u()) {
            w("[LOOKUP] Looking for system property [org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use...");
        }
        try {
            String q10 = q("org.apache.commons.logging.LogFactory", null);
            if (q10 != null) {
                if (u()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("[LOOKUP] Creating an instance of LogFactory class '");
                    stringBuffer2.append(q10);
                    stringBuffer2.append("' as specified by system property ");
                    stringBuffer2.append("org.apache.commons.logging.LogFactory");
                    w(stringBuffer2.toString());
                }
                g10 = y(q10, classLoader, j10);
            } else if (u()) {
                w("[LOOKUP] No system property [org.apache.commons.logging.LogFactory] defined.");
            }
        } catch (SecurityException e10) {
            if (u()) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: [");
                stringBuffer3.append(B(e10.getMessage()));
                stringBuffer3.append("]. Trying alternative implementations...");
                w(stringBuffer3.toString());
            }
        } catch (RuntimeException e11) {
            if (u()) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("[LOOKUP] An exception occurred while trying to create an instance of the custom factory class: [");
                stringBuffer4.append(B(e11.getMessage()));
                stringBuffer4.append("] as specified by a system property.");
                w(stringBuffer4.toString());
            }
            throw e11;
        }
        if (g10 == null) {
            if (u()) {
                w("[LOOKUP] Looking for a resource file of name [META-INF/services/org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use...");
            }
            try {
                InputStream o10 = o(j10, "META-INF/services/org.apache.commons.logging.LogFactory");
                if (o10 != null) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(o10, "UTF-8"));
                    } catch (UnsupportedEncodingException unused) {
                        bufferedReader = new BufferedReader(new InputStreamReader(o10));
                    }
                    String readLine = bufferedReader.readLine();
                    bufferedReader.close();
                    if (readLine != null && !"".equals(readLine)) {
                        if (u()) {
                            StringBuffer stringBuffer5 = new StringBuffer();
                            stringBuffer5.append("[LOOKUP]  Creating an instance of LogFactory class ");
                            stringBuffer5.append(readLine);
                            stringBuffer5.append(" as specified by file '");
                            stringBuffer5.append("META-INF/services/org.apache.commons.logging.LogFactory");
                            stringBuffer5.append("' which was present in the path of the context classloader.");
                            w(stringBuffer5.toString());
                        }
                        g10 = y(readLine, classLoader, j10);
                    }
                } else if (u()) {
                    w("[LOOKUP] No resource file with name 'META-INF/services/org.apache.commons.logging.LogFactory' found.");
                }
            } catch (Exception e12) {
                if (u()) {
                    StringBuffer stringBuffer6 = new StringBuffer();
                    stringBuffer6.append("[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: [");
                    stringBuffer6.append(B(e12.getMessage()));
                    stringBuffer6.append("]. Trying alternative implementations...");
                    w(stringBuffer6.toString());
                }
            }
        }
        if (g10 == null) {
            if (i9 != null) {
                if (u()) {
                    w("[LOOKUP] Looking in properties file for entry with key 'org.apache.commons.logging.LogFactory' to define the LogFactory subclass to use...");
                }
                String property2 = i9.getProperty("org.apache.commons.logging.LogFactory");
                if (property2 != null) {
                    if (u()) {
                        StringBuffer stringBuffer7 = new StringBuffer();
                        stringBuffer7.append("[LOOKUP] Properties file specifies LogFactory subclass '");
                        stringBuffer7.append(property2);
                        stringBuffer7.append("'");
                        w(stringBuffer7.toString());
                    }
                    g10 = y(property2, classLoader, j10);
                } else if (u()) {
                    w("[LOOKUP] Properties file has no entry specifying LogFactory subclass.");
                }
            } else if (u()) {
                w("[LOOKUP] No properties file available to determine LogFactory subclass from..");
            }
        }
        if (g10 == null) {
            if (u()) {
                w("[LOOKUP] Loading the default LogFactory implementation 'org.apache.commons.logging.impl.LogFactoryImpl' via the same classloader that loaded this LogFactory class (ie not looking in the context classloader).");
            }
            g10 = y("org.apache.commons.logging.impl.LogFactoryImpl", f55861c, j10);
        }
        if (g10 != null) {
            b(j10, g10);
            if (i9 != null) {
                Enumeration<?> propertyNames = i9.propertyNames();
                while (propertyNames.hasMoreElements()) {
                    String str = (String) propertyNames.nextElement();
                    g10.A(str, i9.getProperty(str));
                }
            }
        }
        return g10;
    }

    public static a m(Class cls) throws LogConfigurationException {
        return k().l(cls);
    }

    private static Properties n(URL url) {
        return (Properties) AccessController.doPrivileged(new f(url));
    }

    private static InputStream o(ClassLoader classLoader, String str) {
        return (InputStream) AccessController.doPrivileged(new d(classLoader, str));
    }

    private static Enumeration p(ClassLoader classLoader, String str) {
        return (Enumeration) AccessController.doPrivileged(new e(classLoader, str));
    }

    private static String q(String str, String str2) throws SecurityException {
        return (String) AccessController.doPrivileged(new g(str, str2));
    }

    protected static void r(Throwable th2) {
        if (!(th2 instanceof ThreadDeath)) {
            if (th2 instanceof VirtualMachineError) {
                throw ((VirtualMachineError) th2);
            }
            return;
        }
        throw ((ThreadDeath) th2);
    }

    private static boolean s(Class cls) {
        boolean z10 = false;
        if (cls != null) {
            try {
                ClassLoader classLoader = cls.getClassLoader();
                if (classLoader == null) {
                    w("[CUSTOM LOG FACTORY] was loaded by the boot classloader");
                } else {
                    x("[CUSTOM LOG FACTORY] ", classLoader);
                    z10 = Class.forName("org.apache.commons.logging.h", false, classLoader).isAssignableFrom(cls);
                    if (z10) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("[CUSTOM LOG FACTORY] ");
                        stringBuffer.append(cls.getName());
                        stringBuffer.append(" implements LogFactory but was loaded by an incompatible classloader.");
                        w(stringBuffer.toString());
                    } else {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("[CUSTOM LOG FACTORY] ");
                        stringBuffer2.append(cls.getName());
                        stringBuffer2.append(" does not implement LogFactory.");
                        w(stringBuffer2.toString());
                    }
                }
            } catch (ClassNotFoundException unused) {
                w("[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?");
            } catch (LinkageError e10) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: ");
                stringBuffer3.append(e10.getMessage());
                w(stringBuffer3.toString());
            } catch (SecurityException e11) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: ");
                stringBuffer4.append(e11.getMessage());
                w(stringBuffer4.toString());
            }
        }
        return z10;
    }

    private static PrintStream t() {
        try {
            String q10 = q("org.apache.commons.logging.diagnostics.dest", null);
            if (q10 == null) {
                return null;
            }
            if (q10.equals("STDOUT")) {
                return System.out;
            }
            if (q10.equals("STDERR")) {
                return System.err;
            }
            return new PrintStream(new FileOutputStream(q10, true));
        } catch (IOException | SecurityException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean u() {
        return f55859a != null;
    }

    private static void v(Class cls) {
        if (u()) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("[ENV] Extension directories (java.ext.dir): ");
                stringBuffer.append(System.getProperty("java.ext.dir"));
                w(stringBuffer.toString());
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("[ENV] Application classpath (java.class.path): ");
                stringBuffer2.append(System.getProperty("java.class.path"));
                w(stringBuffer2.toString());
            } catch (SecurityException unused) {
                w("[ENV] Security setting prevent interrogation of system classpaths.");
            }
            String name = cls.getName();
            try {
                ClassLoader h10 = h(cls);
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("[ENV] Class ");
                stringBuffer3.append(name);
                stringBuffer3.append(" was loaded via classloader ");
                stringBuffer3.append(z(h10));
                w(stringBuffer3.toString());
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("[ENV] Ancestry of classloader which loaded ");
                stringBuffer4.append(name);
                stringBuffer4.append(" is ");
                x(stringBuffer4.toString(), h10);
            } catch (SecurityException unused2) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("[ENV] Security forbids determining the classloader for ");
                stringBuffer5.append(name);
                w(stringBuffer5.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(String str) {
        PrintStream printStream = f55859a;
        if (printStream != null) {
            printStream.print(f55860b);
            f55859a.println(str);
            f55859a.flush();
        }
    }

    private static void x(String str, ClassLoader classLoader) {
        if (u()) {
            if (classLoader != null) {
                String obj = classLoader.toString();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                stringBuffer.append(z(classLoader));
                stringBuffer.append(" == '");
                stringBuffer.append(obj);
                stringBuffer.append("'");
                w(stringBuffer.toString());
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (classLoader != null) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append(str);
                    stringBuffer2.append("ClassLoader tree:");
                    StringBuffer stringBuffer3 = new StringBuffer(stringBuffer2.toString());
                    do {
                        stringBuffer3.append(z(classLoader));
                        if (classLoader == systemClassLoader) {
                            stringBuffer3.append(" (SYSTEM) ");
                        }
                        try {
                            classLoader = classLoader.getParent();
                            stringBuffer3.append(" --> ");
                        } catch (SecurityException unused) {
                            stringBuffer3.append(" --> SECRET");
                        }
                    } while (classLoader != null);
                    stringBuffer3.append("BOOT");
                    w(stringBuffer3.toString());
                }
            } catch (SecurityException unused2) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append(str);
                stringBuffer4.append("Security forbids determining the system classloader.");
                w(stringBuffer4.toString());
            }
        }
    }

    protected static h y(String str, ClassLoader classLoader, ClassLoader classLoader2) throws LogConfigurationException {
        Object doPrivileged = AccessController.doPrivileged(new c(str, classLoader));
        if (doPrivileged instanceof LogConfigurationException) {
            LogConfigurationException logConfigurationException = (LogConfigurationException) doPrivileged;
            if (u()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("An error occurred while loading the factory class:");
                stringBuffer.append(logConfigurationException.getMessage());
                w(stringBuffer.toString());
            }
            throw logConfigurationException;
        }
        if (u()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Created object ");
            stringBuffer2.append(z(doPrivileged));
            stringBuffer2.append(" to manage classloader ");
            stringBuffer2.append(z(classLoader2));
            w(stringBuffer2.toString());
        }
        return (h) doPrivileged;
    }

    public static String z(Object obj) {
        if (obj == null) {
            return "null";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append("@");
        stringBuffer.append(System.identityHashCode(obj));
        return stringBuffer.toString();
    }

    public abstract void A(String str, Object obj);

    public abstract a l(Class cls) throws LogConfigurationException;
}

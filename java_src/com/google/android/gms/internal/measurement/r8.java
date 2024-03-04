package com.google.android.gms.internal.measurement;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
abstract class r8 {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f8287a = Logger.getLogger(f8.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final String f8288b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    r8() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k8 b(Class cls) {
        String format;
        ClassLoader classLoader = r8.class.getClassLoader();
        if (cls.equals(k8.class)) {
            format = f8288b;
        } else if (cls.getPackage().equals(r8.class.getPackage())) {
            format = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        return (k8) cls.cast(((r8) Class.forName(format, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).a());
                    } catch (IllegalAccessException e10) {
                        throw new IllegalStateException(e10);
                    }
                } catch (InvocationTargetException e11) {
                    throw new IllegalStateException(e11);
                }
            } catch (InstantiationException e12) {
                throw new IllegalStateException(e12);
            } catch (NoSuchMethodException e13) {
                throw new IllegalStateException(e13);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(r8.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((r8) it.next()).a()));
                } catch (ServiceConfigurationError e14) {
                    f8287a.logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(cls.getSimpleName()), (Throwable) e14);
                }
            }
            if (arrayList.size() == 1) {
                return (k8) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (k8) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e15) {
                throw new IllegalStateException(e15);
            } catch (NoSuchMethodException e16) {
                throw new IllegalStateException(e16);
            } catch (InvocationTargetException e17) {
                throw new IllegalStateException(e17);
            }
        }
    }

    protected abstract k8 a();
}

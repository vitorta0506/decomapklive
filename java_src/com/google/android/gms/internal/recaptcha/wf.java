package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.pf;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class wf<T extends pf> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f9146a = Logger.getLogger(hf.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final String f9147b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    wf() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends pf> T b(Class<T> cls) {
        String format;
        ClassLoader classLoader = wf.class.getClassLoader();
        if (cls.equals(pf.class)) {
            format = f9147b;
        } else if (cls.getPackage().equals(wf.class.getPackage())) {
            format = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        return cls.cast(((wf) Class.forName(format, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).a());
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
            Iterator it = ServiceLoader.load(wf.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((wf) it.next()).a()));
                } catch (ServiceConfigurationError e14) {
                    Logger logger = f9146a;
                    Level level = Level.SEVERE;
                    String simpleName = cls.getSimpleName();
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", simpleName.length() != 0 ? "Unable to load ".concat(simpleName) : new String("Unable to load "), (Throwable) e14);
                }
            }
            if (arrayList.size() == 1) {
                return (T) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e15) {
                throw new IllegalStateException(e15);
            } catch (NoSuchMethodException e16) {
                throw new IllegalStateException(e16);
            } catch (InvocationTargetException e17) {
                throw new IllegalStateException(e17);
            }
        }
    }

    protected abstract T a();
}

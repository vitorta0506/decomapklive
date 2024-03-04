package wg;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    public static final Unsafe f59503c = b();

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f59501a = d();

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f59502b = c();

    public static long a(Class cls, String str) throws RuntimeException {
        try {
            return f59503c.objectFieldOffset(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static Unsafe b() {
        try {
            try {
                Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
                declaredField.setAccessible(true);
                return (Unsafe) declaredField.get(null);
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        } catch (Exception unused) {
            Constructor declaredConstructor = Unsafe.class.getDeclaredConstructor(new Class[0]);
            declaredConstructor.setAccessible(true);
            return (Unsafe) declaredConstructor.newInstance(new Object[0]);
        }
    }

    private static boolean c() {
        try {
            Class cls = Long.TYPE;
            Unsafe.class.getMethod("getAndAddLong", Object.class, cls, cls);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean d() {
        try {
            Unsafe.class.getMethod("getAndSetObject", Object.class, Long.TYPE, Object.class);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}

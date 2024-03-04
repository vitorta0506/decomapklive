package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.cb;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
final class nb extends db {

    /* renamed from: a  reason: collision with root package name */
    static final Unsafe f8915a;

    /* renamed from: b  reason: collision with root package name */
    static final long f8916b;

    /* renamed from: c  reason: collision with root package name */
    static final long f8917c;

    /* renamed from: d  reason: collision with root package name */
    static final long f8918d;

    /* renamed from: e  reason: collision with root package name */
    static final long f8919e;

    /* renamed from: f  reason: collision with root package name */
    static final long f8920f;

    /* loaded from: classes2.dex */
    class a implements PrivilegedExceptionAction<Unsafe> {
        a() {
        }

        public static final Unsafe a() throws Exception {
            Field[] declaredFields;
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }

        @Override // java.security.PrivilegedExceptionAction
        public final /* bridge */ /* synthetic */ Unsafe run() throws Exception {
            return a();
        }
    }

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e10) {
                throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new a());
        }
        try {
            f8917c = unsafe.objectFieldOffset(cb.class.getDeclaredField(com.huawei.hms.opendevice.c.f27627a));
            f8916b = unsafe.objectFieldOffset(cb.class.getDeclaredField("b"));
            f8918d = unsafe.objectFieldOffset(cb.class.getDeclaredField("a"));
            f8919e = unsafe.objectFieldOffset(ob.class.getDeclaredField("a"));
            f8920f = unsafe.objectFieldOffset(ob.class.getDeclaredField("b"));
            f8915a = unsafe;
        } catch (Exception e11) {
            i8.a(e11);
            throw new RuntimeException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ nb(cb.a aVar) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final void a(ob obVar, ob obVar2) {
        f8915a.putObject(obVar, f8920f, obVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final void b(ob obVar, Thread thread) {
        f8915a.putObject(obVar, f8919e, thread);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final boolean c(cb<?> cbVar, gb gbVar, gb gbVar2) {
        return mb.a(f8915a, cbVar, f8916b, gbVar, gbVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final boolean d(cb<?> cbVar, Object obj, Object obj2) {
        return mb.a(f8915a, cbVar, f8918d, obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final boolean e(cb<?> cbVar, ob obVar, ob obVar2) {
        return mb.a(f8915a, cbVar, f8917c, obVar, obVar2);
    }
}

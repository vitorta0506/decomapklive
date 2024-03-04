package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.u8;
import com.google.android.gms.internal.measurement.x8;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public abstract class x8<MessageType extends x8<MessageType, BuilderType>, BuilderType extends u8<MessageType, BuilderType>> extends i7<MessageType, BuilderType> {
    private static final Map zza = new ConcurrentHashMap();
    protected cb zzc = cb.c();
    protected int zzd = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    public static b9 k() {
        return y8.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static c9 l() {
        return p9.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static c9 m(c9 c9Var) {
        int size = c9Var.size();
        return c9Var.V(size == 0 ? 10 : size + size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static d9 n() {
        return ia.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static d9 o(d9 d9Var) {
        int size = d9Var.size();
        return d9Var.j(size == 0 ? 10 : size + size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object p(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object q(z9 z9Var, String str, Object[] objArr) {
        return new ja(z9Var, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void r(Class cls, x8 x8Var) {
        zza.put(cls, x8Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x8 u(Class cls) {
        Map map = zza;
        x8 x8Var = (x8) map.get(cls);
        if (x8Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                x8Var = (x8) map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (x8Var == null) {
            x8Var = (x8) ((x8) lb.j(cls)).v(6, null, null);
            if (x8Var != null) {
                map.put(cls, x8Var);
            } else {
                throw new IllegalStateException();
            }
        }
        return x8Var;
    }

    @Override // com.google.android.gms.internal.measurement.z9
    public final /* synthetic */ y9 a() {
        return (u8) v(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.z9
    public final /* synthetic */ y9 b() {
        u8 u8Var = (u8) v(5, null, null);
        u8Var.m(this);
        return u8Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.i7
    public final int c() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.z9
    public final void d(f8 f8Var) throws IOException {
        ha.a().b(getClass()).d(this, g8.a(f8Var));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return ha.a().b(getClass()).f(this, (x8) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    public final /* synthetic */ z9 f() {
        return (x8) v(6, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.z9
    public final int g() {
        int i9 = this.zzd;
        if (i9 == -1) {
            int a10 = ha.a().b(getClass()).a(this);
            this.zzd = a10;
            return a10;
        }
        return i9;
    }

    public final int hashCode() {
        int i9 = this.zzb;
        if (i9 != 0) {
            return i9;
        }
        int b10 = ha.a().b(getClass()).b(this);
        this.zzb = b10;
        return b10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.i7
    public final void i(int i9) {
        this.zzd = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final u8 s() {
        return (u8) v(5, null, null);
    }

    public final u8 t() {
        u8 u8Var = (u8) v(5, null, null);
        u8Var.m(this);
        return u8Var;
    }

    public final String toString() {
        return ba.a(this, super.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object v(int i9, Object obj, Object obj2);
}

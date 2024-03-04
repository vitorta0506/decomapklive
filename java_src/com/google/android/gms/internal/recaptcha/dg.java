package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.dg;
import com.google.android.gms.internal.recaptcha.zf;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public abstract class dg<MessageType extends dg<MessageType, BuilderType>, BuilderType extends zf<MessageType, BuilderType>> extends ge<MessageType, BuilderType> {
    private static final Map<Object, dg<?, ?>> zzb = new ConcurrentHashMap();
    protected li zzc = li.c();
    protected int zzd = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object j(Method method, Object obj, Object... objArr) {
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
    public static Object k(gh ghVar, String str, Object[] objArr) {
        return new rh(ghVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends dg> void l(Class<T> cls, T t10) {
        zzb.put(cls, t10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends dg> T p(Class<T> cls) {
        Map<Object, dg<?, ?>> map = zzb;
        dg<?, ?> dgVar = map.get(cls);
        if (dgVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                dgVar = map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (dgVar == null) {
            dgVar = (dg) ((dg) vi.j(cls)).m(6, null, null);
            if (dgVar != null) {
                map.put(cls, dgVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return dgVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends dg<T, ?>> T q(T t10, bf bfVar, pf pfVar) throws zzrr {
        T t11 = (T) t10.m(4, null, null);
        try {
            uh b10 = ph.a().b(t11.getClass());
            b10.d(t11, cf.V(bfVar), pfVar);
            b10.c(t11);
            return t11;
        } catch (zzrr e10) {
            e = e10;
            if (e.zzl()) {
                e = new zzrr(e);
            }
            e.zzh(t11);
            throw e;
        } catch (IOException e11) {
            if (e11.getCause() instanceof zzrr) {
                throw ((zzrr) e11.getCause());
            }
            zzrr zzrrVar = new zzrr(e11);
            zzrrVar.zzh(t11);
            throw zzrrVar;
        } catch (RuntimeException e12) {
            if (e12.getCause() instanceof zzrr) {
                throw ((zzrr) e12.getCause());
            }
            throw e12;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ig r() {
        return eg.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> lg<E> s() {
        return qh.d();
    }

    @Override // com.google.android.gms.internal.recaptcha.hh
    public final boolean H() {
        byte byteValue = ((Byte) m(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean h10 = ph.a().b(getClass()).h(this);
        m(2, true != h10 ? null : this, null);
        return h10;
    }

    @Override // com.google.android.gms.internal.recaptcha.gh
    public final int K() {
        int i9 = this.zzd;
        if (i9 == -1) {
            int a10 = ph.a().b(getClass()).a(this);
            this.zzd = a10;
            return a10;
        }
        return i9;
    }

    @Override // com.google.android.gms.internal.recaptcha.gh
    public final nh<MessageType> M() {
        return (nh) m(7, null, null);
    }

    @Override // com.google.android.gms.internal.recaptcha.gh
    public final void a(hf hfVar) throws IOException {
        ph.a().b(getClass()).g(this, Cif.L(hfVar));
    }

    @Override // com.google.android.gms.internal.recaptcha.gh
    public final /* bridge */ /* synthetic */ fh b() {
        return (zf) m(5, null, null);
    }

    @Override // com.google.android.gms.internal.recaptcha.ge
    final int c() {
        return this.zzd;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return ph.a().b(getClass()).e(this, (dg) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.recaptcha.gh
    public final /* bridge */ /* synthetic */ fh f() {
        zf zfVar = (zf) m(5, null, null);
        zfVar.k(this);
        return zfVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.hh
    public final /* bridge */ /* synthetic */ gh h() {
        return (dg) m(6, null, null);
    }

    public final int hashCode() {
        int i9 = this.zza;
        if (i9 != 0) {
            return i9;
        }
        int b10 = ph.a().b(getClass()).b(this);
        this.zza = b10;
        return b10;
    }

    @Override // com.google.android.gms.internal.recaptcha.ge
    final void i(int i9) {
        this.zzd = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object m(int i9, Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends dg<MessageType, BuilderType>, BuilderType extends zf<MessageType, BuilderType>> BuilderType n() {
        return (BuilderType) m(5, null, null);
    }

    public final BuilderType o() {
        BuilderType buildertype = (BuilderType) m(5, null, null);
        buildertype.k(this);
        return buildertype;
    }

    public final String toString() {
        return ih.a(this, super.toString());
    }
}

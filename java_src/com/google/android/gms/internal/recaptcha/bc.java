package com.google.android.gms.internal.recaptcha;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class bc<OutputT> extends lb<OutputT> {

    /* renamed from: j  reason: collision with root package name */
    private static final yb f8525j;

    /* renamed from: k  reason: collision with root package name */
    private static final Logger f8526k = Logger.getLogger(bc.class.getName());

    /* renamed from: h  reason: collision with root package name */
    private volatile Set<Throwable> f8527h = null;

    /* renamed from: i  reason: collision with root package name */
    private volatile int f8528i;

    static {
        Throwable th2;
        yb acVar;
        try {
            acVar = new zb(AtomicReferenceFieldUpdater.newUpdater(bc.class, Set.class, "h"), AtomicIntegerFieldUpdater.newUpdater(bc.class, com.huawei.hms.opendevice.i.TAG));
            th2 = null;
        } catch (Throwable th3) {
            th2 = th3;
            acVar = new ac(null);
        }
        f8525j = acVar;
        if (th2 != null) {
            f8526k.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc(int i9) {
        this.f8528i = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int S(bc bcVar) {
        int i9 = bcVar.f8528i - 1;
        bcVar.f8528i = i9;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int T() {
        return f8525j.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Throwable> W() {
        Set<Throwable> set = this.f8527h;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            Y(newSetFromMap);
            f8525j.b(this, null, newSetFromMap);
            Set<Throwable> set2 = this.f8527h;
            set2.getClass();
            return set2;
        }
        return set;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void X() {
        this.f8527h = null;
    }

    abstract void Y(Set<Throwable> set);
}

package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.cb;
/* loaded from: classes2.dex */
final class jb extends db {
    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ jb(cb.a aVar) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final void a(ob obVar, ob obVar2) {
        obVar.f8944b = obVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final void b(ob obVar, Thread thread) {
        obVar.f8943a = thread;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final boolean c(cb<?> cbVar, gb gbVar, gb gbVar2) {
        gb gbVar3;
        synchronized (cbVar) {
            gbVar3 = ((cb) cbVar).f8564b;
            if (gbVar3 == gbVar) {
                ((cb) cbVar).f8564b = gbVar2;
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final boolean d(cb<?> cbVar, Object obj, Object obj2) {
        Object obj3;
        synchronized (cbVar) {
            obj3 = ((cb) cbVar).f8563a;
            if (obj3 == obj) {
                ((cb) cbVar).f8563a = obj2;
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.db
    public final boolean e(cb<?> cbVar, ob obVar, ob obVar2) {
        ob obVar3;
        synchronized (cbVar) {
            obVar3 = ((cb) cbVar).f8565c;
            if (obVar3 == obVar) {
                ((cb) cbVar).f8565c = obVar2;
                return true;
            }
            return false;
        }
    }
}

package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c0 implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ j f7989a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t4 f7990b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(j jVar, t4 t4Var) {
        this.f7989a = jVar;
        this.f7990b = t4Var;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        q qVar = (q) obj;
        q qVar2 = (q) obj2;
        j jVar = this.f7989a;
        t4 t4Var = this.f7990b;
        if (qVar instanceof v) {
            return !(qVar2 instanceof v) ? 1 : 0;
        } else if (qVar2 instanceof v) {
            return -1;
        } else {
            if (jVar == null) {
                return qVar.d().compareTo(qVar2.d());
            }
            return (int) u5.a(jVar.b(t4Var, Arrays.asList(qVar, qVar2)).a().doubleValue());
        }
    }
}

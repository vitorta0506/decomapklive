package com.google.android.gms.internal.recaptcha;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h5 implements cc<Object> {

    /* renamed from: a  reason: collision with root package name */
    private List<dc<a4, ?>> f8726a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ k5 f8727b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ h5(k5 k5Var, f5 f5Var) {
        this.f8727b = k5Var;
    }

    public final /* synthetic */ Object a() throws Exception {
        Object obj;
        obj = this.f8727b.f8812g;
        synchronized (obj) {
            this.f8726a = null;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.recaptcha.cc
    public final nd<Object> zza() throws Exception {
        m6 m6Var;
        String str;
        Object obj;
        List<dc<a4, ?>> list;
        m6Var = this.f8727b.f8813h;
        str = this.f8727b.f8806a;
        String valueOf = String.valueOf(str);
        q6 b10 = m6Var.b(valueOf.length() != 0 ? "Initialize ".concat(valueOf) : new String("Initialize "), 1);
        try {
            obj = this.f8727b.f8812g;
            synchronized (obj) {
                if (this.f8726a == null) {
                    list = this.f8727b.f8814i;
                    this.f8726a = list;
                    this.f8727b.f8814i = Collections.emptyList();
                }
            }
            ArrayList arrayList = new ArrayList(this.f8726a.size());
            j5 j5Var = new j5(this.f8727b, null);
            for (dc<a4, ?> dcVar : this.f8726a) {
                try {
                    arrayList.add(dcVar.a(j5Var));
                } catch (Exception e10) {
                    arrayList.add(dd.e(e10));
                }
            }
            nd<Object> a10 = dd.b(arrayList).a(new Callable() { // from class: com.google.android.gms.internal.recaptcha.g5
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    h5.this.a();
                    return null;
                }
            }, ud.b());
            b10.b(a10);
            b10.close();
            return a10;
        } catch (Throwable th2) {
            try {
                b10.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}

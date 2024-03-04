package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.gh;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public final class g4<T extends gh> implements dc<a4<T>, Void> {

    /* renamed from: a  reason: collision with root package name */
    private final List<b4<T>> f8700a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f8701b;

    private g4(List<b4<T>> list, Executor executor) {
        this.f8700a = list;
        this.f8701b = executor;
    }

    public static <T extends gh> g4<T> b(List<b4<T>> list, Executor executor) {
        return new g4<>(list, executor);
    }

    @Override // com.google.android.gms.internal.recaptcha.dc
    public final /* bridge */ /* synthetic */ nd<Void> a(Object obj) throws Exception {
        a4 a4Var = (a4) obj;
        final int size = this.f8700a.size();
        final ArrayList arrayList = new ArrayList(size);
        k9 listIterator = ((zzkj) this.f8700a).listIterator(0);
        while (listIterator.hasNext()) {
            arrayList.add(((b4) listIterator.next()).D());
        }
        return dd.k(a4Var.a(y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.f4
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj2) {
                return g4.this.d(arrayList, size, (gh) obj2);
            }
        }), ud.b()), y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.e4
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj2) {
                return g4.this.e(size, arrayList, obj2);
            }
        }), ud.b());
    }

    public final /* synthetic */ nd c(gh ghVar, int i9, List list) throws Exception {
        nd f10 = dd.f(ghVar);
        for (int i10 = 0; i10 < i9; i10++) {
            if (((Boolean) dd.l((Future) list.get(i10))).booleanValue()) {
                final b4<T> b4Var = this.f8700a.get(i10);
                f10 = dd.k(f10, y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.d4
                    @Override // com.google.android.gms.internal.recaptcha.dc
                    public final nd a(Object obj) {
                        gh ghVar2 = (gh) obj;
                        return b4.this.E();
                    }
                }), ud.b());
            }
        }
        return f10;
    }

    public final /* synthetic */ nd d(final List list, final int i9, final gh ghVar) throws Exception {
        return dd.a(list).b(y6.b(new cc() { // from class: com.google.android.gms.internal.recaptcha.c4
            @Override // com.google.android.gms.internal.recaptcha.cc
            public final nd zza() {
                return g4.this.c(ghVar, i9, list);
            }
        }), this.f8701b);
    }

    public final /* synthetic */ nd e(int i9, List list, Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(i9);
        for (int i10 = 0; i10 < i9; i10++) {
            if (((Boolean) dd.l((Future) list.get(i10))).booleanValue()) {
                arrayList.add(this.f8700a.get(i10).zza());
            }
        }
        return dd.b(arrayList).a(fc.a(null), ud.b());
    }
}

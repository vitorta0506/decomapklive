package com.google.android.gms.internal.recaptcha;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
final class sg extends ug {

    /* renamed from: c  reason: collision with root package name */
    private static final Class<?> f9048c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ sg(rg rgVar) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> f(Object obj, long j10, int i9) {
        pg pgVar;
        List<L> arrayList;
        List<L> list = (List) vi.k(obj, j10);
        if (list.isEmpty()) {
            if (list instanceof qg) {
                arrayList = new pg(i9);
            } else if ((list instanceof oh) && (list instanceof lg)) {
                arrayList = ((lg) list).j(i9);
            } else {
                arrayList = new ArrayList<>(i9);
            }
            vi.x(obj, j10, arrayList);
            return arrayList;
        }
        if (f9048c.isAssignableFrom(list.getClass())) {
            ArrayList arrayList2 = new ArrayList(list.size() + i9);
            arrayList2.addAll(list);
            vi.x(obj, j10, arrayList2);
            pgVar = arrayList2;
        } else if (list instanceof pi) {
            pg pgVar2 = new pg(list.size() + i9);
            pgVar2.addAll(pgVar2.size(), (pi) list);
            vi.x(obj, j10, pgVar2);
            pgVar = pgVar2;
        } else if ((list instanceof oh) && (list instanceof lg)) {
            lg lgVar = (lg) list;
            if (lgVar.E()) {
                return list;
            }
            lg j11 = lgVar.j(list.size() + i9);
            vi.x(obj, j10, j11);
            return j11;
        } else {
            return list;
        }
        return pgVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ug
    public final <L> List<L> a(Object obj, long j10) {
        return f(obj, j10, 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ug
    public final void b(Object obj, long j10) {
        Object unmodifiableList;
        List list = (List) vi.k(obj, j10);
        if (list instanceof qg) {
            unmodifiableList = ((qg) list).l();
        } else if (f9048c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof oh) && (list instanceof lg)) {
                lg lgVar = (lg) list;
                if (lgVar.E()) {
                    lgVar.D();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        vi.x(obj, j10, unmodifiableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ug
    public final <E> void c(Object obj, Object obj2, long j10) {
        List list = (List) vi.k(obj2, j10);
        List f10 = f(obj, j10, list.size());
        int size = f10.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            f10.addAll(list);
        }
        if (size > 0) {
            list = f10;
        }
        vi.x(obj, j10, list);
    }
}

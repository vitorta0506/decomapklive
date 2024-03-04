package com.google.android.gms.internal.recaptcha;

import java.util.List;
/* loaded from: classes2.dex */
final class tg extends ug {
    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ tg(rg rgVar) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ug
    public final <L> List<L> a(Object obj, long j10) {
        lg lgVar = (lg) vi.k(obj, j10);
        if (lgVar.E()) {
            return lgVar;
        }
        int size = lgVar.size();
        lg j11 = lgVar.j(size == 0 ? 10 : size + size);
        vi.x(obj, j10, j11);
        return j11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ug
    public final void b(Object obj, long j10) {
        ((lg) vi.k(obj, j10)).D();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    @Override // com.google.android.gms.internal.recaptcha.ug
    public final <E> void c(Object obj, Object obj2, long j10) {
        lg<E> lgVar = (lg) vi.k(obj, j10);
        lg<E> lgVar2 = (lg) vi.k(obj2, j10);
        int size = lgVar.size();
        int size2 = lgVar2.size();
        lg<E> lgVar3 = lgVar;
        lgVar3 = lgVar;
        if (size > 0 && size2 > 0) {
            boolean E = lgVar.E();
            lg<E> lgVar4 = lgVar;
            if (!E) {
                lgVar4 = lgVar.j(size2 + size);
            }
            lgVar4.addAll(lgVar2);
            lgVar3 = lgVar4;
        }
        if (size > 0) {
            lgVar2 = lgVar3;
        }
        vi.x(obj, j10, lgVar2);
    }
}

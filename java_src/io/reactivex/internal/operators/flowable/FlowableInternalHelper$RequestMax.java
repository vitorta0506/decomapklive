package io.reactivex.internal.operators.flowable;
/* loaded from: classes7.dex */
public enum FlowableInternalHelper$RequestMax implements vh.g<il.c> {
    INSTANCE;

    @Override // vh.g
    public void accept(il.c cVar) throws Exception {
        cVar.request(Long.MAX_VALUE);
    }
}

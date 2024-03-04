package com.google.android.gms.common.api;

import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.internal.BasePendingResult;
/* loaded from: classes2.dex */
final class m<R extends i> extends BasePendingResult<R> {

    /* renamed from: q  reason: collision with root package name */
    private final i f7622q;

    public m(d dVar, i iVar) {
        super(dVar);
        this.f7622q = iVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R c(Status status) {
        return (R) this.f7622q;
    }
}

package com.google.common.collect;

import java.util.Set;
import java.util.function.Predicate;
/* loaded from: classes2.dex */
public final /* synthetic */ class x7 implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Set f13484a;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return this.f13484a.contains(obj);
    }
}

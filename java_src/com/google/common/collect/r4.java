package com.google.common.collect;

import java.util.Map;
import java.util.function.Function;
/* loaded from: classes2.dex */
public final /* synthetic */ class r4 implements Function {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ r4 f13377a = new r4();

    private /* synthetic */ r4() {
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((Map.Entry) obj).getValue();
    }
}

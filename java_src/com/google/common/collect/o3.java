package com.google.common.collect;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class o3 extends ImmutableSetMultimap<Object, Object> {

    /* renamed from: a  reason: collision with root package name */
    static final o3 f13325a = new o3();
    private static final long serialVersionUID = 0;

    private o3() {
        super(ImmutableMap.of(), 0, null);
    }

    private Object readResolve() {
        return f13325a;
    }
}

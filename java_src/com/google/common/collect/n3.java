package com.google.common.collect;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class n3 extends ImmutableListMultimap<Object, Object> {

    /* renamed from: a  reason: collision with root package name */
    static final n3 f13267a = new n3();
    private static final long serialVersionUID = 0;

    private n3() {
        super(ImmutableMap.of(), 0);
    }

    private Object readResolve() {
        return f13267a;
    }
}

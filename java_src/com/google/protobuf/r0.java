package com.google.protobuf;
/* loaded from: classes3.dex */
class r0 implements n1 {

    /* renamed from: a  reason: collision with root package name */
    private static final r0 f15208a = new r0();

    private r0() {
    }

    public static r0 c() {
        return f15208a;
    }

    @Override // com.google.protobuf.n1
    public m1 a(Class<?> cls) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            try {
                return (m1) GeneratedMessageLite.f(cls.asSubclass(GeneratedMessageLite.class)).a();
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for " + cls.getName(), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
    }

    @Override // com.google.protobuf.n1
    public boolean b(Class<?> cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }
}

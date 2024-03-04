package com.google.protobuf;
/* loaded from: classes3.dex */
final class j2 implements m1 {

    /* renamed from: a  reason: collision with root package name */
    private final o1 f15020a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15021b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f15022c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15023d;

    @Override // com.google.protobuf.m1
    public boolean a() {
        return (this.f15023d & 2) == 2;
    }

    @Override // com.google.protobuf.m1
    public o1 b() {
        return this.f15020a;
    }

    @Override // com.google.protobuf.m1
    public ProtoSyntax c() {
        return (this.f15023d & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] d() {
        return this.f15022c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return this.f15021b;
    }
}

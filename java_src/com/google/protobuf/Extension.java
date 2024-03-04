package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.o1;
/* loaded from: classes3.dex */
public abstract class Extension<ContainingType extends o1, Type> extends c0<ContainingType, Type> {

    /* loaded from: classes3.dex */
    protected enum ExtensionType {
        IMMUTABLE,
        MUTABLE,
        PROTO1
    }

    /* loaded from: classes3.dex */
    public enum MessageType {
        PROTO1,
        PROTO2
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.c0
    public final boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object b(Object obj);

    public abstract Descriptors.FieldDescriptor c();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract ExtensionType d();

    public abstract l1 e();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object f(Object obj);
}

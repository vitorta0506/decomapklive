package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.o1;
/* loaded from: classes3.dex */
public interface l1 extends o1, r1 {

    /* loaded from: classes3.dex */
    public interface a extends o1.a, r1 {
        a A0(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException;

        a F0(Descriptors.FieldDescriptor fieldDescriptor);

        @Override // 
        l1 I();

        a L(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        a P0(l1 l1Var);

        @Override // 
        l1 build();

        a c(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        a f1(h3 h3Var);

        Descriptors.b getDescriptorForType();

        a w0(ByteString byteString) throws InvalidProtocolBufferException;
    }

    @Override // 
    e2<? extends l1> getParserForType();

    @Override // 
    a newBuilderForType();

    @Override // 
    a toBuilder();
}

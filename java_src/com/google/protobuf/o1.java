package com.google.protobuf;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3.dex */
public interface o1 extends p1 {

    /* loaded from: classes3.dex */
    public interface a extends p1, Cloneable {
        a E0(byte[] bArr) throws InvalidProtocolBufferException;

        o1 I();

        o1 build();

        a c0(o1 o1Var);

        a f0(p pVar, f0 f0Var) throws IOException;
    }

    e2<? extends o1> getParserForType();

    int getSerializedSize();

    a newBuilderForType();

    a toBuilder();

    byte[] toByteArray();

    ByteString toByteString();

    void writeTo(CodedOutputStream codedOutputStream) throws IOException;

    void writeTo(OutputStream outputStream) throws IOException;
}

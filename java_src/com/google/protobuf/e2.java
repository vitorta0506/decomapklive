package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public interface e2<MessageType> {
    MessageType a(byte[] bArr) throws InvalidProtocolBufferException;

    MessageType b(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException;

    MessageType c(ByteString byteString) throws InvalidProtocolBufferException;

    MessageType d(p pVar) throws InvalidProtocolBufferException;

    MessageType e(InputStream inputStream) throws InvalidProtocolBufferException;

    MessageType f(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException;

    MessageType g(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException;

    MessageType h(InputStream inputStream, f0 f0Var) throws InvalidProtocolBufferException;

    MessageType i(p pVar, f0 f0Var) throws InvalidProtocolBufferException;

    MessageType j(InputStream inputStream) throws InvalidProtocolBufferException;

    MessageType k(InputStream inputStream, f0 f0Var) throws InvalidProtocolBufferException;

    MessageType l(ByteBuffer byteBuffer) throws InvalidProtocolBufferException;

    MessageType m(p pVar, f0 f0Var) throws InvalidProtocolBufferException;
}

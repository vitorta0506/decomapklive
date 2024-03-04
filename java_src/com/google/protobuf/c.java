package com.google.protobuf;

import com.google.protobuf.b;
import com.google.protobuf.o1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public abstract class c<MessageType extends o1> implements e2<MessageType> {

    /* renamed from: a  reason: collision with root package name */
    private static final f0 f14863a = f0.b();

    private MessageType n(MessageType messagetype) throws InvalidProtocolBufferException {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw o(messagetype).asInvalidProtocolBufferException().setUnfinishedMessage(messagetype);
    }

    private UninitializedMessageException o(MessageType messagetype) {
        if (messagetype instanceof b) {
            return ((b) messagetype).newUninitializedMessageException();
        }
        return new UninitializedMessageException(messagetype);
    }

    public MessageType A(byte[] bArr, int i9, int i10, f0 f0Var) throws InvalidProtocolBufferException {
        return n(F(bArr, i9, i10, f0Var));
    }

    @Override // com.google.protobuf.e2
    /* renamed from: B */
    public MessageType g(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return A(bArr, 0, bArr.length, f0Var);
    }

    public MessageType C(InputStream inputStream, f0 f0Var) throws InvalidProtocolBufferException {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            return E(new b.a.C0143a(inputStream, p.E(read, inputStream)), f0Var);
        } catch (IOException e10) {
            throw new InvalidProtocolBufferException(e10);
        }
    }

    public MessageType D(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        try {
            p newCodedInput = byteString.newCodedInput();
            MessageType messagetype = (MessageType) m(newCodedInput, f0Var);
            try {
                newCodedInput.a(0);
                return messagetype;
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(messagetype);
            }
        } catch (InvalidProtocolBufferException e11) {
            throw e11;
        }
    }

    public MessageType E(InputStream inputStream, f0 f0Var) throws InvalidProtocolBufferException {
        p h10 = p.h(inputStream);
        MessageType messagetype = (MessageType) m(h10, f0Var);
        try {
            h10.a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(messagetype);
        }
    }

    public MessageType F(byte[] bArr, int i9, int i10, f0 f0Var) throws InvalidProtocolBufferException {
        try {
            p n9 = p.n(bArr, i9, i10);
            MessageType messagetype = (MessageType) m(n9, f0Var);
            try {
                n9.a(0);
                return messagetype;
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(messagetype);
            }
        } catch (InvalidProtocolBufferException e11) {
            throw e11;
        }
    }

    @Override // com.google.protobuf.e2
    /* renamed from: p */
    public MessageType e(InputStream inputStream) throws InvalidProtocolBufferException {
        return h(inputStream, f14863a);
    }

    @Override // com.google.protobuf.e2
    /* renamed from: q */
    public MessageType h(InputStream inputStream, f0 f0Var) throws InvalidProtocolBufferException {
        return n(C(inputStream, f0Var));
    }

    @Override // com.google.protobuf.e2
    /* renamed from: r */
    public MessageType c(ByteString byteString) throws InvalidProtocolBufferException {
        return b(byteString, f14863a);
    }

    @Override // com.google.protobuf.e2
    /* renamed from: s */
    public MessageType b(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return n(D(byteString, f0Var));
    }

    @Override // com.google.protobuf.e2
    /* renamed from: t */
    public MessageType d(p pVar) throws InvalidProtocolBufferException {
        return i(pVar, f14863a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.e2
    /* renamed from: u */
    public MessageType i(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        return (MessageType) n((o1) m(pVar, f0Var));
    }

    @Override // com.google.protobuf.e2
    /* renamed from: v */
    public MessageType j(InputStream inputStream) throws InvalidProtocolBufferException {
        return k(inputStream, f14863a);
    }

    @Override // com.google.protobuf.e2
    /* renamed from: w */
    public MessageType k(InputStream inputStream, f0 f0Var) throws InvalidProtocolBufferException {
        return n(E(inputStream, f0Var));
    }

    @Override // com.google.protobuf.e2
    /* renamed from: x */
    public MessageType l(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return f(byteBuffer, f14863a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.e2
    /* renamed from: y */
    public MessageType f(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        try {
            p k10 = p.k(byteBuffer);
            o1 o1Var = (o1) m(k10, f0Var);
            try {
                k10.a(0);
                return (MessageType) n(o1Var);
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(o1Var);
            }
        } catch (InvalidProtocolBufferException e11) {
            throw e11;
        }
    }

    @Override // com.google.protobuf.e2
    /* renamed from: z */
    public MessageType a(byte[] bArr) throws InvalidProtocolBufferException {
        return g(bArr, f14863a);
    }
}

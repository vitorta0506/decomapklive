package io.jsonwebtoken.io;
/* loaded from: classes6.dex */
public interface Deserializer<T> {
    T deserialize(byte[] bArr) throws DeserializationException;
}

package io.jsonwebtoken.io;
/* loaded from: classes6.dex */
public interface Serializer<T> {
    byte[] serialize(T t10) throws SerializationException;
}

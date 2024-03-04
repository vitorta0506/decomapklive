package io.jsonwebtoken.io;
/* loaded from: classes6.dex */
public interface Decoder<T, R> {
    R decode(T t10) throws DecodingException;
}

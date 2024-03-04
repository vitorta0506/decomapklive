package io.jsonwebtoken.impl;

import io.jsonwebtoken.Header;
import io.jsonwebtoken.Jwt;
/* loaded from: classes6.dex */
public class DefaultJwt<B> implements Jwt<Header, B> {
    private final B body;
    private final Header header;

    public DefaultJwt(Header header, B b10) {
        this.header = header;
        this.body = b10;
    }

    @Override // io.jsonwebtoken.Jwt
    public B getBody() {
        return this.body;
    }

    @Override // io.jsonwebtoken.Jwt
    public Header getHeader() {
        return this.header;
    }

    public String toString() {
        return "header=" + this.header + ",body=" + this.body;
    }
}

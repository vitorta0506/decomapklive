package com.google.auth.oauth2;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Date;
import java.util.Objects;
/* loaded from: classes2.dex */
public class IdToken extends AccessToken {
    private static final long serialVersionUID = -8514239465808977353L;
    private transient i5.a jsonWebSignature;

    private IdToken(String str, i5.a aVar) {
        super(str, new Date(aVar.b().k().longValue() * 1000));
        this.jsonWebSignature = aVar;
    }

    public static IdToken create(String str) throws IOException {
        return create(str, n.f11679f);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        this.jsonWebSignature = i5.a.d(n.f11679f, (String) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getTokenValue());
    }

    @Override // com.google.auth.oauth2.AccessToken
    public boolean equals(Object obj) {
        if (obj instanceof IdToken) {
            IdToken idToken = (IdToken) obj;
            return Objects.equals(super.getTokenValue(), idToken.getTokenValue()) && Objects.equals(this.jsonWebSignature.c(), idToken.jsonWebSignature.c()) && Objects.equals(this.jsonWebSignature.b(), idToken.jsonWebSignature.b());
        }
        return false;
    }

    i5.a getJsonWebSignature() {
        return this.jsonWebSignature;
    }

    @Override // com.google.auth.oauth2.AccessToken
    public int hashCode() {
        return Objects.hash(super.getTokenValue(), this.jsonWebSignature.c(), this.jsonWebSignature.b());
    }

    @Override // com.google.auth.oauth2.AccessToken
    public String toString() {
        return com.google.common.base.j.c(this).d("tokenValue", super.getTokenValue()).d("JsonWebSignature", this.jsonWebSignature).toString();
    }

    public static IdToken create(String str, g5.c cVar) throws IOException {
        return new IdToken(str, i5.a.d(cVar, str));
    }
}

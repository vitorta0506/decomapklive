package org.apache.http.impl.auth;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.d;
import org.apache.http.i;
import org.apache.http.util.CharArrayBuffer;
import si.g;
import vi.c;
/* loaded from: classes7.dex */
public abstract class RFC2617Scheme extends a implements Serializable {
    private static final long serialVersionUID = -2845454858205884623L;
    private transient Charset credentialsCharset;
    private final Map<String, String> params;

    @Deprecated
    public RFC2617Scheme(ChallengeState challengeState) {
        super(challengeState);
        this.params = new HashMap();
        this.credentialsCharset = org.apache.http.a.f55874b;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Charset a10 = c.a(objectInputStream.readUTF());
        this.credentialsCharset = a10;
        if (a10 == null) {
            this.credentialsCharset = org.apache.http.a.f55874b;
        }
        this.challengeState = (ChallengeState) objectInputStream.readObject();
    }

    private void readObjectNoData() throws ObjectStreamException {
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeUTF(this.credentialsCharset.name());
        objectOutputStream.writeObject(this.challengeState);
    }

    @Override // oi.a
    @Deprecated
    public abstract /* synthetic */ org.apache.http.c authenticate(oi.b bVar, i iVar) throws AuthenticationException;

    public Charset getCredentialsCharset() {
        Charset charset = this.credentialsCharset;
        return charset != null ? charset : org.apache.http.a.f55874b;
    }

    public String getParameter(String str) {
        if (str == null) {
            return null;
        }
        return this.params.get(str.toLowerCase(Locale.ROOT));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, String> getParameters() {
        return this.params;
    }

    public String getRealm() {
        return getParameter("realm");
    }

    @Override // oi.a
    public abstract /* synthetic */ String getSchemeName();

    public abstract /* synthetic */ boolean isComplete();

    public abstract /* synthetic */ boolean isConnectionBased();

    @Override // org.apache.http.impl.auth.a
    protected void parseChallenge(CharArrayBuffer charArrayBuffer, int i9, int i10) throws MalformedChallengeException {
        d[] a10 = si.c.f57927c.a(charArrayBuffer, new g(i9, charArrayBuffer.length()));
        this.params.clear();
        for (d dVar : a10) {
            this.params.put(dVar.getName().toLowerCase(Locale.ROOT), dVar.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCredentialsCharset(i iVar) {
        String str = (String) iVar.getParams().getParameter("http.auth.credential-charset");
        return str == null ? getCredentialsCharset().name() : str;
    }

    public RFC2617Scheme(Charset charset) {
        this.params = new HashMap();
        this.credentialsCharset = charset == null ? org.apache.http.a.f55874b : charset;
    }

    public RFC2617Scheme() {
        this(org.apache.http.a.f55874b);
    }
}

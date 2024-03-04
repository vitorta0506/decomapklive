package l5;

import com.google.auth.Credentials;
/* loaded from: classes2.dex */
final class a extends i {

    /* renamed from: a  reason: collision with root package name */
    private final Credentials f54193a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Credentials credentials) {
        this.f54193a = credentials;
    }

    @Override // l5.i, l5.f
    public Credentials a() {
        return this.f54193a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            Credentials credentials = this.f54193a;
            Credentials a10 = ((i) obj).a();
            return credentials == null ? a10 == null : credentials.equals(a10);
        }
        return false;
    }

    public int hashCode() {
        Credentials credentials = this.f54193a;
        return (credentials == null ? 0 : credentials.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "FixedCredentialsProvider{credentials=" + this.f54193a + "}";
    }
}

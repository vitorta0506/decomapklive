package l5;

import com.google.auth.Credentials;
/* loaded from: classes2.dex */
public abstract class i implements f {
    public static i b(Credentials credentials) {
        return new a(credentials);
    }

    @Override // l5.f
    public abstract Credentials a();
}

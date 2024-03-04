package oi;

import org.apache.http.auth.AuthenticationException;
import org.apache.http.c;
import org.apache.http.i;
/* loaded from: classes7.dex */
public interface a {
    @Deprecated
    c authenticate(b bVar, i iVar) throws AuthenticationException;

    String getSchemeName();
}

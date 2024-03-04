package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public abstract class r3 implements q3 {
    @Override // com.google.android.gms.internal.recaptcha.q3
    public abstract /* synthetic */ File a(Uri uri);

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final OutputStream e(Uri uri) throws IOException {
        return i().e(h(uri));
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final void f(Uri uri) throws IOException {
        i().f(h(uri));
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final void g(Uri uri, Uri uri2) throws IOException {
        i().g(h(uri), h(uri2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Uri h(Uri uri) throws IOException;

    protected abstract q3 i();
}

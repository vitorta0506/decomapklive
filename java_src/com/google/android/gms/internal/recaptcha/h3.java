package com.google.android.gms.internal.recaptcha;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class h3 extends k3 implements d3 {

    /* renamed from: a  reason: collision with root package name */
    private final FileOutputStream f8724a;

    /* renamed from: b  reason: collision with root package name */
    private final File f8725b;

    public h3(FileOutputStream fileOutputStream, File file) {
        super(fileOutputStream);
        this.f8724a = fileOutputStream;
        this.f8725b = file;
    }

    public final void a() throws IOException {
        this.f8724a.getFD().sync();
    }

    @Override // com.google.android.gms.internal.recaptcha.d3
    public final File zza() {
        return this.f8725b;
    }
}

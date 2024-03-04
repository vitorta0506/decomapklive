package com.google.android.gms.internal.recaptcha;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
/* loaded from: classes2.dex */
public final class g3 extends i3 implements d3 {

    /* renamed from: a  reason: collision with root package name */
    private final FileInputStream f8698a;

    /* renamed from: b  reason: collision with root package name */
    private final File f8699b;

    private g3(FileInputStream fileInputStream, File file) {
        super(fileInputStream);
        this.f8698a = fileInputStream;
        this.f8699b = file;
    }

    public static g3 a(File file) throws FileNotFoundException {
        return new g3(new FileInputStream(file), file);
    }

    @Override // com.google.android.gms.internal.recaptcha.d3
    public final File zza() {
        return this.f8699b;
    }
}

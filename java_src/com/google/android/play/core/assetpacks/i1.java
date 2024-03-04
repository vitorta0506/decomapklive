package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
final class i1 extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final k2 f10283a = new k2();

    /* renamed from: b  reason: collision with root package name */
    private final File f10284b;

    /* renamed from: c  reason: collision with root package name */
    private final f3 f10285c;

    /* renamed from: d  reason: collision with root package name */
    private long f10286d;

    /* renamed from: e  reason: collision with root package name */
    private long f10287e;

    /* renamed from: f  reason: collision with root package name */
    private FileOutputStream f10288f;

    /* renamed from: g  reason: collision with root package name */
    private l3 f10289g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(File file, f3 f3Var) {
        this.f10284b = file;
        this.f10285c = f3Var;
    }

    @Override // java.io.OutputStream
    public final void write(int i9) throws IOException {
        write(new byte[]{(byte) i9}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i9, int i10) throws IOException {
        int min;
        while (i10 > 0) {
            if (this.f10286d == 0 && this.f10287e == 0) {
                int b10 = this.f10283a.b(bArr, i9, i10);
                if (b10 == -1) {
                    return;
                }
                i9 += b10;
                i10 -= b10;
                l3 c10 = this.f10283a.c();
                this.f10289g = c10;
                if (c10.d()) {
                    this.f10286d = 0L;
                    this.f10285c.l(this.f10289g.f(), 0, this.f10289g.f().length);
                    this.f10287e = this.f10289g.f().length;
                } else if (this.f10289g.h() && !this.f10289g.g()) {
                    this.f10285c.j(this.f10289g.f());
                    File file = new File(this.f10284b, this.f10289g.c());
                    file.getParentFile().mkdirs();
                    this.f10286d = this.f10289g.b();
                    this.f10288f = new FileOutputStream(file);
                } else {
                    byte[] f10 = this.f10289g.f();
                    this.f10285c.l(f10, 0, f10.length);
                    this.f10286d = this.f10289g.b();
                }
            }
            if (!this.f10289g.g()) {
                if (this.f10289g.d()) {
                    this.f10285c.e(this.f10287e, bArr, i9, i10);
                    this.f10287e += i10;
                    min = i10;
                } else if (this.f10289g.h()) {
                    min = (int) Math.min(i10, this.f10286d);
                    this.f10288f.write(bArr, i9, min);
                    long j10 = this.f10286d - min;
                    this.f10286d = j10;
                    if (j10 == 0) {
                        this.f10288f.close();
                    }
                } else {
                    min = (int) Math.min(i10, this.f10286d);
                    this.f10285c.e((this.f10289g.f().length + this.f10289g.b()) - this.f10286d, bArr, i9, min);
                    this.f10286d -= min;
                }
                i9 += min;
                i10 -= min;
            }
        }
    }
}

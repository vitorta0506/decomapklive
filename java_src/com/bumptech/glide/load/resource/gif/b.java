package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c0.a;
/* loaded from: classes.dex */
public final class b implements a.InterfaceC0021a {

    /* renamed from: a  reason: collision with root package name */
    private final g0.d f4600a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final g0.b f4601b;

    public b(g0.d dVar, @Nullable g0.b bVar) {
        this.f4600a = dVar;
        this.f4601b = bVar;
    }

    @Override // c0.a.InterfaceC0021a
    public void a(@NonNull Bitmap bitmap) {
        this.f4600a.c(bitmap);
    }

    @Override // c0.a.InterfaceC0021a
    @NonNull
    public byte[] b(int i9) {
        g0.b bVar = this.f4601b;
        if (bVar == null) {
            return new byte[i9];
        }
        return (byte[]) bVar.c(i9, byte[].class);
    }

    @Override // c0.a.InterfaceC0021a
    @NonNull
    public Bitmap c(int i9, int i10, @NonNull Bitmap.Config config) {
        return this.f4600a.e(i9, i10, config);
    }

    @Override // c0.a.InterfaceC0021a
    @NonNull
    public int[] d(int i9) {
        g0.b bVar = this.f4601b;
        if (bVar == null) {
            return new int[i9];
        }
        return (int[]) bVar.c(i9, int[].class);
    }

    @Override // c0.a.InterfaceC0021a
    public void e(@NonNull byte[] bArr) {
        g0.b bVar = this.f4601b;
        if (bVar == null) {
            return;
        }
        bVar.put(bArr);
    }

    @Override // c0.a.InterfaceC0021a
    public void f(@NonNull int[] iArr) {
        g0.b bVar = this.f4601b;
        if (bVar == null) {
            return;
        }
        bVar.put(iArr);
    }
}

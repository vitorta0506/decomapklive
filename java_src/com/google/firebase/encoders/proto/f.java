package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class f implements d6.f {

    /* renamed from: a  reason: collision with root package name */
    private boolean f13862a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13863b = false;

    /* renamed from: c  reason: collision with root package name */
    private d6.b f13864c;

    /* renamed from: d  reason: collision with root package name */
    private final d f13865d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar) {
        this.f13865d = dVar;
    }

    private void b() {
        if (!this.f13862a) {
            this.f13862a = true;
            return;
        }
        throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
    }

    @Override // d6.f
    @NonNull
    public d6.f a(@Nullable String str) throws IOException {
        b();
        this.f13865d.l(this.f13864c, str, this.f13863b);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(d6.b bVar, boolean z10) {
        this.f13862a = false;
        this.f13864c = bVar;
        this.f13863b = z10;
    }

    @Override // d6.f
    @NonNull
    public d6.f e(boolean z10) throws IOException {
        b();
        this.f13865d.i(this.f13864c, z10, this.f13863b);
        return this;
    }
}

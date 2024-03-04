package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
/* loaded from: classes2.dex */
public final class c3 {

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f8547a;

    /* renamed from: b  reason: collision with root package name */
    private h3 f8548b;

    public final void a(List<OutputStream> list) throws IOException {
        OutputStream outputStream = (OutputStream) w8.a(list);
        if (outputStream instanceof h3) {
            this.f8548b = (h3) outputStream;
            this.f8547a = list.get(0);
        }
    }

    public final void b() throws IOException {
        if (this.f8548b != null) {
            this.f8547a.flush();
            this.f8548b.a();
            return;
        }
        throw new zzew("Cannot sync underlying stream");
    }
}

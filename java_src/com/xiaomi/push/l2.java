package com.xiaomi.push;

import java.io.ByteArrayOutputStream;
/* loaded from: classes5.dex */
public class l2 {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f36963a;

    /* renamed from: b  reason: collision with root package name */
    private final t2 f36964b;

    /* renamed from: c  reason: collision with root package name */
    private p2 f36965c;

    public l2(er erVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f36963a = byteArrayOutputStream;
        t2 t2Var = new t2(byteArrayOutputStream);
        this.f36964b = t2Var;
        this.f36965c = erVar.a(t2Var);
    }

    public byte[] a(ef efVar) {
        this.f36963a.reset();
        efVar.b(this.f36965c);
        return this.f36963a.toByteArray();
    }
}

package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class n2 {

    /* renamed from: a  reason: collision with root package name */
    private final p2 f8900a;

    /* renamed from: b  reason: collision with root package name */
    private final q3 f8901b;

    /* renamed from: c  reason: collision with root package name */
    private final List<v3> f8902c;

    /* renamed from: d  reason: collision with root package name */
    private final List<u3> f8903d;

    /* renamed from: e  reason: collision with root package name */
    private final Uri f8904e;

    /* renamed from: f  reason: collision with root package name */
    private final Uri f8905f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n2(m2 m2Var) {
        p2 p2Var;
        q3 q3Var;
        List<v3> list;
        List<u3> list2;
        Uri uri;
        Uri uri2;
        p2Var = m2Var.f8852a;
        this.f8900a = p2Var;
        q3Var = m2Var.f8853b;
        this.f8901b = q3Var;
        list = m2Var.f8854c;
        this.f8902c = list;
        list2 = m2Var.f8855d;
        this.f8903d = list2;
        uri = m2Var.f8856e;
        this.f8904e = uri;
        uri2 = m2Var.f8857f;
        this.f8905f = uri2;
    }

    public final Uri a() {
        return this.f8905f;
    }

    public final q3 b() {
        return this.f8901b;
    }

    public final List<InputStream> c(InputStream inputStream) throws IOException {
        i2 a10;
        ArrayList arrayList = new ArrayList();
        arrayList.add(inputStream);
        if (!this.f8903d.isEmpty() && (a10 = i2.a(this.f8903d, this.f8904e, inputStream)) != null) {
            arrayList.add(a10);
        }
        for (v3 v3Var : this.f8902c) {
            InputStream inputStream2 = (InputStream) w8.a(arrayList);
            arrayList.add(v3Var.E());
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    public final List<OutputStream> d(OutputStream outputStream) throws IOException {
        j2 a10;
        ArrayList arrayList = new ArrayList();
        arrayList.add(outputStream);
        if (!this.f8903d.isEmpty() && (a10 = j2.a(this.f8903d, this.f8904e, outputStream)) != null) {
            arrayList.add(a10);
        }
        for (v3 v3Var : this.f8902c) {
            OutputStream outputStream2 = (OutputStream) w8.a(arrayList);
            arrayList.add(v3Var.c());
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    public final boolean e() {
        return !this.f8902c.isEmpty();
    }
}

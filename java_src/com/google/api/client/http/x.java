package com.google.api.client.http;

import com.google.api.client.util.g0;
import com.google.api.client.util.z;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Map;
/* loaded from: classes2.dex */
public class x extends a {

    /* renamed from: c  reason: collision with root package name */
    private Object f11078c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f11079d;

    public x(Object obj) {
        super(y.f11080a);
        g(obj);
        this.f11079d = false;
    }

    private static boolean f(boolean z10, Writer writer, String str, Object obj, boolean z11) throws IOException {
        String c10;
        if (obj != null && !com.google.api.client.util.j.d(obj)) {
            if (z10) {
                z10 = false;
            } else {
                writer.write(ContainerUtils.FIELD_DELIMITER);
            }
            writer.write(str);
            String e10 = obj instanceof Enum ? com.google.api.client.util.m.j((Enum) obj).e() : obj.toString();
            if (z11) {
                c10 = j5.a.d(e10);
            } else {
                c10 = j5.a.c(e10);
            }
            if (c10.length() != 0) {
                writer.write(ContainerUtils.KEY_VALUE_DELIMITER);
                writer.write(c10);
            }
        }
        return z10;
    }

    public x g(Object obj) {
        this.f11078c = z.d(obj);
        return this;
    }

    @Override // com.google.api.client.util.d0
    public void writeTo(OutputStream outputStream) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, e()));
        boolean z10 = true;
        for (Map.Entry<String, Object> entry : com.google.api.client.util.j.f(this.f11078c).entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String c10 = j5.a.c(entry.getKey());
                Class<?> cls = value.getClass();
                if (!(value instanceof Iterable) && !cls.isArray()) {
                    z10 = f(z10, bufferedWriter, c10, value, this.f11079d);
                } else {
                    for (Object obj : g0.l(value)) {
                        z10 = f(z10, bufferedWriter, c10, obj, this.f11079d);
                    }
                }
            }
        }
        bufferedWriter.flush();
    }
}

package g5;

import com.google.api.client.util.DateTime;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.g0;
import com.google.api.client.util.j;
import com.google.api.client.util.m;
import com.google.api.client.util.z;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class d implements Closeable, Flushable {
    private void c(boolean z10, Object obj) throws IOException {
        boolean z11;
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        if (j.d(obj)) {
            o();
        } else if (obj instanceof String) {
            A((String) obj);
        } else {
            boolean z12 = true;
            if (obj instanceof Number) {
                if (z10) {
                    A(obj.toString());
                } else if (obj instanceof BigDecimal) {
                    t((BigDecimal) obj);
                } else if (obj instanceof BigInteger) {
                    v((BigInteger) obj);
                } else if (obj instanceof Long) {
                    s(((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    float floatValue = ((Number) obj).floatValue();
                    z.a((Float.isInfinite(floatValue) || Float.isNaN(floatValue)) ? false : false);
                    q(floatValue);
                } else if (!(obj instanceof Integer) && !(obj instanceof Short) && !(obj instanceof Byte)) {
                    double doubleValue = ((Number) obj).doubleValue();
                    z.a((Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) ? false : false);
                    p(doubleValue);
                } else {
                    r(((Number) obj).intValue());
                }
            } else if (obj instanceof Boolean) {
                d(((Boolean) obj).booleanValue());
            } else if (obj instanceof DateTime) {
                A(((DateTime) obj).toStringRfc3339());
            } else if (((obj instanceof Iterable) || cls.isArray()) && !(obj instanceof Map) && !(obj instanceof GenericData)) {
                w();
                for (Object obj2 : g0.l(obj)) {
                    c(z10, obj2);
                }
                e();
            } else if (cls.isEnum()) {
                String e10 = m.j((Enum) obj).e();
                if (e10 == null) {
                    o();
                } else {
                    A(e10);
                }
            } else {
                y();
                boolean z13 = (obj instanceof Map) && !(obj instanceof GenericData);
                com.google.api.client.util.h e11 = z13 ? null : com.google.api.client.util.h.e(cls);
                for (Map.Entry<String, Object> entry : j.f(obj).entrySet()) {
                    Object value = entry.getValue();
                    if (value != null) {
                        String key = entry.getKey();
                        if (z13) {
                            z11 = z10;
                        } else {
                            Field a10 = e11.a(key);
                            z11 = (a10 == null || a10.getAnnotation(h.class) == null) ? false : true;
                        }
                        k(key);
                        c(z11, value);
                    }
                }
                j();
            }
        }
    }

    public abstract void A(String str) throws IOException;

    public abstract void a() throws IOException;

    public final void b(Object obj) throws IOException {
        c(false, obj);
    }

    public abstract void d(boolean z10) throws IOException;

    public abstract void e() throws IOException;

    @Override // java.io.Flushable
    public abstract void flush() throws IOException;

    public abstract void j() throws IOException;

    public abstract void k(String str) throws IOException;

    public abstract void o() throws IOException;

    public abstract void p(double d10) throws IOException;

    public abstract void q(float f10) throws IOException;

    public abstract void r(int i9) throws IOException;

    public abstract void s(long j10) throws IOException;

    public abstract void t(BigDecimal bigDecimal) throws IOException;

    public abstract void v(BigInteger bigInteger) throws IOException;

    public abstract void w() throws IOException;

    public abstract void y() throws IOException;
}

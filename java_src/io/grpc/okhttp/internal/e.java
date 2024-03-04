package io.grpc.okhttp.internal;

import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f45303a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f45304b = new String[0];

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f45305c = Charset.forName("UTF-8");

    public static <T> List<T> a(T[] tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    private static <T> List<T> b(T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            int length = tArr2.length;
            int i9 = 0;
            while (true) {
                if (i9 < length) {
                    T t11 = tArr2[i9];
                    if (t10.equals(t11)) {
                        arrayList.add(t11);
                        break;
                    }
                    i9++;
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] c(Class<T> cls, T[] tArr, T[] tArr2) {
        List b10 = b(tArr, tArr2);
        return (T[]) b10.toArray((Object[]) Array.newInstance((Class<?>) cls, b10.size()));
    }
}

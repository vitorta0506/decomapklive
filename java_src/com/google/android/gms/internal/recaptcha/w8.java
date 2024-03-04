package com.google.android.gms.internal.recaptcha;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public final class w8 {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T a(Iterable<T> iterable) {
        if (!iterable.isEmpty()) {
            return (T) iterable.get(iterable.size() - 1);
        }
        throw new NoSuchElementException();
    }
}

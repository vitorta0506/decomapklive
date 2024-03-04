package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class q7 {
    static final CharSequence a(Object obj, String str) {
        obj.getClass();
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public static final StringBuilder b(StringBuilder sb2, Iterator<? extends Object> it, String str) {
        try {
            if (it.hasNext()) {
                sb2.append(a(it.next(), str));
                while (it.hasNext()) {
                    sb2.append((CharSequence) str);
                    sb2.append(a(it.next(), str));
                }
            }
            return sb2;
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}

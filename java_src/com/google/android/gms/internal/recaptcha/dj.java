package com.google.android.gms.internal.recaptcha;

import java.time.Instant;
/* loaded from: classes2.dex */
public final class dj {
    public static ji a(za zaVar) {
        Instant now = Instant.now();
        return fj.d(now.getEpochSecond(), now.getNano());
    }
}

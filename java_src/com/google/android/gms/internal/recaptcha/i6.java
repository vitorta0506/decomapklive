package com.google.android.gms.internal.recaptcha;

import android.os.StrictMode;
import java.security.SecureRandom;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
final class i6 {

    /* renamed from: c  reason: collision with root package name */
    private static final i6 f8753c;

    /* renamed from: a  reason: collision with root package name */
    private final UUID f8754a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicLong f8755b;

    static {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            f8753c = new i6(UUID.randomUUID(), new SecureRandom().nextLong());
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    i6(UUID uuid, long j10) {
        this.f8754a = uuid;
        this.f8755b = new AtomicLong((j10 ^ 25214903917L) & 281474976710655L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i6 b() {
        return f8753c;
    }

    final long a() {
        long j10;
        long j11;
        long j12;
        do {
            j10 = this.f8755b.get();
            long j13 = ((j10 * 25214903917L) + 11) & 281474976710655L;
            j11 = ((25214903917L * j13) + 11) & 281474976710655L;
            j12 = (((int) (j13 >>> 16)) << 32) + ((int) (j11 >>> 16));
        } while (!this.f8755b.compareAndSet(j10, j11));
        return j12;
    }

    public final UUID c() {
        long a10 = a();
        return new UUID((a10 & (-61441)) ^ this.f8754a.getMostSignificantBits(), (a() >>> 2) ^ this.f8754a.getLeastSignificantBits());
    }
}

package com.vk.api.sdk.utils.tmr;

import android.os.SystemClock;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0005H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/vk/api/sdk/utils/tmr/TooManyRequestBackoffGlobal;", "Lcom/vk/api/sdk/utils/tmr/TooManyRequestLimitBackoff;", "()V", "lastTimestamps", "Ljava/util/ArrayDeque;", "", "fillIfNeeded", "", "maxRequest", "", "waitBeforeCall", "maxRetryCount", "maxRetryTime", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class TooManyRequestBackoffGlobal implements TooManyRequestLimitBackoff {
    @NotNull
    public static final TooManyRequestBackoffGlobal INSTANCE = new TooManyRequestBackoffGlobal();
    @NotNull
    private static final ArrayDeque<Long> lastTimestamps = new ArrayDeque<>();

    private TooManyRequestBackoffGlobal() {
    }

    private final synchronized void fillIfNeeded(int i9) {
        ArrayDeque<Long> arrayDeque = lastTimestamps;
        if (i9 == arrayDeque.size()) {
            return;
        }
        int i10 = 0;
        if (i9 > arrayDeque.size()) {
            int size = i9 - arrayDeque.size();
            while (i10 < size) {
                lastTimestamps.addFirst(0L);
                i10++;
            }
        } else {
            int size2 = arrayDeque.size() - i9;
            while (i10 < size2) {
                lastTimestamps.removeFirst();
                i10++;
            }
        }
    }

    @Override // com.vk.api.sdk.utils.tmr.TooManyRequestLimitBackoff
    public synchronized void waitBeforeCall(int i9, long j10) {
        fillIfNeeded(i9);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        ArrayDeque<Long> arrayDeque = lastTimestamps;
        arrayDeque.addLast(Long.valueOf(elapsedRealtime));
        Long firstTimestamp = arrayDeque.removeFirst();
        Intrinsics.checkNotNullExpressionValue(firstTimestamp, "firstTimestamp");
        long longValue = j10 - (elapsedRealtime - firstTimestamp.longValue());
        if (longValue > 0) {
            Thread.sleep(longValue);
        }
    }
}

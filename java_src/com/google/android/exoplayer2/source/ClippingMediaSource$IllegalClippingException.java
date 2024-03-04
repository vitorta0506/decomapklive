package com.google.android.exoplayer2.source;

import java.io.IOException;
/* loaded from: classes.dex */
public final class ClippingMediaSource$IllegalClippingException extends IOException {
    public static final int REASON_INVALID_PERIOD_COUNT = 0;
    public static final int REASON_NOT_SEEKABLE_TO_START = 1;
    public static final int REASON_START_EXCEEDS_END = 2;
    public final int reason;

    public ClippingMediaSource$IllegalClippingException(int i9) {
        super("Illegal clipping: " + getReasonDescription(i9));
        this.reason = i9;
    }

    private static String getReasonDescription(int i9) {
        return i9 != 0 ? i9 != 1 ? i9 != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count";
    }
}

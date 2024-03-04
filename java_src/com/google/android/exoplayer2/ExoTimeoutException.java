package com.google.android.exoplayer2;
/* loaded from: classes.dex */
public final class ExoTimeoutException extends RuntimeException {
    public static final int TIMEOUT_OPERATION_DETACH_SURFACE = 3;
    public static final int TIMEOUT_OPERATION_RELEASE = 1;
    public static final int TIMEOUT_OPERATION_SET_FOREGROUND_MODE = 2;
    public static final int TIMEOUT_OPERATION_UNDEFINED = 0;
    public final int timeoutOperation;

    public ExoTimeoutException(int i9) {
        super(getErrorMessage(i9));
        this.timeoutOperation = i9;
    }

    private static String getErrorMessage(int i9) {
        return i9 != 1 ? i9 != 2 ? i9 != 3 ? "Undefined timeout." : "Detaching surface timed out." : "Setting foreground mode timed out." : "Player release timed out.";
    }
}

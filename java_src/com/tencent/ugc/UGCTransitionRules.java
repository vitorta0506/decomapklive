package com.tencent.ugc;
/* loaded from: classes4.dex */
public class UGCTransitionRules {
    public static final int DEFAULT_IMAGE_HEIGHT = 1280;
    public static final int DEFAULT_IMAGE_WIDTH = 720;

    public static long getMotionDurationMs(int i9) {
        switch (i9) {
            case 1:
            case 2:
            default:
                return 500L;
            case 3:
                return 1000L;
            case 4:
            case 5:
                return 2500L;
            case 6:
                return 1500L;
        }
    }

    public static long getStayDurationMs(int i9) {
        switch (i9) {
            case 1:
            case 2:
            default:
                return 1000L;
            case 3:
            case 6:
                return 1500L;
            case 4:
            case 5:
                return 100L;
        }
    }
}

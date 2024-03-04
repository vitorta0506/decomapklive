package org.light.utils;
/* loaded from: classes7.dex */
public class FpsUtils {
    private static final double JUMP_FRAME_THRESHOLD = 0.3d;
    private static final long MONITOR_INTERVAL = 1000;
    public static float averageFps;
    private static int fameCount;
    private static int fps2;
    private static long lastFameTime;

    public static int getFps() {
        if (System.currentTimeMillis() - lastFameTime > 1000) {
            int i9 = (int) (fameCount * 1);
            fameCount = 0;
            lastFameTime = System.currentTimeMillis();
            if (i9 < fps2 * JUMP_FRAME_THRESHOLD) {
                return 0;
            }
            fps2 = i9;
        } else {
            fameCount++;
        }
        return fps2;
    }
}

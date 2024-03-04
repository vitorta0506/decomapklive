package org.light.lightAssetKit.components;
/* loaded from: classes7.dex */
public class TimeRange {
    public int duration;
    public int startTime;

    public TimeRange() {
        this.startTime = Integer.MIN_VALUE;
        this.duration = Integer.MIN_VALUE;
    }

    public TimeRange(int i9, int i10) {
        this.startTime = i9;
        this.duration = i10;
    }
}

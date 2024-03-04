package org.light.lightAssetKit.components;

import org.light.lightAssetKit.enums.TimeOffsetType;
/* loaded from: classes7.dex */
public class TransitionEventInfos {
    public int selectionID;
    public int timeOffset;
    public TimeOffsetType timeOffsetType;

    public TransitionEventInfos() {
        this.timeOffset = 0;
        this.timeOffsetType = TimeOffsetType.End;
    }

    public TransitionEventInfos(int i9, int i10, TimeOffsetType timeOffsetType) {
        this.timeOffset = 0;
        TimeOffsetType timeOffsetType2 = TimeOffsetType.End;
        this.selectionID = i9;
        this.timeOffset = i10;
        this.timeOffsetType = timeOffsetType;
    }
}

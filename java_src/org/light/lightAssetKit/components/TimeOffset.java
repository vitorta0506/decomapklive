package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class TimeOffset extends Component {
    private int startOffset = Integer.MIN_VALUE;
    private int endOffset = Integer.MIN_VALUE;
    private int duration = Integer.MIN_VALUE;
    private int loopCount = 0;
    private boolean visibleWhileOverTime = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof TimeOffset) {
            TimeOffset timeOffset = (TimeOffset) componentBase;
            this.startOffset = timeOffset.startOffset;
            this.endOffset = timeOffset.endOffset;
            this.duration = timeOffset.duration;
            this.loopCount = timeOffset.loopCount;
            this.visibleWhileOverTime = timeOffset.visibleWhileOverTime;
        }
        super.doUpdate(componentBase);
    }

    public int getDuration() {
        return this.duration;
    }

    public int getEndOffset() {
        return this.endOffset;
    }

    public int getLoopCount() {
        return this.loopCount;
    }

    public int getStartOffset() {
        return this.startOffset;
    }

    public boolean getVisibleWhileOverTime() {
        return this.visibleWhileOverTime;
    }

    public void setDuration(int i9) {
        this.duration = i9;
        reportPropertyChange("duration", Integer.valueOf(i9));
    }

    public void setEndOffset(int i9) {
        this.endOffset = i9;
        reportPropertyChange("endOffset", Integer.valueOf(i9));
    }

    public void setLoopCount(int i9) {
        this.loopCount = i9;
        reportPropertyChange("loopCount", Integer.valueOf(i9));
    }

    public void setStartOffset(int i9) {
        this.startOffset = i9;
        reportPropertyChange("startOffset", Integer.valueOf(i9));
    }

    public void setVisibleWhileOverTime(boolean z10) {
        this.visibleWhileOverTime = z10;
        reportPropertyChange("visibleWhileOverTime", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "TimeOffset";
    }
}

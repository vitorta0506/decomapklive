package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.TimeOffsetType;
/* loaded from: classes7.dex */
public class EventTrigger extends Component {
    private String event;
    private int startOffset;
    private TimeOffsetType timeOffsetType;

    public EventTrigger() {
        this.event = "";
        this.startOffset = Integer.MIN_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof EventTrigger) {
            EventTrigger eventTrigger = (EventTrigger) componentBase;
            this.event = eventTrigger.event;
            this.startOffset = eventTrigger.startOffset;
            this.timeOffsetType = eventTrigger.timeOffsetType;
        }
        super.doUpdate(componentBase);
    }

    public String getEvent() {
        return this.event;
    }

    public int getStartOffset() {
        return this.startOffset;
    }

    public TimeOffsetType getTimeOffsetType() {
        return this.timeOffsetType;
    }

    public void setEvent(String str) {
        this.event = str;
        reportPropertyChange("event", str);
    }

    public void setStartOffset(int i9) {
        this.startOffset = i9;
        reportPropertyChange("startOffset", Integer.valueOf(i9));
    }

    public void setTimeOffsetType(TimeOffsetType timeOffsetType) {
        this.timeOffsetType = timeOffsetType;
        reportPropertyChange("timeOffsetType", timeOffsetType);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "EventTrigger";
    }

    public EventTrigger(String str, int i9, TimeOffsetType timeOffsetType) {
        this.event = str;
        this.startOffset = i9;
        this.timeOffsetType = timeOffsetType;
    }
}

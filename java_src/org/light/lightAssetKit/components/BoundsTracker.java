package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class BoundsTracker extends Component {
    private Vec3 endPosition;
    private Size endSize;
    private String key;
    private String pagLayerName;
    private Vec3 startPosition;
    private Size startSize;
    private TimeRange timeRange;
    private float zoom;

    public BoundsTracker() {
        this.key = "";
        this.pagLayerName = "";
        this.zoom = 1.0f;
        this.startPosition = new Vec3();
        this.endPosition = new Vec3();
        this.startSize = new Size();
        this.endSize = new Size();
        this.timeRange = new TimeRange();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof BoundsTracker) {
            BoundsTracker boundsTracker = (BoundsTracker) componentBase;
            this.key = boundsTracker.key;
            this.pagLayerName = boundsTracker.pagLayerName;
            this.zoom = boundsTracker.zoom;
            this.startPosition = boundsTracker.startPosition;
            this.endPosition = boundsTracker.endPosition;
            this.startSize = boundsTracker.startSize;
            this.endSize = boundsTracker.endSize;
            this.timeRange = boundsTracker.timeRange;
        }
        super.doUpdate(componentBase);
    }

    public Vec3 getEndPosition() {
        return this.endPosition;
    }

    public Size getEndSize() {
        return this.endSize;
    }

    public String getKey() {
        return this.key;
    }

    public String getPagLayerName() {
        return this.pagLayerName;
    }

    public Vec3 getStartPosition() {
        return this.startPosition;
    }

    public Size getStartSize() {
        return this.startSize;
    }

    public TimeRange getTimeRange() {
        return this.timeRange;
    }

    public float getZoom() {
        return this.zoom;
    }

    public void setEndPosition(Vec3 vec3) {
        this.endPosition = vec3;
        reportPropertyChange("endPosition", vec3);
    }

    public void setEndSize(Size size) {
        this.endSize = size;
        reportPropertyChange("endSize", size);
    }

    public void setKey(String str) {
        this.key = str;
        reportPropertyChange("key", str);
    }

    public void setPagLayerName(String str) {
        this.pagLayerName = str;
        reportPropertyChange("pagLayerName", str);
    }

    public void setStartPosition(Vec3 vec3) {
        this.startPosition = vec3;
        reportPropertyChange("startPosition", vec3);
    }

    public void setStartSize(Size size) {
        this.startSize = size;
        reportPropertyChange("startSize", size);
    }

    public void setTimeRange(TimeRange timeRange) {
        this.timeRange = timeRange;
        reportPropertyChange("timeRange", timeRange);
    }

    public void setZoom(float f10) {
        this.zoom = f10;
        reportPropertyChange("zoom", Float.valueOf(f10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "BoundsTracker";
    }

    public BoundsTracker(String str, String str2, float f10, Vec3 vec3, Vec3 vec32, Size size, Size size2, TimeRange timeRange) {
        this.key = "";
        this.pagLayerName = "";
        this.zoom = 1.0f;
        this.startPosition = new Vec3();
        this.endPosition = new Vec3();
        this.startSize = new Size();
        this.endSize = new Size();
        new TimeRange();
        this.key = str;
        this.pagLayerName = str2;
        this.zoom = f10;
        this.startPosition = vec3;
        this.endPosition = vec32;
        this.startSize = size;
        this.endSize = size2;
        this.timeRange = timeRange;
    }
}

package org.light.lightAssetKit.components;

import java.util.ArrayList;
import java.util.Arrays;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class TrackingComponent extends Component {
    private ArrayList<Integer> alignPoints = new ArrayList<>(Arrays.asList(64));
    private int scalePivotPoint1 = 0;
    private int scalePivotPoint2 = 18;
    private boolean xAxisTrack = true;
    private boolean yAxisTrack = true;
    private boolean xAxisRotateTrack = true;
    private boolean yAxisRotateTrack = true;
    private boolean zAxisRotateTrack = true;
    private boolean xAxisScale = true;
    private boolean yAxisScale = true;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof TrackingComponent) {
            TrackingComponent trackingComponent = (TrackingComponent) componentBase;
            this.alignPoints = trackingComponent.alignPoints;
            this.scalePivotPoint1 = trackingComponent.scalePivotPoint1;
            this.scalePivotPoint2 = trackingComponent.scalePivotPoint2;
            this.xAxisTrack = trackingComponent.xAxisTrack;
            this.yAxisTrack = trackingComponent.yAxisTrack;
            this.xAxisRotateTrack = trackingComponent.xAxisRotateTrack;
            this.yAxisRotateTrack = trackingComponent.yAxisRotateTrack;
            this.zAxisRotateTrack = trackingComponent.zAxisRotateTrack;
            this.xAxisScale = trackingComponent.xAxisScale;
            this.yAxisScale = trackingComponent.yAxisScale;
        }
        super.doUpdate(componentBase);
    }

    public ArrayList<Integer> getAlignPoints() {
        return this.alignPoints;
    }

    public int getScalePivotPoint1() {
        return this.scalePivotPoint1;
    }

    public int getScalePivotPoint2() {
        return this.scalePivotPoint2;
    }

    public boolean getXAxisRotateTrack() {
        return this.xAxisRotateTrack;
    }

    public boolean getXAxisScale() {
        return this.xAxisScale;
    }

    public boolean getXAxisTrack() {
        return this.xAxisTrack;
    }

    public boolean getYAxisRotateTrack() {
        return this.yAxisRotateTrack;
    }

    public boolean getYAxisScale() {
        return this.yAxisScale;
    }

    public boolean getYAxisTrack() {
        return this.yAxisTrack;
    }

    public boolean getZAxisRotateTrack() {
        return this.zAxisRotateTrack;
    }

    public void setAlignPoints(ArrayList<Integer> arrayList) {
        this.alignPoints = arrayList;
        reportPropertyChange("alignPoints", arrayList);
    }

    public void setScalePivotPoint1(int i9) {
        this.scalePivotPoint1 = i9;
        reportPropertyChange("scalePivotPoint1", Integer.valueOf(i9));
    }

    public void setScalePivotPoint2(int i9) {
        this.scalePivotPoint2 = i9;
        reportPropertyChange("scalePivotPoint2", Integer.valueOf(i9));
    }

    public void setXAxisRotateTrack(boolean z10) {
        this.xAxisRotateTrack = z10;
        reportPropertyChange("xAxisRotateTrack", Boolean.valueOf(z10));
    }

    public void setXAxisScale(boolean z10) {
        this.xAxisScale = z10;
        reportPropertyChange("xAxisScale", Boolean.valueOf(z10));
    }

    public void setXAxisTrack(boolean z10) {
        this.xAxisTrack = z10;
        reportPropertyChange("xAxisTrack", Boolean.valueOf(z10));
    }

    public void setYAxisRotateTrack(boolean z10) {
        this.yAxisRotateTrack = z10;
        reportPropertyChange("yAxisRotateTrack", Boolean.valueOf(z10));
    }

    public void setYAxisScale(boolean z10) {
        this.yAxisScale = z10;
        reportPropertyChange("yAxisScale", Boolean.valueOf(z10));
    }

    public void setYAxisTrack(boolean z10) {
        this.yAxisTrack = z10;
        reportPropertyChange("yAxisTrack", Boolean.valueOf(z10));
    }

    public void setZAxisRotateTrack(boolean z10) {
        this.zAxisRotateTrack = z10;
        reportPropertyChange("zAxisRotateTrack", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "TrackingComponent";
    }
}

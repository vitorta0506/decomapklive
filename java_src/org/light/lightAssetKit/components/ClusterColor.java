package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class ClusterColor extends Component {
    private int clusterColorNum;
    private ArrayList<ColorItem> colorArray;
    private int colorNum;
    private boolean colorReady;
    private String colorRenderTargetID;
    private boolean isSync;

    public ClusterColor() {
        this.colorRenderTargetID = "";
        this.colorNum = 4;
        this.clusterColorNum = 16;
        this.colorArray = new ArrayList<>();
        this.isSync = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof ClusterColor) {
            ClusterColor clusterColor = (ClusterColor) componentBase;
            this.colorRenderTargetID = clusterColor.colorRenderTargetID;
            this.colorNum = clusterColor.colorNum;
            this.clusterColorNum = clusterColor.clusterColorNum;
            this.colorReady = clusterColor.colorReady;
            this.colorArray = clusterColor.colorArray;
            this.isSync = clusterColor.isSync;
        }
        super.doUpdate(componentBase);
    }

    public int getClusterColorNum() {
        return this.clusterColorNum;
    }

    public ArrayList<ColorItem> getColorArray() {
        return this.colorArray;
    }

    public int getColorNum() {
        return this.colorNum;
    }

    public boolean getColorReady() {
        return this.colorReady;
    }

    public String getColorRenderTargetID() {
        return this.colorRenderTargetID;
    }

    public boolean getIsSync() {
        return this.isSync;
    }

    public void setClusterColorNum(int i9) {
        this.clusterColorNum = i9;
        reportPropertyChange("clusterColorNum", Integer.valueOf(i9));
    }

    public void setColorArray(ArrayList<ColorItem> arrayList) {
        this.colorArray = arrayList;
        reportPropertyChange("colorArray", arrayList);
    }

    public void setColorNum(int i9) {
        this.colorNum = i9;
        reportPropertyChange("colorNum", Integer.valueOf(i9));
    }

    public void setColorReady(boolean z10) {
        this.colorReady = z10;
        reportPropertyChange("colorReady", Boolean.valueOf(z10));
    }

    public void setColorRenderTargetID(String str) {
        this.colorRenderTargetID = str;
        reportPropertyChange("colorRenderTargetID", str);
    }

    public void setIsSync(boolean z10) {
        this.isSync = z10;
        reportPropertyChange("isSync", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "ClusterColor";
    }

    public ClusterColor(String str, int i9, int i10, boolean z10) {
        this.colorRenderTargetID = "";
        this.colorNum = 4;
        this.clusterColorNum = 16;
        this.colorArray = new ArrayList<>();
        this.colorRenderTargetID = str;
        this.colorNum = i9;
        this.clusterColorNum = i10;
        this.isSync = z10;
    }
}

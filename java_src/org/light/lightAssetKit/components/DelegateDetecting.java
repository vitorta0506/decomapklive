package org.light.lightAssetKit.components;
/* loaded from: classes7.dex */
public class DelegateDetecting {
    public boolean alwaysProcess;
    public boolean cameraFrameInNeed;
    public int cameraFrameShortEdgeLength;
    public String key;

    public DelegateDetecting() {
        this.key = "";
        this.alwaysProcess = false;
        this.cameraFrameInNeed = true;
        this.cameraFrameShortEdgeLength = 0;
    }

    public DelegateDetecting(String str, boolean z10, boolean z11, int i9) {
        this.key = str;
        this.alwaysProcess = z10;
        this.cameraFrameInNeed = z11;
        this.cameraFrameShortEdgeLength = i9;
    }
}

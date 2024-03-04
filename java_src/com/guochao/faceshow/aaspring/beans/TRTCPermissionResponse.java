package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class TRTCPermissionResponse {
    private int appointResult;
    private int userCurrentDiamond;
    private int audioDiamond = 50;
    private int videoDiamond = 80;

    public int getAppointResult() {
        return this.appointResult;
    }

    public int getAudioDiamond() {
        return this.audioDiamond;
    }

    public int getUserCurrentDiamond() {
        return this.userCurrentDiamond;
    }

    public int getVideoDiamond() {
        return this.videoDiamond;
    }

    public void setAppointResult(int i9) {
        this.appointResult = i9;
    }

    public void setAudioDiamond(int i9) {
        this.audioDiamond = i9;
    }

    public void setUserCurrentDiamond(int i9) {
        this.userCurrentDiamond = i9;
    }

    public void setVideoDiamond(int i9) {
        this.videoDiamond = i9;
    }
}

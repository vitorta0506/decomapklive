package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class PkRecordData {
    private String pkCount;
    private List<PkRecord> pkList;
    private String winRoute;
    private String winTimes;

    public String getPkCount() {
        return this.pkCount;
    }

    public List<PkRecord> getPkList() {
        return this.pkList;
    }

    public String getWinRoute() {
        return this.winRoute;
    }

    public String getWinTimes() {
        return this.winTimes;
    }

    public void setPkCount(String str) {
        this.pkCount = str;
    }

    public void setPkList(List<PkRecord> list) {
        this.pkList = list;
    }

    public void setWinRoute(String str) {
        this.winRoute = str;
    }

    public void setWinTimes(String str) {
        this.winTimes = str;
    }
}

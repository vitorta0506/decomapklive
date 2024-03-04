package com.tencent.ugc.videoprocessor;

import com.tencent.ugc.TXVideoEditConstants;
import java.util.List;
/* loaded from: classes4.dex */
public class SpeedProcessor {
    private List<TXVideoEditConstants.TXSpeed> mSpeedList;

    public void clear() {
        List<TXVideoEditConstants.TXSpeed> list = this.mSpeedList;
        if (list != null) {
            list.clear();
        }
        this.mSpeedList = null;
    }

    public float findSpeedByLevel(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 3) {
                    return i9 != 4 ? 1.0f : 2.0f;
                }
                return 1.5f;
            }
            return 0.5f;
        }
        return 0.25f;
    }

    public float getSpeedLevel(long j10) {
        List<TXVideoEditConstants.TXSpeed> list = this.mSpeedList;
        if (list == null || list.size() == 0) {
            return 1.0f;
        }
        for (TXVideoEditConstants.TXSpeed tXSpeed : this.mSpeedList) {
            if (j10 > tXSpeed.startTime * 1000 && j10 < tXSpeed.endTime * 1000) {
                return findSpeedByLevel(tXSpeed.speedLevel);
            }
        }
        return 1.0f;
    }

    public List<TXVideoEditConstants.TXSpeed> getSpeedList() {
        return this.mSpeedList;
    }

    public boolean isSpeedListExist() {
        if (com.tencent.liteav.videobase.utils.c.a(this.mSpeedList)) {
            return false;
        }
        for (TXVideoEditConstants.TXSpeed tXSpeed : this.mSpeedList) {
            if (tXSpeed.speedLevel != 2) {
                return true;
            }
        }
        return false;
    }

    public void setSpeedList(List<TXVideoEditConstants.TXSpeed> list) {
        this.mSpeedList = list;
    }
}

package com.tencent.ugc.videoprocessor.watermark;

import com.tencent.liteav.base.util.q;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.videoprocessor.data.Resolution;
/* loaded from: classes4.dex */
public class PasterBase {
    protected q mRenderSize;

    /* JADX INFO: Access modifiers changed from: protected */
    public TXVideoEditConstants.TXRect calculateRect(int i9, int i10, int i11, TXVideoEditConstants.TXRect tXRect) {
        int i12;
        q qVar = this.mRenderSize;
        if (qVar == null) {
            return null;
        }
        int i13 = qVar.f31029a;
        int i14 = qVar.f31030b;
        Resolution resolution = new Resolution();
        float f10 = i9;
        float f11 = (i13 * 1.0f) / f10;
        float f12 = i10;
        float f13 = (i14 * 1.0f) / f12;
        if (i11 != 2 ? f11 < f13 : f11 > f13) {
            f11 = f13;
        }
        resolution.width = (int) (f10 * f11);
        resolution.height = (int) (f12 * f11);
        TXVideoEditConstants.TXRect tXRect2 = new TXVideoEditConstants.TXRect();
        float f14 = tXRect.f34645x;
        int i15 = resolution.width;
        tXRect2.f34645x = (f14 - ((i13 - i15) / 2)) / i15;
        float f15 = tXRect.f34646y;
        tXRect2.f34646y = (f15 - ((i14 - i12) / 2)) / resolution.height;
        tXRect2.width = tXRect.width / i15;
        return tXRect2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clear() {
    }

    protected void normalized(int i9, int i10, int i11) {
    }
}

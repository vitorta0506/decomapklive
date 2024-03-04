package com.tencent.ugc.videoprocessor.watermark;

import android.graphics.Bitmap;
import com.tencent.liteav.base.util.q;
import com.tencent.ugc.TXVideoEditConstants;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes4.dex */
public class PasterFilterChain extends PasterBase {
    private CopyOnWriteArrayList<TXVideoEditConstants.TXPaster> mNormalizedList = new CopyOnWriteArrayList<>();
    private List<TXVideoEditConstants.TXPaster> mPasterList;

    private void clearPasterList(List<TXVideoEditConstants.TXPaster> list) {
        Bitmap bitmap;
        if (list != null) {
            for (TXVideoEditConstants.TXPaster tXPaster : list) {
                if (tXPaster != null && (bitmap = tXPaster.pasterImage) != null && !bitmap.isRecycled()) {
                    tXPaster.pasterImage.recycle();
                    tXPaster.pasterImage = null;
                }
            }
            list.clear();
        }
    }

    private TXVideoEditConstants.TXPaster construct(TXVideoEditConstants.TXPaster tXPaster, TXVideoEditConstants.TXRect tXRect) {
        TXVideoEditConstants.TXPaster tXPaster2 = new TXVideoEditConstants.TXPaster();
        tXPaster2.frame = tXRect;
        tXPaster2.pasterImage = tXPaster.pasterImage;
        tXPaster2.startTime = tXPaster.startTime;
        tXPaster2.endTime = tXPaster.endTime;
        return tXPaster2;
    }

    @Override // com.tencent.ugc.videoprocessor.watermark.PasterBase
    public void clear() {
        super.clear();
        clearPasterList(this.mNormalizedList);
        clearPasterList(this.mPasterList);
        this.mPasterList = null;
    }

    public List<TXVideoEditConstants.TXPaster> getPasterList() {
        return this.mNormalizedList;
    }

    @Override // com.tencent.ugc.videoprocessor.watermark.PasterBase
    public void normalized(int i9, int i10, int i11) {
        List<TXVideoEditConstants.TXPaster> list = this.mPasterList;
        if (list == null || list.size() == 0) {
            return;
        }
        for (TXVideoEditConstants.TXPaster tXPaster : this.mPasterList) {
            if (tXPaster != null) {
                TXVideoEditConstants.TXRect calculateRect = calculateRect(i9, i10, i11, tXPaster.frame);
                if (calculateRect == null) {
                    return;
                }
                this.mNormalizedList.add(construct(tXPaster, calculateRect));
            }
        }
    }

    public void setPasterList(List<TXVideoEditConstants.TXPaster> list, q qVar) {
        this.mRenderSize = qVar;
        this.mPasterList = list;
        clearPasterList(this.mNormalizedList);
    }
}

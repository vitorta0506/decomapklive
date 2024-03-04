package com.tencent.thumbplayer.f.a;

import android.content.Context;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.api.TPTimeRange;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequesterListener;
import com.tencent.thumbplayer.api.richmedia.TPRichMediaFeature;
import com.tencent.thumbplayer.api.richmedia.TPRichMediaFeatureData;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeature;
import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeatureData;
import com.tencent.thumbplayer.core.richmedia.TPNativeTimeRange;
import com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequester;
import com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener;
import com.tencent.thumbplayer.core.richmedia.async.TPNativeRichMediaAsyncRequester;
import com.tencent.thumbplayer.utils.TPLogUtil;
/* loaded from: classes4.dex */
public class a implements ITPRichMediaAsyncRequester {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ITPNativeRichMediaAsyncRequester f33936a;

    /* renamed from: com.tencent.thumbplayer.f.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0347a implements ITPNativeRichMediaAsyncRequesterListener {
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final ITPRichMediaAsyncRequesterListener f33938b;

        public C0347a(ITPRichMediaAsyncRequesterListener iTPRichMediaAsyncRequesterListener) {
            this.f33938b = iTPRichMediaAsyncRequesterListener;
        }

        @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener
        public void onFeatureDataRequestFailure(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i9, int i10, int i11) {
            this.f33938b.onFeatureDataRequestFailure(a.this, i9, i10, i11);
        }

        @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener
        public void onFeatureDataRequestSuccess(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i9, int i10, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData) {
            this.f33938b.onFeatureDataRequestSuccess(a.this, i9, i10, new TPRichMediaFeatureData(tPNativeRichMediaFeatureData));
        }

        @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener
        public void onRequesterError(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i9) {
            this.f33938b.onRequesterError(a.this, i9);
        }

        @Override // com.tencent.thumbplayer.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener
        public void onRequesterPrepared(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester) {
            this.f33938b.onRequesterPrepared(a.this);
        }
    }

    public a(Context context) {
        this.f33936a = new TPNativeRichMediaAsyncRequester(context);
    }

    private TPRichMediaFeature[] a(TPNativeRichMediaFeature[] tPNativeRichMediaFeatureArr) {
        if (tPNativeRichMediaFeatureArr == null || tPNativeRichMediaFeatureArr.length == 0) {
            return new TPRichMediaFeature[0];
        }
        TPRichMediaFeature[] tPRichMediaFeatureArr = new TPRichMediaFeature[tPNativeRichMediaFeatureArr.length];
        for (int i9 = 0; i9 < tPNativeRichMediaFeatureArr.length; i9++) {
            tPRichMediaFeatureArr[i9] = new TPRichMediaFeature(tPNativeRichMediaFeatureArr[i9]);
        }
        return tPRichMediaFeatureArr;
    }

    private TPNativeTimeRange[] a(TPTimeRange[] tPTimeRangeArr) {
        if (tPTimeRangeArr == null || tPTimeRangeArr.length == 0) {
            return new TPNativeTimeRange[0];
        }
        TPNativeTimeRange[] tPNativeTimeRangeArr = new TPNativeTimeRange[tPTimeRangeArr.length];
        for (int i9 = 0; i9 < tPTimeRangeArr.length; i9++) {
            TPTimeRange tPTimeRange = tPTimeRangeArr[i9];
            if (tPTimeRange == null) {
                return new TPNativeTimeRange[0];
            }
            tPNativeTimeRangeArr[i9] = new TPNativeTimeRange(tPTimeRange.getStartTimeMs(), tPTimeRange.getEndTimeMs());
        }
        return tPNativeTimeRangeArr;
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public void cancelRequest(int i9) {
        this.f33936a.cancelRequest(i9);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public TPRichMediaFeature[] getFeatures() {
        return a(this.f33936a.getFeatures());
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public void prepareAsync() {
        this.f33936a.prepareAsync();
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public void release() {
        this.f33936a.release();
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeMs(int i9, long j10) {
        return this.f33936a.requestFeatureDataAsyncAtTimeMs(i9, j10);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeMsArray(int i9, long[] jArr) {
        return this.f33936a.requestFeatureDataAsyncAtTimeMsArray(i9, jArr);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeRange(int i9, TPTimeRange tPTimeRange) {
        if (tPTimeRange == null) {
            TPLogUtil.w("TPRichMediaAsyncRequester", "requestFeatureDataAsyncAtTimeRange, timeRange == null");
            return -1;
        }
        return this.f33936a.requestFeatureDataAsyncAtTimeRange(i9, new TPNativeTimeRange(tPTimeRange.getStartTimeMs(), tPTimeRange.getEndTimeMs()));
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeRanges(int i9, TPTimeRange[] tPTimeRangeArr) {
        TPNativeTimeRange[] a10 = a(tPTimeRangeArr);
        if (a10.length == 0) {
            TPLogUtil.w("TPRichMediaAsyncRequester", "requestFeatureDataAsyncAtTimeRanges, toNativeTimeRanges return empty array");
            return -1;
        }
        return this.f33936a.requestFeatureDataAsyncAtTimeRanges(i9, a10);
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public void setRequesterListener(ITPRichMediaAsyncRequesterListener iTPRichMediaAsyncRequesterListener) {
        this.f33936a.setRequesterListener(new C0347a(iTPRichMediaAsyncRequesterListener));
    }

    @Override // com.tencent.thumbplayer.api.richmedia.ITPRichMediaAsyncRequester
    public void setRichMediaSource(String str) {
        this.f33936a.setRichMediaSource(str);
    }
}

package com.tencent.thumbplayer.b;

import com.tencent.thumbplayer.api.composition.ITPMediaTrackClip;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class a extends d implements ITPMediaTrackClip, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private int f33739a;

    /* renamed from: b  reason: collision with root package name */
    private int f33740b;

    /* renamed from: c  reason: collision with root package name */
    private long f33741c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f33742d = 0;

    /* renamed from: e  reason: collision with root package name */
    private long f33743e;

    public a(int i9) {
        this.f33739a = i9;
        this.f33740b = f.a(i9);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public ITPMediaTrackClip clone(int i9) {
        if (i9 == 3 || i9 == 2 || i9 == 1) {
            a aVar = new a(i9);
            aVar.f33740b = f.a(i9);
            aVar.f33741c = this.f33741c;
            aVar.f33742d = this.f33742d;
            return aVar;
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof a)) {
            a aVar = (a) obj;
            return this.f33740b == aVar.getClipId() && this.f33739a == aVar.getMediaType();
        }
        return false;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public int getClipId() {
        return this.f33740b;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getEndTimeMs() {
        return this.f33742d;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public String getFilePath() {
        return null;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return this.f33739a;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getOriginalDurationMs() {
        return this.f33742d - this.f33741c;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getStartPositionMs() {
        return this.f33743e;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getStartTimeMs() {
        return this.f33741c;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        return null;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setCutTimeRange(long j10, long j11) {
        if (j10 < 0) {
            j10 = 0;
        }
        if (j10 >= j11) {
            throw new IllegalArgumentException("setCutTimeRange: Start time is greater than end time");
        }
        this.f33741c = j10;
        this.f33742d = j11;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setOriginalDurationMs(long j10) {
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setStartPositionMs(long j10) {
        this.f33743e = j10;
    }
}

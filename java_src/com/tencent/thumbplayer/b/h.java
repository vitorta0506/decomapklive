package com.tencent.thumbplayer.b;

import android.text.TextUtils;
import com.tencent.thumbplayer.api.composition.ITPMediaTrackClip;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class h extends d implements ITPMediaTrackClip, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private int f33761a;

    /* renamed from: b  reason: collision with root package name */
    private int f33762b;

    /* renamed from: c  reason: collision with root package name */
    private long f33763c;

    /* renamed from: d  reason: collision with root package name */
    private long f33764d;

    /* renamed from: e  reason: collision with root package name */
    private String f33765e;

    /* renamed from: f  reason: collision with root package name */
    private long f33766f;

    /* renamed from: g  reason: collision with root package name */
    private long f33767g;

    private h() {
    }

    public h(String str, int i9) {
        this(str, i9, 0L, -1L);
    }

    public h(String str, int i9, long j10, long j11) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("TPMediaCompositionTrackClip : clipPath empty");
        }
        this.f33761a = i9;
        this.f33765e = str;
        this.f33763c = j10;
        this.f33764d = j11;
        if (j10 < 0) {
            this.f33763c = 0L;
        }
        if (j11 <= 0) {
            this.f33764d = getOriginalDurationMs();
        }
        this.f33762b = f.a(this.f33761a);
    }

    public void a(String str) {
        this.f33765e = str;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public ITPMediaTrackClip clone(int i9) {
        if (i9 == 3 || i9 == 2 || i9 == 1) {
            h hVar = new h();
            hVar.f33761a = i9;
            hVar.f33762b = f.a(this.f33761a);
            hVar.f33763c = this.f33763c;
            hVar.f33764d = this.f33764d;
            hVar.f33765e = this.f33765e;
            return hVar;
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof h)) {
            h hVar = (h) obj;
            return this.f33762b == hVar.getClipId() && this.f33761a == hVar.getMediaType();
        }
        return false;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public int getClipId() {
        return this.f33762b;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getEndTimeMs() {
        return this.f33764d;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public String getFilePath() {
        return this.f33765e;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return this.f33761a;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getOriginalDurationMs() {
        return this.f33767g;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getStartPositionMs() {
        return this.f33766f;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public long getStartTimeMs() {
        return this.f33763c;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        return this.f33765e;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setCutTimeRange(long j10, long j11) {
        if (j10 >= getOriginalDurationMs()) {
            throw new IllegalArgumentException("setCutTimeRange: Start time is greater than duration");
        }
        if (j11 > getOriginalDurationMs()) {
            throw new IllegalArgumentException("setCutTimeRange: Start time is greater than duration");
        }
        if (j10 < 0) {
            j10 = 0;
        }
        if (j11 <= 0) {
            j11 = getOriginalDurationMs();
        }
        if (j10 >= j11) {
            throw new IllegalArgumentException("setCutTimeRange: Start time is greater than end time");
        }
        this.f33763c = j10;
        this.f33764d = j11;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setOriginalDurationMs(long j10) {
        this.f33767g = j10;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrackClip
    public void setStartPositionMs(long j10) {
        this.f33766f = j10;
    }
}

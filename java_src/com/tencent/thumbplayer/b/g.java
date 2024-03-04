package com.tencent.thumbplayer.b;

import com.tencent.thumbplayer.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.api.composition.ITPMediaTrackClip;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public class g extends d implements ITPMediaTrack, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private int f33758a;

    /* renamed from: b  reason: collision with root package name */
    private int f33759b;

    /* renamed from: c  reason: collision with root package name */
    private List<ITPMediaTrackClip> f33760c;

    public g(int i9) {
        this.f33758a = -1;
        this.f33759b = i9;
        this.f33760c = new ArrayList();
    }

    public g(int i9, int i10) {
        this.f33758a = i9;
        this.f33759b = i10;
        this.f33760c = new ArrayList();
    }

    private synchronized void a(ITPMediaTrackClip iTPMediaTrackClip) {
        try {
            if (iTPMediaTrackClip == null) {
                throw new IllegalArgumentException("add track clip , clip can not be null");
            }
            if (iTPMediaTrackClip.getMediaType() != this.f33759b) {
                throw new IllegalArgumentException("add track clip failed, media type is not same");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrack
    public synchronized int addTrackClip(ITPMediaTrackClip iTPMediaTrackClip) {
        a(iTPMediaTrackClip);
        if (!this.f33760c.contains(iTPMediaTrackClip)) {
            this.f33760c.add(iTPMediaTrackClip);
            return iTPMediaTrackClip.getClipId();
        }
        TPLogUtil.i("TPMediaCompositionTrack", "add track clip failed, clip already exists : " + iTPMediaTrackClip.getClipId());
        return iTPMediaTrackClip.getClipId();
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrack
    public synchronized List<ITPMediaTrackClip> getAllTrackClips() {
        return this.f33760c;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public synchronized int getMediaType() {
        return this.f33759b;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrack
    public synchronized long getTimelineDurationMs() {
        long j10;
        j10 = 0;
        for (ITPMediaTrackClip iTPMediaTrackClip : this.f33760c) {
            j10 += iTPMediaTrackClip.getOriginalDurationMs();
        }
        return j10;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrack
    public synchronized ITPMediaTrackClip getTrackClip(int i9) {
        for (ITPMediaTrackClip iTPMediaTrackClip : this.f33760c) {
            if (iTPMediaTrackClip.getClipId() == i9) {
                return iTPMediaTrackClip;
            }
        }
        return null;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrack
    public synchronized int getTrackId() {
        return this.f33758a;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public synchronized String getUrl() {
        try {
        } catch (IOException e10) {
            TPLogUtil.e("TPMediaCompositionTrack", e10);
            return null;
        }
        return i.a(this.f33760c, this.f33759b);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrack
    public synchronized int insertTrackClip(ITPMediaTrackClip iTPMediaTrackClip, int i9) {
        a(iTPMediaTrackClip);
        if (this.f33760c.contains(iTPMediaTrackClip)) {
            TPLogUtil.i("TPMediaCompositionTrack", "add track clip failed, clip already exists : " + iTPMediaTrackClip.getClipId());
            return iTPMediaTrackClip.getClipId();
        }
        if (i9 == -1) {
            this.f33760c.add(0, iTPMediaTrackClip);
            return iTPMediaTrackClip.getClipId();
        }
        int size = this.f33760c.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f33760c.get(i10).getClipId() == i9) {
                this.f33760c.add(i10 + 1, iTPMediaTrackClip);
                return iTPMediaTrackClip.getClipId();
            }
        }
        this.f33760c.add(iTPMediaTrackClip);
        TPLogUtil.i("TPMediaCompositionTrack", "insert track clip into the end, coz after clip not found :".concat(String.valueOf(i9)));
        return iTPMediaTrackClip.getClipId();
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrack
    public synchronized void removeAllTrackClips() {
        this.f33760c.clear();
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrack
    public synchronized boolean removeTrackClip(ITPMediaTrackClip iTPMediaTrackClip) {
        if (iTPMediaTrackClip == null) {
            throw new IllegalArgumentException("remove track clip , clip can not be null");
        }
        return this.f33760c.remove(iTPMediaTrackClip);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaTrack
    public synchronized boolean swapTrackClip(int i9, int i10) {
        if (i9 >= 0) {
            if (i9 < this.f33760c.size()) {
                if (i10 >= 0 && i10 < this.f33760c.size()) {
                    Collections.swap(this.f33760c, i9, i10);
                    return true;
                }
                TPLogUtil.w("TPMediaCompositionTrack", "swap clip failed, to pos invalid , to pos :".concat(String.valueOf(i10)));
                return false;
            }
        }
        TPLogUtil.w("TPMediaCompositionTrack", "swap clip failed, from pos invalid , from pos : ".concat(String.valueOf(i9)));
        return false;
    }
}

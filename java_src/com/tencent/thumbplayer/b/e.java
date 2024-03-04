package com.tencent.thumbplayer.b;

import com.tencent.thumbplayer.api.composition.ITPMediaComposition;
import com.tencent.thumbplayer.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class e extends d implements ITPMediaComposition {

    /* renamed from: a  reason: collision with root package name */
    private int f33748a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f33749b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f33750c = 0;

    /* renamed from: d  reason: collision with root package name */
    private List<ITPMediaTrack> f33751d = new ArrayList(1);

    /* renamed from: e  reason: collision with root package name */
    private List<ITPMediaTrack> f33752e = new ArrayList(1);

    /* renamed from: f  reason: collision with root package name */
    private List<ITPMediaTrack> f33753f = new ArrayList(1);

    private synchronized int d() {
        int i9;
        i9 = this.f33748a + 1;
        this.f33748a = i9;
        return i9;
    }

    private synchronized int e() {
        int i9;
        i9 = this.f33749b + 1;
        this.f33749b = i9;
        return i9;
    }

    private synchronized int f() {
        int i9;
        i9 = this.f33750c + 1;
        this.f33750c = i9;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        List<ITPMediaTrack> list = this.f33751d;
        long j10 = 0;
        if (list != null) {
            for (ITPMediaTrack iTPMediaTrack : list) {
                if (j10 < iTPMediaTrack.getTimelineDurationMs()) {
                    j10 = iTPMediaTrack.getTimelineDurationMs();
                }
            }
        }
        return j10;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized ITPMediaTrack addAVTrack() {
        g gVar;
        gVar = new g(f(), 1);
        this.f33753f.add(gVar);
        return gVar;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized ITPMediaTrack addAudioTrack() {
        g gVar;
        gVar = new g(e(), 3);
        this.f33752e.add(gVar);
        return gVar;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized ITPMediaTrack addVideoTrack() {
        g gVar;
        gVar = new g(d(), 2);
        this.f33751d.add(gVar);
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long b() {
        List<ITPMediaTrack> list = this.f33752e;
        long j10 = 0;
        if (list != null) {
            for (ITPMediaTrack iTPMediaTrack : list) {
                if (j10 < iTPMediaTrack.getTimelineDurationMs()) {
                    j10 = iTPMediaTrack.getTimelineDurationMs();
                }
            }
        }
        return j10;
    }

    long c() {
        List<ITPMediaTrack> list = this.f33753f;
        long j10 = 0;
        if (list != null) {
            for (ITPMediaTrack iTPMediaTrack : list) {
                if (j10 < iTPMediaTrack.getTimelineDurationMs()) {
                    j10 = iTPMediaTrack.getTimelineDurationMs();
                }
            }
        }
        return j10;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public List<ITPMediaTrack> getAllAVTracks() {
        return this.f33753f;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized List<ITPMediaTrack> getAllAudioTracks() {
        return this.f33752e;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized List<ITPMediaTrack> getAllVideoTracks() {
        return this.f33751d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004e, code lost:
        if (r4 > 0) goto L22;
     */
    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getDurationMs() {
        /*
            r10 = this;
            java.util.List<com.tencent.thumbplayer.api.composition.ITPMediaTrack> r0 = r10.f33753f
            boolean r0 = com.tencent.thumbplayer.utils.b.a(r0)
            if (r0 != 0) goto Ld
            long r0 = r10.c()
            return r0
        Ld:
            long r0 = r10.b()
            long r2 = r10.a()
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 <= 0) goto L1b
            r5 = r2
            goto L1c
        L1b:
            r5 = r0
        L1c:
            java.lang.String r7 = com.tencent.thumbplayer.b.f.f33754a
            r7.hashCode()
            r8 = -1
            int r9 = r7.hashCode()
            switch(r9) {
                case -2046821033: goto L40;
                case -491658008: goto L35;
                case -472621683: goto L2a;
                default: goto L29;
            }
        L29:
            goto L4a
        L2a:
            java.lang.String r9 = "base_video"
            boolean r7 = r7.equals(r9)
            if (r7 != 0) goto L33
            goto L4a
        L33:
            r8 = 2
            goto L4a
        L35:
            java.lang.String r9 = "base_audio"
            boolean r7 = r7.equals(r9)
            if (r7 != 0) goto L3e
            goto L4a
        L3e:
            r8 = 1
            goto L4a
        L40:
            java.lang.String r9 = "base_longer"
            boolean r7 = r7.equals(r9)
            if (r7 != 0) goto L49
            goto L4a
        L49:
            r8 = 0
        L4a:
            switch(r8) {
                case 0: goto L4e;
                case 1: goto L51;
                case 2: goto L50;
                default: goto L4d;
            }
        L4d:
            goto L52
        L4e:
            if (r4 <= 0) goto L51
        L50:
            r0 = r2
        L51:
            r5 = r0
        L52:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.b.e.getDurationMs():long");
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 4;
    }

    @Override // com.tencent.thumbplayer.b.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (Exception e10) {
            TPLogUtil.e("TPMediaComposition", e10);
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public void release() {
        List<ITPMediaTrack> list = this.f33751d;
        if (list != null) {
            list.clear();
            this.f33751d = null;
        }
        List<ITPMediaTrack> list2 = this.f33752e;
        if (list2 != null) {
            list2.clear();
            this.f33752e = null;
        }
        List<ITPMediaTrack> list3 = this.f33753f;
        if (list3 != null) {
            list3.clear();
            this.f33753f = null;
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public boolean removeAVTrack(ITPMediaTrack iTPMediaTrack) {
        if (iTPMediaTrack != null) {
            return this.f33753f.remove(iTPMediaTrack);
        }
        throw new IllegalArgumentException("remove audio track , track is null .");
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized boolean removeAudioTrack(ITPMediaTrack iTPMediaTrack) {
        if (iTPMediaTrack == null) {
            throw new IllegalArgumentException("remove audio track , track is null .");
        }
        return this.f33752e.remove(iTPMediaTrack);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaComposition
    public synchronized boolean removeVideoTrack(ITPMediaTrack iTPMediaTrack) {
        if (iTPMediaTrack == null) {
            throw new IllegalArgumentException("remove video track , track is null .");
        }
        return this.f33751d.remove(iTPMediaTrack);
    }
}

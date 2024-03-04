package com.tencent.thumbplayer.adapter.a.a;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.adapter.c;
import com.tencent.thumbplayer.adapter.g;
import com.tencent.thumbplayer.adapter.i;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerState;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaTrack;
import com.tencent.thumbplayer.api.composition.ITPMediaTrackClip;
import com.tencent.thumbplayer.b.h;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class d implements com.tencent.thumbplayer.adapter.a.b {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.thumbplayer.e.a f33498a;

    /* renamed from: b  reason: collision with root package name */
    private com.tencent.thumbplayer.e.b f33499b;

    /* renamed from: c  reason: collision with root package name */
    private Context f33500c;

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.thumbplayer.adapter.a.b f33501d;

    /* renamed from: e  reason: collision with root package name */
    private TPPlayerState f33502e;

    /* renamed from: f  reason: collision with root package name */
    private g f33503f;

    /* renamed from: g  reason: collision with root package name */
    private a f33504g;

    /* renamed from: h  reason: collision with root package name */
    private com.tencent.thumbplayer.adapter.c f33505h;

    /* renamed from: i  reason: collision with root package name */
    private i f33506i;

    /* renamed from: j  reason: collision with root package name */
    private com.tencent.thumbplayer.adapter.b f33507j;

    /* renamed from: k  reason: collision with root package name */
    private List<ITPMediaTrackClip> f33508k;

    /* renamed from: l  reason: collision with root package name */
    private int f33509l = 0;

    /* renamed from: m  reason: collision with root package name */
    private boolean f33510m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f33511n;

    /* renamed from: o  reason: collision with root package name */
    private LinkedList<Long> f33512o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements c.a, c.b, c.InterfaceC0340c, c.f, c.h, c.i, c.j, c.l, c.n, c.o, c.p {
        private a() {
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            return d.this.a(tPPostProcessFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.i
        public void a() {
            d.this.a();
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.f
        public void a(int i9, int i10, long j10, long j11) {
            d.this.a(i9, i10, j10, j11);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.h
        public void a(int i9, long j10, long j11, Object obj) {
            d.this.a(i9, j10, j11, obj);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.p
        public void a(long j10, long j11) {
            d.this.a(j10, j11);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.a
        public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
            d.this.a(tPAudioFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            d.this.a(tPSubtitleData);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.n
        public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
            d.this.a(tPVideoFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.b
        public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            return d.this.b(tPPostProcessFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.InterfaceC0340c
        public void b() {
            d.this.b();
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.j
        public void c() {
            d.this.d();
        }
    }

    public d(Context context, com.tencent.thumbplayer.e.b bVar) {
        com.tencent.thumbplayer.e.b bVar2 = new com.tencent.thumbplayer.e.b(bVar, "TPSystemClipPlayer");
        this.f33499b = bVar2;
        this.f33498a = new com.tencent.thumbplayer.e.a(bVar2);
        this.f33500c = context;
        this.f33502e = new TPPlayerState();
        this.f33505h = new com.tencent.thumbplayer.adapter.c();
        this.f33504g = new a();
        this.f33503f = new g(this.f33498a.b());
        this.f33506i = new i(this.f33502e);
        this.f33508k = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (this.f33506i.b(7)) {
            return this.f33503f.a(tPPostProcessFrameBuffer);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        g gVar = this.f33503f;
        if (gVar != null) {
            gVar.a(152, this.f33509l, 0L, (Object) null);
        }
        if (!this.f33510m) {
            if (this.f33506i.b(1)) {
                this.f33502e.changeState(4);
                g gVar2 = this.f33503f;
                if (gVar2 != null) {
                    gVar2.a();
                }
                b(this.f33501d);
                return;
            }
            return;
        }
        h();
        if (!this.f33511n || this.f33503f == null || com.tencent.thumbplayer.utils.b.a(this.f33512o)) {
            return;
        }
        Long poll = this.f33512o.poll();
        if (poll != null) {
            this.f33503f.a(3, poll.longValue(), 0L, (Object) null);
        }
        this.f33511n = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, int i10, long j10, long j11) {
        if (this.f33506i.b(4)) {
            this.f33503f.a(i9, i10, j10, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, long j10, long j11, Object obj) {
        if (this.f33506i.b(3)) {
            this.f33503f.a(i9, j10, j11, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10, long j11) {
        if (this.f33506i.b(6)) {
            this.f33507j.b(j11);
            this.f33507j.a(j10);
            this.f33503f.a(j10, j11);
        }
    }

    private void a(com.tencent.thumbplayer.adapter.a.b bVar) {
        if (1 == this.f33505h.e().g()) {
            bVar.a(this.f33505h.e().c());
        } else if (4 == this.f33505h.e().g()) {
            bVar.a(this.f33505h.e().d());
        }
        if (this.f33505h.e().g() == 0) {
            bVar.a(this.f33505h.e().a(), this.f33505h.e().b());
        }
        for (TPOptionalParam tPOptionalParam : this.f33505h.o()) {
            bVar.a(tPOptionalParam);
        }
        for (c.d dVar : this.f33505h.m()) {
            bVar.a(dVar.f33674a, dVar.f33677d, dVar.f33675b, dVar.f33676c);
        }
        for (c.a aVar : this.f33505h.n()) {
            bVar.a(aVar.f33664a, aVar.f33667d, aVar.f33665b, aVar.f33666c);
        }
        if (this.f33505h.k() != null) {
            bVar.a(this.f33505h.k().f33668a, this.f33505h.k().f33669b, this.f33505h.k().f33670c);
        }
        bVar.a(this.f33505h.g());
        if (this.f33505h.h() != 0.0f) {
            bVar.a(this.f33505h.h());
        }
        if (this.f33505h.j() != 0.0f) {
            bVar.b(this.f33505h.j());
        }
        if (this.f33505h.d() instanceof SurfaceHolder) {
            bVar.a((SurfaceHolder) this.f33505h.d());
        } else if (this.f33505h.d() instanceof Surface) {
            bVar.a((Surface) this.f33505h.d());
        }
        bVar.a((c.h) this.f33504g);
        bVar.a((c.i) this.f33504g);
        bVar.a((c.InterfaceC0340c) this.f33504g);
        bVar.a((c.f) this.f33504g);
        bVar.a((c.j) this.f33504g);
        bVar.a((c.p) this.f33504g);
        bVar.a((c.l) this.f33504g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
        if (this.f33506i.b(7)) {
            this.f33503f.a(tPAudioFrameBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPSubtitleData tPSubtitleData) {
        if (this.f33506i.b(7)) {
            this.f33503f.a(tPSubtitleData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
        if (this.f33506i.b(7)) {
            this.f33503f.a(tPVideoFrameBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (this.f33506i.b(7)) {
            return this.f33503f.b(tPPostProcessFrameBuffer);
        }
        return null;
    }

    private List<ITPMediaTrackClip> b(ITPMediaAsset iTPMediaAsset) {
        boolean z10 = iTPMediaAsset instanceof com.tencent.thumbplayer.b.e;
        if (z10 || (iTPMediaAsset instanceof com.tencent.thumbplayer.b.g) || (iTPMediaAsset instanceof h)) {
            List<ITPMediaTrackClip> arrayList = new ArrayList<>();
            if (z10) {
                List<ITPMediaTrack> allAVTracks = ((com.tencent.thumbplayer.b.e) iTPMediaAsset).getAllAVTracks();
                if (com.tencent.thumbplayer.utils.b.a(allAVTracks) || allAVTracks.get(0) == null) {
                    throw new IllegalStateException("empty av tracks when set data source!");
                }
                arrayList = allAVTracks.get(0).getAllTrackClips();
            } else if (iTPMediaAsset instanceof com.tencent.thumbplayer.b.g) {
                arrayList = ((com.tencent.thumbplayer.b.g) iTPMediaAsset).getAllTrackClips();
            } else {
                arrayList.add((ITPMediaTrackClip) iTPMediaAsset);
            }
            long j10 = 0;
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                arrayList.get(i9).setStartPositionMs(j10);
                j10 += arrayList.get(i9).getOriginalDurationMs();
            }
            return arrayList;
        }
        throw new IllegalStateException("system mediaPlayer : media asset is illegal source!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f33506i.b(2)) {
            if (this.f33509l >= this.f33508k.size() - 1) {
                this.f33502e.changeState(7);
                this.f33503f.b();
                return;
            }
            try {
                d(this.f33509l + 1, 0L);
            } catch (IOException e10) {
                com.tencent.thumbplayer.e.a aVar = this.f33498a;
                aVar.c("handleOnComplete:" + e10.toString());
            }
        }
    }

    private void b(com.tencent.thumbplayer.adapter.a.b bVar) {
        TPTrackInfo[] r10 = r();
        if (r10 == null) {
            return;
        }
        for (int i9 = 0; i9 < r10.length; i9++) {
            if (r10[i9].equals(this.f33505h.a(r10[i9].getTrackType()))) {
                bVar.a(i9, -1L);
            }
        }
    }

    private ITPMediaTrackClip c() {
        return this.f33508k.get(this.f33509l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f33506i.b(5)) {
            if (this.f33502e.is(7)) {
                h();
            }
            this.f33503f.c();
        }
    }

    private void d(int i9) {
        for (int i10 = 0; i10 < this.f33508k.size(); i10++) {
            long j10 = i9;
            if (this.f33508k.get(i10).getStartPositionMs() <= j10 && j10 <= this.f33508k.get(i10).getStartPositionMs() + this.f33508k.get(i10).getOriginalDurationMs()) {
                try {
                    d(i10, j10 - this.f33508k.get(i10).getStartPositionMs());
                } catch (IOException e10) {
                    this.f33498a.c("selectClipPlayer:" + e10.toString());
                }
            }
        }
    }

    private void d(int i9, long j10) {
        com.tencent.thumbplayer.e.a aVar = this.f33498a;
        aVar.b("switchPlayer: clipNo:" + i9 + "   startPostion:" + j10);
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
        if (bVar != null) {
            bVar.l();
        }
        this.f33510m = true;
        this.f33509l = i9;
        this.f33505h.b(this.f33508k.get(i9).getFilePath());
        com.tencent.thumbplayer.adapter.a.b e10 = e();
        this.f33501d = e10;
        if (e10 == null) {
            throw new RuntimeException("error , create player failed");
        }
        this.f33501d.a(new TPOptionalParam().buildLong(100, j10));
        this.f33501d.f();
    }

    private com.tencent.thumbplayer.adapter.a.b e() {
        e eVar = new e(this.f33500c, this.f33499b);
        if (this.f33507j == null) {
            this.f33507j = new com.tencent.thumbplayer.adapter.b();
        }
        a(eVar);
        return eVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(float f10) {
        if (this.f33506i.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
            if (bVar != null) {
                bVar.a(f10);
            }
            this.f33505h.a(f10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9) {
        if (this.f33506i.a(9)) {
            long j10 = i9;
            if (j10 < c().getStartPositionMs() || j10 > c().getStartPositionMs() + c().getOriginalDurationMs()) {
                d(i9);
            } else if (this.f33501d != null) {
                this.f33498a.b("seek to:".concat(String.valueOf(i9)));
                this.f33501d.a((int) (j10 - c().getStartPositionMs()));
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9, @TPCommonEnum.TPSeekMode int i10) {
        if (this.f33506i.a(9)) {
            long j10 = i9;
            if (j10 < c().getStartPositionMs() || j10 > c().getStartPositionMs() + c().getOriginalDurationMs()) {
                d(i9);
            } else if (this.f33501d != null) {
                this.f33498a.b("seek to:" + i9 + "/mode=" + i10);
                this.f33501d.a((int) (j10 - c().getStartPositionMs()), i10);
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9, long j10) {
        this.f33498a.e("selectTrack not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        this.f33505h.a(assetFileDescriptor);
        this.f33502e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f33505h.a(parcelFileDescriptor);
        this.f33502e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(Surface surface) {
        if (!this.f33506i.a(4)) {
            throw new IllegalStateException("setSurface , state invalid");
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
        if (bVar != null) {
            bVar.a(surface);
        }
        this.f33505h.a(surface);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        if (!this.f33506i.a(4)) {
            throw new IllegalStateException("setSurfaceHolder , state invalid");
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
        if (bVar != null) {
            bVar.a(surfaceHolder);
        }
        this.f33505h.a(surfaceHolder);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.a aVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.b bVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.InterfaceC0340c interfaceC0340c) {
        this.f33503f.a(interfaceC0340c);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.d dVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.e eVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.f fVar) {
        this.f33503f.a(fVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.g gVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.h hVar) {
        this.f33503f.a(hVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.i iVar) {
        this.f33503f.a(iVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.j jVar) {
        this.f33503f.a(jVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.l lVar) {
        this.f33503f.a(lVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.m mVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.n nVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.o oVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.p pVar) {
        this.f33503f.a(pVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
        if (bVar != null) {
            bVar.a(tPCaptureParams, tPCaptureCallBack);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam.getKey() == 100) {
            int i9 = (int) tPOptionalParam.getParamLong().value;
            this.f33498a.b("start position:".concat(String.valueOf(i9)));
            for (int i10 = 0; i10 < this.f33508k.size(); i10++) {
                long j10 = i9;
                if (this.f33508k.get(i10).getStartPositionMs() <= j10 && j10 <= this.f33508k.get(i10).getStartPositionMs() + this.f33508k.get(i10).getOriginalDurationMs()) {
                    this.f33509l = i10;
                    this.f33505h.b(this.f33508k.get(i10).getFilePath());
                    tPOptionalParam.getParamLong().value = j10 - this.f33508k.get(i10).getStartPositionMs();
                }
            }
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
        if (bVar != null) {
            bVar.a(tPOptionalParam);
        }
        this.f33505h.a(tPOptionalParam);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        List<ITPMediaTrackClip> b10 = b(iTPMediaAsset);
        try {
            this.f33508k = b10;
            this.f33505h.b(b10.get(this.f33509l).getFilePath());
            this.f33502e.changeState(2);
        } catch (Exception e10) {
            this.f33498a.a(e10);
            throw new IllegalStateException("exception when system clip player set data source!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
        List<ITPMediaTrackClip> b10 = b(iTPMediaAsset);
        if (com.tencent.thumbplayer.utils.b.a(b10)) {
            throw new IllegalStateException("exception when switch Definition with clip mediaAsset empty source!");
        }
        long n9 = n();
        try {
            this.f33508k = b10;
            this.f33511n = true;
            if (com.tencent.thumbplayer.utils.b.a(this.f33512o)) {
                this.f33512o = new LinkedList<>();
            }
            this.f33512o.offer(Long.valueOf(j10));
            com.tencent.thumbplayer.e.a aVar = this.f33498a;
            aVar.c("try to switch definition with system clip player, current clipNo:" + this.f33509l);
            d((int) n9);
        } catch (Exception e10) {
            this.f33498a.a(e10);
            throw new IllegalStateException("exception when system clip player switch definition!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(com.tencent.thumbplayer.e.b bVar) {
        this.f33498a.a(new com.tencent.thumbplayer.e.b(bVar, "TPSystemClipPlayer"));
        g gVar = this.f33503f;
        if (gVar == null || bVar == null) {
            return;
        }
        gVar.a(this.f33498a.a().a());
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map) {
        this.f33505h.a(str, map);
        this.f33502e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, String str3) {
        this.f33498a.e("addSubtitleSource not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        this.f33498a.e("addAudioTrackSource not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z10) {
        if (this.f33506i.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
            if (bVar != null) {
                bVar.a(z10);
            }
            this.f33505h.a(z10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z10, long j10, long j11) {
        if (this.f33506i.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
            if (bVar != null) {
                bVar.a(z10, j10, j11);
            }
            this.f33505h.a(z10, j10, j11);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long b(int i9) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
        if (bVar != null) {
            return bVar.b(i9);
        }
        return -1L;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(float f10) {
        if (this.f33506i.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
            if (bVar != null) {
                bVar.b(f10);
            }
            this.f33505h.b(f10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(int i9, long j10) {
        this.f33498a.e("deselectTrack not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(boolean z10) {
        if (this.f33506i.a(3)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
            if (bVar != null) {
                bVar.b(z10);
            }
            this.f33505h.b(z10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPDynamicStatisticParams c(boolean z10) {
        return null;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public String c(int i9) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
        return bVar != null ? bVar.c(i9) : "";
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void c(int i9, long j10) {
        this.f33498a.e("selectProgram not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void f() {
        if (this.f33506i.a(1)) {
            if (!this.f33505h.f()) {
                throw new IOException("error , prepare , data source invalid");
            }
            com.tencent.thumbplayer.adapter.a.b e10 = e();
            this.f33501d = e10;
            if (e10 == null) {
                throw new RuntimeException("error , create player failed");
            }
            this.f33502e.changeState(3);
            this.f33501d.f();
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void g() {
        if (this.f33506i.a(1)) {
            if (!this.f33505h.f()) {
                throw new IllegalStateException("error , prepare , state invalid , data source invalid");
            }
            com.tencent.thumbplayer.adapter.a.b e10 = e();
            this.f33501d = e10;
            if (e10 == null) {
                throw new RuntimeException("error , create player failed");
            }
            this.f33502e.changeState(3);
            this.f33501d.g();
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void h() {
        if (this.f33506i.a(5)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
            if (bVar == null) {
                throw new IllegalStateException("error , start , player is null");
            }
            try {
                bVar.h();
                this.f33502e.changeState(5);
            } catch (IllegalStateException unused) {
                throw new IllegalStateException("error , start ,state invalid");
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void i() {
        if (this.f33506i.a(6)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
            if (bVar == null) {
                throw new IllegalStateException("error , pause , player is null");
            }
            try {
                bVar.i();
                this.f33502e.changeState(6);
            } catch (IllegalStateException unused) {
                throw new IllegalStateException("error , pause ,state invalid");
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void j() {
        if (this.f33506i.a(7)) {
            if (this.f33501d == null) {
                throw new IllegalStateException("error , stop , player is null");
            }
            try {
                try {
                    this.f33502e.changeState(8);
                    this.f33501d.j();
                } catch (IllegalStateException unused) {
                    throw new IllegalStateException("error , pause ,state invalid");
                }
            } finally {
                this.f33502e.changeState(9);
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void k() {
        com.tencent.thumbplayer.e.a aVar = this.f33498a;
        aVar.c("reset, current state:" + this.f33502e);
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
        if (bVar != null) {
            bVar.k();
        }
        this.f33505h.a();
        this.f33503f.d();
        this.f33502e.changeState(1);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void l() {
        com.tencent.thumbplayer.e.a aVar = this.f33498a;
        aVar.c("release, current state:" + this.f33502e);
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33501d;
        if (bVar != null) {
            bVar.l();
            this.f33501d = null;
        }
        this.f33505h.a();
        this.f33503f.d();
        this.f33502e.changeState(11);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long m() {
        long j10 = 0;
        for (ITPMediaTrackClip iTPMediaTrackClip : this.f33508k) {
            j10 += iTPMediaTrackClip.getOriginalDurationMs();
        }
        return j10;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long n() {
        long j10 = 0;
        for (int i9 = 0; i9 < this.f33508k.size() && i9 < this.f33509l; i9++) {
            j10 += this.f33508k.get(i9).getOriginalDurationMs();
        }
        return !this.f33506i.a(12) ? j10 : j10 + this.f33501d.n();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long o() {
        if (this.f33506i.a(15)) {
            return this.f33501d.o();
        }
        com.tencent.thumbplayer.adapter.b bVar = this.f33507j;
        if (bVar != null) {
            return bVar.k();
        }
        return 0L;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int p() {
        com.tencent.thumbplayer.adapter.b bVar = this.f33507j;
        if (bVar == null) {
            return 0;
        }
        if (bVar.a() <= 0) {
            if (!this.f33506i.a(13)) {
                return 0;
            }
            this.f33507j.a(this.f33501d.p());
        }
        return (int) this.f33507j.a();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int q() {
        com.tencent.thumbplayer.adapter.b bVar = this.f33507j;
        if (bVar == null) {
            return 0;
        }
        if (bVar.b() <= 0) {
            if (!this.f33506i.a(13)) {
                return 0;
            }
            this.f33507j.b(this.f33501d.q());
        }
        return (int) this.f33507j.b();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPTrackInfo[] r() {
        this.f33498a.e("getTrackInfo not supported.");
        return new TPTrackInfo[0];
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPProgramInfo[] s() {
        this.f33498a.e("getProgramInfo not supported.");
        return new TPProgramInfo[0];
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long t() {
        return -1L;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPGeneralPlayFlowParams u() {
        return null;
    }
}

package com.tencent.thumbplayer.adapter;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.adapter.c;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPlayerState;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.richmedia.ITPRichMediaSynchronizer;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.f.a;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class d implements com.tencent.thumbplayer.adapter.a, c.k {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.thumbplayer.e.b f33678a;

    /* renamed from: b  reason: collision with root package name */
    private com.tencent.thumbplayer.e.a f33679b;

    /* renamed from: c  reason: collision with root package name */
    private Context f33680c;

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.thumbplayer.adapter.a.b f33681d;

    /* renamed from: e  reason: collision with root package name */
    private TPPlayerState f33682e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f33683f;

    /* renamed from: g  reason: collision with root package name */
    private g f33684g;

    /* renamed from: h  reason: collision with root package name */
    private a f33685h;

    /* renamed from: i  reason: collision with root package name */
    private c f33686i;

    /* renamed from: j  reason: collision with root package name */
    private i f33687j;

    /* renamed from: k  reason: collision with root package name */
    private com.tencent.thumbplayer.adapter.strategy.a f33688k;

    /* renamed from: l  reason: collision with root package name */
    private b f33689l;

    /* renamed from: m  reason: collision with root package name */
    private int f33690m;

    /* renamed from: n  reason: collision with root package name */
    private com.tencent.thumbplayer.f.a f33691n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements c.a, c.b, c.InterfaceC0340c, c.d, c.e, c.f, c.g, c.h, c.i, c.j, c.l, c.m, c.n, c.o, c.p {
        private a() {
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.o
        public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
            return d.this.a(tPPostProcessFrameBuffer);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.d
        public TPRemoteSdpInfo a(String str, int i9) {
            return d.this.a(str, i9);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.i
        public void a() {
            d.this.v();
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

        @Override // com.tencent.thumbplayer.adapter.a.c.g
        public void a(TPDrmInfo tPDrmInfo) {
            d.this.a(tPDrmInfo);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.e
        public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
            d.this.a(tPPlayerDetailInfo);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.l
        public void a(TPSubtitleData tPSubtitleData) {
            d.this.a(tPSubtitleData);
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.m
        public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            d.this.a(tPSubtitleFrameBuffer);
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
            d.this.x();
        }

        @Override // com.tencent.thumbplayer.adapter.a.c.j
        public void c() {
            d.this.y();
        }
    }

    public d(Context context, @NonNull com.tencent.thumbplayer.e.b bVar) {
        com.tencent.thumbplayer.e.b bVar2 = new com.tencent.thumbplayer.e.b(bVar, "TPPlayerAdapter");
        this.f33678a = bVar2;
        this.f33679b = new com.tencent.thumbplayer.e.a(bVar2);
        this.f33680c = context;
        TPPlayerState tPPlayerState = new TPPlayerState();
        this.f33682e = tPPlayerState;
        tPPlayerState.setOnPlayerStateChangeListener(this);
        this.f33686i = new c();
        this.f33685h = new a();
        this.f33684g = new g(this.f33678a.a());
        this.f33687j = new i(this.f33682e);
        this.f33689l = new b();
    }

    private boolean A() {
        int i9 = this.f33690m;
        return i9 == 2 || i9 == 3;
    }

    private com.tencent.thumbplayer.adapter.a.b a(int i9, com.tencent.thumbplayer.e.b bVar) {
        com.tencent.thumbplayer.adapter.a.b bVar2;
        Context context;
        try {
        } catch (Exception e10) {
            this.f33679b.c("to create Player," + e10.toString());
        }
        if (i9 == 1) {
            this.f33679b.c("to create androidPlayer");
            bVar2 = com.tencent.thumbplayer.adapter.a.d.a(this.f33680c, this.f33686i.p(), bVar);
        } else {
            if (i9 == 2) {
                this.f33679b.c("to create thumbPlayer");
                context = this.f33680c;
            } else if (i9 == 3) {
                this.f33679b.c("to create thumbPlayer software dec");
                context = this.f33680c;
            } else {
                this.f33679b.c("to create no Player");
                bVar2 = null;
            }
            bVar2 = com.tencent.thumbplayer.adapter.a.d.a(context, bVar);
        }
        if (bVar2 == null) {
            this.f33679b.c("play is null!");
            return null;
        }
        this.f33690m = i9;
        b(bVar2);
        return bVar2;
    }

    private com.tencent.thumbplayer.adapter.strategy.a a(c cVar) {
        com.tencent.thumbplayer.adapter.strategy.a.a aVar;
        try {
            aVar = new com.tencent.thumbplayer.adapter.strategy.a.a(cVar);
        } catch (IllegalArgumentException unused) {
            aVar = new com.tencent.thumbplayer.adapter.strategy.a.a(null);
        }
        return com.tencent.thumbplayer.adapter.strategy.e.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (this.f33687j.b(7)) {
            return this.f33684g.a(tPPostProcessFrameBuffer);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPRemoteSdpInfo a(String str, int i9) {
        return this.f33684g.a(str, i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, int i10, long j10, long j11) {
        if (this.f33687j.b(4)) {
            com.tencent.thumbplayer.adapter.strategy.a aVar = this.f33688k;
            b bVar = this.f33689l;
            int a10 = aVar.a(bVar, new com.tencent.thumbplayer.adapter.strategy.a.b(this.f33690m, i9, i10, bVar.d()));
            if (a10 != 0) {
                try {
                    e(a10);
                    return;
                } catch (IOException | IllegalStateException e10) {
                    this.f33679b.a(e10);
                }
            }
            this.f33682e.changeState(10);
            this.f33684g.a(i9, i10, j10, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, long j10, long j11, Object obj) {
        b bVar;
        if (this.f33683f) {
            this.f33679b.c("handleOnInfo, mIsRetrying");
            return;
        }
        if (i9 == 152 && (bVar = this.f33689l) != null) {
            bVar.f(((int) j10) + 1);
        }
        this.f33684g.a(i9, j10, j11, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10, long j11) {
        if (!this.f33687j.b(6)) {
            this.f33679b.c("handleOnVideoSizeChange, invalid state");
            return;
        }
        this.f33689l.b(j11);
        this.f33689l.a(j10);
        this.f33684g.a(j10, j11);
    }

    private void a(com.tencent.thumbplayer.adapter.a.b bVar) {
        TPProgramInfo l10;
        TPProgramInfo[] s10 = s();
        if (s10 == null || (l10 = this.f33686i.l()) == null) {
            return;
        }
        for (int i9 = 0; i9 < s10.length; i9++) {
            if (!TextUtils.isEmpty(l10.url) && s10[i9] != null && l10.url.equals(s10[i9].url)) {
                bVar.c(i9, -1L);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPAudioFrameBuffer tPAudioFrameBuffer) {
        if (this.f33687j.b(7)) {
            this.f33684g.a(tPAudioFrameBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPDrmInfo tPDrmInfo) {
        this.f33684g.a(tPDrmInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPPlayerDetailInfo tPPlayerDetailInfo) {
        this.f33684g.a(tPPlayerDetailInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPSubtitleData tPSubtitleData) {
        if (this.f33687j.b(7)) {
            this.f33684g.a(tPSubtitleData);
        } else {
            this.f33679b.c("handleOnSubtitleData, invalid state");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        if (this.f33687j.b(7)) {
            this.f33684g.a(tPSubtitleFrameBuffer);
        } else {
            this.f33679b.c("handleOnSubtitleFrameOut, invalid state");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TPVideoFrameBuffer tPVideoFrameBuffer) {
        if (this.f33687j.b(7)) {
            this.f33684g.a(tPVideoFrameBuffer);
        } else {
            this.f33679b.c("handleOnVideoFrameOut, invalid state");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TPPostProcessFrameBuffer b(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        if (this.f33687j.b(7)) {
            return this.f33684g.b(tPPostProcessFrameBuffer);
        }
        return null;
    }

    private void b(com.tencent.thumbplayer.adapter.a.b bVar) {
        String a10;
        bVar.a((c.h) this.f33685h);
        bVar.a((c.i) this.f33685h);
        bVar.a((c.InterfaceC0340c) this.f33685h);
        bVar.a((c.f) this.f33685h);
        bVar.a((c.j) this.f33685h);
        bVar.a((c.p) this.f33685h);
        bVar.a((c.l) this.f33685h);
        bVar.a((c.m) this.f33685h);
        bVar.a((c.e) this.f33685h);
        bVar.a((c.g) this.f33685h);
        bVar.a((c.d) this.f33685h);
        if (A()) {
            bVar.a((c.n) this.f33685h);
            bVar.a((c.a) this.f33685h);
            bVar.a((c.o) this.f33685h);
            bVar.a((c.b) this.f33685h);
        }
        if (1 == this.f33686i.e().g()) {
            bVar.a(this.f33686i.e().c());
        } else if (4 == this.f33686i.e().g()) {
            bVar.a(this.f33686i.e().d());
        } else if (3 == this.f33686i.e().g()) {
            int i9 = this.f33690m;
            if (i9 == 2) {
                a10 = this.f33686i.e().f().b();
            } else if (i9 == 1) {
                a10 = this.f33686i.e().f().a();
            }
            bVar.a(a10, this.f33686i.e().b());
        } else if (2 == this.f33686i.e().g()) {
            bVar.a(this.f33686i.e().e());
        }
        for (TPOptionalParam tPOptionalParam : this.f33686i.o()) {
            bVar.a(tPOptionalParam);
        }
        for (int i10 = 0; i10 < this.f33686i.b().size(); i10++) {
            TPTrackInfo tPTrackInfo = this.f33686i.b().get(i10);
            int i11 = tPTrackInfo.trackType;
            if (i11 == 3) {
                Iterator<c.d> it = this.f33686i.m().iterator();
                while (true) {
                    if (it.hasNext()) {
                        c.d next = it.next();
                        if (!TextUtils.isEmpty(next.f33676c) && next.f33676c.equals(tPTrackInfo.name)) {
                            bVar.a(next.f33674a, next.f33677d, next.f33675b, next.f33676c);
                            break;
                        }
                    }
                }
            } else if (i11 == 2) {
                Iterator<c.a> it2 = this.f33686i.n().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        c.a next2 = it2.next();
                        if (!TextUtils.isEmpty(next2.f33665b) && next2.f33665b.equals(tPTrackInfo.name)) {
                            bVar.a(next2.f33664a, next2.f33667d, next2.f33665b, next2.f33666c);
                            break;
                        }
                    }
                }
            }
        }
        Iterator<c.C0341c> it3 = this.f33686i.c().iterator();
        while (it3.hasNext()) {
            c.C0341c next3 = it3.next();
            if (next3.f33673c.isSelected) {
                TPTrackInfo[] r10 = bVar.r();
                if (r10 == null) {
                    this.f33679b.e("playerTrackInfoList is null.");
                } else {
                    for (int i12 = 0; i12 < r10.length; i12++) {
                        if (next3.f33673c.name.equals(r10[i12].name)) {
                            bVar.a(i12, next3.f33672b);
                        }
                    }
                }
            }
        }
        if (this.f33686i.k() != null) {
            bVar.a(this.f33686i.k().f33668a, this.f33686i.k().f33669b, this.f33686i.k().f33670c);
        }
        bVar.a(this.f33686i.g());
        if (this.f33686i.h() != 0.0f) {
            bVar.a(this.f33686i.h());
        }
        if (this.f33686i.j() != 0.0f) {
            bVar.b(this.f33686i.j());
        }
        if (!"".equals(this.f33686i.i())) {
            bVar.a(this.f33686i.i());
        }
        if (this.f33686i.d() instanceof SurfaceHolder) {
            bVar.a((SurfaceHolder) this.f33686i.d());
        } else if (this.f33686i.d() instanceof Surface) {
            bVar.a((Surface) this.f33686i.d());
        }
        bVar.a(new TPOptionalParam().buildQueueInt(204, this.f33688k.a()));
    }

    private void d(int i9) {
        if (i9 != 5) {
            return;
        }
        try {
            this.f33681d.h();
            this.f33682e.changeState(5);
        } catch (IllegalStateException e10) {
            this.f33679b.a(e10);
        }
    }

    private void e(int i9) {
        this.f33684g.a(1013, i9, 0L, (Object) null);
        TPPlayerState tPPlayerState = this.f33682e;
        tPPlayerState.setLastState(tPPlayerState.state());
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            long n9 = bVar.n();
            this.f33679b.c("switchPlayer, current position:".concat(String.valueOf(n9)));
            this.f33689l.f(n9);
            this.f33689l.i(this.f33681d.o());
            this.f33681d.k();
            this.f33681d.l();
        }
        com.tencent.thumbplayer.adapter.a.b a10 = a(i9, this.f33678a);
        this.f33681d = a10;
        if (a10 == null) {
            throw new RuntimeException("error , create player failed");
        }
        this.f33683f = true;
        com.tencent.thumbplayer.e.a aVar = this.f33679b;
        aVar.c("switch player to type:" + this.f33690m);
        if (this.f33689l != null) {
            this.f33681d.a(new TPOptionalParam().buildLong(100, this.f33689l.h()));
        }
        this.f33682e.setInnerPlayStateState(3);
        this.f33681d.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        this.f33684g.a(1000, this.f33690m, 0L, (Object) null);
        if (this.f33683f) {
            if (this.f33682e.innerPlayState() != 3) {
                this.f33679b.d("handleOnPrepared, invalid state, mIsRetrying.");
                return;
            }
        } else if (!this.f33687j.b(1)) {
            this.f33679b.c("handleOnPrepared, invalid state");
            return;
        }
        w();
        a(this.f33681d);
        if (!this.f33683f) {
            this.f33682e.setInnerPlayStateState(4);
            this.f33682e.changeState(4);
            this.f33684g.a();
            return;
        }
        this.f33683f = false;
        com.tencent.thumbplayer.e.a aVar = this.f33679b;
        aVar.c("handleOnPrepared, mIsRetrying, recoverState, state:" + this.f33682e.state());
        int state = this.f33682e.state();
        this.f33682e.changeState(4);
        if (this.f33682e.lastState() == 3) {
            this.f33684g.a();
        }
        this.f33684g.a(1014, 0L, 0L, (Object) null);
        d(state);
    }

    private void w() {
        if (A()) {
            b a10 = b.a(c(0));
            this.f33689l = a10;
            a10.e((int) this.f33681d.b(204));
            this.f33689l.a((int) this.f33681d.b(203));
            this.f33689l.c((int) this.f33681d.b(102));
            this.f33689l.g((int) this.f33681d.b(201));
            this.f33689l.b((int) this.f33681d.b(210));
        }
        if (this.f33689l == null) {
            this.f33689l = new b();
        }
        this.f33689l.h(this.f33681d.m());
        TPOptionalParam b10 = this.f33686i.b(100);
        if (b10 != null) {
            this.f33689l.f(b10.getParamLong().value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (!this.f33687j.b(2)) {
            this.f33679b.c("handleOnComplete, invalid state");
            return;
        }
        this.f33682e.changeState(7);
        this.f33684g.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (this.f33687j.b(5)) {
            this.f33684g.c();
        }
    }

    private int z() {
        if (this.f33688k == null) {
            this.f33688k = a(this.f33686i);
        }
        return this.f33688k.a(this.f33689l);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public int a() {
        b bVar = this.f33689l;
        if (bVar != null) {
            return bVar.l();
        }
        return 0;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(float f10) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error , setAudioGainRatio , state invalid , current state :" + this.f33682e);
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(f10);
        } else {
            this.f33679b.c("setAudioGainRatio, mPlayerBase = null!");
        }
        this.f33686i.a(f10);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9) {
        if (!this.f33687j.a(9)) {
            throw new IllegalStateException("error , seek to , state invalid , current state :" + this.f33682e);
        } else if (this.f33681d == null) {
            this.f33679b.d("seekTo, mPlayerBase = null!");
        } else {
            if (this.f33682e.state() == 7) {
                this.f33682e.changeState(5);
            }
            this.f33681d.a(i9);
            com.tencent.thumbplayer.f.a aVar = this.f33691n;
            if (aVar != null) {
                try {
                    aVar.a(i9);
                } catch (Exception unused) {
                    this.f33679b.d("seekTo, rich media processor seek err.");
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9, @TPCommonEnum.TPSeekMode int i10) {
        if (!this.f33687j.a(9)) {
            throw new IllegalStateException("error , seek to , state invalid , current state :" + this.f33682e);
        } else if (this.f33681d == null) {
            this.f33679b.d("seekTo, mPlayerBase = null!");
        } else {
            if (this.f33682e.state() == 7) {
                this.f33682e.changeState(5);
            }
            this.f33681d.a(i9, i10);
            com.tencent.thumbplayer.f.a aVar = this.f33691n;
            if (aVar != null) {
                try {
                    aVar.a(i9);
                } catch (Exception unused) {
                    this.f33679b.d("seekTo, rich media processor seek err.");
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9, long j10) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error : selectTrack , state invalid");
        }
        TPTrackInfo[] r10 = r();
        if (r10 == null) {
            this.f33679b.e("fatal err, tpTrackInfos is null");
        } else if (i9 < 0 || i9 > r10.length - 1) {
            throw new IllegalArgumentException("error : track not found");
        } else {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
            if (bVar != null) {
                bVar.a(i9, j10);
            }
            this.f33686i.a(i9, j10, r10[i9]);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        if (!this.f33687j.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        }
        if (assetFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , afd invalid");
        }
        this.f33686i.a(assetFileDescriptor);
        this.f33682e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (!this.f33687j.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        }
        if (parcelFileDescriptor == null) {
            throw new IllegalArgumentException("error : setDataSource , pfd invalid");
        }
        this.f33686i.a(parcelFileDescriptor);
        this.f33682e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(Surface surface) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(surface);
        }
        this.f33686i.a(surface);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(surfaceHolder);
        }
        this.f33686i.a(surfaceHolder);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.a aVar) {
        this.f33684g.a(aVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.b bVar) {
        this.f33684g.a(bVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.InterfaceC0340c interfaceC0340c) {
        this.f33684g.a(interfaceC0340c);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.d dVar) {
        this.f33684g.a(dVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.e eVar) {
        this.f33684g.a(eVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.f fVar) {
        this.f33684g.a(fVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.g gVar) {
        this.f33684g.a(gVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.h hVar) {
        this.f33684g.a(hVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.i iVar) {
        this.f33684g.a(iVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.j jVar) {
        this.f33684g.a(jVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(c.k kVar) {
        this.f33684g.a(kVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.l lVar) {
        this.f33684g.a(lVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.m mVar) {
        this.f33684g.a(mVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.n nVar) {
        this.f33684g.a(nVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.o oVar) {
        this.f33684g.a(oVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.p pVar) {
        this.f33684g.a(pVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(@NonNull com.tencent.thumbplayer.adapter.a.e eVar) {
        a(eVar, (Map<String, String>) null);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(com.tencent.thumbplayer.adapter.a.e eVar, int i9, long j10) {
        if (!this.f33687j.a(17)) {
            throw new IllegalStateException("error , switch definition , state invalid , current state :" + this.f33682e);
        }
        this.f33686i.a(eVar, (Map<String, String>) null);
        if (this.f33681d == null) {
            this.f33679b.d("switchDefinition, mPlayerBase = null!");
            return;
        }
        int i10 = this.f33690m;
        this.f33681d.a(i10 == 2 ? eVar.b() : i10 == 1 ? eVar.a() : "", i9, j10);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(@NonNull com.tencent.thumbplayer.adapter.a.e eVar, Map<String, String> map) {
        if (!this.f33687j.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        }
        this.f33686i.a(eVar, map);
        this.f33682e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(com.tencent.thumbplayer.adapter.a.e eVar, Map<String, String> map, int i9, long j10) {
        if (!this.f33687j.a(17)) {
            throw new IllegalStateException("error , switch definition , state invalid , current state :" + this.f33682e);
        }
        this.f33686i.a(eVar, map);
        if (this.f33681d == null) {
            this.f33679b.d("switchDefinition, mPlayerBase = null!");
            return;
        }
        int i10 = this.f33690m;
        this.f33681d.a(i10 == 2 ? eVar.b() : i10 == 1 ? eVar.a() : "", map, i9, j10);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(tPCaptureParams, tPCaptureCallBack);
            return;
        }
        throw new IllegalStateException("error , no player for capture :" + this.f33682e);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("setPlayerOptionalParam , state invalid");
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(tPOptionalParam);
        }
        this.f33686i.a(tPOptionalParam);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(TPVideoInfo tPVideoInfo) {
        if (!this.f33687j.a(2)) {
            this.f33679b.e("setVideoInfo state invalid");
        }
        if (tPVideoInfo != null) {
            this.f33689l.b(tPVideoInfo.getHeight());
            this.f33689l.a(tPVideoInfo.getWidth());
            this.f33689l.c(tPVideoInfo.getDefinition());
            this.f33689l.g(tPVideoInfo.getVideoCodecId());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        if (!this.f33687j.a(2)) {
            throw new IllegalStateException("error : setDataSource , state invalid");
        }
        if (iTPMediaAsset == null) {
            throw new IllegalArgumentException("error : setDataSource , mediaAsset invalid");
        }
        this.f33686i.a(iTPMediaAsset);
        this.f33682e.changeState(2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
        if (!this.f33687j.a(17)) {
            throw new IllegalStateException("error , switch definition , state invalid , current state :" + this.f33682e);
        }
        this.f33686i.a(iTPMediaAsset);
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(iTPMediaAsset, i9, j10);
        } else {
            this.f33679b.d("switchDefinition, mPlayerBase = null!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void a(ITPRichMediaSynchronizer iTPRichMediaSynchronizer) {
        if (iTPRichMediaSynchronizer == null) {
            com.tencent.thumbplayer.f.a aVar = this.f33691n;
            if (aVar != null) {
                aVar.a((a.InterfaceC0346a) null);
            }
            this.f33691n = null;
        } else if (iTPRichMediaSynchronizer instanceof com.tencent.thumbplayer.f.a) {
            com.tencent.thumbplayer.f.a aVar2 = (com.tencent.thumbplayer.f.a) iTPRichMediaSynchronizer;
            this.f33691n = aVar2;
            aVar2.a(new a.InterfaceC0346a() { // from class: com.tencent.thumbplayer.adapter.d.1
                @Override // com.tencent.thumbplayer.f.a.InterfaceC0346a
                public long a(ITPRichMediaSynchronizer iTPRichMediaSynchronizer2) {
                    return d.this.n();
                }
            });
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(com.tencent.thumbplayer.e.b bVar) {
        this.f33678a.a(bVar, "TPPlayerAdapter");
        this.f33679b.a(this.f33678a);
        this.f33684g.a(this.f33678a.a());
        com.tencent.thumbplayer.adapter.a.b bVar2 = this.f33681d;
        if (bVar2 != null) {
            bVar2.a(this.f33678a);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error , setAudioNormalizeVolumeParams , state invalid , current state :" + this.f33682e);
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(str);
        } else {
            this.f33679b.c("setAudioGainRatio, mPlayerBase = null!");
        }
        this.f33686i.a(str);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, int i9, long j10) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, String str3) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error : addSubtitleSource, state invalid");
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(str, map, str2, str3);
        }
        this.f33686i.a(str, map, str2, str3);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error : addAudioTrackSource, state invalid");
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(str, map, str2, list);
        }
        this.f33686i.a(str, map, str2, list);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z10) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error , setOutputMute , state invalid , current state :" + this.f33682e);
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(z10);
        } else {
            this.f33679b.c("setOutputMute, mPlayerBase = null!");
        }
        this.f33686i.a(z10);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z10, long j10, long j11) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error , setLoopback , state invalid , current state :" + this.f33682e);
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.a(z10, j10, j11);
        } else {
            this.f33679b.c("setLoopback, mPlayerBase = null!");
        }
        this.f33686i.a(z10, j10, j11);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public int b() {
        return this.f33682e.state();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long b(int i9) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            return bVar.b(i9);
        }
        this.f33679b.d("getPropertyLong, mPlayerBase = null, return !");
        return -1L;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(float f10) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error , setPlaySpeedRatio , state invalid , current state :" + this.f33682e);
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.b(f10);
        } else {
            this.f33679b.c("setPlaySpeedRatio, mPlayerBase = null!");
        }
        this.f33686i.b(f10);
        com.tencent.thumbplayer.f.a aVar = this.f33691n;
        if (aVar != null) {
            try {
                aVar.a(f10);
            } catch (Exception unused) {
                this.f33679b.d("setPlaySpeedRatio, rich media processor setPlaySpeedRatio err.");
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.c.k
    public void b(int i9, int i10) {
        this.f33684g.b(i9, i10);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(int i9, long j10) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error : deselectTrack , state invalid");
        }
        TPTrackInfo[] r10 = r();
        if (r10 == null) {
            this.f33679b.e("fatal err, tpTrackInfos is null");
        } else if (i9 < 0 || i9 > r10.length - 1) {
            throw new IllegalArgumentException("error : track not found");
        } else {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
            if (bVar != null) {
                bVar.b(i9, j10);
            }
            this.f33686i.b(i9, j10, r10[i9]);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public void b(TPVideoInfo tPVideoInfo) {
        if (!this.f33687j.a(3)) {
            this.f33679b.e("updateVideoInfo state invalid");
        }
        if (tPVideoInfo != null) {
            this.f33689l.b(tPVideoInfo.getHeight());
            this.f33689l.a(tPVideoInfo.getWidth());
            this.f33689l.c(tPVideoInfo.getDefinition());
            this.f33689l.g(tPVideoInfo.getVideoCodecId());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(boolean z10) {
        if (!this.f33687j.a(3)) {
            throw new IllegalStateException("error , setLoopback , state invalid , current state :" + this.f33682e);
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.b(z10);
        } else {
            this.f33679b.c("setLoopback, mPlayerBase = null!");
        }
        this.f33686i.b(z10);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPDynamicStatisticParams c(boolean z10) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar == null) {
            return null;
        }
        return bVar.c(z10);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public String c(int i9) {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            return bVar.c(i9);
        }
        this.f33679b.d("getPropertyString, mPlayerBase = null, return !");
        return "";
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void c(int i9, long j10) {
        if (!this.f33687j.a(18)) {
            throw new IllegalStateException("error : selectProgram , state invalid");
        }
        TPProgramInfo[] s10 = s();
        if (s10 == null) {
            s10 = new TPProgramInfo[0];
        }
        if (i9 < 0 || i9 > s10.length - 1) {
            throw new IllegalArgumentException("error : program index not found");
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.c(i9, j10);
        }
        this.f33686i.a(s10[i9]);
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public boolean c() {
        TPPlayerState tPPlayerState = this.f33682e;
        return tPPlayerState != null && tPPlayerState.state() == 5;
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public int d() {
        return this.f33690m;
    }

    @Override // com.tencent.thumbplayer.adapter.a
    public b e() {
        return this.f33689l;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void f() {
        if (!this.f33687j.a(1)) {
            throw new IllegalStateException("error , prepare , state invalid , current state :" + this.f33682e);
        } else if (!this.f33686i.f()) {
            throw new IOException("error , prepare , data source invalid");
        } else {
            com.tencent.thumbplayer.adapter.a.b a10 = a(z(), this.f33678a);
            this.f33681d = a10;
            if (a10 == null) {
                throw new RuntimeException("error , create player failed");
            }
            this.f33682e.setInnerPlayStateState(3);
            this.f33682e.changeState(3);
            this.f33681d.f();
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void g() {
        if (!this.f33687j.a(1)) {
            throw new IllegalStateException("error , prepare , state invalid , current state :" + this.f33682e);
        } else if (!this.f33686i.f()) {
            throw new IllegalStateException("error , prepare , state invalid , data source invalid");
        } else {
            com.tencent.thumbplayer.adapter.a.b a10 = a(z(), this.f33678a);
            this.f33681d = a10;
            if (a10 == null) {
                throw new RuntimeException("error , create player failed");
            }
            this.f33682e.setInnerPlayStateState(3);
            this.f33682e.changeState(3);
            this.f33681d.g();
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void h() {
        if (!this.f33687j.a(5)) {
            throw new IllegalStateException("error , start , state invalid , current state :" + this.f33682e);
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar == null) {
            throw new IllegalStateException("error , start , player is null");
        }
        try {
            bVar.h();
            this.f33682e.changeState(5);
        } catch (IllegalStateException unused) {
            throw new IllegalStateException("error , start ,state invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void i() {
        if (!this.f33687j.a(6)) {
            throw new IllegalStateException("error , pause , state invalid , current state :" + this.f33682e);
        }
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar == null) {
            throw new IllegalStateException("error , pause , player is null");
        }
        if (this.f33683f) {
            this.f33682e.changeState(6);
            return;
        }
        try {
            bVar.i();
            this.f33682e.changeState(6);
        } catch (IllegalStateException unused) {
            throw new IllegalStateException("error , pause ,state invalid");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void j() {
        if (!this.f33687j.a(7)) {
            throw new IllegalStateException("error , stop , state invalid , current state :" + this.f33682e);
        } else if (this.f33681d == null) {
            throw new IllegalStateException("error , stop , player is null");
        } else {
            try {
                try {
                    this.f33682e.changeState(8);
                    this.f33681d.j();
                } catch (IllegalStateException unused) {
                    throw new IllegalStateException("error , stop ,state invalid");
                }
            } finally {
                this.f33682e.changeState(9);
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void k() {
        com.tencent.thumbplayer.e.a aVar = this.f33679b;
        aVar.c("reset, current state :" + this.f33682e);
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.k();
            this.f33681d.l();
            this.f33681d = null;
        }
        this.f33686i.a();
        this.f33689l.n();
        this.f33688k = null;
        this.f33683f = false;
        this.f33682e.changeState(1);
        this.f33682e.setLastState(1);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void l() {
        com.tencent.thumbplayer.e.a aVar = this.f33679b;
        aVar.c("release, current state :" + this.f33682e);
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar != null) {
            bVar.l();
            this.f33681d = null;
        }
        this.f33686i.a();
        this.f33684g.d();
        this.f33688k = null;
        this.f33683f = false;
        this.f33682e.changeState(11);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long m() {
        b bVar = this.f33689l;
        if (bVar == null || bVar.j() <= 0) {
            if (this.f33687j.a(11)) {
                com.tencent.thumbplayer.adapter.a.b bVar2 = this.f33681d;
                if (bVar2 == null) {
                    this.f33679b.d("getDurationMs, mPlayerBase = null, return 0!");
                    return 0L;
                }
                long m10 = bVar2.m();
                b bVar3 = this.f33689l;
                if (bVar3 != null) {
                    bVar3.h(m10);
                }
                return m10;
            }
            return 0L;
        }
        return this.f33689l.j();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long n() {
        if (!this.f33687j.a(12)) {
            b bVar = this.f33689l;
            if (bVar != null) {
                return bVar.h();
            }
            return 0L;
        }
        com.tencent.thumbplayer.adapter.a.b bVar2 = this.f33681d;
        if (bVar2 == null) {
            this.f33679b.d("getCurrentPositionMs, mPlayerBase = null, return 0!");
            return 0L;
        }
        long n9 = bVar2.n();
        b bVar3 = this.f33689l;
        if (bVar3 != null) {
            bVar3.f(n9);
        }
        return n9;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long o() {
        if (this.f33687j.a(12)) {
            com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
            if (bVar == null) {
                this.f33679b.d("getBufferedDurationMs, mPlayerBase = null, return 0!");
                return 0L;
            }
            long o10 = bVar.o();
            b bVar2 = this.f33689l;
            if (bVar2 != null) {
                bVar2.i(o10);
            }
            return o10;
        }
        return 0L;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int p() {
        b bVar = this.f33689l;
        if (bVar == null || bVar.a() <= 0) {
            if (!this.f33687j.a(13)) {
                this.f33679b.d("getVideoWidth, state error!");
                return 0;
            }
            com.tencent.thumbplayer.adapter.a.b bVar2 = this.f33681d;
            if (bVar2 == null) {
                this.f33679b.d("getVideoWidth, mPlayerBase = null, return 0!");
                return 0;
            }
            int p10 = bVar2.p();
            b bVar3 = this.f33689l;
            if (bVar3 != null) {
                bVar3.a(p10);
            }
            return p10;
        }
        return (int) this.f33689l.a();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int q() {
        b bVar = this.f33689l;
        if (bVar == null || bVar.b() <= 0) {
            if (!this.f33687j.a(13)) {
                this.f33679b.d("getVideoHeight, state error!");
                return 0;
            }
            com.tencent.thumbplayer.adapter.a.b bVar2 = this.f33681d;
            if (bVar2 == null) {
                this.f33679b.d("getVideoHeight, mPlayerBase = null, return 0!");
                return 0;
            }
            int q10 = bVar2.q();
            b bVar3 = this.f33689l;
            if (bVar3 != null) {
                bVar3.b(q10);
            }
            return q10;
        }
        return (int) this.f33689l.b();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPTrackInfo[] r() {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        return bVar != null ? bVar.r() : (TPTrackInfo[]) this.f33686i.b().toArray(new TPTrackInfo[0]);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPProgramInfo[] s() {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        return (bVar == null || bVar.s() == null) ? new TPProgramInfo[0] : this.f33681d.s();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long t() {
        if (!this.f33687j.a(19)) {
            b bVar = this.f33689l;
            if (bVar != null) {
                return bVar.i();
            }
            return -1L;
        }
        com.tencent.thumbplayer.adapter.a.b bVar2 = this.f33681d;
        if (bVar2 == null) {
            this.f33679b.d("getDemuxerOffsetInFile, mPlayerBase = null, return 0!");
            return -1L;
        }
        long t10 = bVar2.t();
        b bVar3 = this.f33689l;
        if (bVar3 != null) {
            bVar3.g(t10);
        }
        return t10;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPGeneralPlayFlowParams u() {
        com.tencent.thumbplayer.adapter.a.b bVar = this.f33681d;
        if (bVar == null) {
            return null;
        }
        return bVar.u();
    }
}

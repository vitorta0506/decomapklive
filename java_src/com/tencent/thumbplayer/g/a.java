package com.tencent.thumbplayer.g;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.tencent.thumbplayer.g.b;
import com.tencent.thumbplayer.g.b.c;
import com.tencent.thumbplayer.g.b.d;
import com.tencent.thumbplayer.g.b.e;
import com.tencent.thumbplayer.g.b.f;
import com.tencent.thumbplayer.g.b.g;
import com.tencent.thumbplayer.g.f.a;
import java.util.HashMap;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final a f33962a = new a();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f33963e = false;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f33964f = true;

    /* renamed from: d  reason: collision with root package name */
    private boolean f33967d;

    /* renamed from: b  reason: collision with root package name */
    private com.tencent.thumbplayer.g.f.b f33965b = com.tencent.thumbplayer.g.f.b.f34088e;

    /* renamed from: c  reason: collision with root package name */
    private boolean f33966c = true;

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<b, c> f33968g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final com.tencent.thumbplayer.g.e.a f33969h = new com.tencent.thumbplayer.g.e.a();

    /* renamed from: i  reason: collision with root package name */
    private final com.tencent.thumbplayer.g.d.a f33970i = new com.tencent.thumbplayer.g.d.a();

    /* renamed from: j  reason: collision with root package name */
    private final com.tencent.thumbplayer.g.d.a f33971j = new com.tencent.thumbplayer.g.d.a();

    /* renamed from: k  reason: collision with root package name */
    private boolean f33972k = true;

    public static a a() {
        return f33962a;
    }

    private c a(MediaFormat mediaFormat, b bVar) {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("TCodecManager", "createDirectCodecWrapper mediaFormat:" + mediaFormat + " createBy:" + bVar.a() + " nameOrType:" + bVar.l());
        }
        return bVar.a() == b.EnumC0350b.CreateByName ? new d(MediaCodec.createByCodecName(bVar.l())) : new d(MediaCodec.createDecoderByType(bVar.l()));
    }

    private c a(MediaFormat mediaFormat, b bVar, Surface surface) {
        boolean b10 = bVar.b();
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("TCodecManager", "getCodec isVideo:" + b10 + " codecFinalReuseEnable:" + bVar.f33973a);
        }
        if (Build.VERSION.SDK_INT < 23 || !bVar.f33973a) {
            bVar.f33974b = false;
            if (com.tencent.thumbplayer.g.h.b.a()) {
                com.tencent.thumbplayer.g.h.b.b("TCodecManager", "getCodec return DirectCodecWrapper for mediaFormat:" + mediaFormat + " codecFinalReuseEnable:false surface:" + surface);
            }
            return a(mediaFormat, bVar);
        }
        e a10 = e.a(mediaFormat);
        c a11 = a(b10, a10);
        e.a(a10.f33994a);
        if (a11 != null) {
            a.b b11 = a11.b(a10);
            if (b11 == a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION || b11 == a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION) {
                if (com.tencent.thumbplayer.g.h.b.a()) {
                    com.tencent.thumbplayer.g.h.b.b("TCodecManager", "getCodec reuse, isVideo:" + b10 + " reuseType:" + b11);
                }
                a11.b();
                a11.c();
                bVar.f33974b = true;
                return a11;
            } else if (b11 == a.b.KEEP_CODEC_RESULT_NO && com.tencent.thumbplayer.g.h.b.a()) {
                com.tencent.thumbplayer.g.h.b.d("TCodecManager", "getCodec not reuse, isVideo:" + b10 + " reuseType:" + b11);
            }
        }
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("TCodecManager", "getCodec not reuse, for can't find reUseAble CodecWrapper. isVideo:".concat(String.valueOf(b10)));
        }
        bVar.f33974b = false;
        c b12 = b(mediaFormat, bVar);
        b12.b();
        this.f33968g.put(bVar, b12);
        return b12;
    }

    private c a(boolean z10, e eVar) {
        return (z10 ? this.f33970i : this.f33971j).a(eVar);
    }

    @RequiresApi(api = 23)
    private c b(MediaFormat mediaFormat, b bVar) {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("TCodecManager", "createNewReuseCodecWrapper mediaFormat:" + mediaFormat + " createBy:" + bVar.a() + " nameOrType:" + bVar.l());
        }
        String string = mediaFormat.getString("mime");
        e a10 = e.a(mediaFormat);
        com.tencent.thumbplayer.g.f.a.a(a10, mediaFormat);
        return f.a(bVar.a() == b.EnumC0350b.CreateByName ? MediaCodec.createByCodecName(bVar.l()) : MediaCodec.createDecoderByType(string), string, a10);
    }

    public static void b() {
    }

    private void c(c cVar) {
        if (e()) {
            if (cVar instanceof g) {
                this.f33970i.a((f) cVar);
            } else if (cVar instanceof com.tencent.thumbplayer.g.b.a) {
                this.f33971j.a((f) cVar);
            }
        }
    }

    public static boolean c() {
        return f33964f;
    }

    @NonNull
    public final c a(@NonNull MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i9, @NonNull b bVar) {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("TCodecManager", "configureStart videoPoolInfo:" + this.f33970i.a() + ", audioPoolInfo:" + this.f33971j.a());
        }
        this.f33967d = true;
        this.f33972k = true;
        c a10 = a(mediaFormat, bVar, surface);
        c(a10);
        a10.a(bVar.c());
        a10.a(mediaFormat, surface, mediaCrypto, i9);
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("TCodecManager", "configureEnd   videoPoolInfo:" + this.f33970i.a() + ", audioPoolInfo:" + this.f33971j.a());
        }
        return a10;
    }

    public final void a(@NonNull c cVar) {
        if (e()) {
            if (cVar instanceof g) {
                this.f33970i.b((f) cVar);
            } else if (cVar instanceof com.tencent.thumbplayer.g.b.a) {
                this.f33971j.b((f) cVar);
            }
        }
    }

    public final void a(@NonNull com.tencent.thumbplayer.g.h.a aVar) {
        com.tencent.thumbplayer.g.h.b.a(aVar);
    }

    public final void a(boolean z10) {
        com.tencent.thumbplayer.g.h.b.a(z10);
    }

    public final boolean a(b bVar, Surface surface) {
        boolean e10 = e();
        boolean d10 = bVar.d();
        boolean b10 = bVar.b();
        boolean z10 = e10 && d10;
        boolean z11 = Build.VERSION.SDK_INT >= 23 && !com.tencent.thumbplayer.g.h.c.a();
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("TCodecManager", "reuseEnable getCodec isVideo:" + b10 + " reuseEnable:" + z10 + " globalReuseEnable:" + e10 + " mediaCodecReuseEnable:" + d10 + " canUseSetOutputSurfaceAPI:" + z11 + " ,surface:" + surface);
        }
        return z10 && b10 && z11 && surface != null;
    }

    public final void b(@NonNull c cVar) {
        if (e()) {
            if (cVar instanceof g) {
                this.f33970i.c((f) cVar);
            } else if (cVar instanceof com.tencent.thumbplayer.g.b.a) {
                this.f33971j.c((f) cVar);
            }
        }
    }

    @NonNull
    public final com.tencent.thumbplayer.g.f.b d() {
        return this.f33965b;
    }

    public final boolean e() {
        return this.f33966c;
    }

    public final boolean f() {
        return this.f33972k;
    }
}

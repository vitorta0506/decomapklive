package com.tencent.tmediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import androidx.annotation.NonNull;
import com.tencent.tmediacodec.b;
import com.tencent.tmediacodec.b.c;
import com.tencent.tmediacodec.b.d;
import com.tencent.tmediacodec.b.e;
import com.tencent.tmediacodec.b.f;
import java.io.IOException;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: f  reason: collision with root package name */
    private static final a f34503f = new a();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f34504g = false;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f34505h = true;

    /* renamed from: c  reason: collision with root package name */
    public boolean f34508c;

    /* renamed from: a  reason: collision with root package name */
    public com.tencent.tmediacodec.d.b f34506a = com.tencent.tmediacodec.d.b.f34604e;

    /* renamed from: b  reason: collision with root package name */
    public boolean f34507b = true;

    /* renamed from: d  reason: collision with root package name */
    public final com.tencent.tmediacodec.c.a f34509d = new com.tencent.tmediacodec.c.a();

    /* renamed from: e  reason: collision with root package name */
    public boolean f34510e = true;

    public static a a() {
        return f34503f;
    }

    public static boolean b() {
        return f34505h;
    }

    public static com.tencent.tmediacodec.b.b a(MediaFormat mediaFormat, b bVar) throws IOException {
        if (com.tencent.tmediacodec.f.a.a()) {
            com.tencent.tmediacodec.f.a.b("TCodecManager", "createDirectCodecWrapper mediaFormat:" + mediaFormat + " createBy:" + bVar.f34519i + " nameOrType:" + bVar.f34518h);
        }
        if (bVar.f34519i == b.a.CreateByName) {
            return new c(MediaCodec.createByCodecName(bVar.f34518h));
        }
        return new c(MediaCodec.createDecoderByType(bVar.f34518h));
    }

    public static com.tencent.tmediacodec.b.b b(MediaFormat mediaFormat, b bVar) throws IOException {
        if (com.tencent.tmediacodec.f.a.a()) {
            com.tencent.tmediacodec.f.a.b("TCodecManager", "createNewReuseCodecWrapper mediaFormat:" + mediaFormat + " createBy:" + bVar.f34519i + " nameOrType:" + bVar.f34518h);
        }
        String string = mediaFormat.getString("mime");
        d a10 = d.a(mediaFormat);
        com.tencent.tmediacodec.d.b bVar2 = f34503f.f34506a;
        int max = Math.max(bVar2.f34606b, a10.f34530b);
        int max2 = Math.max(bVar2.f34607c, a10.f34531c);
        if (bVar2.f34605a) {
            bVar2.f34606b = max;
            bVar2.f34607c = max2;
        }
        int max3 = Math.max(0, com.tencent.tmediacodec.f.c.a(a10.f34538j, max, max2, false));
        if (com.tencent.tmediacodec.f.a.a()) {
            com.tencent.tmediacodec.f.a.b("ReuseHelper", "initFormatWrapper initWidth:" + max + " initHeight:" + max2 + " initMaxInputSize:" + max3 + " reusePolicy:" + bVar2);
        }
        a10.f34535g = max;
        a10.f34536h = max2;
        a10.f34537i = max3;
        mediaFormat.setInteger("max-input-size", Math.max(max3, 0));
        if (a10.a()) {
            mediaFormat.setInteger("max-width", max);
            mediaFormat.setInteger("max-height", max2);
        }
        if (bVar.f34519i == b.a.CreateByName) {
            return e.a(MediaCodec.createByCodecName(bVar.f34518h), string, a10);
        }
        return e.a(MediaCodec.createDecoderByType(string), string, a10);
    }

    public final void a(@NonNull com.tencent.tmediacodec.b.b bVar) {
        if (this.f34507b && (bVar instanceof f)) {
            com.tencent.tmediacodec.c.a aVar = this.f34509d;
            e eVar = (e) bVar;
            if (com.tencent.tmediacodec.f.a.a()) {
                com.tencent.tmediacodec.f.a.b("CodecWrapperManager", "removeFromRunning codecWrapper:".concat(String.valueOf(eVar)));
            }
            aVar.f34587b.b(eVar);
        }
    }

    public final void b(@NonNull com.tencent.tmediacodec.b.b bVar) {
        if (this.f34507b && (bVar instanceof f)) {
            com.tencent.tmediacodec.c.a aVar = this.f34509d;
            e eVar = (e) bVar;
            if (com.tencent.tmediacodec.f.a.a()) {
                com.tencent.tmediacodec.f.a.b("CodecWrapperManager", "transTokeep codecWrapper:".concat(String.valueOf(eVar)));
            }
            aVar.f34587b.b(eVar);
            aVar.f34586a.a(eVar);
        }
    }
}

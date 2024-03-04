package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.mediacodec.l;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class m implements y2 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6185a;

    /* renamed from: e  reason: collision with root package name */
    private boolean f6189e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f6191g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f6192h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f6193i;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.mediacodec.j f6186b = new com.google.android.exoplayer2.mediacodec.j();

    /* renamed from: c  reason: collision with root package name */
    private int f6187c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f6188d = 5000;

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.exoplayer2.mediacodec.o f6190f = com.google.android.exoplayer2.mediacodec.o.f6307a;

    public m(Context context) {
        this.f6185a = context;
    }

    @Override // com.google.android.exoplayer2.y2
    public u2[] a(Handler handler, k3.w wVar, com.google.android.exoplayer2.audio.r rVar, x2.m mVar, o2.e eVar) {
        ArrayList<u2> arrayList = new ArrayList<>();
        h(this.f6185a, this.f6187c, this.f6190f, this.f6189e, handler, wVar, this.f6188d, arrayList);
        AudioSink c10 = c(this.f6185a, this.f6191g, this.f6192h, this.f6193i);
        if (c10 != null) {
            b(this.f6185a, this.f6187c, this.f6190f, this.f6189e, c10, handler, rVar, arrayList);
        }
        g(this.f6185a, mVar, handler.getLooper(), this.f6187c, arrayList);
        e(this.f6185a, eVar, handler.getLooper(), this.f6187c, arrayList);
        d(this.f6185a, this.f6187c, arrayList);
        f(this.f6185a, handler, this.f6187c, arrayList);
        return (u2[]) arrayList.toArray(new u2[0]);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:5|(1:7)|8|9|10|11|(2:12|13)|14|15|16|17|18|19|(5:21|22|23|24|25)|(2:27|28)) */
    /* JADX WARN: Can't wrap try/catch for region: R(8:(2:12|13)|15|16|17|18|19|(5:21|22|23|24|25)|(2:27|28)) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
        r4 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
        r6 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void b(android.content.Context r15, int r16, com.google.android.exoplayer2.mediacodec.o r17, boolean r18, com.google.android.exoplayer2.audio.AudioSink r19, android.os.Handler r20, com.google.android.exoplayer2.audio.r r21, java.util.ArrayList<com.google.android.exoplayer2.u2> r22) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.m.b(android.content.Context, int, com.google.android.exoplayer2.mediacodec.o, boolean, com.google.android.exoplayer2.audio.AudioSink, android.os.Handler, com.google.android.exoplayer2.audio.r, java.util.ArrayList):void");
    }

    @Nullable
    protected AudioSink c(Context context, boolean z10, boolean z11, boolean z12) {
        return new DefaultAudioSink.e().g(com.google.android.exoplayer2.audio.f.c(context)).i(z10).h(z11).j(z12 ? 1 : 0).f();
    }

    protected void d(Context context, int i9, ArrayList<u2> arrayList) {
        arrayList.add(new l3.b());
    }

    protected void e(Context context, o2.e eVar, Looper looper, int i9, ArrayList<u2> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.metadata.a(eVar, looper));
    }

    protected void f(Context context, Handler handler, int i9, ArrayList<u2> arrayList) {
    }

    protected void g(Context context, x2.m mVar, Looper looper, int i9, ArrayList<u2> arrayList) {
        arrayList.add(new x2.n(mVar, looper));
    }

    protected void h(Context context, int i9, com.google.android.exoplayer2.mediacodec.o oVar, boolean z10, Handler handler, k3.w wVar, long j10, ArrayList<u2> arrayList) {
        int i10;
        arrayList.add(new k3.g(context, i(), oVar, j10, z10, handler, wVar, 50));
        if (i9 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i9 == 2) {
            size--;
        }
        try {
            try {
                i10 = size + 1;
                try {
                    arrayList.add(size, (u2) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, k3.w.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, wVar, 50));
                    com.google.android.exoplayer2.util.r.f("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i10;
                    i10 = size;
                    arrayList.add(i10, (u2) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, k3.w.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, wVar, 50));
                    com.google.android.exoplayer2.util.r.f("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
                }
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating VP9 extension", e10);
            }
        } catch (ClassNotFoundException unused2) {
        }
        try {
            arrayList.add(i10, (u2) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, k3.w.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, wVar, 50));
            com.google.android.exoplayer2.util.r.f("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
        } catch (ClassNotFoundException unused3) {
        } catch (Exception e11) {
            throw new RuntimeException("Error instantiating AV1 extension", e11);
        }
    }

    protected l.b i() {
        return this.f6186b;
    }
}

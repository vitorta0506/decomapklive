package com.tencent.tmediacodec.b;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.imsdk.BaseConstants;
import com.tencent.tmediacodec.d.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public abstract class e implements com.tencent.tmediacodec.b.b {

    /* renamed from: j  reason: collision with root package name */
    private static final Map<Surface, e> f34541j = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    public boolean f34543b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f34544c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f34545d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final d f34546e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    protected Surface f34547f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    protected final com.tencent.tmediacodec.b.a f34548g;

    /* renamed from: h  reason: collision with root package name */
    protected final String f34549h;

    /* renamed from: k  reason: collision with root package name */
    private final String f34551k;

    /* renamed from: l  reason: collision with root package name */
    private final int f34552l;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private final MediaCodec f34557q;

    /* renamed from: s  reason: collision with root package name */
    private boolean f34559s;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private MediaCodecInfo.CodecCapabilities f34561u;

    /* renamed from: v  reason: collision with root package name */
    private long f34562v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private com.tencent.tmediacodec.a.a f34563w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f34564x;

    /* renamed from: z  reason: collision with root package name */
    private boolean f34566z;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public b f34542a = b.Started;

    /* renamed from: m  reason: collision with root package name */
    private final HashSet<Integer> f34553m = new HashSet<>();

    /* renamed from: n  reason: collision with root package name */
    private final ArrayList<Long> f34554n = new ArrayList<>();

    /* renamed from: o  reason: collision with root package name */
    private final Set<SurfaceTexture> f34555o = new LinkedHashSet();

    /* renamed from: p  reason: collision with root package name */
    private final int[] f34556p = new int[2];

    /* renamed from: r  reason: collision with root package name */
    private String f34558r = "";
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    private a f34560t = a.Uninitialized;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    private a.b f34565y = a.b.KEEP_CODEC_RESULT_NO;
    private boolean A = false;
    private boolean B = false;

    /* renamed from: i  reason: collision with root package name */
    public int f34550i = 0;

    /* renamed from: com.tencent.tmediacodec.b.e$4  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34571a;

        static {
            int[] iArr = new int[a.b.values().length];
            f34571a = iArr;
            try {
                iArr[a.b.KEEP_CODEC_RESULT_NO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34571a[a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34571a[a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34571a[a.b.KEEP_CODEC_RESULT_YES_WITH_FLUSH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum a {
        Uninitialized,
        Configured,
        Error,
        Flushed,
        Running,
        EndOfStream,
        Released
    }

    /* loaded from: classes4.dex */
    public enum b {
        Started,
        DequeueIn,
        QueueIn,
        DequeueOut,
        ReleaseOut
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e(@androidx.annotation.NonNull android.media.MediaCodec r7, @androidx.annotation.NonNull com.tencent.tmediacodec.b.d r8) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tmediacodec.b.e.<init>(android.media.MediaCodec, com.tencent.tmediacodec.b.d):void");
    }

    private boolean l() {
        return Thread.currentThread().getId() != this.f34562v;
    }

    @NonNull
    public abstract a.b b(@NonNull d dVar);

    @Override // com.tencent.tmediacodec.b.b
    public final void g() {
        if (com.tencent.tmediacodec.f.a.a()) {
            String str = this.f34551k;
            com.tencent.tmediacodec.f.a.b(str, this + " call release mHoldBufferOutIndex:" + this.f34553m + " mReleaseCalled:" + this.f34559s + " stack:" + Log.getStackTraceString(new Throwable()));
        }
        this.f34559s = true;
        this.f34566z = false;
        if (j()) {
            try {
                e();
            } catch (IllegalStateException e10) {
                com.tencent.tmediacodec.f.a.b(this.f34551k, "flush failed for not in the Executing state.", e10);
            }
            com.tencent.tmediacodec.a.a().b(this);
            return;
        }
        if (com.tencent.tmediacodec.f.a.a()) {
            String str2 = this.f34551k;
            com.tencent.tmediacodec.f.a.d(str2, "Don't not keep the codec, release it ..., mErrorHappened:" + this.A);
        }
        com.tencent.tmediacodec.a.a().a(this);
        i();
        this.f34560t = a.Released;
    }

    @Override // com.tencent.tmediacodec.b.b
    public final int h() {
        if (l()) {
            com.tencent.tmediacodec.f.a.d(this.f34551k, "ignore call method dequeueInputBuffer for isNotMyThread");
            return -1;
        }
        String str = null;
        int i9 = 0;
        try {
            int dequeueInputBuffer = this.f34557q.dequeueInputBuffer(10000L);
            if (com.tencent.tmediacodec.f.a.a()) {
                str = this + ", dequeueInputBuffer state:" + this.f34560t + " decodeState:" + this.f34542a + " , result=" + dequeueInputBuffer;
                com.tencent.tmediacodec.f.a.a(this.f34551k, str);
            }
            this.f34542a = b.DequeueIn;
            this.f34560t = a.Running;
            a(0, dequeueInputBuffer);
            return dequeueInputBuffer;
        } catch (Throwable th2) {
            if (th2 instanceof IllegalStateException) {
                i9 = 40000;
            } else if (th2 instanceof IllegalArgumentException) {
                i9 = BaseConstants.ERR_SVR_PROFILE_INVALID_PARAMETERS;
            }
            a(i9, str, th2);
            throw th2;
        }
    }

    public final void i() {
        String str = this.f34551k;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this);
        sb2.append(", recycle isRecycled:");
        sb2.append(this.f34543b);
        sb2.append("  mSurfaceMap.size:");
        Map<Surface, e> map = f34541j;
        sb2.append(map.size());
        sb2.append("...... stack:");
        sb2.append(Log.getStackTraceString(new Throwable()));
        com.tencent.tmediacodec.f.a.b(str, sb2.toString());
        if (this.f34543b) {
            com.tencent.tmediacodec.f.a.d(this.f34551k, "ignore recycle for has isRecycled is true.");
            return;
        }
        this.f34566z = false;
        this.f34543b = true;
        a(Collections.emptySet(), Collections.singleton(this));
        com.tencent.tmediacodec.f.d.a(new Runnable() { // from class: com.tencent.tmediacodec.b.e.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    e.this.f34557q.stop();
                    e.this.f34557q.release();
                    e.this.a(false);
                } catch (Throwable th2) {
                    com.tencent.tmediacodec.f.a.a(e.this.f34551k, "recycle codec ignore error,", th2);
                }
                if (e.this.f34563w != null) {
                    com.tencent.tmediacodec.a.a unused = e.this.f34563w;
                }
            }
        });
        map.remove(this.f34547f);
        this.f34560t = a.Uninitialized;
    }

    public boolean j() {
        return com.tencent.tmediacodec.a.b() ? !this.A && com.tencent.tmediacodec.a.a().f34507b && com.tencent.tmediacodec.a.a().f34510e : !this.A && com.tencent.tmediacodec.a.a().f34507b;
    }

    public final String k() {
        return this.f34549h;
    }

    @NonNull
    public String toString() {
        return super.toString() + " mReleaseCalled:" + this.f34559s + " isRecycled:" + this.f34543b;
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void b() {
        long id2 = Thread.currentThread().getId();
        if (this.f34554n.contains(Long.valueOf(id2))) {
            return;
        }
        this.f34562v = id2;
        this.f34554n.add(Long.valueOf(id2));
        if (this.f34554n.size() > 100) {
            this.f34554n.remove(0);
        }
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void c() {
        this.B = false;
        this.f34550i = 0;
        if (com.tencent.tmediacodec.a.b()) {
            if (this.f34560t == a.Running) {
                try {
                    e();
                } catch (IllegalStateException e10) {
                    com.tencent.tmediacodec.f.a.b(this.f34551k, "flush failed in prepareToReUse", e10);
                }
            }
        } else if (this.f34560t != a.Flushed) {
            e();
        }
        this.f34564x = true;
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void d() {
        a aVar = this.f34560t;
        a aVar2 = a.Configured;
        if (aVar != aVar2) {
            com.tencent.tmediacodec.f.a.b(this.f34551k, "start ignore:" + this.f34560t);
            return;
        }
        String str = null;
        try {
            if (com.tencent.tmediacodec.f.a.a()) {
                str = this + ", start state:" + this.f34560t;
                com.tencent.tmediacodec.f.a.b(this.f34551k, str);
            }
            if (this.f34560t == aVar2) {
                this.f34557q.start();
                this.f34560t = a.Running;
            }
        } catch (Throwable th2) {
            int i9 = 0;
            if (th2 instanceof MediaCodec.CodecException) {
                i9 = BaseConstants.ERR_SVR_MSG_PKG_PARSE_FAILED;
            } else if (th2 instanceof IllegalStateException) {
                i9 = 20000;
            }
            a(i9, str, th2);
            throw th2;
        }
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void e() {
        if (l()) {
            com.tencent.tmediacodec.f.a.d(this.f34551k, "call method flush for isNotMyThread...");
        }
        String str = null;
        try {
            if (com.tencent.tmediacodec.f.a.a()) {
                str = this + ", flush state:" + this.f34560t;
                com.tencent.tmediacodec.f.a.b(this.f34551k, str);
            }
            this.f34557q.flush();
            this.f34560t = a.Flushed;
        } catch (Throwable th2) {
            int i9 = 0;
            if (th2 instanceof MediaCodec.CodecException) {
                i9 = BaseConstants.ERR_SVR_MSG_JSON_PARSE_FAILED;
            } else if (th2 instanceof IllegalStateException) {
                i9 = 90000;
            }
            a(i9, str, th2);
            throw th2;
        }
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void f() {
        if (com.tencent.tmediacodec.f.a.a()) {
            String str = this.f34551k;
            com.tencent.tmediacodec.f.a.b(str, this + ", stop");
        }
        if (j()) {
            return;
        }
        if (com.tencent.tmediacodec.f.a.a()) {
            String str2 = this.f34551k;
            com.tencent.tmediacodec.f.a.b(str2, this + ", codec real stop");
        }
        try {
            this.f34557q.stop();
            this.f34560t = a.Uninitialized;
        } catch (IllegalStateException e10) {
            this.f34560t = a.Uninitialized;
            com.tencent.tmediacodec.f.a.b(this.f34551k, "stop failed", e10);
            throw e10;
        }
    }

    public static com.tencent.tmediacodec.b.b a(@NonNull MediaCodec mediaCodec, @NonNull String str, @NonNull d dVar) {
        return com.tencent.tmediacodec.f.c.a(str) ? new f(mediaCodec, dVar) : new c(mediaCodec);
    }

    private void a(Surface surface) {
        if (com.tencent.tmediacodec.f.a.a()) {
            String str = this.f34551k;
            com.tencent.tmediacodec.f.a.c(str, this + ", oldSurface:" + this.f34547f + " CodecWrapperSetSurface surface:" + surface);
        }
        com.tencent.tmediacodec.hook.a.a(this.f34558r);
        a(new HashSet(Collections.singletonList(this.f34558r)));
        this.f34547f = surface;
        this.f34558r = "";
        if (surface != null) {
            this.f34558r = com.tencent.tmediacodec.f.c.a(surface);
        }
        a(this.f34558r);
        if (surface != null) {
            if (com.tencent.tmediacodec.f.a.a()) {
                String str2 = this.f34551k;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this);
                sb2.append(" checkSurfaceBinding size:");
                Map<Surface, e> map = f34541j;
                sb2.append(map.size());
                sb2.append(" mSurfaceMap:");
                sb2.append(map);
                com.tencent.tmediacodec.f.a.b(str2, sb2.toString());
            }
            Map<Surface, e> map2 = f34541j;
            if (map2.containsKey(surface)) {
                e eVar = map2.get(surface);
                boolean z10 = eVar != null && eVar.f34559s;
                if (com.tencent.tmediacodec.f.a.a()) {
                    String str3 = this.f34551k;
                    com.tencent.tmediacodec.f.a.e(str3, this + ", surface:" + surface + " has been used by " + eVar + " isReleaseCalled:" + z10 + ", ignore but we can release it...");
                }
                if (z10) {
                    eVar.i();
                }
            }
            map2.put(surface, this);
            com.tencent.tmediacodec.hook.a.a(this.f34558r, new com.tencent.tmediacodec.hook.b() { // from class: com.tencent.tmediacodec.b.e.1
                @Override // com.tencent.tmediacodec.hook.b
                public final void a(@NonNull SurfaceTexture surfaceTexture) {
                    if (TextUtils.equals(e.this.f34558r, surfaceTexture.toString())) {
                        e.this.f34555o.add(surfaceTexture);
                        String str4 = e.this.f34551k;
                        com.tencent.tmediacodec.f.a.d(str4, e.this + "      surfaceDestroyed ... surfaceTexture:" + surfaceTexture + "     mStoreToRelease.size:" + e.this.f34555o.size());
                    }
                }
            });
        }
    }

    private void b(int i9) {
        if (i9 < 40000) {
            String str = this.f34551k;
            com.tencent.tmediacodec.f.a.e(str, this + "    releaseCodecWhenError, errorCode:" + i9);
            g();
        }
    }

    private boolean b(int i9, int i10) {
        if (i10 == -1) {
            int[] iArr = this.f34556p;
            iArr[i9] = iArr[i9] + 1;
            return iArr[i9] > 100;
        }
        this.f34556p[i9] = 0;
        return false;
    }

    private static int b(Surface surface) {
        if (surface == null) {
            return 10003;
        }
        return !surface.isValid() ? 10004 : 0;
    }

    @Override // com.tencent.tmediacodec.b.b
    @NonNull
    public final a.b a(@NonNull d dVar) {
        a.b b10 = b(dVar);
        this.f34565y = b10;
        return b10;
    }

    private final void a(String str) {
        if (com.tencent.tmediacodec.f.a.a()) {
            String str2 = this.f34551k;
            com.tencent.tmediacodec.f.a.b(str2, this + ", removeStoreSurfaceTexture nameSurfaceTexture:" + str);
        }
        Iterator<SurfaceTexture> it = this.f34555o.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().toString(), str)) {
                it.remove();
                return;
            }
        }
    }

    private void a(Set set) {
        a(set, Collections.emptySet());
    }

    private void a(Set set, Set set2) {
        if (com.tencent.tmediacodec.f.a.a()) {
            String str = this.f34551k;
            com.tencent.tmediacodec.f.a.b(str, this + ", removeSurfaceBinding toReleaseNameSet:" + set + " toReleaseCodecSet:" + set2);
        }
        Iterator<Map.Entry<Surface, e>> it = f34541j.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Surface, e> next = it.next();
            String a10 = com.tencent.tmediacodec.f.c.a(next.getKey());
            if (set.contains(a10) || set2.contains(next.getValue())) {
                it.remove();
                com.tencent.tmediacodec.hook.a.a(a10);
            }
        }
    }

    private void a(int i9, String str, Throwable th2) {
        a(i9, str, th2, false, this.f34547f);
    }

    private void a(int i9, String str, Throwable th2, boolean z10, Surface surface) {
        int b10;
        this.A = true;
        String str2 = str + " handleCoreAPIException exception:" + (th2 == null ? "" : th2.getLocalizedMessage());
        if (z10 && (b10 = b(surface)) != 0) {
            i9 = b10;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", i9);
            jSONObject.put("exceptionMsg", str2);
            com.tencent.tmediacodec.a.a aVar = this.f34563w;
            if (aVar != null) {
                aVar.a(jSONObject.toString());
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        com.tencent.tmediacodec.f.a.b(this.f34551k, "hasReused:" + this.f34564x + "    errorCode:" + i9 + ", " + str2, th2);
        b(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10) {
        if (com.tencent.tmediacodec.f.a.a()) {
            String str = this.f34551k;
            com.tencent.tmediacodec.f.a.b(str, this + ", releaseStoreSurfaceTexture mStoreToRelease:" + this.f34555o);
        }
        if (this.f34555o.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList(this.f34555o);
        this.f34555o.clear();
        if (z10) {
            com.tencent.tmediacodec.f.d.b(new Runnable() { // from class: com.tencent.tmediacodec.b.e.2
                @Override // java.lang.Runnable
                public final void run() {
                    e.this.a(arrayList);
                }
            });
        } else {
            a(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<SurfaceTexture> list) {
        if (com.tencent.tmediacodec.f.a.a()) {
            String str = this.f34551k;
            com.tencent.tmediacodec.f.a.b(str, this + ", releaseSurfaceTexture toReleaseSet:" + list);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (SurfaceTexture surfaceTexture : list) {
            com.tencent.tmediacodec.hook.a.a(surfaceTexture);
            linkedHashSet.add(surfaceTexture.toString());
        }
        a(linkedHashSet);
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void a(@Nullable com.tencent.tmediacodec.a.a aVar) {
        this.f34563w = aVar;
    }

    @Override // com.tencent.tmediacodec.b.b
    @NonNull
    public final MediaCodec a() {
        return this.f34557q;
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void a(@NonNull MediaFormat mediaFormat, @Nullable Surface surface) {
        String str;
        int i9;
        String str2;
        if (l()) {
            com.tencent.tmediacodec.f.a.d(this.f34551k, "ignore call method configure for isNotMyThread");
            return;
        }
        this.f34566z = true;
        this.f34559s = false;
        String str3 = null;
        if (this.f34560t != a.Uninitialized) {
            if (surface != null) {
                int[] iArr = this.f34556p;
                iArr[0] = 0;
                iArr[1] = 0;
                if (this.f34547f == surface) {
                    com.tencent.tmediacodec.f.a.d(this.f34551k, this + ", innerSetOutputSurface error surface:" + surface + " is same, stack:" + Log.getStackTraceString(new Throwable()));
                    return;
                }
                if (com.tencent.tmediacodec.f.a.a()) {
                    str3 = this + " configure, call innerSetOutputSurface surface:" + surface + "  decodeState:" + this.f34542a + " callByInner:true";
                    com.tencent.tmediacodec.f.a.b(this.f34551k, str3);
                }
                a(surface);
                this.f34557q.setOutputSurface(surface);
                a(true);
                return;
            }
            return;
        }
        try {
            if (com.tencent.tmediacodec.f.a.a()) {
                str2 = this + ", realConfigure mediaFormat:" + mediaFormat + " surface:" + surface + " crypto:" + ((Object) null) + " flags:0 state:" + this.f34560t + " mHasConfigureCalled：" + this.f34566z;
                try {
                    com.tencent.tmediacodec.f.a.b(this.f34551k, str2);
                } catch (Throwable th2) {
                    th = th2;
                    str = str2;
                    if (th instanceof IllegalStateException) {
                        i9 = 10000;
                    } else {
                        i9 = th instanceof MediaCodec.CryptoException ? 10001 : 0;
                    }
                    a(i9, str, th, true, surface);
                    throw th;
                }
            } else {
                str2 = null;
            }
            this.f34557q.configure(mediaFormat, surface, (MediaCrypto) null, 0);
            a(surface);
            this.f34560t = a.Configured;
        } catch (Throwable th3) {
            th = th3;
            str = null;
        }
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void a(int i9, int i10, long j10, int i11) {
        if (l()) {
            com.tencent.tmediacodec.f.a.d(this.f34551k, "ignore call method queueInputBuffer for isNotMyThread");
            return;
        }
        String str = null;
        if (com.tencent.tmediacodec.f.a.a()) {
            str = this + ", queueInputBuffer index:" + i9 + " offset:0 size:" + i10 + " presentationTimeUs:" + j10 + " flags:" + i11 + " state:" + this.f34560t + " decodeState:" + this.f34542a;
            com.tencent.tmediacodec.f.a.a(this.f34551k, str);
        }
        try {
            if (this.f34564x) {
                int i12 = AnonymousClass4.f34571a[this.f34565y.ordinal()];
                if (i12 == 1) {
                    com.tencent.tmediacodec.f.a.d(this.f34551k, "queueInputBufferForAdaptation error for KEEP_CODEC_RESULT_NO");
                } else if (i12 == 2) {
                    this.f34557q.queueInputBuffer(i9, 0, i10, j10, i11);
                } else if (i12 == 3) {
                    this.f34557q.queueInputBuffer(i9, 0, i10, j10, i11);
                }
            } else {
                this.f34557q.queueInputBuffer(i9, 0, i10, j10, i11);
            }
            this.f34542a = b.QueueIn;
        } catch (Throwable th2) {
            int i13 = 0;
            if (th2 instanceof MediaCodec.CodecException) {
                i13 = 50001;
            } else if (th2 instanceof IllegalStateException) {
                i13 = 50000;
            } else if (th2 instanceof MediaCodec.CryptoException) {
                i13 = BaseConstants.ERR_SVR_CONV_INVALID_PARAMETERS;
            }
            a(i13, str, th2);
            throw th2;
        }
    }

    @Override // com.tencent.tmediacodec.b.b
    public final int a(@NonNull MediaCodec.BufferInfo bufferInfo, long j10) {
        if (l()) {
            com.tencent.tmediacodec.f.a.d(this.f34551k, "ignore call method dequeueOutputBuffer for isNotMyThread");
            return -1;
        }
        String str = null;
        try {
            int dequeueOutputBuffer = this.f34557q.dequeueOutputBuffer(bufferInfo, j10);
            if (com.tencent.tmediacodec.f.a.a()) {
                str = this + ", dequeueOutputBuffer outIndex:" + dequeueOutputBuffer;
                if (this instanceof f) {
                    com.tencent.tmediacodec.f.a.a(this.f34551k, str);
                }
            }
            this.f34553m.add(Integer.valueOf(dequeueOutputBuffer));
            this.f34542a = b.DequeueOut;
            a(1, dequeueOutputBuffer);
            return dequeueOutputBuffer;
        } catch (Throwable th2) {
            int i9 = 0;
            if (th2 instanceof MediaCodec.CodecException) {
                i9 = 60001;
            } else if (th2 instanceof IllegalStateException) {
                i9 = 60000;
            }
            a(i9, str, th2);
            throw th2;
        }
    }

    @Override // com.tencent.tmediacodec.b.b
    public final void a(int i9) {
        if (l()) {
            com.tencent.tmediacodec.f.a.d(this.f34551k, "ignore call method releaseOutputBuffer for isNotMyThread");
            return;
        }
        String str = null;
        if (com.tencent.tmediacodec.f.a.a()) {
            str = this + ", releaseOutputBuffer render:true";
            com.tencent.tmediacodec.f.a.a(this.f34551k, str);
        }
        try {
            this.f34553m.remove(Integer.valueOf(i9));
            this.f34557q.releaseOutputBuffer(i9, true);
        } catch (Throwable th2) {
            if (this.f34560t != a.Flushed) {
                com.tencent.tmediacodec.f.a.a(this.f34551k, this + ", releaseOutputBuffer failed, ignore e:", th2);
            }
            int i10 = 0;
            if (th2 instanceof MediaCodec.CodecException) {
                i10 = BaseConstants.ERR_SVR_ACCOUNT_USERSIG_EMPTY;
            } else if (th2 instanceof IllegalStateException) {
                i10 = BaseConstants.ERR_SVR_ACCOUNT_USERSIG_EXPIRED;
            }
            a(i10, str, th2);
        }
        this.f34542a = b.ReleaseOut;
    }

    private void a(int i9, int i10) {
        if (this.B || !b(i9, i10)) {
            return;
        }
        this.B = true;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this);
        sb2.append(", trackDecodeApi state:");
        sb2.append(this.f34560t);
        sb2.append("  surfaceState:");
        Surface surface = this.f34547f;
        sb2.append(surface != null ? Boolean.valueOf(surface.isValid()) : null);
        String sb3 = sb2.toString();
        if (i9 == 0) {
            a(BaseConstants.ERR_SVR_PROFILE_ACCOUNT_MISS, sb3, (Throwable) null);
        } else if (i9 == 1) {
            a(BaseConstants.ERR_SVR_COMM_INVALID_HTTP_URL, sb3, (Throwable) null);
        }
    }
}

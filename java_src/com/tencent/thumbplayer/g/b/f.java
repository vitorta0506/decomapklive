package com.tencent.thumbplayer.g.b;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.guochao.faceshow.utils.HttpFileUtil;
import com.tencent.imsdk.BaseConstants;
import com.tencent.thumbplayer.g.f.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
@RequiresApi(api = 23)
/* loaded from: classes4.dex */
public abstract class f implements c {

    /* renamed from: i  reason: collision with root package name */
    private static final Map<Surface, f> f34006i = new ConcurrentHashMap();
    private com.tencent.thumbplayer.g.e.a.a B;

    /* renamed from: b  reason: collision with root package name */
    public boolean f34008b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f34009c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f34010d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final e f34011e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    protected Surface f34012f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    protected final com.tencent.thumbplayer.g.b.b f34013g;

    /* renamed from: h  reason: collision with root package name */
    protected final String f34014h;

    /* renamed from: j  reason: collision with root package name */
    private final String f34015j;

    /* renamed from: k  reason: collision with root package name */
    private final a.EnumC0351a f34016k;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    private final MediaCodec f34021p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f34022q;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private MediaCodecInfo.CodecCapabilities f34024s;

    /* renamed from: t  reason: collision with root package name */
    private long f34025t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private com.tencent.thumbplayer.g.a.a f34026u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f34027v;

    /* renamed from: x  reason: collision with root package name */
    private boolean f34029x;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public b f34007a = b.Started;

    /* renamed from: l  reason: collision with root package name */
    private final HashSet<Integer> f34017l = new HashSet<>();

    /* renamed from: m  reason: collision with root package name */
    private final ArrayList<Long> f34018m = new ArrayList<>();

    /* renamed from: n  reason: collision with root package name */
    private final Set<SurfaceTexture> f34019n = new LinkedHashSet();

    /* renamed from: o  reason: collision with root package name */
    private final int[] f34020o = new int[2];
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    private a f34023r = a.Uninitialized;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    private a.b f34028w = a.b.KEEP_CODEC_RESULT_NO;

    /* renamed from: y  reason: collision with root package name */
    private boolean f34030y = false;

    /* renamed from: z  reason: collision with root package name */
    private boolean f34031z = false;
    private int A = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.thumbplayer.g.b.f$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34033a;

        static {
            int[] iArr = new int[a.b.values().length];
            f34033a = iArr;
            try {
                iArr[a.b.KEEP_CODEC_RESULT_NO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34033a[a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34033a[a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34033a[a.b.KEEP_CODEC_RESULT_YES_WITH_FLUSH.ordinal()] = 4;
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

    public f(@NonNull MediaCodec mediaCodec, @NonNull e eVar) {
        String str = "ReuseCodecWrapper[" + hashCode() + "]";
        this.f34015j = str;
        boolean z10 = false;
        this.f34021p = mediaCodec;
        this.f34011e = eVar;
        this.f34013g = new com.tencent.thumbplayer.g.b.b(eVar.f34000g, eVar.f34001h, eVar.f34002i);
        String a10 = com.tencent.thumbplayer.g.h.c.a(mediaCodec);
        this.f34014h = a10;
        this.f34016k = com.tencent.thumbplayer.g.f.a.a(a10);
        boolean z11 = Build.VERSION.SDK_INT != 29 || eVar.f33997d == 0;
        com.tencent.thumbplayer.g.h.b.b(str, "canCallGetCodecInfo:".concat(String.valueOf(z11)));
        if (z11) {
            this.f34024s = mediaCodec.getCodecInfo().getCapabilitiesForType(eVar.f34003j);
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f34024s;
        this.f34009c = codecCapabilities != null && com.tencent.thumbplayer.g.h.c.a(codecCapabilities);
        MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.f34024s;
        if (codecCapabilities2 != null && com.tencent.thumbplayer.g.h.c.b(codecCapabilities2)) {
            z10 = true;
        }
        this.f34010d = z10;
    }

    public static c a(@NonNull MediaCodec mediaCodec, @NonNull String str, @NonNull e eVar) {
        return com.tencent.thumbplayer.g.h.c.a(str) ? new g(mediaCodec, eVar) : new com.tencent.thumbplayer.g.b.a(mediaCodec, eVar);
    }

    private void a(int i9) {
        if (i9 < 40000) {
            String str = this.f34015j;
            com.tencent.thumbplayer.g.h.b.e(str, this + "    releaseCodecWhenError, errorCode:" + i9);
            g();
        }
    }

    private void a(int i9, int i10) {
        if (this.f34031z || !b(i9, i10)) {
            return;
        }
        this.f34031z = true;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this);
        sb2.append(", trackDecodeApi state:");
        sb2.append(this.f34023r);
        sb2.append("  surfaceState:");
        Surface surface = this.f34012f;
        sb2.append(surface != null ? Boolean.valueOf(surface.isValid()) : null);
        String sb3 = sb2.toString();
        if (i9 == 0) {
            a(BaseConstants.ERR_SVR_PROFILE_ACCOUNT_MISS, sb3, (Throwable) null);
        } else if (i9 == 1) {
            a(BaseConstants.ERR_SVR_COMM_INVALID_HTTP_URL, sb3, (Throwable) null);
        }
    }

    private void a(int i9, String str, Throwable th2) {
        a(i9, str, th2, false, this.f34012f);
    }

    private void a(int i9, String str, Throwable th2, boolean z10, Surface surface) {
        int d10;
        this.f34030y = true;
        String str2 = str + " handleCoreAPIException exception:" + (th2 == null ? "" : th2.getLocalizedMessage());
        if (z10 && (d10 = d(surface)) != 0) {
            i9 = d10;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", i9);
            jSONObject.put("exceptionMsg", str2);
            com.tencent.thumbplayer.g.a.a aVar = this.f34026u;
            if (aVar != null) {
                aVar.onReuseCodecAPIException(jSONObject.toString(), th2);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        com.tencent.thumbplayer.g.h.b.b(this.f34015j, "hasReused:" + this.f34027v + "    errorCode:" + i9 + ", " + str2, th2);
        a(i9);
    }

    private void a(Surface surface, boolean z10, boolean z11) {
        if (this.f34012f == surface) {
            com.tencent.thumbplayer.g.h.b.d(this.f34015j, this + ", innerSetOutputSurface error surface:" + surface + " is same, stack:" + Log.getStackTraceString(new Throwable()));
            return;
        }
        String str = null;
        if (com.tencent.thumbplayer.g.h.b.a()) {
            str = this + " configure, call innerSetOutputSurface surface:" + surface + "  decodeState:" + this.f34007a + " callByInner:" + z10;
            com.tencent.thumbplayer.g.h.b.b(this.f34015j, str);
        }
        String str2 = str;
        try {
            b(surface);
            this.f34021p.setOutputSurface(surface);
            if (z11) {
                return;
            }
            p();
        } catch (Throwable th2) {
            a(!(th2 instanceof IllegalStateException) ? th2 instanceof IllegalArgumentException ? BaseConstants.ERR_SVR_FRIENDSHIP_INVALID_PARAMETERS : 0 : HttpFileUtil.TIMEOUT, str2, th2, true, surface);
            throw th2;
        }
    }

    private final void b(int i9, int i10, int i11, long j10, int i12) {
        int i13 = AnonymousClass2.f34033a[this.f34028w.ordinal()];
        if (i13 == 1) {
            com.tencent.thumbplayer.g.h.b.d(this.f34015j, "queueInputBufferForAdaptation error for KEEP_CODEC_RESULT_NO");
        } else if (i13 == 2) {
            c(i9, i10, i11, j10, i12);
        } else if (i13 != 3) {
        } else {
            this.f34021p.queueInputBuffer(i9, i10, i11, j10, i12);
        }
    }

    private void b(@NonNull MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i9) {
        String str = null;
        try {
            if (com.tencent.thumbplayer.g.h.b.a()) {
                str = this + ", realConfigure mediaFormat:" + mediaFormat + " surface:" + surface + " crypto:" + mediaCrypto + " flags:" + i9 + " state:" + this.f34023r + " mHasConfigureCalled：" + this.f34029x;
                com.tencent.thumbplayer.g.h.b.b(this.f34015j, str);
            }
            this.f34021p.configure(mediaFormat, surface, mediaCrypto, i9);
            b(surface);
            this.f34023r = a.Configured;
        } catch (Throwable th2) {
            a(!(th2 instanceof IllegalStateException) ? th2 instanceof MediaCodec.CryptoException ? 10001 : 0 : 10000, str, th2, true, surface);
            throw th2;
        }
    }

    private void b(Surface surface) {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            String str = this.f34015j;
            com.tencent.thumbplayer.g.h.b.c(str, this + ", oldSurface:" + this.f34012f + " CodecWrapperSetSurface surface:" + surface);
        }
        this.f34012f = surface;
    }

    private boolean b(int i9, int i10) {
        if (i10 != -1) {
            this.f34020o[i9] = 0;
            return false;
        }
        int[] iArr = this.f34020o;
        iArr[i9] = iArr[i9] + 1;
        return iArr[i9] > 100;
    }

    private final void c(int i9, int i10, int i11, long j10, int i12) {
        this.f34021p.queueInputBuffer(i9, i10, i11, j10, i12);
    }

    private void c(Surface surface) {
        a(surface, true, false);
    }

    private int d(Surface surface) {
        if (surface == null) {
            return 10003;
        }
        return !surface.isValid() ? 10004 : 0;
    }

    private boolean n() {
        return Thread.currentThread().getId() != this.f34025t;
    }

    private void o() {
        if (this.B != null) {
            return;
        }
        com.tencent.thumbplayer.g.e.a.a aVar = new com.tencent.thumbplayer.g.e.a.a(1, 1);
        this.B = aVar;
        a(aVar.d(), true, true);
    }

    private void p() {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            String str = this.f34015j;
            com.tencent.thumbplayer.g.h.b.b(str, this + "unBindingBackupSurface");
        }
        com.tencent.thumbplayer.g.e.a.a aVar = this.B;
        if (aVar != null) {
            aVar.b();
        }
        this.B = null;
    }

    private void q() {
        this.f34031z = false;
        this.A = 0;
    }

    private void r() {
        int[] iArr = this.f34020o;
        iArr[0] = 0;
        iArr[1] = 0;
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public int a(long j10) {
        if (n()) {
            com.tencent.thumbplayer.g.h.b.d(this.f34015j, "ignore call method dequeueInputBuffer for isNotMyThread");
            return -1;
        }
        String str = null;
        int i9 = 0;
        try {
            int dequeueInputBuffer = this.f34021p.dequeueInputBuffer(j10);
            if (com.tencent.thumbplayer.g.h.b.a()) {
                str = this + ", dequeueInputBuffer state:" + this.f34023r + " decodeState:" + this.f34007a + " , result=" + dequeueInputBuffer;
                com.tencent.thumbplayer.g.h.b.a(this.f34015j, str);
            }
            this.f34007a = b.DequeueIn;
            this.f34023r = a.Running;
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

    @Override // com.tencent.thumbplayer.g.b.c
    public int a(@NonNull MediaCodec.BufferInfo bufferInfo, long j10) {
        if (n()) {
            com.tencent.thumbplayer.g.h.b.d(this.f34015j, "ignore call method dequeueOutputBuffer for isNotMyThread");
            return -1;
        }
        String str = null;
        try {
            int dequeueOutputBuffer = this.f34021p.dequeueOutputBuffer(bufferInfo, j10);
            if (com.tencent.thumbplayer.g.h.b.a()) {
                str = this + ", dequeueOutputBuffer outIndex:" + dequeueOutputBuffer;
                if (this instanceof g) {
                    com.tencent.thumbplayer.g.h.b.a(this.f34015j, str);
                }
            }
            this.f34017l.add(Integer.valueOf(dequeueOutputBuffer));
            this.f34007a = b.DequeueOut;
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

    @Override // com.tencent.thumbplayer.g.b.c
    @NonNull
    public MediaCodec a() {
        return this.f34021p;
    }

    @NonNull
    public abstract a.b a(@NonNull e eVar);

    @Override // com.tencent.thumbplayer.g.b.c
    public void a(int i9, int i10, int i11, long j10, int i12) {
        if (n()) {
            com.tencent.thumbplayer.g.h.b.d(this.f34015j, "ignore call method queueInputBuffer for isNotMyThread");
            return;
        }
        String str = null;
        if (com.tencent.thumbplayer.g.h.b.a()) {
            str = this + ", queueInputBuffer index:" + i9 + " offset:" + i10 + " size:" + i11 + " presentationTimeUs:" + j10 + " flags:" + i12 + " state:" + this.f34023r + " decodeState:" + this.f34007a;
            com.tencent.thumbplayer.g.h.b.a(this.f34015j, str);
        }
        try {
            if (this.f34027v) {
                b(i9, i10, i11, j10, i12);
            } else {
                this.f34021p.queueInputBuffer(i9, i10, i11, j10, i12);
            }
            this.f34007a = b.QueueIn;
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

    @Override // com.tencent.thumbplayer.g.b.c
    public void a(int i9, boolean z10) {
        if (n()) {
            com.tencent.thumbplayer.g.h.b.d(this.f34015j, "ignore call method releaseOutputBuffer for isNotMyThread");
            return;
        }
        String str = null;
        if (com.tencent.thumbplayer.g.h.b.a()) {
            str = this + ", releaseOutputBuffer render:" + z10;
            com.tencent.thumbplayer.g.h.b.a(this.f34015j, str);
        }
        try {
            this.f34017l.remove(Integer.valueOf(i9));
            this.f34021p.releaseOutputBuffer(i9, z10);
        } catch (Throwable th2) {
            if (this.f34023r != a.Flushed) {
                com.tencent.thumbplayer.g.h.b.a(this.f34015j, this + ", releaseOutputBuffer failed, ignore e:", th2);
            }
            int i10 = 0;
            if (th2 instanceof MediaCodec.CodecException) {
                i10 = BaseConstants.ERR_SVR_ACCOUNT_USERSIG_EMPTY;
            } else if (th2 instanceof IllegalStateException) {
                i10 = BaseConstants.ERR_SVR_ACCOUNT_USERSIG_EXPIRED;
            }
            a(i10, str, th2);
        }
        this.f34007a = b.ReleaseOut;
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public void a(@NonNull MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i9) {
        if (n()) {
            com.tencent.thumbplayer.g.h.b.d(this.f34015j, "ignore call method configure for isNotMyThread");
            return;
        }
        this.f34029x = true;
        this.f34022q = false;
        if (this.f34023r == a.Uninitialized) {
            b(mediaFormat, surface, mediaCrypto, i9);
        } else if (surface != null) {
            r();
            c(surface);
        }
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public void a(@NonNull Surface surface) {
        a(surface, false, false);
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public void a(@Nullable com.tencent.thumbplayer.g.a.a aVar) {
        this.f34026u = aVar;
    }

    @Override // com.tencent.thumbplayer.g.b.c
    @NonNull
    public a.b b(@NonNull e eVar) {
        a.b a10 = a(eVar);
        this.f34028w = a10;
        return a10;
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public void b() {
        long id2 = Thread.currentThread().getId();
        if (this.f34018m.contains(Long.valueOf(id2))) {
            return;
        }
        this.f34025t = id2;
        this.f34018m.add(Long.valueOf(id2));
        if (this.f34018m.size() > 100) {
            this.f34018m.remove(0);
        }
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public void c() {
        q();
        if (com.tencent.thumbplayer.g.a.c()) {
            if (this.f34023r == a.Running) {
                try {
                    e();
                } catch (IllegalStateException e10) {
                    com.tencent.thumbplayer.g.h.b.b(this.f34015j, "flush failed in prepareToReUse", e10);
                }
            }
        } else if (this.f34023r != a.Flushed) {
            e();
        }
        this.f34027v = true;
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public void d() {
        a aVar = this.f34023r;
        a aVar2 = a.Configured;
        if (aVar != aVar2) {
            com.tencent.thumbplayer.g.h.b.b(this.f34015j, "start ignore:" + this.f34023r);
            return;
        }
        String str = null;
        try {
            if (com.tencent.thumbplayer.g.h.b.a()) {
                str = this + ", start state:" + this.f34023r;
                com.tencent.thumbplayer.g.h.b.b(this.f34015j, str);
            }
            if (this.f34023r == aVar2) {
                this.f34021p.start();
                this.f34023r = a.Running;
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

    @Override // com.tencent.thumbplayer.g.b.c
    public void e() {
        if (n()) {
            com.tencent.thumbplayer.g.h.b.d(this.f34015j, "call method flush for isNotMyThread...");
        }
        String str = null;
        try {
            if (com.tencent.thumbplayer.g.h.b.a()) {
                str = this + ", flush state:" + this.f34023r;
                com.tencent.thumbplayer.g.h.b.b(this.f34015j, str);
            }
            this.f34021p.flush();
            this.f34023r = a.Flushed;
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

    @Override // com.tencent.thumbplayer.g.b.c
    public void f() {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            String str = this.f34015j;
            com.tencent.thumbplayer.g.h.b.b(str, this + ", stop");
        }
        if (j()) {
            return;
        }
        if (com.tencent.thumbplayer.g.h.b.a()) {
            String str2 = this.f34015j;
            com.tencent.thumbplayer.g.h.b.b(str2, this + ", codec real stop");
        }
        try {
            this.f34021p.stop();
            this.f34023r = a.Uninitialized;
        } catch (IllegalStateException e10) {
            this.f34023r = a.Uninitialized;
            com.tencent.thumbplayer.g.h.b.b(this.f34015j, "stop failed", e10);
            throw e10;
        }
    }

    @Override // com.tencent.thumbplayer.g.b.c
    public void g() {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            String str = this.f34015j;
            com.tencent.thumbplayer.g.h.b.b(str, this + " call release mHoldBufferOutIndex:" + this.f34017l + " mReleaseCalled:" + this.f34022q + " stack:" + Log.getStackTraceString(new Throwable()));
        }
        this.f34022q = true;
        this.f34029x = false;
        if (j()) {
            try {
                e();
            } catch (IllegalStateException e10) {
                com.tencent.thumbplayer.g.h.b.b(this.f34015j, "flush failed for not in the Executing state.", e10);
            }
            o();
            com.tencent.thumbplayer.g.a.a().b(this);
            return;
        }
        if (com.tencent.thumbplayer.g.h.b.a()) {
            String str2 = this.f34015j;
            com.tencent.thumbplayer.g.h.b.d(str2, "Don't not keep the codec, release it ..., mErrorHappened:" + this.f34030y);
        }
        com.tencent.thumbplayer.g.a.a().a(this);
        i();
        this.f34023r = a.Released;
    }

    @Nullable
    public final com.tencent.thumbplayer.g.a.a h() {
        return this.f34026u;
    }

    public final void i() {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            String str = this.f34015j;
            com.tencent.thumbplayer.g.h.b.b(str, this + ", recycle isRecycled:" + this.f34008b + "  mSurfaceMap.size:" + f34006i.size() + "...... stack:" + Log.getStackTraceString(new Throwable()));
        }
        if (this.f34008b) {
            com.tencent.thumbplayer.g.h.b.d(this.f34015j, "ignore recycle for has isRecycled is true.");
            return;
        }
        this.f34029x = false;
        this.f34008b = true;
        com.tencent.thumbplayer.g.h.d.a(new Runnable() { // from class: com.tencent.thumbplayer.g.b.f.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    f.this.f34021p.stop();
                    f.this.f34021p.release();
                } catch (Throwable th2) {
                    com.tencent.thumbplayer.g.h.b.a(f.this.f34015j, "recycle codec ignore error,", th2);
                }
                if (f.this.f34026u != null) {
                    f.this.f34026u.onRealRelease();
                }
            }
        });
        this.f34023r = a.Uninitialized;
    }

    public boolean j() {
        return com.tencent.thumbplayer.g.a.c() ? !this.f34030y && com.tencent.thumbplayer.g.a.a().e() && com.tencent.thumbplayer.g.a.a().f() : !this.f34030y && com.tencent.thumbplayer.g.a.a().e();
    }

    public void k() {
        this.A++;
    }

    public boolean l() {
        return this.A >= 3;
    }

    public String m() {
        return this.f34014h;
    }

    @NonNull
    public String toString() {
        return super.toString() + " mReleaseCalled:" + this.f34022q + " isRecycled:" + this.f34008b;
    }
}

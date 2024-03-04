package com.google.android.exoplayer2.drm;

import a2.s1;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.c0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
@RequiresApi(18)
/* loaded from: classes.dex */
public final class i0 implements c0 {

    /* renamed from: d  reason: collision with root package name */
    public static final c0.f f5815d = new c0.f() { // from class: com.google.android.exoplayer2.drm.h0
        @Override // com.google.android.exoplayer2.drm.c0.f
        public final c0 a(UUID uuid) {
            c0 C;
            C = i0.C(uuid);
            return C;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final UUID f5816a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaDrm f5817b;

    /* renamed from: c  reason: collision with root package name */
    private int f5818c;

    @RequiresApi(31)
    /* loaded from: classes.dex */
    private static class a {
        @DoNotInline
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }

        @DoNotInline
        public static void b(MediaDrm mediaDrm, byte[] bArr, s1 s1Var) {
            LogSessionId a10 = s1Var.a();
            if (a10.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            ((MediaDrm.PlaybackComponent) com.google.android.exoplayer2.util.a.e(mediaDrm.getPlaybackComponent(bArr))).setLogSessionId(a10);
        }
    }

    private i0(UUID uuid) throws UnsupportedSchemeException {
        com.google.android.exoplayer2.util.a.e(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.i.f5997b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f5816a = uuid;
        MediaDrm mediaDrm = new MediaDrm(u(uuid));
        this.f5817b = mediaDrm;
        this.f5818c = 1;
        if (com.google.android.exoplayer2.i.f5999d.equals(uuid) && D()) {
            w(mediaDrm);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(c0.d dVar, MediaDrm mediaDrm, byte[] bArr, long j10) {
        dVar.a(this, bArr, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(c0.e eVar, MediaDrm mediaDrm, byte[] bArr, List list, boolean z10) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaDrm.KeyStatus keyStatus = (MediaDrm.KeyStatus) it.next();
            arrayList.add(new c0.b(keyStatus.getStatusCode(), keyStatus.getKeyId()));
        }
        eVar.a(this, bArr, arrayList, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c0 C(UUID uuid) {
        try {
            return E(uuid);
        } catch (UnsupportedDrmException unused) {
            com.google.android.exoplayer2.util.r.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new z();
        }
    }

    private static boolean D() {
        return "ASUS_Z00AD".equals(com.google.android.exoplayer2.util.l0.f6988d);
    }

    public static i0 E(UUID uuid) throws UnsupportedDrmException {
        try {
            return new i0(uuid);
        } catch (UnsupportedSchemeException e10) {
            throw new UnsupportedDrmException(1, e10);
        } catch (Exception e11) {
            throw new UnsupportedDrmException(2, e11);
        }
    }

    private static byte[] q(byte[] bArr) {
        int indexOf;
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(bArr);
        int q10 = b0Var.q();
        short s10 = b0Var.s();
        short s11 = b0Var.s();
        if (s10 == 1 && s11 == 1) {
            short s12 = b0Var.s();
            Charset charset = com.google.common.base.e.f12358e;
            String B = b0Var.B(s12, charset);
            if (B.contains("<LA_URL>")) {
                return bArr;
            }
            if (B.indexOf("</DATA>") == -1) {
                com.google.android.exoplayer2.util.r.i("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
            }
            String str = B.substring(0, indexOf) + "<LA_URL>https://x</LA_URL>" + B.substring(indexOf);
            int i9 = q10 + 52;
            ByteBuffer allocate = ByteBuffer.allocate(i9);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(i9);
            allocate.putShort(s10);
            allocate.putShort(s11);
            allocate.putShort((short) (str.length() * 2));
            allocate.put(str.getBytes(charset));
            return allocate.array();
        }
        com.google.android.exoplayer2.util.r.f("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
        return bArr;
    }

    private static byte[] r(UUID uuid, byte[] bArr) {
        return com.google.android.exoplayer2.i.f5998c.equals(uuid) ? com.google.android.exoplayer2.drm.a.a(bArr) : bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
        if ("AFTT".equals(r0) == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] s(java.util.UUID r3, byte[] r4) {
        /*
            java.util.UUID r0 = com.google.android.exoplayer2.i.f6000e
            boolean r1 = r0.equals(r3)
            if (r1 == 0) goto L18
            byte[] r1 = k2.l.e(r4, r3)
            if (r1 != 0) goto Lf
            goto L10
        Lf:
            r4 = r1
        L10:
            byte[] r4 = q(r4)
            byte[] r4 = k2.l.a(r0, r4)
        L18:
            int r1 = com.google.android.exoplayer2.util.l0.f6985a
            r2 = 23
            if (r1 >= r2) goto L26
            java.util.UUID r1 = com.google.android.exoplayer2.i.f5999d
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L58
        L26:
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L5f
            java.lang.String r0 = com.google.android.exoplayer2.util.l0.f6987c
            java.lang.String r1 = "Amazon"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L5f
            java.lang.String r0 = com.google.android.exoplayer2.util.l0.f6988d
            java.lang.String r1 = "AFTB"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTS"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTM"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTT"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L5f
        L58:
            byte[] r3 = k2.l.e(r4, r3)
            if (r3 == 0) goto L5f
            return r3
        L5f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.i0.s(java.util.UUID, byte[]):byte[]");
    }

    private static String t(UUID uuid, String str) {
        return (com.google.android.exoplayer2.util.l0.f6985a < 26 && com.google.android.exoplayer2.i.f5998c.equals(uuid) && ("video/mp4".equals(str) || "audio/mp4".equals(str))) ? "cenc" : str;
    }

    private static UUID u(UUID uuid) {
        return (com.google.android.exoplayer2.util.l0.f6985a >= 27 || !com.google.android.exoplayer2.i.f5998c.equals(uuid)) ? uuid : com.google.android.exoplayer2.i.f5997b;
    }

    private static void w(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static DrmInitData.SchemeData y(UUID uuid, List<DrmInitData.SchemeData> list) {
        boolean z10;
        if (!com.google.android.exoplayer2.i.f5999d.equals(uuid)) {
            return list.get(0);
        }
        if (com.google.android.exoplayer2.util.l0.f6985a >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = list.get(0);
            int i9 = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                DrmInitData.SchemeData schemeData2 = list.get(i10);
                byte[] bArr = (byte[]) com.google.android.exoplayer2.util.a.e(schemeData2.data);
                if (!com.google.android.exoplayer2.util.l0.c(schemeData2.mimeType, schemeData.mimeType) || !com.google.android.exoplayer2.util.l0.c(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) || !k2.l.c(bArr)) {
                    z10 = false;
                    break;
                }
                i9 += bArr.length;
            }
            z10 = true;
            if (z10) {
                byte[] bArr2 = new byte[i9];
                int i11 = 0;
                for (int i12 = 0; i12 < list.size(); i12++) {
                    byte[] bArr3 = (byte[]) com.google.android.exoplayer2.util.a.e(list.get(i12).data);
                    int length = bArr3.length;
                    System.arraycopy(bArr3, 0, bArr2, i11, length);
                    i11 += length;
                }
                return schemeData.a(bArr2);
            }
        }
        for (int i13 = 0; i13 < list.size(); i13++) {
            DrmInitData.SchemeData schemeData3 = list.get(i13);
            int g10 = k2.l.g((byte[]) com.google.android.exoplayer2.util.a.e(schemeData3.data));
            int i14 = com.google.android.exoplayer2.util.l0.f6985a;
            if (i14 < 23 && g10 == 0) {
                return schemeData3;
            }
            if (i14 >= 23 && g10 == 1) {
                return schemeData3;
            }
        }
        return list.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(c0.c cVar, MediaDrm mediaDrm, byte[] bArr, int i9, int i10, byte[] bArr2) {
        cVar.a(this, bArr, i9, i10, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public Map<String, String> a(byte[] bArr) {
        return this.f5817b.queryKeyStatus(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public c0.g b() {
        MediaDrm.ProvisionRequest provisionRequest = this.f5817b.getProvisionRequest();
        return new c0.g(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void c(byte[] bArr, s1 s1Var) {
        if (com.google.android.exoplayer2.util.l0.f6985a >= 31) {
            try {
                a.b(this.f5817b, bArr, s1Var);
            } catch (UnsupportedOperationException unused) {
                com.google.android.exoplayer2.util.r.i("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public byte[] d() throws MediaDrmException {
        return this.f5817b.openSession();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void e(byte[] bArr, byte[] bArr2) {
        this.f5817b.restoreKeys(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void f(byte[] bArr) throws DeniedByServerException {
        this.f5817b.provideProvisionResponse(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public int g() {
        return 2;
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public boolean i(byte[] bArr, String str) {
        if (com.google.android.exoplayer2.util.l0.f6985a >= 31) {
            return a.a(this.f5817b, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.f5816a, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void j(byte[] bArr) {
        this.f5817b.closeSession(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    @Nullable
    public byte[] k(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException {
        if (com.google.android.exoplayer2.i.f5998c.equals(this.f5816a)) {
            bArr2 = com.google.android.exoplayer2.drm.a.b(bArr2);
        }
        return this.f5817b.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public c0.a l(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i9, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException {
        byte[] bArr2;
        String str;
        DrmInitData.SchemeData schemeData = null;
        if (list != null) {
            schemeData = y(this.f5816a, list);
            bArr2 = s(this.f5816a, (byte[]) com.google.android.exoplayer2.util.a.e(schemeData.data));
            str = t(this.f5816a, schemeData.mimeType);
        } else {
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f5817b.getKeyRequest(bArr, bArr2, str, i9, hashMap);
        byte[] r10 = r(this.f5816a, keyRequest.getData());
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("https://x".equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && schemeData != null && !TextUtils.isEmpty(schemeData.licenseServerUrl)) {
            defaultUrl = schemeData.licenseServerUrl;
        }
        return new c0.a(r10, defaultUrl, com.google.android.exoplayer2.util.l0.f6985a >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public synchronized void release() {
        int i9 = this.f5818c - 1;
        this.f5818c = i9;
        if (i9 == 0) {
            this.f5817b.release();
        }
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void setOnEventListener(@Nullable final c0.c cVar) {
        this.f5817b.setOnEventListener(cVar == null ? null : new MediaDrm.OnEventListener() { // from class: com.google.android.exoplayer2.drm.e0
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i9, int i10, byte[] bArr2) {
                i0.this.z(cVar, mediaDrm, bArr, i9, i10, bArr2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.c0
    @RequiresApi(23)
    public void setOnExpirationUpdateListener(@Nullable final c0.d dVar) {
        if (com.google.android.exoplayer2.util.l0.f6985a >= 23) {
            this.f5817b.setOnExpirationUpdateListener(dVar == null ? null : new MediaDrm.OnExpirationUpdateListener() { // from class: com.google.android.exoplayer2.drm.f0
                @Override // android.media.MediaDrm.OnExpirationUpdateListener
                public final void onExpirationUpdate(MediaDrm mediaDrm, byte[] bArr, long j10) {
                    i0.this.A(dVar, mediaDrm, bArr, j10);
                }
            }, (Handler) null);
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    @RequiresApi(23)
    public void setOnKeyStatusChangeListener(@Nullable final c0.e eVar) {
        if (com.google.android.exoplayer2.util.l0.f6985a >= 23) {
            this.f5817b.setOnKeyStatusChangeListener(eVar == null ? null : new MediaDrm.OnKeyStatusChangeListener() { // from class: com.google.android.exoplayer2.drm.g0
                @Override // android.media.MediaDrm.OnKeyStatusChangeListener
                public final void onKeyStatusChange(MediaDrm mediaDrm, byte[] bArr, List list, boolean z10) {
                    i0.this.B(eVar, mediaDrm, bArr, list, z10);
                }
            }, (Handler) null);
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    /* renamed from: v */
    public d0 h(byte[] bArr) throws MediaCryptoException {
        return new d0(u(this.f5816a), bArr, com.google.android.exoplayer2.util.l0.f6985a < 21 && com.google.android.exoplayer2.i.f5999d.equals(this.f5816a) && "L3".equals(x("securityLevel")));
    }

    public String x(String str) {
        return this.f5817b.getPropertyString(str);
    }
}

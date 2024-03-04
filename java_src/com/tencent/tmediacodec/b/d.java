package com.tencent.tmediacodec.b;

import android.media.MediaFormat;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: d  reason: collision with root package name */
    public int f34532d;

    /* renamed from: e  reason: collision with root package name */
    public int f34533e;

    /* renamed from: f  reason: collision with root package name */
    public int f34534f;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final String f34538j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f34539k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f34540l;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<byte[]> f34529a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public int f34530b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f34531c = -1;

    /* renamed from: g  reason: collision with root package name */
    public int f34535g = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f34536h = -1;

    /* renamed from: i  reason: collision with root package name */
    public int f34537i = -1;

    private d(@NonNull String str) {
        this.f34538j = str;
    }

    public final boolean a() {
        if (!this.f34539k) {
            this.f34539k = true;
            this.f34540l = com.tencent.tmediacodec.f.c.a(this.f34538j);
        }
        return this.f34540l;
    }

    public static d a(@NonNull MediaFormat mediaFormat) {
        d dVar = new d(mediaFormat.getString("mime"));
        try {
            dVar.f34534f = a(mediaFormat, "sample-rate", -1);
            dVar.f34537i = a(mediaFormat, "max-input-size", -1);
            dVar.f34529a = com.tencent.tmediacodec.f.c.a(mediaFormat);
            if (dVar.a()) {
                dVar.f34532d = a(mediaFormat, "rotation-degrees", 0);
                dVar.f34530b = a(mediaFormat, "width", -1);
                dVar.f34531c = a(mediaFormat, "height", -1);
                dVar.f34535g = a(mediaFormat, "max-width", -1);
                dVar.f34536h = a(mediaFormat, "max-height", -1);
            } else {
                dVar.f34533e = a(mediaFormat, "channel-count", -1);
            }
        } catch (Throwable th2) {
            com.tencent.tmediacodec.f.a.b("FormatWrapper", "create format error", th2);
        }
        return dVar;
    }

    public static void a(ArrayList<byte[]> arrayList) {
        if (arrayList != null && com.tencent.tmediacodec.f.a.a()) {
            StringBuilder sb2 = new StringBuilder();
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                sb2.append(a(com.tencent.tmediacodec.f.c.f34623a[i9], arrayList.get(i9)));
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            com.tencent.tmediacodec.f.a.b("FormatWrapper", "csdData size:" + arrayList.size() + "    " + sb2.toString());
        }
    }

    private static String a(String str, byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(", length:");
        sb2.append(bArr.length);
        sb2.append("  [");
        for (int i9 = 0; i9 < Math.min(bArr.length, 20); i9++) {
            if (i9 != 0) {
                sb2.append(" ,");
            }
            sb2.append((int) bArr[i9]);
        }
        sb2.append("]");
        return sb2.toString();
    }

    private static int a(@NonNull MediaFormat mediaFormat, @NonNull String str, int i9) {
        return mediaFormat.containsKey(str) ? mediaFormat.getInteger(str) : i9;
    }
}

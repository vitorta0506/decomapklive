package com.tencent.thumbplayer.g.b;

import android.media.MediaFormat;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: d  reason: collision with root package name */
    public int f33997d;

    /* renamed from: e  reason: collision with root package name */
    public int f33998e;

    /* renamed from: f  reason: collision with root package name */
    public int f33999f;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final String f34003j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f34004k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f34005l;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<byte[]> f33994a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public int f33995b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f33996c = -1;

    /* renamed from: g  reason: collision with root package name */
    public int f34000g = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f34001h = -1;

    /* renamed from: i  reason: collision with root package name */
    public int f34002i = -1;

    public e(@NonNull String str) {
        this.f34003j = str;
    }

    public static int a(@NonNull MediaFormat mediaFormat, @NonNull String str) {
        return a(mediaFormat, str, -1);
    }

    public static int a(@NonNull MediaFormat mediaFormat, @NonNull String str, int i9) {
        return mediaFormat.containsKey(str) ? mediaFormat.getInteger(str) : i9;
    }

    public static e a(@NonNull MediaFormat mediaFormat) {
        e eVar = new e(mediaFormat.getString("mime"));
        try {
            eVar.f33999f = a(mediaFormat, "sample-rate");
            eVar.f34002i = a(mediaFormat, "max-input-size");
            eVar.f33994a = com.tencent.thumbplayer.g.h.c.a(mediaFormat);
            if (eVar.a()) {
                eVar.f33997d = a(mediaFormat, "rotation-degrees");
                eVar.f33995b = a(mediaFormat, "width");
                eVar.f33996c = a(mediaFormat, "height");
                eVar.f34000g = a(mediaFormat, "max-width");
                eVar.f34001h = a(mediaFormat, "max-height");
            } else {
                eVar.f33998e = a(mediaFormat, "channel-count");
            }
        } catch (Throwable th2) {
            com.tencent.thumbplayer.g.h.b.b("FormatWrapper", "create format error", th2);
        }
        return eVar;
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

    public static void a(ArrayList<byte[]> arrayList) {
        if (arrayList != null && com.tencent.thumbplayer.g.h.b.a()) {
            StringBuilder sb2 = new StringBuilder();
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                sb2.append(a(com.tencent.thumbplayer.g.h.c.f34106a[i9], arrayList.get(i9)));
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            com.tencent.thumbplayer.g.h.b.b("FormatWrapper", "csdData size:" + arrayList.size() + "    " + sb2.toString());
        }
    }

    public final boolean a() {
        if (!this.f34004k) {
            this.f34004k = true;
            this.f34005l = com.tencent.thumbplayer.g.h.c.a(this.f34003j);
        }
        return this.f34005l;
    }

    public final boolean a(@NonNull e eVar) {
        if (this.f33994a.size() != eVar.f33994a.size()) {
            return false;
        }
        for (int i9 = 0; i9 < this.f33994a.size(); i9++) {
            if (!this.f33994a.get(i9).equals(eVar.f33994a.get(i9))) {
                return false;
            }
        }
        return true;
    }
}

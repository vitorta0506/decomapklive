package cn.jiguang.bb;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.ShortCompanionObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public int f2404a;

    /* renamed from: b  reason: collision with root package name */
    public int f2405b;

    /* renamed from: c  reason: collision with root package name */
    public int f2406c;

    /* renamed from: d  reason: collision with root package name */
    public byte f2407d;

    /* renamed from: e  reason: collision with root package name */
    public long f2408e;

    /* renamed from: f  reason: collision with root package name */
    public int f2409f;

    /* renamed from: g  reason: collision with root package name */
    public long f2410g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2411h;

    public c(boolean z10, byte[] bArr) {
        try {
            this.f2411h = z10;
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            this.f2404a = wrap.getShort() & ShortCompanionObject.MAX_VALUE;
            this.f2405b = wrap.get();
            this.f2406c = wrap.get();
            this.f2407d = wrap.get();
            wrap.get();
            wrap.getInt();
            this.f2408e = wrap.getShort();
            if (z10) {
                this.f2409f = wrap.getInt();
            }
            this.f2410g = wrap.getLong();
        } catch (Throwable unused) {
        }
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[JHead] - len:");
        sb2.append(this.f2404a);
        sb2.append(", version:");
        sb2.append(this.f2405b);
        sb2.append(", command:");
        sb2.append(this.f2406c);
        sb2.append(", rid:");
        sb2.append(this.f2408e);
        if (this.f2411h) {
            str = ", sid:" + this.f2409f;
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(", juid:");
        sb2.append(this.f2410g);
        return sb2.toString();
    }
}

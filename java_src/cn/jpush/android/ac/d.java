package cn.jpush.android.ac;

import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushResponse;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class d extends JPushResponse {

    /* renamed from: a  reason: collision with root package name */
    int f2836a;

    /* renamed from: b  reason: collision with root package name */
    long f2837b;

    /* renamed from: c  reason: collision with root package name */
    String f2838c;

    public d(int i9, long j10, long j11, ByteBuffer byteBuffer) {
        super(i9, j10, j11, byteBuffer);
        parseBody();
    }

    public d(JPushResponse jPushResponse) {
        this(jPushResponse.getCmd(), jPushResponse.getRid(), jPushResponse.rquestId, jPushResponse.getBody());
    }

    public int a() {
        return this.f2836a;
    }

    public long b() {
        return this.f2837b;
    }

    public String c() {
        return this.f2838c;
    }

    @Override // cn.jpush.android.local.JPushResponse
    protected void parseBody() {
        try {
            this.f2836a = this.body.get();
            this.f2837b = this.body.getLong();
            byte[] bArr = new byte[this.body.getShort()];
            this.body.get(bArr);
            this.f2838c = new String(bArr, "UTF-8");
        } catch (Throwable unused) {
            Logger.ww("MessagePush", "parse msg content failed");
        }
    }

    @Override // cn.jpush.android.local.JPushResponse
    public String toString() {
        return "[MessagePush] - msgType:" + this.f2836a + ", msgId:" + this.f2837b + ", msgContent:" + this.f2838c + " - " + super.toString();
    }
}

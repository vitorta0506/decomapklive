package cn.jpush.android.ac;

import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushResponse;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class f extends JPushResponse {

    /* renamed from: a  reason: collision with root package name */
    int f2843a;

    /* renamed from: b  reason: collision with root package name */
    String f2844b;

    public f(int i9, long j10, long j11, ByteBuffer byteBuffer) {
        super(i9, j10, j11, byteBuffer);
        parseBody();
    }

    public f(JPushResponse jPushResponse) {
        this(jPushResponse.getCmd(), jPushResponse.getRid(), jPushResponse.rquestId, jPushResponse.getBody());
    }

    public String a() {
        return this.f2844b;
    }

    @Override // cn.jpush.android.local.JPushResponse
    protected void parseBody() {
        try {
            if (this.cmd == 10) {
                this.f2843a = this.body.getShort();
            }
            if (this.f2843a <= 0) {
                byte[] bArr = new byte[this.body.getShort()];
                this.body.get(bArr);
                this.f2844b = new String(bArr, "UTF-8");
                return;
            }
            Logger.e("TagaliasResponse", "Response error - code:" + this.f2843a);
        } catch (Throwable th2) {
            Logger.ww("TagaliasResponse", "parse failed:" + th2.getMessage());
        }
    }

    @Override // cn.jpush.android.local.JPushResponse
    public String toString() {
        return "[TagaliasResponse] - action:" + this.f2844b + " - " + super.toString();
    }
}

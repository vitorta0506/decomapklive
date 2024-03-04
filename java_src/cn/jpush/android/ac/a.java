package cn.jpush.android.ac;

import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushResponse;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class a extends JPushResponse {

    /* renamed from: a  reason: collision with root package name */
    private int f2832a;

    public a(int i9, long j10, long j11, ByteBuffer byteBuffer) {
        super(i9, j10, j11, byteBuffer);
        parseBody();
    }

    public a(JPushResponse jPushResponse) {
        this(jPushResponse.getCmd(), jPushResponse.getRid(), jPushResponse.rquestId, jPushResponse.getBody());
    }

    public int a() {
        return this.f2832a;
    }

    @Override // cn.jpush.android.local.JPushResponse
    protected void parseBody() {
        try {
            this.f2832a = this.body.getShort();
        } catch (Throwable th2) {
            Logger.ww("CommonResponse", "parse code failed :" + th2.getMessage());
        }
    }

    @Override // cn.jpush.android.local.JPushResponse
    public String toString() {
        return "[CommonResponse] - " + this.f2832a;
    }
}

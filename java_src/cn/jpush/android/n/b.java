package cn.jpush.android.n;

import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushResponse;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class b extends JPushResponse {

    /* renamed from: a  reason: collision with root package name */
    private int f3142a;

    public b(int i9, long j10, long j11, ByteBuffer byteBuffer) {
        super(i9, j10, j11, byteBuffer);
        this.f3142a = 0;
        parseBody();
    }

    public b(JPushResponse jPushResponse) {
        this(jPushResponse.getCmd(), jPushResponse.getRid(), jPushResponse.rquestId, jPushResponse.getBody());
    }

    public int a() {
        return this.f3142a;
    }

    @Override // cn.jpush.android.local.JPushResponse
    protected void parseBody() {
        try {
            ByteBuffer byteBuffer = this.body;
            if (byteBuffer != null) {
                this.f3142a = byteBuffer.get();
                Logger.ww("GeoControl", "control type:" + this.f3142a);
            }
        } catch (Throwable unused) {
            Logger.ww("GeoControl", "parse geoContorl failed");
        }
    }

    @Override // cn.jpush.android.local.JPushResponse
    public String toString() {
        return "[GeoControl] - type:" + this.f3142a + " - " + super.toString();
    }
}

package cn.jpush.android.ac;

import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushResponse;
import java.nio.ByteBuffer;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b extends JPushResponse {

    /* renamed from: a  reason: collision with root package name */
    private int f2833a;

    /* renamed from: b  reason: collision with root package name */
    private long f2834b;

    /* renamed from: c  reason: collision with root package name */
    private int f2835c;

    public b(int i9, long j10, long j11, ByteBuffer byteBuffer) {
        super(i9, j10, j11, byteBuffer);
        this.f2833a = 0;
        this.f2834b = 300000L;
        this.f2835c = 5;
        parseBody();
    }

    public b(JPushResponse jPushResponse) {
        this(jPushResponse.getCmd(), jPushResponse.getRid(), jPushResponse.rquestId, jPushResponse.getBody());
    }

    public int a() {
        return this.f2833a;
    }

    public long b() {
        return this.f2834b;
    }

    public int c() {
        return this.f2835c;
    }

    @Override // cn.jpush.android.local.JPushResponse
    protected void parseBody() {
        try {
            ByteBuffer byteBuffer = this.body;
            if (byteBuffer != null) {
                byte[] bArr = new byte[byteBuffer.getShort()];
                this.body.get(bArr);
                String str = new String(bArr, "UTF-8");
                if (!TextUtils.isEmpty(str)) {
                    JSONObject jSONObject = new JSONObject(str);
                    this.f2833a = jSONObject.optInt("code", 0);
                    this.f2834b = jSONObject.optLong("timeInterval", 300000L);
                    this.f2835c = jSONObject.optInt("limitCount", 5);
                }
                Logger.d("MessagePush", "[parseBody]: code=" + this.f2833a + ", reqTimeInterval=" + this.f2834b + ", reqLimitCount=" + this.f2835c);
            }
        } catch (Throwable unused) {
            Logger.ww("MessagePush", "parse in app pull response failed");
        }
    }

    @Override // cn.jpush.android.local.JPushResponse
    public String toString() {
        return "[InAppPullResponse] - code:" + this.f2833a + ", reqTimeInterval:" + this.f2834b + ", reqLimitCount:" + this.f2835c + " - " + super.toString();
    }
}

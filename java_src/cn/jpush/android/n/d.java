package cn.jpush.android.n;

import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushResponse;
import java.nio.ByteBuffer;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d extends JPushResponse {

    /* renamed from: a  reason: collision with root package name */
    private int f3143a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f3144b;

    /* renamed from: c  reason: collision with root package name */
    private JSONArray f3145c;

    public d(int i9, long j10, long j11, ByteBuffer byteBuffer) {
        super(i9, j10, j11, byteBuffer);
        this.f3143a = -1;
        parseBody();
    }

    public d(JPushResponse jPushResponse) {
        this(jPushResponse.getCmd(), jPushResponse.getRid(), jPushResponse.rquestId, jPushResponse.getBody());
    }

    public JSONObject a() {
        return this.f3144b;
    }

    public JSONArray b() {
        return this.f3145c;
    }

    @Override // cn.jpush.android.local.JPushResponse
    protected void parseBody() {
        try {
            ByteBuffer byteBuffer = this.body;
            if (byteBuffer == null) {
                Logger.ww("GeoPullResponse", "geo pull response empty");
                return;
            }
            short s10 = byteBuffer.getShort();
            this.f3143a = s10;
            if (s10 != 0) {
                Logger.ww("GeoPullResponse", "geo pull response error code :" + this.f3143a);
                return;
            }
            byte[] bArr = new byte[this.body.getShort()];
            this.body.get(bArr);
            String str = new String(bArr, "UTF-8");
            Logger.d("GeoPullResponse", "receive content：" + str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            this.f3145c = jSONObject.getJSONArray("geofence");
            jSONObject.remove("geofence");
            this.f3144b = jSONObject;
        } catch (Throwable unused) {
            Logger.ww("GeoPullResponse", "parse geo pull response failed");
        }
    }

    @Override // cn.jpush.android.local.JPushResponse
    public String toString() {
        return "[GeoPullResponse] - limit:" + this.f3144b + " - geoArray:" + this.f3145c + " - " + super.toString();
    }
}

package cn.jpush.android.g;

import android.content.Intent;
import android.text.TextUtils;
import cn.asus.push.DataBuffer;
import cn.jiguang.push.asus.PushMessageReceiver;
/* loaded from: classes.dex */
public final class b extends cn.asus.push.a {
    @Override // cn.asus.push.b
    public final void call(DataBuffer dataBuffer) {
        try {
            cn.jpush.android.i.b.a("ClientAIDLCallBack", "[call] data:" + String.valueOf(dataBuffer) + ",cmd:" + dataBuffer.cmd);
            String str = dataBuffer.cmd;
            long j10 = dataBuffer.bundle.getLong("message_rid", -1L);
            String string = dataBuffer.bundle.getString("message_content");
            String b10 = cn.jpush.android.f.c.b(cn.jpush.android.f.c.f3060a);
            if (TextUtils.isEmpty(b10)) {
                Intent intent = new Intent();
                dataBuffer.bundle.putString("message_cmd", dataBuffer.cmd);
                intent.putExtras(dataBuffer.bundle);
                intent.setAction("com.ups.push.PUSH_RESPONSE");
                intent.setPackage(cn.jpush.android.f.c.f3062c);
                cn.jpush.android.f.c.f3060a.sendBroadcast(intent);
            } else {
                ((PushMessageReceiver) Class.forName(b10).newInstance()).a(cn.jpush.android.f.c.f3060a, j10, str, string);
            }
        } catch (Throwable unused) {
        }
    }
}

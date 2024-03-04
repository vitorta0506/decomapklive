package com.google.firebase.messaging;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final long f14047a = TimeUnit.MINUTES.toMillis(3);

    /* loaded from: classes2.dex */
    public static final class a {
        public static ArrayMap<String, String> a(Bundle bundle) {
            ArrayMap<String, String> arrayMap = new ArrayMap<>();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals(RemoteMessageConst.MSGTYPE) && !str.equals("collapse_key")) {
                        arrayMap.put(str, str2);
                    }
                }
            }
            return arrayMap;
        }
    }
}

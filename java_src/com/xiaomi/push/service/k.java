package com.xiaomi.push.service;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
/* loaded from: classes5.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static Object f37287a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, Queue<String>> f37288b = new HashMap();

    public static boolean a(XMPushService xMPushService, String str, String str2) {
        synchronized (f37287a) {
            SharedPreferences sharedPreferences = xMPushService.getSharedPreferences("push_message_ids", 0);
            Queue<String> queue = f37288b.get(str);
            if (queue == null) {
                String[] split = sharedPreferences.getString(str, "").split(",");
                LinkedList linkedList = new LinkedList();
                for (String str3 : split) {
                    linkedList.add(str3);
                }
                f37288b.put(str, linkedList);
                queue = linkedList;
            }
            if (queue.contains(str2)) {
                return true;
            }
            queue.add(str2);
            if (queue.size() > 25) {
                queue.poll();
            }
            String d10 = com.xiaomi.push.g.d(queue, ",");
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString(str, d10);
            edit.commit();
            return false;
        }
    }
}

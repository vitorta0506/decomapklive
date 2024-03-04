package cn.jpush.android.d;

import android.content.Context;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static Queue<a> f2990a;

    public static synchronized void a(Context context, String str) {
        synchronized (c.class) {
            if (context == null) {
                Logger.w("MsgQueueUtils", "unexcepted , context is null");
                return;
            }
            File filesDir = context.getFilesDir();
            if (filesDir == null) {
                Logger.w("MsgQueueUtils", "can't get files dir");
                return;
            }
            File file = new File(filesDir, str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    private static synchronized void a(Context context, String str, ArrayList<a> arrayList) {
        synchronized (c.class) {
            Logger.v("MsgQueueUtils", "Action - saveObjects");
            if (context == null) {
                Logger.w("MsgQueueUtils", "unexcepted , context is null");
            } else if (arrayList == null) {
                Logger.w("MsgQueueUtils", "mObjectList is null");
            } else {
                File file = new File(context.getFilesDir(), str);
                JSONArray jSONArray = new JSONArray();
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    jSONArray.put(arrayList.get(i9).a());
                }
                cn.jpush.android.af.c.a(file.getAbsolutePath(), jSONArray.toString());
            }
        }
    }

    public static boolean a(Context context, a aVar) {
        if (f2990a == null) {
            f2990a = new ConcurrentLinkedQueue();
            try {
                ArrayList<a> b10 = b(context, "msg_queue_v350");
                if (b10 != null && !b10.isEmpty()) {
                    Iterator<a> it = b10.iterator();
                    while (it.hasNext()) {
                        f2990a.offer(it.next());
                    }
                }
            } catch (Exception e10) {
                Logger.ww("MsgQueueUtils", "init lastMsgQueue failed:" + e10.getMessage());
            }
        }
        if (context == null) {
            Logger.ww("MsgQueueUtils", "#unexcepted - context was null");
            return false;
        }
        if (aVar == null) {
            Logger.ww("MsgQueueUtils", "#unexcepted - entityKey was null");
        }
        if (f2990a.contains(aVar)) {
            Logger.e("MsgQueueUtils", "Duplicated msg. Give up processing - " + aVar);
            return true;
        }
        if (f2990a.size() >= 200) {
            f2990a.poll();
        }
        f2990a.offer(aVar);
        try {
            ArrayList<a> b11 = b(context, "msg_queue_v350");
            if (b11 == null) {
                b11 = new ArrayList<>();
            }
            if (b11.size() >= 50) {
                b11.remove(0);
            }
            b11.add(aVar);
            a(context, "msg_queue_v350", b11);
        } catch (Exception e11) {
            Logger.ww("MsgQueueUtils", "msg save in sp failed:" + e11.getMessage());
        }
        return false;
    }

    private static synchronized ArrayList<a> b(Context context, String str) {
        FileInputStream fileInputStream;
        Throwable th2;
        synchronized (c.class) {
            FileInputStream fileInputStream2 = null;
            if (context == null) {
                Logger.w("MsgQueueUtils", "unexcepted , context is null");
                return null;
            }
            ArrayList<a> arrayList = new ArrayList<>();
            try {
                File file = new File(context.getFilesDir(), str);
                if (file.exists()) {
                    fileInputStream = new FileInputStream(file);
                    try {
                        JSONArray jSONArray = new JSONArray(new String(j.a((InputStream) fileInputStream)));
                        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                            arrayList.add(a.a(jSONArray.getJSONObject(i9)));
                        }
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th3) {
                        th2 = th3;
                        Logger.w("MsgQueueUtils", "load objects error:" + th2.getMessage());
                        a(context, str);
                        j.a((Closeable) fileInputStream);
                        return arrayList;
                    }
                }
                j.a((Closeable) fileInputStream2);
            } catch (Throwable th4) {
                fileInputStream = null;
                th2 = th4;
            }
            return arrayList;
        }
    }
}

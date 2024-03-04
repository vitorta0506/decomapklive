package cn.jpush.android.w;

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
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static Queue<cn.jpush.android.d.a> f3446a;

    public static ArrayList<cn.jpush.android.d.a> a(Context context) {
        ArrayList<cn.jpush.android.d.a> b10 = b(context, "inmsg_queue_v405");
        if (b10 != null && b10.size() > 0) {
            a(context, "inmsg_queue_v405");
        }
        return b10;
    }

    private static synchronized void a(Context context, String str) {
        synchronized (d.class) {
            if (context == null) {
                Logger.w("InAppMsgQueueUtils", "unexcepted , context is null");
                return;
            }
            File filesDir = context.getFilesDir();
            if (filesDir == null) {
                Logger.w("InAppMsgQueueUtils", "can't get files dir");
                return;
            }
            File file = new File(filesDir, str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    private static synchronized void a(Context context, String str, ArrayList<cn.jpush.android.d.a> arrayList) {
        synchronized (d.class) {
            Logger.v("InAppMsgQueueUtils", "Action - saveObjects");
            if (context == null) {
                Logger.w("InAppMsgQueueUtils", "unexcepted , context is null");
            } else if (arrayList == null) {
                Logger.w("InAppMsgQueueUtils", "mObjectList is null");
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

    public static boolean a(Context context, cn.jpush.android.d.a aVar, boolean z10) {
        if (f3446a == null) {
            f3446a = new ConcurrentLinkedQueue();
            try {
                ArrayList<cn.jpush.android.d.a> b10 = b(context, "inmsg_queue_v405");
                if (b10 != null && !b10.isEmpty()) {
                    Iterator<cn.jpush.android.d.a> it = b10.iterator();
                    while (it.hasNext()) {
                        f3446a.offer(it.next());
                    }
                }
            } catch (Throwable th2) {
                Logger.w("InAppMsgQueueUtils", "init exposeMsgQueue failed:" + th2.getMessage());
            }
        }
        if (context == null) {
            Logger.w("InAppMsgQueueUtils", "#unexcepted - context was null");
            return false;
        }
        if (aVar == null) {
            Logger.w("InAppMsgQueueUtils", "#unexcepted - entityKey was null");
        }
        if (!f3446a.contains(aVar)) {
            if (z10) {
                f3446a.offer(aVar);
                try {
                    ArrayList<cn.jpush.android.d.a> b11 = b(context, "inmsg_queue_v405");
                    if (b11 == null) {
                        b11 = new ArrayList<>();
                    }
                    b11.add(aVar);
                    a(context, "inmsg_queue_v405", b11);
                } catch (Throwable th3) {
                    Logger.w("InAppMsgQueueUtils", "msg save in sp failed:" + th3.getMessage());
                }
            }
            return true;
        }
        if (!z10) {
            f3446a.remove(aVar);
            try {
                ArrayList<cn.jpush.android.d.a> b12 = b(context, "inmsg_queue_v405");
                if (b12 == null) {
                    b12 = new ArrayList<>();
                }
                b12.remove(aVar);
                a(context, "inmsg_queue_v405", b12);
            } catch (Throwable th4) {
                Logger.w("InAppMsgQueueUtils", "msg save in sp failed:" + th4.getMessage());
            }
            Logger.d("InAppMsgQueueUtils", "Exposed msg. remove processing - " + aVar);
        }
        return true;
    }

    private static synchronized ArrayList<cn.jpush.android.d.a> b(Context context, String str) {
        FileInputStream fileInputStream;
        Throwable th2;
        synchronized (d.class) {
            FileInputStream fileInputStream2 = null;
            if (context == null) {
                Logger.w("InAppMsgQueueUtils", "unexcepted , context is null");
                return null;
            }
            ArrayList<cn.jpush.android.d.a> arrayList = new ArrayList<>();
            try {
                File file = new File(context.getFilesDir(), str);
                if (file.exists()) {
                    fileInputStream = new FileInputStream(file);
                    try {
                        JSONArray jSONArray = new JSONArray(new String(j.a((InputStream) fileInputStream)));
                        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                            arrayList.add(cn.jpush.android.d.a.a(jSONArray.getJSONObject(i9)));
                        }
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th3) {
                        th2 = th3;
                        Logger.w("InAppMsgQueueUtils", "load objects error:" + th2.getMessage());
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

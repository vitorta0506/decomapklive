package cn.jpush.android.aa;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static Queue<Integer> f2831a = new ConcurrentLinkedQueue();

    public static int a() {
        if (f2831a.size() > 0) {
            return f2831a.poll().intValue();
        }
        return 0;
    }

    public static boolean a(int i9) {
        return f2831a.offer(Integer.valueOf(i9));
    }

    public static int b() {
        return f2831a.size();
    }

    public static boolean b(int i9) {
        return f2831a.contains(Integer.valueOf(i9));
    }
}

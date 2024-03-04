package ii;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.Log;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import ji.c;
import ji.d;
import ji.e;
import ji.f;
import ji.g;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import me.leolin.shortcutbadger.impl.AdwHomeBadger;
import me.leolin.shortcutbadger.impl.ApexHomeBadger;
import me.leolin.shortcutbadger.impl.DefaultBadger;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import me.leolin.shortcutbadger.impl.SonyHomeBadger;
import org.light.device.DeviceInstance;
/* loaded from: classes7.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final List<Class<? extends a>> f41375a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f41376b;

    /* renamed from: c  reason: collision with root package name */
    private static a f41377c;

    /* renamed from: d  reason: collision with root package name */
    private static ComponentName f41378d;

    static {
        LinkedList linkedList = new LinkedList();
        f41375a = linkedList;
        f41376b = new Object();
        linkedList.add(AdwHomeBadger.class);
        linkedList.add(ApexHomeBadger.class);
        linkedList.add(DefaultBadger.class);
        linkedList.add(NewHtcHomeBadger.class);
        linkedList.add(NovaHomeBadger.class);
        linkedList.add(SonyHomeBadger.class);
        linkedList.add(ji.a.class);
        linkedList.add(c.class);
        linkedList.add(d.class);
        linkedList.add(me.leolin.shortcutbadger.impl.a.class);
        linkedList.add(g.class);
        linkedList.add(e.class);
        linkedList.add(f.class);
        linkedList.add(ji.b.class);
    }

    public static boolean a(Context context, int i9) {
        try {
            b(context, i9);
            return true;
        } catch (ShortcutBadgeException e10) {
            if (Log.isLoggable("ShortcutBadger", 3)) {
                Log.d("ShortcutBadger", "Unable to execute badge", e10);
                return false;
            }
            return false;
        }
    }

    public static void b(Context context, int i9) throws ShortcutBadgeException {
        if (f41377c == null && !c(context)) {
            throw new ShortcutBadgeException("No default launcher available");
        }
        try {
            f41377c.b(context, f41378d, i9);
        } catch (Exception e10) {
            throw new ShortcutBadgeException("Unable to execute badge", e10);
        }
    }

    private static boolean c(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage == null) {
            Log.e("ShortcutBadger", "Unable to find launch intent for package " + context.getPackageName());
            return false;
        }
        f41378d = launchIntentForPackage.getComponent();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 65536)) {
            String str = resolveInfo.activityInfo.packageName;
            Iterator<Class<? extends a>> it = f41375a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                a aVar = null;
                try {
                    aVar = it.next().newInstance();
                } catch (Exception unused) {
                }
                if (aVar != null && aVar.a().contains(str)) {
                    f41377c = aVar;
                    break;
                }
            }
            if (f41377c != null) {
                break;
            }
        }
        if (f41377c == null) {
            String str2 = Build.MANUFACTURER;
            if (str2.equalsIgnoreCase("ZUK")) {
                f41377c = new g();
                return true;
            } else if (str2.equalsIgnoreCase(DeviceInstance.BRAND_OPPO)) {
                f41377c = new d();
                return true;
            } else if (str2.equalsIgnoreCase(DeviceInstance.BRAND_VIVO)) {
                f41377c = new e();
                return true;
            } else if (str2.equalsIgnoreCase("ZTE")) {
                f41377c = new f();
                return true;
            } else {
                f41377c = new DefaultBadger();
                return true;
            }
        }
        return true;
    }
}

package dagger.android;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Context;
import android.util.Log;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import eg.d;
/* loaded from: classes5.dex */
public final class a {
    private static c a(Fragment fragment) {
        Fragment fragment2 = fragment;
        do {
            fragment2 = fragment2.getParentFragment();
            if (fragment2 == null) {
                Activity activity = fragment.getActivity();
                if (activity instanceof c) {
                    return (c) activity;
                }
                if (activity.getApplication() instanceof c) {
                    return (c) activity.getApplication();
                }
                throw new IllegalArgumentException(String.format("No injector was found for %s", fragment.getClass().getCanonicalName()));
            }
        } while (!(fragment2 instanceof c));
        return (c) fragment2;
    }

    public static void b(Activity activity) {
        d.b(activity, PushConstants.INTENT_ACTIVITY_NAME);
        Application application = activity.getApplication();
        if (application instanceof c) {
            g(activity, (c) application);
            return;
        }
        throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), c.class.getCanonicalName()));
    }

    public static void c(Fragment fragment) {
        d.b(fragment, "fragment");
        c a10 = a(fragment);
        if (Log.isLoggable("dagger.android", 3)) {
            Log.d("dagger.android", String.format("An injector for %s was found in %s", fragment.getClass().getCanonicalName(), a10.getClass().getCanonicalName()));
        }
        g(fragment, a10);
    }

    public static void d(Service service) {
        d.b(service, "service");
        Application application = service.getApplication();
        if (application instanceof c) {
            g(service, (c) application);
            return;
        }
        throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), c.class.getCanonicalName()));
    }

    public static void e(BroadcastReceiver broadcastReceiver, Context context) {
        d.b(broadcastReceiver, "broadcastReceiver");
        d.b(context, "context");
        Application application = (Application) context.getApplicationContext();
        if (application instanceof c) {
            g(broadcastReceiver, (c) application);
            return;
        }
        throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), c.class.getCanonicalName()));
    }

    public static void f(ContentProvider contentProvider) {
        d.b(contentProvider, "contentProvider");
        Application application = (Application) contentProvider.getContext().getApplicationContext();
        if (application instanceof c) {
            g(contentProvider, (c) application);
            return;
        }
        throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), c.class.getCanonicalName()));
    }

    private static void g(Object obj, c cVar) {
        b<Object> a10 = cVar.a();
        d.c(a10, "%s.androidInjector() returned null", cVar.getClass());
        a10.inject(obj);
    }
}

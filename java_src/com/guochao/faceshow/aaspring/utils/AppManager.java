package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.activity.MainActivity;
import java.util.Iterator;
import java.util.Stack;
/* loaded from: classes3.dex */
public class AppManager {
    private static Stack<Activity> mActivityStack;
    private static AppManager mAppManager;

    public static AppManager getInstance() {
        if (mAppManager == null) {
            mAppManager = new AppManager();
        }
        return mAppManager;
    }

    public void AppExit(Context context) {
        try {
            killAllActivity();
            System.exit(0);
        } catch (Exception unused) {
        }
    }

    public void addActivity(Activity activity) {
        if (mActivityStack == null) {
            mActivityStack = new Stack<>();
        }
        mActivityStack.add(activity);
    }

    public boolean containActivity(Class<?> cls) {
        try {
            Iterator<Activity> it = mActivityStack.iterator();
            while (it.hasNext()) {
                if (it.next().getClass().equals(cls)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public void finishWatch(WatchLiveRoomActivity watchLiveRoomActivity) {
        if (mActivityStack == null) {
            return;
        }
        for (int i9 = 0; i9 < mActivityStack.size(); i9++) {
            Activity activity = mActivityStack.get(i9);
            if ((activity instanceof WatchLiveRoomActivity) && activity != watchLiveRoomActivity) {
                activity.finish();
            }
        }
    }

    public Activity getActivity(Class<?> cls) {
        try {
            Stack<Activity> stack = mActivityStack;
            if (stack != null) {
                Iterator<Activity> it = stack.iterator();
                while (it.hasNext()) {
                    Activity next = it.next();
                    if (next.getClass().equals(cls)) {
                        return next;
                    }
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @NonNull
    public Class<? extends Activity> getActivityBeforeWatchRoom() {
        try {
            if (mActivityStack != null) {
                for (int i9 = 0; i9 < mActivityStack.size(); i9++) {
                    if (mActivityStack.get(i9) instanceof WatchLiveRoomActivity) {
                        return mActivityStack.get(i9 - 1).getClass();
                    }
                }
                return MainActivity.class;
            }
            return MainActivity.class;
        } catch (Exception e10) {
            e10.printStackTrace();
            return MainActivity.class;
        }
    }

    public Stack<Activity> getActivityStack() {
        return mActivityStack;
    }

    public Activity getTopActivity() {
        Stack<Activity> stack = mActivityStack;
        if (stack == null || stack.empty()) {
            return null;
        }
        return mActivityStack.lastElement();
    }

    public void killActivity(Activity activity) {
        Stack<Activity> stack;
        if (activity == null || (stack = mActivityStack) == null) {
            return;
        }
        stack.remove(activity);
        activity.getPackageName();
    }

    public void killAllActivity() {
        Stack<Activity> stack = mActivityStack;
        if (stack != null) {
            int size = stack.size();
            for (int i9 = 0; i9 < size; i9++) {
                if (mActivityStack.get(i9) != null) {
                    mActivityStack.get(i9).finish();
                }
            }
            mActivityStack.clear();
        }
    }

    public boolean containActivity(Activity activity) {
        try {
            Stack<Activity> stack = mActivityStack;
            if (stack != null) {
                return stack.contains(activity);
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public void killActivity(Class<?> cls) {
        try {
            Stack<Activity> stack = mActivityStack;
            if (stack != null) {
                Iterator<Activity> it = stack.iterator();
                while (it.hasNext()) {
                    Activity next = it.next();
                    if (next.getClass().equals(cls)) {
                        killActivity(next);
                        next.finish();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}

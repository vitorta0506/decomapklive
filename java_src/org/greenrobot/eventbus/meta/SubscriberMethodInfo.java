package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes7.dex */
public class SubscriberMethodInfo {
    final Class<?> eventType;
    final String methodName;
    final int priority;
    final boolean sticky;
    final ThreadMode threadMode;

    public SubscriberMethodInfo(String str, Class<?> cls, ThreadMode threadMode, int i9, boolean z10) {
        this.methodName = str;
        this.threadMode = threadMode;
        this.eventType = cls;
        this.priority = i9;
        this.sticky = z10;
    }

    public SubscriberMethodInfo(String str, Class<?> cls) {
        this(str, cls, ThreadMode.POSTING, 0, false);
    }

    public SubscriberMethodInfo(String str, Class<?> cls, ThreadMode threadMode) {
        this(str, cls, threadMode, 0, false);
    }
}

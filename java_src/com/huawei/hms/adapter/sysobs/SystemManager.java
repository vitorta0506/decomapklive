package com.huawei.hms.adapter.sysobs;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public final class SystemManager {

    /* renamed from: a  reason: collision with root package name */
    public static SystemManager f27184a = new SystemManager();

    /* renamed from: b  reason: collision with root package name */
    public static final Object f27185b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public static SystemNotifier f27186c = new a();

    public static SystemManager getInstance() {
        return f27184a;
    }

    public static SystemNotifier getSystemNotifier() {
        return f27186c;
    }

    public void notifyNoticeResult(int i9) {
        f27186c.notifyNoticeObservers(i9);
    }

    public void notifyResolutionResult(Intent intent, String str) {
        f27186c.notifyObservers(intent, str);
    }

    public void notifyUpdateResult(int i9) {
        f27186c.notifyObservers(i9);
    }

    /* loaded from: classes4.dex */
    public static class a implements SystemNotifier {

        /* renamed from: a  reason: collision with root package name */
        public final List<SystemObserver> f27187a = new ArrayList();

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void notifyNoticeObservers(int i9) {
            synchronized (SystemManager.f27185b) {
                Iterator<SystemObserver> it = this.f27187a.iterator();
                while (it.hasNext()) {
                    if (it.next().onNoticeResult(i9)) {
                        it.remove();
                    }
                }
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void notifyObservers(Intent intent, String str) {
            synchronized (SystemManager.f27185b) {
                Iterator<SystemObserver> it = this.f27187a.iterator();
                while (it.hasNext()) {
                    if (it.next().onSolutionResult(intent, str)) {
                        it.remove();
                    }
                }
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void registerObserver(SystemObserver systemObserver) {
            if (systemObserver == null || this.f27187a.contains(systemObserver)) {
                return;
            }
            synchronized (SystemManager.f27185b) {
                this.f27187a.add(systemObserver);
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void unRegisterObserver(SystemObserver systemObserver) {
            synchronized (SystemManager.f27185b) {
                this.f27187a.remove(systemObserver);
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void notifyObservers(int i9) {
            synchronized (SystemManager.f27185b) {
                Iterator<SystemObserver> it = this.f27187a.iterator();
                while (it.hasNext()) {
                    if (it.next().onUpdateResult(i9)) {
                        it.remove();
                    }
                }
            }
        }
    }
}

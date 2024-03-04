package com.meizu.cloud.pushsdk.d.c;

import com.meizu.cloud.pushsdk.d.a.c;
import com.meizu.cloud.pushsdk.d.f.d;
import com.meizu.cloud.pushsdk.d.f.e;
import com.meizu.cloud.pushsdk.notification.model.NotificationStyle;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.meizu.cloud.pushsdk.d.a.b> f28579a;

    /* renamed from: b  reason: collision with root package name */
    private final long f28580b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28581c;

    /* renamed from: com.meizu.cloud.pushsdk.d.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static abstract class AbstractC0282a<T extends AbstractC0282a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private List<com.meizu.cloud.pushsdk.d.a.b> f28582a = new LinkedList();

        /* renamed from: b  reason: collision with root package name */
        private long f28583b = System.currentTimeMillis();

        /* renamed from: c  reason: collision with root package name */
        private String f28584c = e.b();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract T a();

        public T a(long j10) {
            this.f28583b = j10;
            return a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(AbstractC0282a<?> abstractC0282a) {
        d.a(((AbstractC0282a) abstractC0282a).f28582a);
        d.a(((AbstractC0282a) abstractC0282a).f28584c);
        d.a(!((AbstractC0282a) abstractC0282a).f28584c.isEmpty(), "eventId cannot be empty");
        this.f28579a = ((AbstractC0282a) abstractC0282a).f28582a;
        this.f28580b = ((AbstractC0282a) abstractC0282a).f28583b;
        this.f28581c = ((AbstractC0282a) abstractC0282a).f28584c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c a(c cVar) {
        cVar.a(NotificationStyle.EXPANDABLE_IMAGE_URL, c());
        cVar.a(TimeDisplaySetting.TIME_DISPLAY_SETTING, Long.toString(b()));
        return cVar;
    }

    public List<com.meizu.cloud.pushsdk.d.a.b> a() {
        return new ArrayList(this.f28579a);
    }

    public long b() {
        return this.f28580b;
    }

    public String c() {
        return this.f28581c;
    }
}

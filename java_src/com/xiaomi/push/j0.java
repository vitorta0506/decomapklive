package com.xiaomi.push;

import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
/* loaded from: classes5.dex */
public class j0 extends Notification.Builder {

    /* renamed from: a  reason: collision with root package name */
    private Context f36930a;

    public j0(Context context) {
        super(context);
        this.f36930a = context;
    }

    public int a(Resources resources, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return resources.getIdentifier(str, str2, str3);
    }

    public final int b(String str) {
        return a(c().getResources(), str, "id", c().getPackageName());
    }

    @Override // android.app.Notification.Builder
    public Notification build() {
        g();
        return super.build();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context c() {
        return this.f36930a;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: d */
    public j0 addExtras(Bundle bundle) {
        super.addExtras(bundle);
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: e */
    public j0 setCustomContentView(RemoteViews remoteViews) {
        if (Build.VERSION.SDK_INT >= 24) {
            super.setCustomContentView(remoteViews);
        } else {
            super.setContent(remoteViews);
        }
        return this;
    }

    public j0 f(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                q3.e(this, "setColor", Integer.valueOf(Color.parseColor(str)));
            } catch (Exception e10) {
                tf.c.u("fail to set color. " + e10);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
    }
}

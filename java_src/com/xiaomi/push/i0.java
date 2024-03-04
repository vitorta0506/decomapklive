package com.xiaomi.push;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.view.ViewCompat;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Map;
/* loaded from: classes5.dex */
public class i0 extends m0 {

    /* renamed from: m  reason: collision with root package name */
    private Bitmap f36909m;

    /* renamed from: n  reason: collision with root package name */
    private Bitmap f36910n;

    /* renamed from: o  reason: collision with root package name */
    private int f36911o;

    public i0(Context context, String str) {
        super(context, str);
        this.f36911o = 16777216;
    }

    public i0 G(Bitmap bitmap) {
        if (y() && bitmap != null) {
            if (bitmap.getWidth() != 984 || 184 > bitmap.getHeight() || bitmap.getHeight() > 1678) {
                tf.c.l("colorful notification banner image resolution error, must belong to [984*184, 984*1678]");
            } else {
                this.f36909m = bitmap;
            }
        }
        return this;
    }

    public i0 H(String str) {
        if (y() && !TextUtils.isEmpty(str)) {
            try {
                this.f36911o = Color.parseColor(str);
            } catch (Exception unused) {
                tf.c.l("parse banner notification image text color error");
            }
        }
        return this;
    }

    public i0 I(Bitmap bitmap) {
        if (y() && bitmap != null) {
            this.f36910n = bitmap;
        }
        return this;
    }

    @Override // com.xiaomi.push.m0, com.xiaomi.push.j0
    public void g() {
        RemoteViews k10;
        Bitmap bitmap;
        if (!y() || this.f36909m == null) {
            x();
            return;
        }
        super.g();
        Resources resources = c().getResources();
        String packageName = c().getPackageName();
        int a10 = a(resources, "bg", "id", packageName);
        if (sf.e.b(c()) >= 10) {
            k10 = k();
            bitmap = j(this.f36909m, 30.0f);
        } else {
            k10 = k();
            bitmap = this.f36909m;
        }
        k10.setImageViewBitmap(a10, bitmap);
        int a11 = a(resources, RemoteMessageConst.Notification.ICON, "id", packageName);
        if (this.f36910n != null) {
            k().setImageViewBitmap(a11, this.f36910n);
        } else {
            r(a11);
        }
        int a12 = a(resources, "title", "id", packageName);
        k().setTextViewText(a12, this.f36984e);
        Map<String, String> map = this.f36986g;
        if (map != null && this.f36911o == 16777216) {
            H(map.get("notification_image_text_color"));
        }
        RemoteViews k11 = k();
        int i9 = this.f36911o;
        k11.setTextColor(a12, (i9 == 16777216 || !u(i9)) ? -1 : ViewCompat.MEASURED_STATE_MASK);
        setCustomContentView(k());
        Bundle bundle = new Bundle();
        bundle.putBoolean("miui.customHeight", true);
        addExtras(bundle);
    }

    @Override // com.xiaomi.push.m0, android.app.Notification.Builder
    /* renamed from: o */
    public m0 setLargeIcon(Bitmap bitmap) {
        return this;
    }

    @Override // com.xiaomi.push.m0
    protected String q() {
        return "notification_banner";
    }

    @Override // com.xiaomi.push.m0
    protected boolean t() {
        if (sf.e.h()) {
            Resources resources = c().getResources();
            String packageName = c().getPackageName();
            return (a(c().getResources(), "bg", "id", c().getPackageName()) == 0 || a(resources, RemoteMessageConst.Notification.ICON, "id", packageName) == 0 || a(resources, "title", "id", packageName) == 0 || sf.e.b(c()) < 9) ? false : true;
        }
        return false;
    }

    @Override // com.xiaomi.push.m0
    protected String w() {
        return null;
    }
}

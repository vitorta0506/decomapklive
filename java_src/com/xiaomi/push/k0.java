package com.xiaomi.push;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.view.ViewCompat;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Map;
/* loaded from: classes5.dex */
public class k0 extends m0 {

    /* renamed from: m  reason: collision with root package name */
    private int f36937m;

    /* renamed from: n  reason: collision with root package name */
    private Bitmap f36938n;

    /* renamed from: o  reason: collision with root package name */
    private CharSequence f36939o;

    /* renamed from: p  reason: collision with root package name */
    private PendingIntent f36940p;

    /* renamed from: q  reason: collision with root package name */
    private int f36941q;

    /* renamed from: r  reason: collision with root package name */
    private int f36942r;

    public k0(Context context, int i9, String str) {
        super(context, i9, str);
        this.f36937m = 16777216;
        this.f36941q = 16777216;
        this.f36942r = 16777216;
    }

    private Drawable G(int i9, int i10, int i11, float f10) {
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setShape(new RoundRectShape(new float[]{f10, f10, f10, f10, f10, f10, f10, f10}, null, null));
        shapeDrawable.getPaint().setColor(i9);
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL);
        shapeDrawable.setIntrinsicWidth(i10);
        shapeDrawable.setIntrinsicHeight(i11);
        return shapeDrawable;
    }

    private void K(RemoteViews remoteViews, int i9, int i10, int i11, boolean z10) {
        int h10 = h(6.0f);
        remoteViews.setViewPadding(i9, h10, 0, h10, 0);
        int i12 = z10 ? -1 : ViewCompat.MEASURED_STATE_MASK;
        remoteViews.setTextColor(i10, i12);
        remoteViews.setTextColor(i11, i12);
    }

    public k0 H(Bitmap bitmap) {
        if (y() && bitmap != null) {
            if (bitmap.getWidth() != 984 || bitmap.getHeight() < 177 || bitmap.getHeight() > 207) {
                tf.c.l("colorful notification bg image resolution error, must [984*177, 984*207]");
            } else {
                this.f36938n = bitmap;
            }
        }
        return this;
    }

    public k0 I(CharSequence charSequence, PendingIntent pendingIntent) {
        if (y()) {
            super.addAction(0, charSequence, pendingIntent);
            this.f36939o = charSequence;
            this.f36940p = pendingIntent;
        }
        return this;
    }

    public k0 J(String str) {
        if (y() && !TextUtils.isEmpty(str)) {
            try {
                this.f36941q = Color.parseColor(str);
            } catch (Exception unused) {
                tf.c.l("parse colorful notification button bg color error");
            }
        }
        return this;
    }

    public k0 L(String str) {
        if (y() && !TextUtils.isEmpty(str)) {
            try {
                this.f36937m = Color.parseColor(str);
            } catch (Exception unused) {
                tf.c.l("parse colorful notification bg color error");
            }
        }
        return this;
    }

    public k0 M(String str) {
        if (y() && !TextUtils.isEmpty(str)) {
            try {
                this.f36942r = Color.parseColor(str);
            } catch (Exception unused) {
                tf.c.l("parse colorful notification image text color error");
            }
        }
        return this;
    }

    @Override // com.xiaomi.push.m0, com.xiaomi.push.j0
    public void g() {
        RemoteViews k10;
        Bitmap bitmap;
        boolean z10;
        RemoteViews k11;
        RemoteViews k12;
        Drawable G;
        if (!y()) {
            x();
            return;
        }
        super.g();
        Resources resources = c().getResources();
        String packageName = c().getPackageName();
        int a10 = a(resources, RemoteMessageConst.Notification.ICON, "id", packageName);
        if (this.f36983d == null) {
            r(a10);
        } else {
            k().setImageViewBitmap(a10, this.f36983d);
        }
        int a11 = a(resources, "title", "id", packageName);
        int a12 = a(resources, "content", "id", packageName);
        k().setTextViewText(a11, this.f36984e);
        k().setTextViewText(a12, this.f36985f);
        if (!TextUtils.isEmpty(this.f36939o)) {
            int a13 = a(resources, "buttonContainer", "id", packageName);
            int a14 = a(resources, "button", "id", packageName);
            int a15 = a(resources, "buttonBg", "id", packageName);
            k().setViewVisibility(a13, 0);
            k().setTextViewText(a14, this.f36939o);
            k().setOnClickPendingIntent(a13, this.f36940p);
            if (this.f36941q != 16777216) {
                int h10 = h(70.0f);
                int h11 = h(29.0f);
                k().setImageViewBitmap(a15, com.xiaomi.push.service.i.n(G(this.f36941q, h10, h11, h11 / 2.0f)));
                k().setTextColor(a14, u(this.f36941q) ? -1 : ViewCompat.MEASURED_STATE_MASK);
            }
        }
        int a16 = a(resources, "bg", "id", packageName);
        int a17 = a(resources, "container", "id", packageName);
        if (this.f36937m != 16777216) {
            if (sf.e.b(c()) >= 10) {
                k12 = k();
                G = G(this.f36937m, 984, 192, 30.0f);
            } else {
                k12 = k();
                G = G(this.f36937m, 984, 192, 0.0f);
            }
            k12.setImageViewBitmap(a16, com.xiaomi.push.service.i.n(G));
            k11 = k();
            z10 = u(this.f36937m);
        } else if (this.f36938n == null) {
            if (Build.VERSION.SDK_INT >= 24) {
                k().setViewVisibility(a10, 8);
                k().setViewVisibility(a16, 8);
                try {
                    q3.e(this, "setStyle", sf.j.c(c(), "android.app.Notification$DecoratedCustomViewStyle").getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception unused) {
                    tf.c.l("load class DecoratedCustomViewStyle failed");
                }
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("miui.customHeight", true);
            addExtras(bundle);
            setCustomContentView(k());
        } else {
            if (sf.e.b(c()) >= 10) {
                k10 = k();
                bitmap = j(this.f36938n, 30.0f);
            } else {
                k10 = k();
                bitmap = this.f36938n;
            }
            k10.setImageViewBitmap(a16, bitmap);
            Map<String, String> map = this.f36986g;
            if (map != null && this.f36942r == 16777216) {
                M(map.get("notification_image_text_color"));
            }
            int i9 = this.f36942r;
            z10 = i9 == 16777216 || !u(i9);
            k11 = k();
        }
        K(k11, a17, a11, a12, z10);
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("miui.customHeight", true);
        addExtras(bundle2);
        setCustomContentView(k());
    }

    @Override // com.xiaomi.push.m0
    protected String q() {
        return "notification_colorful";
    }

    @Override // com.xiaomi.push.m0
    protected boolean t() {
        if (sf.e.h()) {
            Resources resources = c().getResources();
            String packageName = c().getPackageName();
            return (a(resources, RemoteMessageConst.Notification.ICON, "id", packageName) == 0 || a(resources, "title", "id", packageName) == 0 || a(resources, "content", "id", packageName) == 0) ? false : true;
        }
        return false;
    }

    @Override // com.xiaomi.push.m0
    protected String w() {
        return "notification_colorful_copy";
    }
}

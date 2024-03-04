package com.xiaomi.push;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class m0 extends j0 {

    /* renamed from: b  reason: collision with root package name */
    private RemoteViews f36981b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36982c;

    /* renamed from: d  reason: collision with root package name */
    protected Bitmap f36983d;

    /* renamed from: e  reason: collision with root package name */
    protected CharSequence f36984e;

    /* renamed from: f  reason: collision with root package name */
    protected CharSequence f36985f;

    /* renamed from: g  reason: collision with root package name */
    protected Map<String, String> f36986g;

    /* renamed from: h  reason: collision with root package name */
    private int f36987h;

    /* renamed from: i  reason: collision with root package name */
    private String f36988i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f36989j;

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<Notification.Action> f36990k;

    /* renamed from: l  reason: collision with root package name */
    private int f36991l;

    public m0(Context context, int i9, String str) {
        super(context);
        this.f36990k = new ArrayList<>();
        this.f36991l = 0;
        this.f36988i = str;
        this.f36987h = i9;
        A();
    }

    public m0(Context context, String str) {
        this(context, 0, str);
    }

    private void A() {
        int a10 = a(c().getResources(), z(), "layout", c().getPackageName());
        if (a10 == 0) {
            tf.c.l("create RemoteViews failed, no such layout resource was found");
            return;
        }
        this.f36981b = new RemoteViews(c().getPackageName(), a10);
        this.f36982c = t();
    }

    private boolean B() {
        Map<String, String> map = this.f36986g;
        return map != null && Boolean.parseBoolean(map.get("custom_builder_set_title"));
    }

    private void C() {
        super.setContentTitle(this.f36984e);
        super.setContentText(this.f36985f);
    }

    private boolean D() {
        return (TextUtils.isEmpty(w()) || TextUtils.isEmpty(this.f36988i)) ? false : true;
    }

    private boolean E() {
        return D() && F();
    }

    private boolean F() {
        List<StatusBarNotification> z10 = com.xiaomi.push.service.r.e(c(), this.f36988i).z();
        if (z10 != null && !z10.isEmpty()) {
            for (StatusBarNotification statusBarNotification : z10) {
                if (statusBarNotification.getId() == this.f36987h) {
                    Notification notification = statusBarNotification.getNotification();
                    if (notification == null) {
                        return false;
                    }
                    return !notification.extras.getBoolean("mipush.customCopyLayout", true);
                }
            }
        }
        return false;
    }

    private Bitmap i() {
        return com.xiaomi.push.service.i.n(com.xiaomi.channel.commonutils.android.a.d(c(), this.f36988i));
    }

    private String z() {
        boolean E = E();
        this.f36989j = E;
        return E ? w() : q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.j0
    public void g() {
        super.g();
        Bundle bundle = new Bundle();
        if (D()) {
            bundle.putBoolean("mipush.customCopyLayout", this.f36989j);
        } else {
            bundle.putBoolean("mipush.customCopyLayout", false);
        }
        bundle.putBoolean("miui.customHeight", false);
        bundle.putBoolean("mipush.customNotification", true);
        bundle.putInt("mipush.customLargeIconId", b("large_icon"));
        if (this.f36990k.size() > 0) {
            Notification.Action[] actionArr = new Notification.Action[this.f36990k.size()];
            this.f36990k.toArray(actionArr);
            bundle.putParcelableArray("mipush.customActions", actionArr);
        }
        if (B() || !com.xiaomi.push.service.s.p(c().getContentResolver())) {
            C();
        } else {
            bundle.putCharSequence("mipush.customTitle", this.f36984e);
            bundle.putCharSequence("mipush.customContent", this.f36985f);
        }
        addExtras(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int h(float f10) {
        return (int) ((f10 * c().getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bitmap j(Bitmap bitmap, float f10) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        canvas.drawRoundRect(new RectF(rect), f10, f10, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        if (!bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    public final RemoteViews k() {
        return this.f36981b;
    }

    public j0 l(Map<String, String> map) {
        this.f36986g = map;
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: m */
    public m0 addAction(int i9, CharSequence charSequence, PendingIntent pendingIntent) {
        addAction(new Notification.Action(i9, charSequence, pendingIntent));
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: n */
    public m0 addAction(Notification.Action action) {
        if (action != null) {
            this.f36990k.add(action);
        }
        int i9 = this.f36991l;
        this.f36991l = i9 + 1;
        s(i9, action);
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: o */
    public m0 setLargeIcon(Bitmap bitmap) {
        this.f36983d = bitmap;
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: p */
    public m0 setContentTitle(CharSequence charSequence) {
        this.f36984e = charSequence;
        return this;
    }

    protected abstract String q();

    /* JADX INFO: Access modifiers changed from: protected */
    public void r(int i9) {
        Bitmap i10 = i();
        if (i10 != null) {
            k().setImageViewBitmap(i9, i10);
            return;
        }
        int i11 = com.xiaomi.channel.commonutils.android.a.i(c(), this.f36988i);
        if (i11 != 0) {
            k().setImageViewResource(i9, i11);
        }
    }

    protected void s(int i9, Notification.Action action) {
    }

    protected abstract boolean t();

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean u(int i9) {
        return ((((double) Color.red(i9)) * 0.299d) + (((double) Color.green(i9)) * 0.587d)) + (((double) Color.blue(i9)) * 0.114d) < 192.0d;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: v */
    public m0 setContentText(CharSequence charSequence) {
        this.f36985f = charSequence;
        return this;
    }

    protected abstract String w();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void x() {
        super.setContentTitle(this.f36984e);
        super.setContentText(this.f36985f);
        Bitmap bitmap = this.f36983d;
        if (bitmap != null) {
            super.setLargeIcon(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean y() {
        return this.f36982c;
    }
}

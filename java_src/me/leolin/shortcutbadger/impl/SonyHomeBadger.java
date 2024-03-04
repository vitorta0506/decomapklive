package me.leolin.shortcutbadger.impl;

import android.content.AsyncQueryHandler;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class SonyHomeBadger implements ii.a {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f55068a = Uri.parse("content://com.sonymobile.home.resourceprovider/badge");

    /* renamed from: b  reason: collision with root package name */
    private AsyncQueryHandler f55069b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a extends AsyncQueryHandler {
        a(ContentResolver contentResolver) {
            super(contentResolver);
        }
    }

    private ContentValues c(int i9, ComponentName componentName) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("badge_count", Integer.valueOf(i9));
        contentValues.put(PushConstants.PACKAGE_NAME, componentName.getPackageName());
        contentValues.put("activity_name", componentName.getClassName());
        return contentValues;
    }

    private static void d(Context context, ComponentName componentName, int i9) {
        Intent intent = new Intent("com.sonyericsson.home.action.UPDATE_BADGE");
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME", componentName.getPackageName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME", componentName.getClassName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.MESSAGE", String.valueOf(i9));
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE", i9 > 0);
        context.sendBroadcast(intent);
    }

    private void e(Context context, ComponentName componentName, int i9) {
        if (i9 < 0) {
            return;
        }
        ContentValues c10 = c(i9, componentName);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f55069b == null) {
                this.f55069b = new a(context.getApplicationContext().getContentResolver());
            }
            f(c10);
            return;
        }
        g(context, c10);
    }

    private void f(ContentValues contentValues) {
        this.f55069b.startInsert(0, null, this.f55068a, contentValues);
    }

    private void g(Context context, ContentValues contentValues) {
        context.getApplicationContext().getContentResolver().insert(this.f55068a, contentValues);
    }

    private static boolean h(Context context) {
        return context.getPackageManager().resolveContentProvider("com.sonymobile.home.resourceprovider", 0) != null;
    }

    @Override // ii.a
    public List<String> a() {
        return Arrays.asList("com.sonyericsson.home", "com.sonymobile.home");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        if (h(context)) {
            e(context, componentName, i9);
        } else {
            d(context, componentName, i9);
        }
    }
}

package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.Arrays;
import java.util.List;
import ki.b;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class a implements ii.a {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f55072b = {"_id", "class"};

    /* renamed from: a  reason: collision with root package name */
    private DefaultBadger f55073a = new DefaultBadger();

    private ContentValues c(ComponentName componentName, int i9, boolean z10) {
        ContentValues contentValues = new ContentValues();
        if (z10) {
            contentValues.put("package", componentName.getPackageName());
            contentValues.put("class", componentName.getClassName());
        }
        contentValues.put("badgecount", Integer.valueOf(i9));
        return contentValues;
    }

    @Override // ii.a
    public List<String> a() {
        return Arrays.asList("com.sec.android.app.launcher", "com.sec.android.app.twlauncher");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        DefaultBadger defaultBadger = this.f55073a;
        if (defaultBadger != null && defaultBadger.c(context)) {
            this.f55073a.b(context, componentName, i9);
            return;
        }
        Uri parse = Uri.parse("content://com.sec.badge/apps?notify=true");
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursor = null;
        try {
            cursor = contentResolver.query(parse, f55072b, "package=?", new String[]{componentName.getPackageName()}, null);
            if (cursor != null) {
                String className = componentName.getClassName();
                boolean z10 = false;
                while (cursor.moveToNext()) {
                    contentResolver.update(parse, c(componentName, i9, false), "_id=?", new String[]{String.valueOf(cursor.getInt(0))});
                    if (className.equals(cursor.getString(cursor.getColumnIndex("class")))) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    contentResolver.insert(parse, c(componentName, i9, true));
                }
            }
        } finally {
            b.a(cursor);
        }
    }
}

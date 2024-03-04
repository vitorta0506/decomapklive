package com.snapchat.kit.sdk;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public final class SnapKitInitProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public final int delete(@Nullable Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public final String getType(@Nullable Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public final Uri insert(@Nullable Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        b.b(getContext());
        return false;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public final Cursor query(@Nullable Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(@Nullable Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}

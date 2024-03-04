package com.linecorp.linesdk.auth.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.StringTokenizer;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f28100a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28101b;

    /* renamed from: c  reason: collision with root package name */
    private final int f28102c;

    public b(int i9, int i10, int i11) {
        this.f28100a = i9;
        this.f28101b = i10;
        this.f28102c = i11;
    }

    @Nullable
    public static b a(@NonNull Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo("jp.naver.line.android", 128).versionName;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            return new b(Integer.parseInt(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()));
        } catch (PackageManager.NameNotFoundException | NullPointerException | NumberFormatException unused) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f28100a == bVar.f28100a && this.f28101b == bVar.f28101b && this.f28102c == bVar.f28102c;
    }

    public int hashCode() {
        return (((this.f28100a * 31) + this.f28101b) * 31) + this.f28102c;
    }
}

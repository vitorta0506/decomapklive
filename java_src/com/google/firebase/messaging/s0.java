package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
final class s0 {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f14150d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: a  reason: collision with root package name */
    private final String f14151a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14152b;

    /* renamed from: c  reason: collision with root package name */
    private final String f14153c;

    private s0(String str, String str2) {
        this.f14151a = d(str2, str);
        this.f14152b = str;
        this.f14153c = str + "!" + str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static s0 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("!", -1);
        if (split.length != 2) {
            return null;
        }
        return new s0(split[0], split[1]);
    }

    @NonNull
    private static String d(String str, String str2) {
        if (str != null && str.startsWith("/topics/")) {
            Log.w("FirebaseMessaging", String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str2));
            str = str.substring(8);
        }
        if (str == null || !f14150d.matcher(str).matches()) {
            throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str, "[a-zA-Z0-9-_.~%]{1,900}"));
        }
        return str;
    }

    public String b() {
        return this.f14152b;
    }

    public String c() {
        return this.f14151a;
    }

    public String e() {
        return this.f14153c;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof s0) {
            s0 s0Var = (s0) obj;
            return this.f14151a.equals(s0Var.f14151a) && this.f14152b.equals(s0Var.f14152b);
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.n.c(this.f14152b, this.f14151a);
    }
}

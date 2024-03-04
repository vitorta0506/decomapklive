package com.google.android.gms.internal.recaptcha;

import android.accounts.Account;
import android.content.Context;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class x2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f9154a = Pattern.compile("[a-z]+(_[a-z]+)*");

    /* renamed from: b  reason: collision with root package name */
    static final Account f9155b = q2.f8996a;

    /* renamed from: c  reason: collision with root package name */
    private static final Set<String> f9156c = Collections.unmodifiableSet(new HashSet(Arrays.asList(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND, "unused", "special", "reserved", "shared", "virtual", "managed")));

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f9157d = Collections.unmodifiableSet(new HashSet(Arrays.asList("files", "cache", "managed", "directboot-files", "directboot-cache", "external")));

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f9158e = 0;

    public static w2 a(Context context) {
        return new w2(context, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str) {
        m3.a(f9154a.matcher("recaptcha").matches(), "Module must match [a-z]+(_[a-z]+)*: %s", "recaptcha");
        m3.a(!f9156c.contains("recaptcha"), "Module name is reserved and cannot be used: %s", "recaptcha");
    }
}

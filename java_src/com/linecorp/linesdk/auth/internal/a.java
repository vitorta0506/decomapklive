package com.linecorp.linesdk.auth.internal;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.content.ContextCompat;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.auth.LineAuthenticationConfig;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.internal.pkce.CodeChallengeMethod;
import com.linecorp.linesdk.internal.pkce.PKCECode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import qc.e;
import yc.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LineAuthenticationStatus f28087a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.linecorp.linesdk.auth.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0275a {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Intent f28088a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f28089b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f28090c;

        C0275a(@NonNull Intent intent, @Nullable Bundle bundle, boolean z10) {
            this.f28088a = intent;
            this.f28089b = bundle;
            this.f28090c = z10;
        }

        @NonNull
        public Intent b() {
            return this.f28088a;
        }

        @Nullable
        public Bundle c() {
            return this.f28089b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Intent f28091a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f28092b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final String f28093c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f28094d;

        @VisibleForTesting
        b(@NonNull Intent intent, @Nullable Bundle bundle, @NonNull String str, boolean z10) {
            this.f28091a = intent;
            this.f28092b = bundle;
            this.f28093c = str;
            this.f28094d = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public Intent a() {
            return this.f28091a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public String b() {
            return this.f28093c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public Bundle c() {
            return this.f28092b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean d() {
            return this.f28094d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f28095a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Boolean f28096b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f28097c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f28098d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final String f28099e;

        private c(@Nullable String str, @Nullable Boolean bool, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.f28095a = str;
            this.f28096b = bool;
            this.f28097c = str2;
            this.f28098d = str3;
            this.f28099e = str4;
        }

        private void a() {
            if (TextUtils.isEmpty(this.f28095a)) {
                throw new UnsupportedOperationException("requestToken is null. Please check result by isSuccess before.");
            }
        }

        @NonNull
        @VisibleForTesting
        static c b(@NonNull String str, @NonNull String str2) {
            return new c(null, null, str, str2, null);
        }

        @NonNull
        @VisibleForTesting
        static c c(@NonNull String str) {
            return new c(null, null, null, null, str);
        }

        @NonNull
        @VisibleForTesting
        static c d(@NonNull String str, @Nullable Boolean bool) {
            return new c(str, bool, null, null, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public Boolean e() {
            a();
            return this.f28096b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public LineApiError f() {
            if (h()) {
                try {
                    return new LineApiError(new JSONObject().putOpt("error", this.f28097c).putOpt(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION, this.f28098d).toString());
                } catch (JSONException e10) {
                    return new LineApiError(e10);
                }
            }
            return new LineApiError(this.f28099e);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public String g() {
            a();
            return this.f28095a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean h() {
            return TextUtils.isEmpty(this.f28099e) && !i();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean i() {
            return !TextUtils.isEmpty(this.f28095a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@NonNull LineAuthenticationStatus lineAuthenticationStatus) {
        this.f28087a = lineAuthenticationStatus;
    }

    @NonNull
    private static List<Intent> a(@NonNull Uri uri, @NonNull Collection<ResolveInfo> collection, @Nullable Bundle bundle) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (ResolveInfo resolveInfo : collection) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.setPackage(resolveInfo.activityInfo.packageName);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            arrayList.add(intent);
        }
        return arrayList;
    }

    @NonNull
    @VisibleForTesting
    Uri b(@NonNull LineAuthenticationConfig lineAuthenticationConfig, @NonNull PKCECode pKCECode, @NonNull LineAuthenticationParams lineAuthenticationParams, @NonNull String str, @Nullable String str2, @NonNull String str3) {
        Map<String, String> d10 = f.d(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, "code", "client_id", lineAuthenticationConfig.b(), ServerProtocol.DIALOG_PARAM_STATE, str, ServerProtocol.DIALOG_PARAM_CODE_CHALLENGE, pKCECode.c(), ServerProtocol.DIALOG_PARAM_CODE_CHALLENGE_METHOD, CodeChallengeMethod.S256.getValue(), "redirect_uri", str3, HiAnalyticsConstant.BI_KEY_SDK_VER, "5.7.0", "scope", e.d(lineAuthenticationParams.c()));
        if (!TextUtils.isEmpty(str2)) {
            d10.put("nonce", str2);
        }
        if (lineAuthenticationParams.a() != null) {
            d10.put("bot_prompt", lineAuthenticationParams.a().name().toLowerCase());
        }
        Map<String, String> d11 = f.d("returnUri", f.c("/oauth2/v2.1/authorize/consent", d10).toString(), "loginChannelId", lineAuthenticationConfig.b());
        if (lineAuthenticationParams.d() != null) {
            d11.put("ui_locales", lineAuthenticationParams.d().toString());
        }
        return f.b(lineAuthenticationConfig.d(), d11);
    }

    @NonNull
    @VisibleForTesting
    String c(@NonNull Context context) {
        return "intent://result#Intent;package=" + context.getPackageName() + ";scheme=lineauth;end";
    }

    @NonNull
    @VisibleForTesting
    C0275a d(@NonNull Context context, @NonNull Uri uri, boolean z10) throws ActivityNotFoundException {
        Intent data;
        Bundle bundle;
        if (g()) {
            CustomTabsIntent build = new CustomTabsIntent.Builder().setToolbarColor(ContextCompat.getColor(context, 17170443)).build();
            data = build.intent.setData(uri);
            bundle = build.startAnimationBundle;
        } else {
            data = new Intent("android.intent.action.VIEW").setData(uri);
            bundle = null;
        }
        com.linecorp.linesdk.auth.internal.b a10 = com.linecorp.linesdk.auth.internal.b.a(context);
        if ((!z10) && a10 != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.setPackage("jp.naver.line.android");
            if (h(context, intent) != null) {
                return new C0275a(intent, bundle, true);
            }
        }
        List<Intent> a11 = a(uri, context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("https://")), 0), data.getExtras());
        int size = a11.size();
        if (size == 0) {
            throw new ActivityNotFoundException("Activity for LINE log-in is not found. uri=" + uri);
        } else if (size == 1) {
            return new C0275a(a11.get(0), bundle, false);
        } else {
            Intent createChooser = Intent.createChooser(a11.remove(0), null);
            createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) a11.toArray(new Parcelable[a11.size()]));
            return new C0275a(createChooser, bundle, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public c e(@NonNull Intent intent) {
        Uri data = intent.getData();
        if (data == null) {
            return c.c("Illegal redirection from external application.");
        }
        String d10 = this.f28087a.d();
        String queryParameter = data.getQueryParameter(ServerProtocol.DIALOG_PARAM_STATE);
        if (d10 != null && d10.equals(queryParameter)) {
            String queryParameter2 = data.getQueryParameter("code");
            String queryParameter3 = data.getQueryParameter("friendship_status_changed");
            Boolean valueOf = TextUtils.isEmpty(queryParameter3) ? null : Boolean.valueOf(Boolean.parseBoolean(queryParameter3));
            if (!TextUtils.isEmpty(queryParameter2)) {
                return c.d(queryParameter2, valueOf);
            }
            return c.b(data.getQueryParameter("error"), data.getQueryParameter(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION));
        }
        return c.c("Illegal parameter value of 'state'.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public b f(@NonNull Context context, @NonNull LineAuthenticationConfig lineAuthenticationConfig, @NonNull PKCECode pKCECode, @NonNull LineAuthenticationParams lineAuthenticationParams) throws ActivityNotFoundException {
        String str;
        String a10 = yc.e.a(16);
        this.f28087a.i(a10);
        if (!lineAuthenticationParams.c().contains(e.f57161g)) {
            str = null;
        } else if (!TextUtils.isEmpty(lineAuthenticationParams.b())) {
            str = lineAuthenticationParams.b();
        } else {
            str = yc.e.a(16);
        }
        String str2 = str;
        this.f28087a.j(str2);
        String c10 = c(context);
        C0275a d10 = d(context, b(lineAuthenticationConfig, pKCECode, lineAuthenticationParams, a10, str2, c10), lineAuthenticationConfig.f());
        return new b(d10.b(), d10.c(), c10, d10.f28090c);
    }

    @VisibleForTesting
    boolean g() {
        return true;
    }

    @VisibleForTesting
    ComponentName h(Context context, Intent intent) {
        return intent.resolveActivity(context.getPackageManager());
    }
}

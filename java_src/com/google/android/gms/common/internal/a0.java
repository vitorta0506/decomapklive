package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.os.ConfigurationCompat;
import com.google.android.gms.base.R$string;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    private static final SimpleArrayMap f7674a = new SimpleArrayMap();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Locale f7675b;

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            return g4.c.a(context).d(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String b(Context context) {
        return context.getResources().getString(R$string.common_google_play_services_notification_channel_name);
    }

    @NonNull
    public static String c(Context context, int i9) {
        Resources resources = context.getResources();
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    return resources.getString(17039370);
                }
                return resources.getString(R$string.common_google_play_services_enable_button);
            }
            return resources.getString(R$string.common_google_play_services_update_button);
        }
        return resources.getString(R$string.common_google_play_services_install_button);
    }

    @NonNull
    public static String d(Context context, int i9) {
        Resources resources = context.getResources();
        String a10 = a(context);
        if (i9 != 1) {
            if (i9 == 2) {
                return e4.h.d(context) ? resources.getString(R$string.common_google_play_services_wear_update_text) : resources.getString(R$string.common_google_play_services_update_text, a10);
            } else if (i9 != 3) {
                if (i9 != 5) {
                    if (i9 != 7) {
                        if (i9 != 9) {
                            if (i9 != 20) {
                                switch (i9) {
                                    case 16:
                                        return h(context, "common_google_play_services_api_unavailable_text", a10);
                                    case 17:
                                        return h(context, "common_google_play_services_sign_in_failed_text", a10);
                                    case 18:
                                        return resources.getString(R$string.common_google_play_services_updating_text, a10);
                                    default:
                                        return resources.getString(com.google.android.gms.common.R$string.common_google_play_services_unknown_issue, a10);
                                }
                            }
                            return h(context, "common_google_play_services_restricted_profile_text", a10);
                        }
                        return resources.getString(R$string.common_google_play_services_unsupported_text, a10);
                    }
                    return h(context, "common_google_play_services_network_error_text", a10);
                }
                return h(context, "common_google_play_services_invalid_account_text", a10);
            } else {
                return resources.getString(R$string.common_google_play_services_enable_text, a10);
            }
        }
        return resources.getString(R$string.common_google_play_services_install_text, a10);
    }

    @NonNull
    public static String e(Context context, int i9) {
        if (i9 != 6 && i9 != 19) {
            return d(context, i9);
        }
        return h(context, "common_google_play_services_resolution_required_text", a(context));
    }

    @NonNull
    public static String f(Context context, int i9) {
        String g10;
        if (i9 == 6) {
            g10 = i(context, "common_google_play_services_resolution_required_title");
        } else {
            g10 = g(context, i9);
        }
        return g10 == null ? context.getResources().getString(R$string.common_google_play_services_notification_ticker) : g10;
    }

    @Nullable
    public static String g(Context context, int i9) {
        Resources resources = context.getResources();
        switch (i9) {
            case 1:
                return resources.getString(R$string.common_google_play_services_install_title);
            case 2:
                return resources.getString(R$string.common_google_play_services_update_title);
            case 3:
                return resources.getString(R$string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return i(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return i(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                Log.e("GoogleApiAvailability", "Unexpected error code " + i9);
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return i(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return i(context, "common_google_play_services_restricted_profile_title");
        }
    }

    private static String h(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String i9 = i(context, str);
        if (i9 == null) {
            i9 = resources.getString(com.google.android.gms.common.R$string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, i9, str2);
    }

    @Nullable
    private static String i(Context context, String str) {
        SimpleArrayMap simpleArrayMap = f7674a;
        synchronized (simpleArrayMap) {
            Locale locale = ConfigurationCompat.getLocales(context.getResources().getConfiguration()).get(0);
            if (!locale.equals(f7675b)) {
                simpleArrayMap.clear();
                f7675b = locale;
            }
            String str2 = (String) simpleArrayMap.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources d10 = com.google.android.gms.common.c.d(context);
            if (d10 == null) {
                return null;
            }
            int identifier = d10.getIdentifier(str, TypedValues.Custom.S_STRING, "com.google.android.gms");
            if (identifier == 0) {
                Log.w("GoogleApiAvailability", "Missing resource: " + str);
                return null;
            }
            String string = d10.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                Log.w("GoogleApiAvailability", "Got empty resource: " + str);
                return null;
            }
            simpleArrayMap.put(str, string);
            return string;
        }
    }
}

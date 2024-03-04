package com.twitter.sdk.android.tweetui;

import android.content.res.Resources;
import androidx.collection.SparseArrayCompat;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes4.dex */
final class v {

    /* renamed from: a  reason: collision with root package name */
    static final SimpleDateFormat f35587a = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.ENGLISH);

    /* renamed from: b  reason: collision with root package name */
    static final a f35588b = new a();

    /* loaded from: classes4.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private final SparseArrayCompat<SimpleDateFormat> f35589a = new SparseArrayCompat<>();

        /* renamed from: b  reason: collision with root package name */
        private Locale f35590b;

        a() {
        }

        private synchronized DateFormat c(Resources resources, int i9) {
            SimpleDateFormat simpleDateFormat;
            Locale locale = this.f35590b;
            if (locale == null || locale != resources.getConfiguration().locale) {
                this.f35590b = resources.getConfiguration().locale;
                this.f35589a.clear();
            }
            simpleDateFormat = this.f35589a.get(i9);
            if (simpleDateFormat == null) {
                simpleDateFormat = new SimpleDateFormat(resources.getString(i9), Locale.getDefault());
                this.f35589a.put(i9, simpleDateFormat);
            }
            return simpleDateFormat;
        }

        synchronized String a(Resources resources, Date date) {
            return c(resources, R$string.tw__relative_date_format_long).format(date);
        }

        synchronized String b(Resources resources, Date date) {
            return c(resources, R$string.tw__relative_date_format_short).format(date);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return f35587a.parse(str).getTime();
        } catch (ParseException unused) {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return "• " + str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(Resources resources, long j10, long j11) {
        long j12 = j10 - j11;
        if (j12 >= 0) {
            if (j12 < 60000) {
                int i9 = (int) (j12 / 1000);
                return resources.getQuantityString(R$plurals.tw__time_secs, i9, Integer.valueOf(i9));
            } else if (j12 < 3600000) {
                int i10 = (int) (j12 / 60000);
                return resources.getQuantityString(R$plurals.tw__time_mins, i10, Integer.valueOf(i10));
            } else if (j12 < 86400000) {
                int i11 = (int) (j12 / 3600000);
                return resources.getQuantityString(R$plurals.tw__time_hours, i11, Integer.valueOf(i11));
            } else {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(j10);
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTimeInMillis(j11);
                Date date = new Date(j11);
                if (calendar.get(1) == calendar2.get(1)) {
                    return f35588b.b(resources, date);
                }
                return f35588b.a(resources, date);
            }
        }
        return f35588b.a(resources, new Date(j11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(String str) {
        return a(str) != -1;
    }
}

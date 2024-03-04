package org.bouncycastle.asn1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes7.dex */
class s1 {

    /* renamed from: a  reason: collision with root package name */
    private static Long f55969a = c(0);

    /* renamed from: b  reason: collision with root package name */
    private static final Map f55970b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    static Locale f55971c = b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Date a(Date date) throws ParseException {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return date;
        }
        Map map = f55970b;
        synchronized (map) {
            Long l10 = (Long) map.get(locale);
            if (l10 == null) {
                long time = new SimpleDateFormat("yyyyMMddHHmmssz").parse("19700101000000GMT+00:00").getTime();
                l10 = time == 0 ? f55969a : c(time);
                map.put(locale, l10);
            }
            if (l10 != f55969a) {
                return new Date(date.getTime() - l10.longValue());
            }
            return date;
        }
    }

    private static Locale b() {
        if ("en".equalsIgnoreCase(Locale.getDefault().getLanguage())) {
            return Locale.getDefault();
        }
        Locale[] availableLocales = Locale.getAvailableLocales();
        for (int i9 = 0; i9 != availableLocales.length; i9++) {
            if ("en".equalsIgnoreCase(availableLocales[i9].getLanguage())) {
                return availableLocales[i9];
            }
        }
        return Locale.getDefault();
    }

    private static Long c(long j10) {
        return Long.valueOf(j10);
    }
}

package org.threeten.bp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import jl.d;
import org.threeten.bp.format.TextStyle;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
import org.threeten.bp.zone.ZoneRulesException;
import org.threeten.bp.zone.f;
/* loaded from: classes7.dex */
public abstract class ZoneId implements Serializable {
    public static final i<ZoneId> FROM = new a();
    public static final Map<String, String> SHORT_IDS;
    private static final long serialVersionUID = 8352817235686L;

    /* loaded from: classes7.dex */
    class a implements i<ZoneId> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public ZoneId a(org.threeten.bp.temporal.c cVar) {
            return ZoneId.from(cVar);
        }
    }

    /* loaded from: classes7.dex */
    class b extends jl.c {
        b() {
        }

        @Override // org.threeten.bp.temporal.c
        public long getLong(g gVar) {
            throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }

        @Override // org.threeten.bp.temporal.c
        public boolean isSupported(g gVar) {
            return false;
        }

        @Override // jl.c, org.threeten.bp.temporal.c
        public <R> R query(i<R> iVar) {
            if (iVar == h.g()) {
                return (R) ZoneId.this;
            }
            return (R) super.query(iVar);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("ACT", "Australia/Darwin");
        hashMap.put("AET", "Australia/Sydney");
        hashMap.put("AGT", "America/Argentina/Buenos_Aires");
        hashMap.put("ART", "Africa/Cairo");
        hashMap.put("AST", "America/Anchorage");
        hashMap.put("BET", "America/Sao_Paulo");
        hashMap.put("BST", "Asia/Dhaka");
        hashMap.put("CAT", "Africa/Harare");
        hashMap.put("CNT", "America/St_Johns");
        hashMap.put("CST", "America/Chicago");
        hashMap.put("CTT", "Asia/Shanghai");
        hashMap.put("EAT", "Africa/Addis_Ababa");
        hashMap.put("ECT", "Europe/Paris");
        hashMap.put("IET", "America/Indiana/Indianapolis");
        hashMap.put("IST", "Asia/Kolkata");
        hashMap.put("JST", "Asia/Tokyo");
        hashMap.put("MIT", "Pacific/Apia");
        hashMap.put("NET", "Asia/Yerevan");
        hashMap.put("NST", "Pacific/Auckland");
        hashMap.put("PLT", "Asia/Karachi");
        hashMap.put("PNT", "America/Phoenix");
        hashMap.put("PRT", "America/Puerto_Rico");
        hashMap.put("PST", "America/Los_Angeles");
        hashMap.put("SST", "Pacific/Guadalcanal");
        hashMap.put("VST", "Asia/Ho_Chi_Minh");
        hashMap.put("EST", "-05:00");
        hashMap.put("MST", "-07:00");
        hashMap.put("HST", "-10:00");
        SHORT_IDS = Collections.unmodifiableMap(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != c.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public static ZoneId from(org.threeten.bp.temporal.c cVar) {
        ZoneId zoneId = (ZoneId) cVar.query(h.f());
        if (zoneId != null) {
            return zoneId;
        }
        throw new DateTimeException("Unable to obtain ZoneId from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
    }

    public static Set<String> getAvailableZoneIds() {
        return new HashSet(f.a());
    }

    public static ZoneId of(String str, Map<String, String> map) {
        d.i(str, "zoneId");
        d.i(map, "aliasMap");
        String str2 = map.get(str);
        if (str2 != null) {
            str = str2;
        }
        return of(str);
    }

    public static ZoneId ofOffset(String str, ZoneOffset zoneOffset) {
        d.i(str, "prefix");
        d.i(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        if (str.length() == 0) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("Invalid prefix, must be GMT, UTC or UT: " + str);
        } else if (zoneOffset.getTotalSeconds() == 0) {
            return new c(str, zoneOffset.getRules());
        } else {
            return new c(str + zoneOffset.getId(), zoneOffset.getRules());
        }
    }

    public static ZoneId systemDefault() {
        return of(TimeZone.getDefault().getID(), SHORT_IDS);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return getId().equals(((ZoneId) obj).getId());
        }
        return false;
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        return new org.threeten.bp.format.c().p(textStyle).w(locale).b(new b());
    }

    public abstract String getId();

    public abstract org.threeten.bp.zone.d getRules();

    public int hashCode() {
        return getId().hashCode();
    }

    public ZoneId normalized() {
        try {
            org.threeten.bp.zone.d rules = getRules();
            if (rules.e()) {
                return rules.a(Instant.EPOCH);
            }
        } catch (ZoneRulesException unused) {
        }
        return this;
    }

    public String toString() {
        return getId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void write(DataOutput dataOutput) throws IOException;

    public static ZoneId of(String str) {
        d.i(str, "zoneId");
        if (str.equals("Z")) {
            return ZoneOffset.UTC;
        }
        if (str.length() != 1) {
            if (!str.startsWith("+") && !str.startsWith("-")) {
                if (!str.equals("UTC") && !str.equals("GMT") && !str.equals("UT")) {
                    if (!str.startsWith("UTC+") && !str.startsWith("GMT+") && !str.startsWith("UTC-") && !str.startsWith("GMT-")) {
                        if (!str.startsWith("UT+") && !str.startsWith("UT-")) {
                            return c.a(str, true);
                        }
                        ZoneOffset of2 = ZoneOffset.of(str.substring(2));
                        if (of2.getTotalSeconds() == 0) {
                            return new c("UT", of2.getRules());
                        }
                        return new c("UT" + of2.getId(), of2.getRules());
                    }
                    ZoneOffset of3 = ZoneOffset.of(str.substring(3));
                    if (of3.getTotalSeconds() == 0) {
                        return new c(str.substring(0, 3), of3.getRules());
                    }
                    return new c(str.substring(0, 3) + of3.getId(), of3.getRules());
                }
                return new c(str, ZoneOffset.UTC.getRules());
            }
            return ZoneOffset.of(str);
        }
        throw new DateTimeException("Invalid zone: " + str);
    }
}

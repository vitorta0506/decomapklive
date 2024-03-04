package com.google.android.gms.internal.measurement;

import androidx.exifinterface.media.ExifInterface;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class i implements q {

    /* renamed from: a  reason: collision with root package name */
    private final Double f8126a;

    public i(Double d10) {
        if (d10 == null) {
            this.f8126a = Double.valueOf(Double.NaN);
        } else {
            this.f8126a = d10;
        }
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Double a() {
        return this.f8126a;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q c() {
        return new i(this.f8126a);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final String d() {
        int scale;
        if (Double.isNaN(this.f8126a.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(this.f8126a.doubleValue())) {
            return this.f8126a.doubleValue() > 0.0d ? "Infinity" : "-Infinity";
        }
        BigDecimal stripTrailingZeros = BigDecimal.valueOf(this.f8126a.doubleValue()).stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        if (stripTrailingZeros.scale() > 0) {
            scale = stripTrailingZeros.precision();
        } else {
            scale = stripTrailingZeros.scale();
        }
        decimalFormat.setMinimumFractionDigits(scale - 1);
        String format = decimalFormat.format(stripTrailingZeros);
        int indexOf = format.indexOf(ExifInterface.LONGITUDE_EAST);
        if (indexOf > 0) {
            int parseInt = Integer.parseInt(format.substring(indexOf + 1));
            if ((parseInt < 0 && parseInt > -7) || (parseInt >= 0 && parseInt < 21)) {
                return stripTrailingZeros.toPlainString();
            }
            return format.replace("E-", "e-").replace(ExifInterface.LONGITUDE_EAST, "e+");
        }
        return format;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            return this.f8126a.equals(((i) obj).f8126a);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Boolean f() {
        boolean z10 = false;
        if (!Double.isNaN(this.f8126a.doubleValue()) && this.f8126a.doubleValue() != 0.0d) {
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Iterator g() {
        return null;
    }

    public final int hashCode() {
        return this.f8126a.hashCode();
    }

    public final String toString() {
        return d();
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q u(String str, t4 t4Var, List list) {
        if ("toString".equals(str)) {
            return new u(d());
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", d(), str));
    }
}

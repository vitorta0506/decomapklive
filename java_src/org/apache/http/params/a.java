package org.apache.http.params;

import java.util.Set;
@Deprecated
/* loaded from: classes7.dex */
public abstract class a implements c {
    public boolean getBooleanParameter(String str, boolean z10) {
        Object parameter = getParameter(str);
        return parameter == null ? z10 : ((Boolean) parameter).booleanValue();
    }

    public double getDoubleParameter(String str, double d10) {
        Object parameter = getParameter(str);
        return parameter == null ? d10 : ((Double) parameter).doubleValue();
    }

    @Override // org.apache.http.params.c
    public int getIntParameter(String str, int i9) {
        Object parameter = getParameter(str);
        return parameter == null ? i9 : ((Integer) parameter).intValue();
    }

    public long getLongParameter(String str, long j10) {
        Object parameter = getParameter(str);
        return parameter == null ? j10 : ((Long) parameter).longValue();
    }

    public Set<String> getNames() {
        throw new UnsupportedOperationException();
    }

    public boolean isParameterFalse(String str) {
        return !getBooleanParameter(str, false);
    }

    public boolean isParameterTrue(String str) {
        return getBooleanParameter(str, false);
    }

    public c setBooleanParameter(String str, boolean z10) {
        setParameter(str, z10 ? Boolean.TRUE : Boolean.FALSE);
        return this;
    }

    public c setDoubleParameter(String str, double d10) {
        setParameter(str, Double.valueOf(d10));
        return this;
    }

    public c setIntParameter(String str, int i9) {
        setParameter(str, Integer.valueOf(i9));
        return this;
    }

    public c setLongParameter(String str, long j10) {
        setParameter(str, Long.valueOf(j10));
        return this;
    }
}

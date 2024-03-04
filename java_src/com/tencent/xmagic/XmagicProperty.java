package com.tencent.xmagic;
/* loaded from: classes4.dex */
public class XmagicProperty<V> implements Cloneable {
    public static final String ID_NONE = "ID_NONE";
    public final Category category;
    public String effKey;
    public V effValue;

    /* renamed from: id  reason: collision with root package name */
    public final String f35092id;
    public String resPath;
    public boolean isSupport = true;
    public boolean isAuth = true;

    /* loaded from: classes4.dex */
    public enum Category {
        BEAUTY,
        BODY_BEAUTY,
        LUT,
        MOTION,
        SEGMENTATION,
        MAKEUP,
        KV
    }

    /* loaded from: classes4.dex */
    public static class XmagicPropertyValues implements Cloneable {
        private float currentDisplayValue;
        private float currentInnerValue;
        private final float displayDefaultValue;
        public final float displayMaxValue;
        public final float displayMinValue;
        private final float innerDefaultValue;
        private final float innerMaxValue;
        private final float innerMinValue;

        public XmagicPropertyValues(float f10, float f11, float f12, float f13, float f14) {
            this.displayMinValue = f10;
            this.displayMaxValue = f11;
            this.displayDefaultValue = f12;
            this.innerMinValue = f13;
            this.innerMaxValue = f14;
            this.innerDefaultValue = (((f12 - f10) / (f11 - f10)) * (f14 - f13)) + f13;
            setCurrentDisplayValue(f12);
        }

        private void updateCurrentInnerValue() {
            float f10 = this.currentDisplayValue;
            float f11 = this.displayMinValue;
            float f12 = (f10 - f11) / (this.displayMaxValue - f11);
            float f13 = this.innerMaxValue;
            float f14 = this.innerMinValue;
            this.currentInnerValue = (f12 * (f13 - f14)) + f14;
        }

        protected Object clone() throws CloneNotSupportedException {
            return super.clone();
        }

        public float getCurrentDisplayValue() {
            return this.currentDisplayValue;
        }

        float getCurrentInnerValue() {
            return this.currentInnerValue;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getCurrentInnerValueString() {
            return Float.toString(getCurrentInnerValue());
        }

        /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
            if (r3 > r0) goto L3;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void setCurrentDisplayValue(float r3) {
            /*
                r2 = this;
                float r0 = r2.displayMinValue
                int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
                if (r1 >= 0) goto L8
            L6:
                r3 = r0
                goto Lf
            L8:
                float r0 = r2.displayMaxValue
                int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
                if (r1 <= 0) goto Lf
                goto L6
            Lf:
                r2.currentDisplayValue = r3
                r2.updateCurrentInnerValue()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.xmagic.XmagicProperty.XmagicPropertyValues.setCurrentDisplayValue(float):void");
        }

        public String toString() {
            return "EffectNumberValues{displayMinValue=" + this.displayMinValue + ", displayMaxValue=" + this.displayMaxValue + ", displayDefaultValue=" + this.displayDefaultValue + ", innerMinValue=" + this.innerMinValue + ", innerMaxValue=" + this.innerMaxValue + ", innerDefaultValue=" + this.innerDefaultValue + ", currentDisplayValue=" + this.currentDisplayValue + ", currentInnerValue=" + this.currentInnerValue + '}';
        }
    }

    public XmagicProperty(Category category, String str, String str2, String str3, V v10) {
        this.category = category;
        this.f35092id = str;
        this.resPath = str2;
        this.effKey = str3;
        this.effValue = v10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        XmagicProperty xmagicProperty = (XmagicProperty) obj;
        if (this.category != xmagicProperty.category) {
            return false;
        }
        String str = this.f35092id;
        if (str == null ? xmagicProperty.f35092id == null : str.equals(xmagicProperty.f35092id)) {
            String str2 = this.resPath;
            if (str2 == null ? xmagicProperty.resPath == null : str2.equals(xmagicProperty.resPath)) {
                String str3 = this.effKey;
                String str4 = xmagicProperty.effKey;
                return str3 != null ? str3.equals(str4) : str4 == null;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.category.hashCode() * 31;
        String str = this.f35092id;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.resPath;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("XmagicProperty{");
        sb2.append("category=");
        sb2.append(this.category);
        sb2.append(", id='");
        sb2.append(this.f35092id);
        sb2.append('\'');
        sb2.append(", resPath='");
        sb2.append(this.resPath);
        sb2.append('\'');
        sb2.append(", effKey='");
        sb2.append(this.effKey);
        sb2.append('\'');
        sb2.append(", effValue=");
        V v10 = this.effValue;
        sb2.append(v10 == null ? "null" : v10.toString());
        sb2.append(", isSupport=");
        sb2.append(this.isSupport);
        sb2.append(", isAuth=");
        sb2.append(this.isAuth);
        sb2.append('}');
        return sb2.toString();
    }

    /* renamed from: clone */
    public XmagicProperty<?> m830clone() throws CloneNotSupportedException {
        XmagicProperty<?> xmagicProperty = (XmagicProperty) super.clone();
        V v10 = this.effValue;
        if (v10 instanceof XmagicPropertyValues) {
            xmagicProperty.effValue = (V) ((XmagicPropertyValues) ((XmagicPropertyValues) v10).clone());
        }
        return xmagicProperty;
    }
}

package com.google.common.base;

import java.io.Serializable;
import java.util.Objects;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class CaseFormat {
    private final com.google.common.base.d wordBoundary;
    private final String wordSeparator;
    public static final CaseFormat LOWER_HYPHEN = new a("LOWER_HYPHEN", 0, com.google.common.base.d.h('-'), "-");
    public static final CaseFormat LOWER_UNDERSCORE = new CaseFormat("LOWER_UNDERSCORE", 1, com.google.common.base.d.h('_'), "_") { // from class: com.google.common.base.CaseFormat.b
        @Override // com.google.common.base.CaseFormat
        String convert(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_HYPHEN) {
                return str.replace('_', '-');
            }
            if (caseFormat == CaseFormat.UPPER_UNDERSCORE) {
                return com.google.common.base.c.h(str);
            }
            return super.convert(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        String normalizeWord(String str) {
            return com.google.common.base.c.f(str);
        }
    };
    public static final CaseFormat LOWER_CAMEL = new CaseFormat("LOWER_CAMEL", 2, com.google.common.base.d.e('A', 'Z'), "") { // from class: com.google.common.base.CaseFormat.c
        @Override // com.google.common.base.CaseFormat
        String normalizeFirstWord(String str) {
            return com.google.common.base.c.f(str);
        }

        @Override // com.google.common.base.CaseFormat
        String normalizeWord(String str) {
            return CaseFormat.firstCharOnlyToUpper(str);
        }
    };
    public static final CaseFormat UPPER_CAMEL = new CaseFormat("UPPER_CAMEL", 3, com.google.common.base.d.e('A', 'Z'), "") { // from class: com.google.common.base.CaseFormat.d
        @Override // com.google.common.base.CaseFormat
        String normalizeWord(String str) {
            return CaseFormat.firstCharOnlyToUpper(str);
        }
    };
    public static final CaseFormat UPPER_UNDERSCORE = new CaseFormat("UPPER_UNDERSCORE", 4, com.google.common.base.d.h('_'), "_") { // from class: com.google.common.base.CaseFormat.e
        @Override // com.google.common.base.CaseFormat
        String convert(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_HYPHEN) {
                return com.google.common.base.c.f(str.replace('_', '-'));
            }
            if (caseFormat == CaseFormat.LOWER_UNDERSCORE) {
                return com.google.common.base.c.f(str);
            }
            return super.convert(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        String normalizeWord(String str) {
            return com.google.common.base.c.h(str);
        }
    };
    private static final /* synthetic */ CaseFormat[] $VALUES = $values();

    /* loaded from: classes2.dex */
    enum a extends CaseFormat {
        a(String str, int i9, com.google.common.base.d dVar, String str2) {
            super(str, i9, dVar, str2, null);
        }

        @Override // com.google.common.base.CaseFormat
        String convert(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_UNDERSCORE) {
                return str.replace('-', '_');
            }
            if (caseFormat == CaseFormat.UPPER_UNDERSCORE) {
                return com.google.common.base.c.h(str.replace('-', '_'));
            }
            return super.convert(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        String normalizeWord(String str) {
            return com.google.common.base.c.f(str);
        }
    }

    /* loaded from: classes2.dex */
    private static final class f extends com.google.common.base.f<String, String> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: b  reason: collision with root package name */
        private final CaseFormat f12327b;

        /* renamed from: c  reason: collision with root package name */
        private final CaseFormat f12328c;

        f(CaseFormat caseFormat, CaseFormat caseFormat2) {
            this.f12327b = (CaseFormat) o.s(caseFormat);
            this.f12328c = (CaseFormat) o.s(caseFormat2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.f
        /* renamed from: e */
        public String c(String str) {
            return this.f12327b.to(this.f12328c, str);
        }

        @Override // com.google.common.base.h
        public boolean equals(Object obj) {
            if (obj instanceof f) {
                f fVar = (f) obj;
                return this.f12327b.equals(fVar.f12327b) && this.f12328c.equals(fVar.f12328c);
            }
            return false;
        }

        public int hashCode() {
            return this.f12327b.hashCode() ^ this.f12328c.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f12327b);
            String valueOf2 = String.valueOf(this.f12328c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 14 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append(".converterTo(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    private static /* synthetic */ CaseFormat[] $values() {
        return new CaseFormat[]{LOWER_HYPHEN, LOWER_UNDERSCORE, LOWER_CAMEL, UPPER_CAMEL, UPPER_UNDERSCORE};
    }

    /* synthetic */ CaseFormat(String str, int i9, com.google.common.base.d dVar, String str2, a aVar) {
        this(str, i9, dVar, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String firstCharOnlyToUpper(String str) {
        if (str.isEmpty()) {
            return str;
        }
        char g10 = com.google.common.base.c.g(str.charAt(0));
        String f10 = com.google.common.base.c.f(str.substring(1));
        StringBuilder sb2 = new StringBuilder(String.valueOf(f10).length() + 1);
        sb2.append(g10);
        sb2.append(f10);
        return sb2.toString();
    }

    public static CaseFormat valueOf(String str) {
        return (CaseFormat) Enum.valueOf(CaseFormat.class, str);
    }

    public static CaseFormat[] values() {
        return (CaseFormat[]) $VALUES.clone();
    }

    String convert(CaseFormat caseFormat, String str) {
        StringBuilder sb2 = null;
        int i9 = 0;
        int i10 = -1;
        while (true) {
            i10 = this.wordBoundary.g(str, i10 + 1);
            if (i10 == -1) {
                break;
            }
            if (i9 == 0) {
                sb2 = new StringBuilder(str.length() + (caseFormat.wordSeparator.length() * 4));
                sb2.append(caseFormat.normalizeFirstWord(str.substring(i9, i10)));
            } else {
                Objects.requireNonNull(sb2);
                sb2.append(caseFormat.normalizeWord(str.substring(i9, i10)));
            }
            sb2.append(caseFormat.wordSeparator);
            i9 = this.wordSeparator.length() + i10;
        }
        if (i9 == 0) {
            return caseFormat.normalizeFirstWord(str);
        }
        Objects.requireNonNull(sb2);
        sb2.append(caseFormat.normalizeWord(str.substring(i9)));
        return sb2.toString();
    }

    public com.google.common.base.f<String, String> converterTo(CaseFormat caseFormat) {
        return new f(this, caseFormat);
    }

    String normalizeFirstWord(String str) {
        return normalizeWord(str);
    }

    abstract String normalizeWord(String str);

    public final String to(CaseFormat caseFormat, String str) {
        o.s(caseFormat);
        o.s(str);
        return caseFormat == this ? str : convert(caseFormat, str);
    }

    private CaseFormat(String str, int i9, com.google.common.base.d dVar, String str2) {
        this.wordBoundary = dVar;
        this.wordSeparator = str2;
    }
}

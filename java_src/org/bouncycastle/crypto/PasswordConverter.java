package org.bouncycastle.crypto;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes7.dex */
public abstract class PasswordConverter implements org.bouncycastle.crypto.b {
    private static final /* synthetic */ PasswordConverter[] $VALUES;
    public static final PasswordConverter ASCII;
    public static final PasswordConverter PKCS12;
    public static final PasswordConverter UTF8;

    /* loaded from: classes7.dex */
    enum a extends PasswordConverter {
        a(String str, int i9) {
            super(str, i9, null);
        }

        @Override // org.bouncycastle.crypto.PasswordConverter, org.bouncycastle.crypto.b
        public byte[] convert(char[] cArr) {
            return h.b(cArr);
        }

        @Override // org.bouncycastle.crypto.PasswordConverter, org.bouncycastle.crypto.b
        public String getType() {
            return "ASCII";
        }
    }

    static {
        a aVar = new a("ASCII", 0);
        ASCII = aVar;
        PasswordConverter passwordConverter = new PasswordConverter("UTF8", 1) { // from class: org.bouncycastle.crypto.PasswordConverter.b
            @Override // org.bouncycastle.crypto.PasswordConverter, org.bouncycastle.crypto.b
            public byte[] convert(char[] cArr) {
                return h.c(cArr);
            }

            @Override // org.bouncycastle.crypto.PasswordConverter, org.bouncycastle.crypto.b
            public String getType() {
                return "UTF8";
            }
        };
        UTF8 = passwordConverter;
        PasswordConverter passwordConverter2 = new PasswordConverter("PKCS12", 2) { // from class: org.bouncycastle.crypto.PasswordConverter.c
            @Override // org.bouncycastle.crypto.PasswordConverter, org.bouncycastle.crypto.b
            public byte[] convert(char[] cArr) {
                return h.a(cArr);
            }

            @Override // org.bouncycastle.crypto.PasswordConverter, org.bouncycastle.crypto.b
            public String getType() {
                return "PKCS12";
            }
        };
        PKCS12 = passwordConverter2;
        $VALUES = new PasswordConverter[]{aVar, passwordConverter, passwordConverter2};
    }

    private PasswordConverter(String str, int i9) {
    }

    /* synthetic */ PasswordConverter(String str, int i9, a aVar) {
        this(str, i9);
    }

    public static PasswordConverter valueOf(String str) {
        return (PasswordConverter) Enum.valueOf(PasswordConverter.class, str);
    }

    public static PasswordConverter[] values() {
        return (PasswordConverter[]) $VALUES.clone();
    }

    @Override // org.bouncycastle.crypto.b
    public abstract /* synthetic */ byte[] convert(char[] cArr);

    @Override // org.bouncycastle.crypto.b
    public abstract /* synthetic */ String getType();
}

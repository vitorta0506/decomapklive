package com.google.android.gms.internal.recaptcha;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzb uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class zzrs {
    public static final zzrs zza;
    public static final zzrs zzb;
    public static final zzrs zzc;
    public static final zzrs zzd;
    public static final zzrs zze;
    public static final zzrs zzf;
    public static final zzrs zzg;
    public static final zzrs zzh;
    public static final zzrs zzi;
    public static final zzrs zzj;
    private static final /* synthetic */ zzrs[] zzk;
    private final Class<?> zzl;
    private final Class<?> zzm;
    private final Object zzn;

    static {
        zzrs zzrsVar = new zzrs("VOID", 0, Void.class, Void.class, null);
        zza = zzrsVar;
        Class cls = Integer.TYPE;
        zzrs zzrsVar2 = new zzrs("INT", 1, cls, Integer.class, 0);
        zzb = zzrsVar2;
        zzrs zzrsVar3 = new zzrs("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzrsVar3;
        zzrs zzrsVar4 = new zzrs("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzrsVar4;
        zzrs zzrsVar5 = new zzrs("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzrsVar5;
        zzrs zzrsVar6 = new zzrs("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzrsVar6;
        zzrs zzrsVar7 = new zzrs("STRING", 6, String.class, String.class, "");
        zzg = zzrsVar7;
        zzrs zzrsVar8 = new zzrs("BYTE_STRING", 7, zzpy.class, zzpy.class, zzpy.zzb);
        zzh = zzrsVar8;
        zzrs zzrsVar9 = new zzrs("ENUM", 8, cls, Integer.class, null);
        zzi = zzrsVar9;
        zzrs zzrsVar10 = new zzrs("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzrsVar10;
        zzk = new zzrs[]{zzrsVar, zzrsVar2, zzrsVar3, zzrsVar4, zzrsVar5, zzrsVar6, zzrsVar7, zzrsVar8, zzrsVar9, zzrsVar10};
    }

    private zzrs(String str, int i9, Class cls, Class cls2, Object obj) {
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }

    public static zzrs[] values() {
        return (zzrs[]) zzk.clone();
    }

    public final Class<?> zza() {
        return this.zzm;
    }
}

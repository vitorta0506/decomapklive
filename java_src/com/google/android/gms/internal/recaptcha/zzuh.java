package com.google.android.gms.internal.recaptcha;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzc uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class zzuh {
    public static final zzuh zza;
    public static final zzuh zzb;
    public static final zzuh zzc;
    public static final zzuh zzd;
    public static final zzuh zze;
    public static final zzuh zzf;
    public static final zzuh zzg;
    public static final zzuh zzh;
    public static final zzuh zzi;
    public static final zzuh zzj;
    public static final zzuh zzk;
    public static final zzuh zzl;
    public static final zzuh zzm;
    public static final zzuh zzn;
    public static final zzuh zzo;
    public static final zzuh zzp;
    public static final zzuh zzq;
    public static final zzuh zzr;
    private static final /* synthetic */ zzuh[] zzs;
    private final zzui zzt;
    private final int zzu;

    static {
        zzuh zzuhVar = new zzuh("DOUBLE", 0, zzui.DOUBLE, 1);
        zza = zzuhVar;
        zzuh zzuhVar2 = new zzuh("FLOAT", 1, zzui.FLOAT, 5);
        zzb = zzuhVar2;
        zzui zzuiVar = zzui.LONG;
        zzuh zzuhVar3 = new zzuh("INT64", 2, zzuiVar, 0);
        zzc = zzuhVar3;
        zzuh zzuhVar4 = new zzuh("UINT64", 3, zzuiVar, 0);
        zzd = zzuhVar4;
        zzui zzuiVar2 = zzui.INT;
        zzuh zzuhVar5 = new zzuh("INT32", 4, zzuiVar2, 0);
        zze = zzuhVar5;
        zzuh zzuhVar6 = new zzuh("FIXED64", 5, zzuiVar, 1);
        zzf = zzuhVar6;
        zzuh zzuhVar7 = new zzuh("FIXED32", 6, zzuiVar2, 5);
        zzg = zzuhVar7;
        zzuh zzuhVar8 = new zzuh("BOOL", 7, zzui.BOOLEAN, 0);
        zzh = zzuhVar8;
        zzuh zzuhVar9 = new zzuh("STRING", 8, zzui.STRING, 2);
        zzi = zzuhVar9;
        zzui zzuiVar3 = zzui.MESSAGE;
        zzuh zzuhVar10 = new zzuh("GROUP", 9, zzuiVar3, 3);
        zzj = zzuhVar10;
        zzuh zzuhVar11 = new zzuh("MESSAGE", 10, zzuiVar3, 2);
        zzk = zzuhVar11;
        zzuh zzuhVar12 = new zzuh("BYTES", 11, zzui.BYTE_STRING, 2);
        zzl = zzuhVar12;
        zzuh zzuhVar13 = new zzuh("UINT32", 12, zzuiVar2, 0);
        zzm = zzuhVar13;
        zzuh zzuhVar14 = new zzuh("ENUM", 13, zzui.ENUM, 0);
        zzn = zzuhVar14;
        zzuh zzuhVar15 = new zzuh("SFIXED32", 14, zzuiVar2, 5);
        zzo = zzuhVar15;
        zzuh zzuhVar16 = new zzuh("SFIXED64", 15, zzuiVar, 1);
        zzp = zzuhVar16;
        zzuh zzuhVar17 = new zzuh("SINT32", 16, zzuiVar2, 0);
        zzq = zzuhVar17;
        zzuh zzuhVar18 = new zzuh("SINT64", 17, zzuiVar, 0);
        zzr = zzuhVar18;
        zzs = new zzuh[]{zzuhVar, zzuhVar2, zzuhVar3, zzuhVar4, zzuhVar5, zzuhVar6, zzuhVar7, zzuhVar8, zzuhVar9, zzuhVar10, zzuhVar11, zzuhVar12, zzuhVar13, zzuhVar14, zzuhVar15, zzuhVar16, zzuhVar17, zzuhVar18};
    }

    private zzuh(String str, int i9, zzui zzuiVar, int i10) {
        this.zzt = zzuiVar;
        this.zzu = i10;
    }

    public static zzuh[] values() {
        return (zzuh[]) zzs.clone();
    }

    public final int zza() {
        return this.zzu;
    }

    public final zzui zzb() {
        return this.zzt;
    }
}

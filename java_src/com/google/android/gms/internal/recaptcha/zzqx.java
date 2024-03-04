package com.google.android.gms.internal.recaptcha;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zza uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class zzqx {
    public static final zzqx zzA;
    public static final zzqx zzB;
    public static final zzqx zzC;
    public static final zzqx zzD;
    public static final zzqx zzE;
    public static final zzqx zzF;
    public static final zzqx zzG;
    public static final zzqx zzH;
    public static final zzqx zzI;
    public static final zzqx zzJ;
    public static final zzqx zzK;
    public static final zzqx zzL;
    public static final zzqx zzM;
    public static final zzqx zzN;
    public static final zzqx zzO;
    public static final zzqx zzP;
    public static final zzqx zzQ;
    public static final zzqx zzR;
    public static final zzqx zzS;
    public static final zzqx zzT;
    public static final zzqx zzU;
    public static final zzqx zzV;
    public static final zzqx zzW;
    public static final zzqx zzX;
    public static final zzqx zzY;
    private static final zzqx[] zzZ;
    public static final zzqx zza;
    private static final /* synthetic */ zzqx[] zzaa;
    public static final zzqx zzb;
    public static final zzqx zzc;
    public static final zzqx zzd;
    public static final zzqx zze;
    public static final zzqx zzf;
    public static final zzqx zzg;
    public static final zzqx zzh;
    public static final zzqx zzi;
    public static final zzqx zzj;
    public static final zzqx zzk;
    public static final zzqx zzl;
    public static final zzqx zzm;
    public static final zzqx zzn;
    public static final zzqx zzo;
    public static final zzqx zzp;
    public static final zzqx zzq;
    public static final zzqx zzr;
    public static final zzqx zzs;
    public static final zzqx zzt;
    public static final zzqx zzu;
    public static final zzqx zzv;
    public static final zzqx zzw;
    public static final zzqx zzx;
    public static final zzqx zzy;
    public static final zzqx zzz;
    private final zzrs zzab;
    private final int zzac;
    private final Class<?> zzad;

    static {
        zzrs zzrsVar = zzrs.zze;
        zzqx zzqxVar = new zzqx("DOUBLE", 0, 0, 1, zzrsVar);
        zza = zzqxVar;
        zzrs zzrsVar2 = zzrs.zzd;
        zzqx zzqxVar2 = new zzqx("FLOAT", 1, 1, 1, zzrsVar2);
        zzb = zzqxVar2;
        zzrs zzrsVar3 = zzrs.zzc;
        zzqx zzqxVar3 = new zzqx("INT64", 2, 2, 1, zzrsVar3);
        zzc = zzqxVar3;
        zzqx zzqxVar4 = new zzqx("UINT64", 3, 3, 1, zzrsVar3);
        zzd = zzqxVar4;
        zzrs zzrsVar4 = zzrs.zzb;
        zzqx zzqxVar5 = new zzqx("INT32", 4, 4, 1, zzrsVar4);
        zze = zzqxVar5;
        zzqx zzqxVar6 = new zzqx("FIXED64", 5, 5, 1, zzrsVar3);
        zzf = zzqxVar6;
        zzqx zzqxVar7 = new zzqx("FIXED32", 6, 6, 1, zzrsVar4);
        zzg = zzqxVar7;
        zzrs zzrsVar5 = zzrs.zzf;
        zzqx zzqxVar8 = new zzqx("BOOL", 7, 7, 1, zzrsVar5);
        zzh = zzqxVar8;
        zzrs zzrsVar6 = zzrs.zzg;
        zzqx zzqxVar9 = new zzqx("STRING", 8, 8, 1, zzrsVar6);
        zzi = zzqxVar9;
        zzrs zzrsVar7 = zzrs.zzj;
        zzqx zzqxVar10 = new zzqx("MESSAGE", 9, 9, 1, zzrsVar7);
        zzj = zzqxVar10;
        zzrs zzrsVar8 = zzrs.zzh;
        zzqx zzqxVar11 = new zzqx("BYTES", 10, 10, 1, zzrsVar8);
        zzk = zzqxVar11;
        zzqx zzqxVar12 = new zzqx("UINT32", 11, 11, 1, zzrsVar4);
        zzl = zzqxVar12;
        zzrs zzrsVar9 = zzrs.zzi;
        zzqx zzqxVar13 = new zzqx("ENUM", 12, 12, 1, zzrsVar9);
        zzm = zzqxVar13;
        zzqx zzqxVar14 = new zzqx("SFIXED32", 13, 13, 1, zzrsVar4);
        zzn = zzqxVar14;
        zzqx zzqxVar15 = new zzqx("SFIXED64", 14, 14, 1, zzrsVar3);
        zzo = zzqxVar15;
        zzqx zzqxVar16 = new zzqx("SINT32", 15, 15, 1, zzrsVar4);
        zzp = zzqxVar16;
        zzqx zzqxVar17 = new zzqx("SINT64", 16, 16, 1, zzrsVar3);
        zzq = zzqxVar17;
        zzqx zzqxVar18 = new zzqx("GROUP", 17, 17, 1, zzrsVar7);
        zzr = zzqxVar18;
        zzqx zzqxVar19 = new zzqx("DOUBLE_LIST", 18, 18, 2, zzrsVar);
        zzs = zzqxVar19;
        zzqx zzqxVar20 = new zzqx("FLOAT_LIST", 19, 19, 2, zzrsVar2);
        zzt = zzqxVar20;
        zzqx zzqxVar21 = new zzqx("INT64_LIST", 20, 20, 2, zzrsVar3);
        zzu = zzqxVar21;
        zzqx zzqxVar22 = new zzqx("UINT64_LIST", 21, 21, 2, zzrsVar3);
        zzv = zzqxVar22;
        zzqx zzqxVar23 = new zzqx("INT32_LIST", 22, 22, 2, zzrsVar4);
        zzw = zzqxVar23;
        zzqx zzqxVar24 = new zzqx("FIXED64_LIST", 23, 23, 2, zzrsVar3);
        zzx = zzqxVar24;
        zzqx zzqxVar25 = new zzqx("FIXED32_LIST", 24, 24, 2, zzrsVar4);
        zzy = zzqxVar25;
        zzqx zzqxVar26 = new zzqx("BOOL_LIST", 25, 25, 2, zzrsVar5);
        zzz = zzqxVar26;
        zzqx zzqxVar27 = new zzqx("STRING_LIST", 26, 26, 2, zzrsVar6);
        zzA = zzqxVar27;
        zzqx zzqxVar28 = new zzqx("MESSAGE_LIST", 27, 27, 2, zzrsVar7);
        zzB = zzqxVar28;
        zzqx zzqxVar29 = new zzqx("BYTES_LIST", 28, 28, 2, zzrsVar8);
        zzC = zzqxVar29;
        zzqx zzqxVar30 = new zzqx("UINT32_LIST", 29, 29, 2, zzrsVar4);
        zzD = zzqxVar30;
        zzqx zzqxVar31 = new zzqx("ENUM_LIST", 30, 30, 2, zzrsVar9);
        zzE = zzqxVar31;
        zzqx zzqxVar32 = new zzqx("SFIXED32_LIST", 31, 31, 2, zzrsVar4);
        zzF = zzqxVar32;
        zzqx zzqxVar33 = new zzqx("SFIXED64_LIST", 32, 32, 2, zzrsVar3);
        zzG = zzqxVar33;
        zzqx zzqxVar34 = new zzqx("SINT32_LIST", 33, 33, 2, zzrsVar4);
        zzH = zzqxVar34;
        zzqx zzqxVar35 = new zzqx("SINT64_LIST", 34, 34, 2, zzrsVar3);
        zzI = zzqxVar35;
        zzqx zzqxVar36 = new zzqx("DOUBLE_LIST_PACKED", 35, 35, 3, zzrsVar);
        zzJ = zzqxVar36;
        zzqx zzqxVar37 = new zzqx("FLOAT_LIST_PACKED", 36, 36, 3, zzrsVar2);
        zzK = zzqxVar37;
        zzqx zzqxVar38 = new zzqx("INT64_LIST_PACKED", 37, 37, 3, zzrsVar3);
        zzL = zzqxVar38;
        zzqx zzqxVar39 = new zzqx("UINT64_LIST_PACKED", 38, 38, 3, zzrsVar3);
        zzM = zzqxVar39;
        zzqx zzqxVar40 = new zzqx("INT32_LIST_PACKED", 39, 39, 3, zzrsVar4);
        zzN = zzqxVar40;
        zzqx zzqxVar41 = new zzqx("FIXED64_LIST_PACKED", 40, 40, 3, zzrsVar3);
        zzO = zzqxVar41;
        zzqx zzqxVar42 = new zzqx("FIXED32_LIST_PACKED", 41, 41, 3, zzrsVar4);
        zzP = zzqxVar42;
        zzqx zzqxVar43 = new zzqx("BOOL_LIST_PACKED", 42, 42, 3, zzrsVar5);
        zzQ = zzqxVar43;
        zzqx zzqxVar44 = new zzqx("UINT32_LIST_PACKED", 43, 43, 3, zzrsVar4);
        zzR = zzqxVar44;
        zzqx zzqxVar45 = new zzqx("ENUM_LIST_PACKED", 44, 44, 3, zzrsVar9);
        zzS = zzqxVar45;
        zzqx zzqxVar46 = new zzqx("SFIXED32_LIST_PACKED", 45, 45, 3, zzrsVar4);
        zzT = zzqxVar46;
        zzqx zzqxVar47 = new zzqx("SFIXED64_LIST_PACKED", 46, 46, 3, zzrsVar3);
        zzU = zzqxVar47;
        zzqx zzqxVar48 = new zzqx("SINT32_LIST_PACKED", 47, 47, 3, zzrsVar4);
        zzV = zzqxVar48;
        zzqx zzqxVar49 = new zzqx("SINT64_LIST_PACKED", 48, 48, 3, zzrsVar3);
        zzW = zzqxVar49;
        zzqx zzqxVar50 = new zzqx("GROUP_LIST", 49, 49, 2, zzrsVar7);
        zzX = zzqxVar50;
        zzqx zzqxVar51 = new zzqx("MAP", 50, 50, 4, zzrs.zza);
        zzY = zzqxVar51;
        zzaa = new zzqx[]{zzqxVar, zzqxVar2, zzqxVar3, zzqxVar4, zzqxVar5, zzqxVar6, zzqxVar7, zzqxVar8, zzqxVar9, zzqxVar10, zzqxVar11, zzqxVar12, zzqxVar13, zzqxVar14, zzqxVar15, zzqxVar16, zzqxVar17, zzqxVar18, zzqxVar19, zzqxVar20, zzqxVar21, zzqxVar22, zzqxVar23, zzqxVar24, zzqxVar25, zzqxVar26, zzqxVar27, zzqxVar28, zzqxVar29, zzqxVar30, zzqxVar31, zzqxVar32, zzqxVar33, zzqxVar34, zzqxVar35, zzqxVar36, zzqxVar37, zzqxVar38, zzqxVar39, zzqxVar40, zzqxVar41, zzqxVar42, zzqxVar43, zzqxVar44, zzqxVar45, zzqxVar46, zzqxVar47, zzqxVar48, zzqxVar49, zzqxVar50, zzqxVar51};
        zzqx[] values = values();
        zzZ = new zzqx[values.length];
        for (zzqx zzqxVar52 : values) {
            zzZ[zzqxVar52.zzac] = zzqxVar52;
        }
    }

    private zzqx(String str, int i9, int i10, int i11, zzrs zzrsVar) {
        this.zzac = i10;
        this.zzab = zzrsVar;
        zzrs zzrsVar2 = zzrs.zza;
        int i12 = i11 - 1;
        if (i12 == 1) {
            this.zzad = zzrsVar.zza();
        } else if (i12 != 3) {
            this.zzad = null;
        } else {
            this.zzad = zzrsVar.zza();
        }
        if (i11 == 1) {
            zzrsVar.ordinal();
        }
    }

    public static zzqx[] values() {
        return (zzqx[]) zzaa.clone();
    }

    public final int zza() {
        return this.zzac;
    }
}

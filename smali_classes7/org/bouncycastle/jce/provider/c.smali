.class Lorg/bouncycastle/jce/provider/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lorg/bouncycastle/jce/provider/b;

.field private static final b:Ljava/lang/Class;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field protected static final q:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/bouncycastle/jce/provider/b;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/b;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->a:Lorg/bouncycastle/jce/provider/b;

    const-class v0, Lorg/bouncycastle/jce/provider/c;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->b:Ljava/lang/Class;

    sget-object v0, Loj/l;->t:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->c:Ljava/lang/String;

    sget-object v0, Loj/l;->u:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->d:Ljava/lang/String;

    sget-object v0, Loj/l;->z:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->e:Ljava/lang/String;

    sget-object v0, Loj/l;->p:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->f:Ljava/lang/String;

    sget-object v0, Loj/l;->y:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->g:Ljava/lang/String;

    sget-object v0, Loj/l;->o:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->h:Ljava/lang/String;

    sget-object v0, Loj/l;->w:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->i:Ljava/lang/String;

    sget-object v0, Loj/l;->j:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->j:Ljava/lang/String;

    sget-object v0, Loj/l;->s:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->k:Ljava/lang/String;

    sget-object v0, Loj/l;->h:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->l:Ljava/lang/String;

    sget-object v0, Loj/l;->r:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->m:Ljava/lang/String;

    sget-object v0, Loj/l;->v:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->n:Ljava/lang/String;

    sget-object v0, Loj/l;->f:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->o:Ljava/lang/String;

    sget-object v0, Loj/l;->k:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->p:Ljava/lang/String;

    const-string v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string v8, "unknown"

    const-string v9, "removeFromCRL"

    const-string v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/c;->q:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

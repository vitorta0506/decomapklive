.class enum Lorg/conscrypt/n$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/n$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/conscrypt/n$b;

.field public static final enum b:Lorg/conscrypt/n$b;

.field public static final enum c:Lorg/conscrypt/n$b;

.field public static final enum d:Lorg/conscrypt/n$b;

.field public static final enum e:Lorg/conscrypt/n$b;

.field public static final enum f:Lorg/conscrypt/n$b;

.field public static final enum g:Lorg/conscrypt/n$b;

.field public static final enum h:Lorg/conscrypt/n$b;

.field public static final enum i:Lorg/conscrypt/n$b;

.field public static final enum j:Lorg/conscrypt/n$b;

.field public static final enum k:Lorg/conscrypt/n$b;

.field public static final enum l:Lorg/conscrypt/n$b;

.field public static final enum m:Lorg/conscrypt/n$b;

.field private static final synthetic n:[Lorg/conscrypt/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lorg/conscrypt/n$b;

    const-string v1, "X86_64"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/n$b;->a:Lorg/conscrypt/n$b;

    .line 2
    new-instance v1, Lorg/conscrypt/n$b$a;

    const-string v3, "X86_32"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/conscrypt/n$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/conscrypt/n$b;->b:Lorg/conscrypt/n$b;

    .line 3
    new-instance v3, Lorg/conscrypt/n$b;

    const-string v5, "ITANIUM_64"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/conscrypt/n$b;->c:Lorg/conscrypt/n$b;

    .line 4
    new-instance v5, Lorg/conscrypt/n$b;

    const-string v7, "SPARC_32"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/conscrypt/n$b;->d:Lorg/conscrypt/n$b;

    .line 5
    new-instance v7, Lorg/conscrypt/n$b;

    const-string v9, "SPARC_64"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/conscrypt/n$b;->e:Lorg/conscrypt/n$b;

    .line 6
    new-instance v9, Lorg/conscrypt/n$b;

    const-string v11, "ARM_32"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/conscrypt/n$b;->f:Lorg/conscrypt/n$b;

    .line 7
    new-instance v11, Lorg/conscrypt/n$b;

    const-string v13, "AARCH_64"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/conscrypt/n$b;->g:Lorg/conscrypt/n$b;

    .line 8
    new-instance v13, Lorg/conscrypt/n$b;

    const-string v15, "PPC_32"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/conscrypt/n$b;->h:Lorg/conscrypt/n$b;

    .line 9
    new-instance v15, Lorg/conscrypt/n$b;

    const-string v14, "PPC_64"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/conscrypt/n$b;->i:Lorg/conscrypt/n$b;

    .line 10
    new-instance v14, Lorg/conscrypt/n$b;

    const-string v12, "PPCLE_64"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/conscrypt/n$b;->j:Lorg/conscrypt/n$b;

    .line 11
    new-instance v12, Lorg/conscrypt/n$b;

    const-string v10, "S390_32"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/conscrypt/n$b;->k:Lorg/conscrypt/n$b;

    .line 12
    new-instance v10, Lorg/conscrypt/n$b;

    const-string v8, "S390_64"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/conscrypt/n$b;->l:Lorg/conscrypt/n$b;

    .line 13
    new-instance v8, Lorg/conscrypt/n$b;

    const-string v6, "UNKNOWN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/conscrypt/n$b;->m:Lorg/conscrypt/n$b;

    const/16 v6, 0xd

    new-array v6, v6, [Lorg/conscrypt/n$b;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 14
    sput-object v6, Lorg/conscrypt/n$b;->n:[Lorg/conscrypt/n$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/conscrypt/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/n$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/n$b;
    .locals 1

    const-class v0, Lorg/conscrypt/n$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/n$b;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/n$b;
    .locals 1

    sget-object v0, Lorg/conscrypt/n$b;->n:[Lorg/conscrypt/n$b;

    invoke-virtual {v0}, [Lorg/conscrypt/n$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/n$b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

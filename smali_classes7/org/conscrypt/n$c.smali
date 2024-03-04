.class final enum Lorg/conscrypt/n$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/n$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/conscrypt/n$c;

.field public static final enum b:Lorg/conscrypt/n$c;

.field public static final enum c:Lorg/conscrypt/n$c;

.field public static final enum d:Lorg/conscrypt/n$c;

.field public static final enum e:Lorg/conscrypt/n$c;

.field public static final enum f:Lorg/conscrypt/n$c;

.field public static final enum g:Lorg/conscrypt/n$c;

.field public static final enum h:Lorg/conscrypt/n$c;

.field public static final enum i:Lorg/conscrypt/n$c;

.field public static final enum j:Lorg/conscrypt/n$c;

.field public static final enum k:Lorg/conscrypt/n$c;

.field private static final synthetic l:[Lorg/conscrypt/n$c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lorg/conscrypt/n$c;

    const-string v1, "AIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/n$c;->a:Lorg/conscrypt/n$c;

    .line 2
    new-instance v1, Lorg/conscrypt/n$c;

    const-string v3, "HPUX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/conscrypt/n$c;->b:Lorg/conscrypt/n$c;

    .line 3
    new-instance v3, Lorg/conscrypt/n$c;

    const-string v5, "OS400"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/conscrypt/n$c;->c:Lorg/conscrypt/n$c;

    .line 4
    new-instance v5, Lorg/conscrypt/n$c;

    const-string v7, "LINUX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/conscrypt/n$c;->d:Lorg/conscrypt/n$c;

    .line 5
    new-instance v7, Lorg/conscrypt/n$c;

    const-string v9, "OSX"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/conscrypt/n$c;->e:Lorg/conscrypt/n$c;

    .line 6
    new-instance v9, Lorg/conscrypt/n$c;

    const-string v11, "FREEBSD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/conscrypt/n$c;->f:Lorg/conscrypt/n$c;

    .line 7
    new-instance v11, Lorg/conscrypt/n$c;

    const-string v13, "OPENBSD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/conscrypt/n$c;->g:Lorg/conscrypt/n$c;

    .line 8
    new-instance v13, Lorg/conscrypt/n$c;

    const-string v15, "NETBSD"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/conscrypt/n$c;->h:Lorg/conscrypt/n$c;

    .line 9
    new-instance v15, Lorg/conscrypt/n$c;

    const-string v14, "SUNOS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/conscrypt/n$c;->i:Lorg/conscrypt/n$c;

    .line 10
    new-instance v14, Lorg/conscrypt/n$c;

    const-string v12, "WINDOWS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/conscrypt/n$c;->j:Lorg/conscrypt/n$c;

    .line 11
    new-instance v12, Lorg/conscrypt/n$c;

    const-string v10, "UNKNOWN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/conscrypt/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/conscrypt/n$c;->k:Lorg/conscrypt/n$c;

    const/16 v10, 0xb

    new-array v10, v10, [Lorg/conscrypt/n$c;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 12
    sput-object v10, Lorg/conscrypt/n$c;->l:[Lorg/conscrypt/n$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/n$c;
    .locals 1

    const-class v0, Lorg/conscrypt/n$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/n$c;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/n$c;
    .locals 1

    sget-object v0, Lorg/conscrypt/n$c;->l:[Lorg/conscrypt/n$c;

    invoke-virtual {v0}, [Lorg/conscrypt/n$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/n$c;

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

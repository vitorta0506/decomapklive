.class public final enum Lcom/tencent/liteav/sdk/common/LicenseChecker$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/sdk/common/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/sdk/common/LicenseChecker$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum b:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum c:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum d:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum e:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum f:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field public static final enum g:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

.field private static final synthetic h:[Lcom/tencent/liteav/sdk/common/LicenseChecker$a;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    const-string v1, "PUSHER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->a:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 2
    new-instance v1, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    const-string v4, "UGC_SIMPLE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->b:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 3
    new-instance v4, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    const-string v6, "UGC_STANDARD"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->c:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 4
    new-instance v6, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    const-string v8, "PITU_SIMPLE"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->d:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 5
    new-instance v8, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    const-string v10, "PITU"

    const/16 v11, 0x10

    invoke-direct {v8, v10, v7, v11}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->e:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 6
    new-instance v10, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    const-string v11, "PLAYER_STANDARD"

    const/4 v12, 0x5

    const/16 v13, 0x20

    invoke-direct {v10, v11, v12, v13}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->f:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    .line 7
    new-instance v11, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    const-string v13, "PLAYER_MONET"

    const/4 v14, 0x6

    const/16 v15, 0x40

    invoke-direct {v11, v13, v14, v15}, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->g:Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v9

    aput-object v8, v13, v7

    aput-object v10, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->h:[Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/sdk/common/LicenseChecker$a;
    .locals 1

    const-class v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/sdk/common/LicenseChecker$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->h:[Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    invoke-virtual {v0}, [Lcom/tencent/liteav/sdk/common/LicenseChecker$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/sdk/common/LicenseChecker$a;

    return-object v0
.end method

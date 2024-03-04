.class public final enum Lcom/tencent/liteav/videobase/utils/Rotation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/utils/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/utils/Rotation;

.field public static final enum b:Lcom/tencent/liteav/videobase/utils/Rotation;

.field public static final enum c:Lcom/tencent/liteav/videobase/utils/Rotation;

.field public static final enum d:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private static final e:[Lcom/tencent/liteav/videobase/utils/Rotation;

.field private static final synthetic f:[Lcom/tencent/liteav/videobase/utils/Rotation;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/utils/Rotation;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/liteav/videobase/utils/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 2
    new-instance v1, Lcom/tencent/liteav/videobase/utils/Rotation;

    const-string v3, "ROTATION_90"

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Lcom/tencent/liteav/videobase/utils/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 3
    new-instance v3, Lcom/tencent/liteav/videobase/utils/Rotation;

    const-string v5, "ROTATION_180"

    const/4 v6, 0x2

    const/16 v7, 0xb4

    invoke-direct {v3, v5, v6, v7}, Lcom/tencent/liteav/videobase/utils/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videobase/utils/Rotation;->c:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 4
    new-instance v5, Lcom/tencent/liteav/videobase/utils/Rotation;

    const-string v7, "ROTATION_270"

    const/4 v8, 0x3

    const/16 v9, 0x10e

    invoke-direct {v5, v7, v8, v9}, Lcom/tencent/liteav/videobase/utils/Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tencent/liteav/videobase/utils/Rotation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/tencent/liteav/videobase/utils/Rotation;->f:[Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 6
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/Rotation;->values()[Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->e:[Lcom/tencent/liteav/videobase/utils/Rotation;

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
    iput p3, p0, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->e:[Lcom/tencent/liteav/videobase/utils/Rotation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-object p0
.end method

.method public static b(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videobase/utils/Rotation;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->f:[Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/utils/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videobase/utils/Rotation;

    return-object v0
.end method

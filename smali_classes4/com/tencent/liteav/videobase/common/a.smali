.class public final enum Lcom/tencent/liteav/videobase/common/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/common/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum b:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum c:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum d:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum e:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum f:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum g:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum h:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum i:Lcom/tencent/liteav/videobase/common/a;

.field public static final enum j:Lcom/tencent/liteav/videobase/common/a;

.field private static final k:[Lcom/tencent/liteav/videobase/common/a;

.field private static final synthetic l:[Lcom/tencent/liteav/videobase/common/a;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/common/a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const v3, 0xffff

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videobase/common/a;->a:Lcom/tencent/liteav/videobase/common/a;

    .line 2
    new-instance v1, Lcom/tencent/liteav/videobase/common/a;

    const-string v3, "IDR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videobase/common/a;->b:Lcom/tencent/liteav/videobase/common/a;

    .line 3
    new-instance v3, Lcom/tencent/liteav/videobase/common/a;

    const-string v5, "P"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videobase/common/a;->c:Lcom/tencent/liteav/videobase/common/a;

    .line 4
    new-instance v5, Lcom/tencent/liteav/videobase/common/a;

    const-string v7, "B"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/liteav/videobase/common/a;->d:Lcom/tencent/liteav/videobase/common/a;

    .line 5
    new-instance v7, Lcom/tencent/liteav/videobase/common/a;

    const-string v9, "SEI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/liteav/videobase/common/a;->e:Lcom/tencent/liteav/videobase/common/a;

    .line 6
    new-instance v9, Lcom/tencent/liteav/videobase/common/a;

    const-string v11, "I"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tencent/liteav/videobase/common/a;->f:Lcom/tencent/liteav/videobase/common/a;

    .line 7
    new-instance v11, Lcom/tencent/liteav/videobase/common/a;

    const-string v13, "P_MULTI_REF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tencent/liteav/videobase/common/a;->g:Lcom/tencent/liteav/videobase/common/a;

    .line 8
    new-instance v13, Lcom/tencent/liteav/videobase/common/a;

    const-string v15, "SPS"

    const/4 v14, 0x7

    const/16 v12, 0x12

    invoke-direct {v13, v15, v14, v12}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/tencent/liteav/videobase/common/a;->h:Lcom/tencent/liteav/videobase/common/a;

    .line 9
    new-instance v12, Lcom/tencent/liteav/videobase/common/a;

    const-string v15, "PPS"

    const/16 v14, 0x8

    const/16 v10, 0x13

    invoke-direct {v12, v15, v14, v10}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tencent/liteav/videobase/common/a;->i:Lcom/tencent/liteav/videobase/common/a;

    .line 10
    new-instance v10, Lcom/tencent/liteav/videobase/common/a;

    const-string v15, "VPS"

    const/16 v14, 0x9

    const/16 v8, 0x14

    invoke-direct {v10, v15, v14, v8}, Lcom/tencent/liteav/videobase/common/a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tencent/liteav/videobase/common/a;->j:Lcom/tencent/liteav/videobase/common/a;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/tencent/liteav/videobase/common/a;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 11
    sput-object v8, Lcom/tencent/liteav/videobase/common/a;->l:[Lcom/tencent/liteav/videobase/common/a;

    .line 12
    invoke-static {}, Lcom/tencent/liteav/videobase/common/a;->values()[Lcom/tencent/liteav/videobase/common/a;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/videobase/common/a;->k:[Lcom/tencent/liteav/videobase/common/a;

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
    iput p3, p0, Lcom/tencent/liteav/videobase/common/a;->mValue:I

    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/common/a;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/common/a;->k:[Lcom/tencent/liteav/videobase/common/a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/tencent/liteav/videobase/common/a;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/tencent/liteav/videobase/common/a;->a:Lcom/tencent/liteav/videobase/common/a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/common/a;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videobase/common/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videobase/common/a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/common/a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/common/a;->l:[Lcom/tencent/liteav/videobase/common/a;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/common/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videobase/common/a;

    return-object v0
.end method

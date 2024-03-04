.class public final enum Lcom/tencent/liteav/videoproducer/encoder/b$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/encoder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videoproducer/encoder/b$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

.field public static final enum b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

.field public static final enum c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

.field public static final enum d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

.field public static final enum e:Lcom/tencent/liteav/videoproducer/encoder/b$d;

.field private static final synthetic f:[Lcom/tencent/liteav/videoproducer/encoder/b$d;


# instance fields
.field private final mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;

    const-string v1, "CONTINUE_ENCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    .line 2
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;

    const-string v3, "RESTART_ENCODER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/liteav/videoproducer/encoder/b$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    .line 3
    new-instance v3, Lcom/tencent/liteav/videoproducer/encoder/b$d;

    const-string v5, "USE_HARDWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/liteav/videoproducer/encoder/b$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    .line 4
    new-instance v5, Lcom/tencent/liteav/videoproducer/encoder/b$d;

    const-string v7, "USE_SOFTWARE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/liteav/videoproducer/encoder/b$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    .line 5
    new-instance v7, Lcom/tencent/liteav/videoproducer/encoder/b$d;

    const-string v9, "REPORT_ENCODE_FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tencent/liteav/videoproducer/encoder/b$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/liteav/videoproducer/encoder/b$d;->e:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tencent/liteav/videoproducer/encoder/b$d;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/tencent/liteav/videoproducer/encoder/b$d;->f:[Lcom/tencent/liteav/videoproducer/encoder/b$d;

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
    iput p3, p0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->mPriority:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/b$d;)I
    .locals 0

    iget p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->mPriority:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videoproducer/encoder/b$d;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videoproducer/encoder/b$d;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videoproducer/encoder/b$d;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->f:[Lcom/tencent/liteav/videoproducer/encoder/b$d;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videoproducer/encoder/b$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videoproducer/encoder/b$d;

    return-object v0
.end method

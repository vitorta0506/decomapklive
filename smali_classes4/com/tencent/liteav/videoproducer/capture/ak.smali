.class final synthetic Lcom/tencent/liteav/videoproducer/capture/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final a:Lcom/tencent/liteav/videoproducer/capture/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ak;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/capture/ak;-><init>()V

    sput-object v0, Lcom/tencent/liteav/videoproducer/capture/ak;->a:Lcom/tencent/liteav/videoproducer/capture/ak;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/ak;->a:Lcom/tencent/liteav/videoproducer/capture/ak;

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/liteav/base/util/q;

    check-cast p2, Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p2}, Lcom/tencent/liteav/base/util/q;->b()I

    move-result p2

    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/q;->b()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

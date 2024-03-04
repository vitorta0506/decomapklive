.class final synthetic Lcom/tencent/liteav/videoproducer/preprocessor/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/preprocessor/h;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/preprocessor/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/w;->a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/preprocessor/h;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/preprocessor/w;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/w;-><init>(Lcom/tencent/liteav/videoproducer/preprocessor/h;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/w;->a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a()V

    const-string v0, "GPUPreprocessor"

    const-string v1, "destroy gpu preprocessor"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

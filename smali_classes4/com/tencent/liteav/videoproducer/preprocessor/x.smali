.class final synthetic Lcom/tencent/liteav/videoproducer/preprocessor/x;
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

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/x;->a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/preprocessor/h;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/preprocessor/x;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/x;-><init>(Lcom/tencent/liteav/videoproducer/preprocessor/h;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/x;->a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a()V

    return-void
.end method

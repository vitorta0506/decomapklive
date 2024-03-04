.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/base/util/v$a;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/w;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/y;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    return-void
.end method


# virtual methods
.method public final onTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/y;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Lcom/tencent/liteav/videoproducer/encoder/w;)V

    return-void
.end method

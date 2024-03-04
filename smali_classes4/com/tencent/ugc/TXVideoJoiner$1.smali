.class final Lcom/tencent/ugc/TXVideoJoiner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ugc/TXVideoJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/ugc/TXVideoJoiner;


# direct methods
.method constructor <init>(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner$1;->a:Lcom/tencent/ugc/TXVideoJoiner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/ugc/TXVideoJoiner$1;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/ugc/TXVideoJoiner$1;->a:Lcom/tencent/ugc/TXVideoJoiner;

    invoke-static {p0}, Lcom/tencent/ugc/TXVideoJoiner;->access$200(Lcom/tencent/ugc/TXVideoJoiner;)V

    return-void
.end method


# virtual methods
.method public final onPreviewFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner$1;->a:Lcom/tencent/ugc/TXVideoJoiner;

    invoke-static {v0}, Lcom/tencent/ugc/TXVideoJoiner;->access$100(Lcom/tencent/ugc/TXVideoJoiner;)Lcom/tencent/liteav/base/util/j;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/ugc/ci;->a(Lcom/tencent/ugc/TXVideoJoiner$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner$1;->a:Lcom/tencent/ugc/TXVideoJoiner;

    invoke-static {v0}, Lcom/tencent/ugc/TXVideoJoiner;->access$000(Lcom/tencent/ugc/TXVideoJoiner;)Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;->onPreviewFinished()V

    :cond_0
    return-void
.end method

.method public final onPreviewProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner$1;->a:Lcom/tencent/ugc/TXVideoJoiner;

    invoke-static {v0}, Lcom/tencent/ugc/TXVideoJoiner;->access$000(Lcom/tencent/ugc/TXVideoJoiner;)Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;->onPreviewProgress(I)V

    :cond_0
    return-void
.end method

.class final Lcom/tencent/liteav/base/util/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/base/util/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/base/util/p;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/base/util/p;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/base/util/p$1;->a:Lcom/tencent/liteav/base/util/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/util/p$1;->a:Lcom/tencent/liteav/base/util/p;

    .line 2
    iget-boolean v1, v0, Lcom/tencent/liteav/base/util/p;->b:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/tencent/liteav/base/util/p;->c:Lcom/tencent/liteav/base/util/j;

    .line 4
    iget-object v0, v0, Lcom/tencent/liteav/base/util/p;->e:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/util/j;->c(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/base/util/p$1;->a:Lcom/tencent/liteav/base/util/p;

    .line 7
    iget-object v1, v0, Lcom/tencent/liteav/base/util/p;->c:Lcom/tencent/liteav/base/util/j;

    .line 8
    iget-object v2, v0, Lcom/tencent/liteav/base/util/p;->e:Ljava/lang/Runnable;

    .line 9
    iget v0, v0, Lcom/tencent/liteav/base/util/p;->a:I

    int-to-long v3, v0

    .line 10
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;J)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/base/util/p$1;->a:Lcom/tencent/liteav/base/util/p;

    .line 12
    iget-object v0, v0, Lcom/tencent/liteav/base/util/p;->d:Lcom/tencent/liteav/base/util/p$a;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Lcom/tencent/liteav/base/util/p$a;->a()V

    :cond_1
    return-void
.end method

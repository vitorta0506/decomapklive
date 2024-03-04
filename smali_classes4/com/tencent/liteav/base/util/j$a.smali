.class final Lcom/tencent/liteav/base/util/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/base/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/lang/Runnable;

.field final c:J

.field final synthetic d:Lcom/tencent/liteav/base/util/j;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/base/util/j;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/base/util/j$a;->d:Lcom/tencent/liteav/base/util/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p2}, Lcom/tencent/liteav/base/util/n;->a(Lcom/tencent/liteav/base/util/j$a;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/base/util/j$a;->a:Ljava/lang/Runnable;

    .line 3
    invoke-static {p0}, Lcom/tencent/liteav/base/util/o;->a(Lcom/tencent/liteav/base/util/j$a;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/base/util/j$a;->b:Ljava/lang/Runnable;

    .line 4
    iput-wide p3, p0, Lcom/tencent/liteav/base/util/j$a;->c:J

    return-void
.end method

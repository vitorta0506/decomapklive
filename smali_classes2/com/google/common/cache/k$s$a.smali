.class Lcom/google/common/cache/k$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/k$s;->B(Ljava/lang/Object;ILcom/google/common/cache/k$n;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lcom/google/common/cache/k$n;

.field final synthetic d:Lcom/google/common/util/concurrent/d0;

.field final synthetic e:Lcom/google/common/cache/k$s;


# direct methods
.method constructor <init>(Lcom/google/common/cache/k$s;Ljava/lang/Object;ILcom/google/common/cache/k$n;Lcom/google/common/util/concurrent/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/k$s$a;->e:Lcom/google/common/cache/k$s;

    iput-object p2, p0, Lcom/google/common/cache/k$s$a;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/cache/k$s$a;->b:I

    iput-object p4, p0, Lcom/google/common/cache/k$s$a;->c:Lcom/google/common/cache/k$n;

    iput-object p5, p0, Lcom/google/common/cache/k$s$a;->d:Lcom/google/common/util/concurrent/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$s$a;->e:Lcom/google/common/cache/k$s;

    iget-object v1, p0, Lcom/google/common/cache/k$s$a;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/cache/k$s$a;->b:I

    iget-object v3, p0, Lcom/google/common/cache/k$s$a;->c:Lcom/google/common/cache/k$n;

    iget-object v4, p0, Lcom/google/common/cache/k$s$a;->d:Lcom/google/common/util/concurrent/d0;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/k$s;->s(Ljava/lang/Object;ILcom/google/common/cache/k$n;Lcom/google/common/util/concurrent/d0;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/google/common/cache/k;->w:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Lcom/google/common/cache/k$s$a;->c:Lcom/google/common/cache/k$n;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/k$n;->l(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.class public Lcom/google/api/client/http/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/client/util/c;

.field private b:Lcom/google/api/client/http/e$a;

.field private c:Lcom/google/api/client/util/c0;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/api/client/http/e$a;->b:Lcom/google/api/client/http/e$a;

    iput-object v0, p0, Lcom/google/api/client/http/e;->b:Lcom/google/api/client/http/e$a;

    .line 3
    sget-object v0, Lcom/google/api/client/util/c0;->a:Lcom/google/api/client/util/c0;

    iput-object v0, p0, Lcom/google/api/client/http/e;->c:Lcom/google/api/client/util/c0;

    .line 4
    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/util/c;

    iput-object p1, p0, Lcom/google/api/client/http/e;->a:Lcom/google/api/client/util/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/m;Lcom/google/api/client/http/p;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    .line 1
    :cond_0
    iget-object p3, p0, Lcom/google/api/client/http/e;->b:Lcom/google/api/client/http/e$a;

    invoke-interface {p3, p2}, Lcom/google/api/client/http/e$a;->a(Lcom/google/api/client/http/p;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/google/api/client/http/e;->c:Lcom/google/api/client/util/c0;

    iget-object p3, p0, Lcom/google/api/client/http/e;->a:Lcom/google/api/client/util/c;

    invoke-static {p2, p3}, Lcom/google/api/client/util/d;->a(Lcom/google/api/client/util/c0;Lcom/google/api/client/util/c;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 3
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return p1
.end method

.method public b(Lcom/google/api/client/http/e$a;)Lcom/google/api/client/http/e;
    .locals 0

    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/e$a;

    iput-object p1, p0, Lcom/google/api/client/http/e;->b:Lcom/google/api/client/http/e$a;

    return-object p0
.end method

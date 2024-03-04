.class Lcom/squareup/okhttp/internal/framed/a$g;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/a;->X(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/squareup/okhttp/internal/framed/ErrorCode;

.field final synthetic c:Lcom/squareup/okhttp/internal/framed/a;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$g;->c:Lcom/squareup/okhttp/internal/framed/a;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/a$g;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/a$g;->b:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$g;->c:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a;->C(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/a$g;->a:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$g;->b:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/PushObserver;->onReset(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$g;->c:Lcom/squareup/okhttp/internal/framed/a;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a$g;->c:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/a;->F(Lcom/squareup/okhttp/internal/framed/a;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/a$g;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

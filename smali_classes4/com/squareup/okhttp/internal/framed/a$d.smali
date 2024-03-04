.class Lcom/squareup/okhttp/internal/framed/a$d;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/a;->W(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/squareup/okhttp/internal/framed/a;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$d;->c:Lcom/squareup/okhttp/internal/framed/a;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/a$d;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/a$d;->b:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$d;->c:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/a;->C(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/a$d;->a:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$d;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$d;->c:Lcom/squareup/okhttp/internal/framed/a;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/a$d;->a:I

    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$d;->c:Lcom/squareup/okhttp/internal/framed/a;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a$d;->c:Lcom/squareup/okhttp/internal/framed/a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/a;->F(Lcom/squareup/okhttp/internal/framed/a;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

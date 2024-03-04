.class public Lcom/squareup/okhttp/internal/framed/a$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:Lokio/BufferedSource;

.field private d:Lokio/BufferedSink;

.field private e:Lcom/squareup/okhttp/internal/framed/a$i;

.field private f:Lcom/squareup/okhttp/Protocol;

.field private g:Lcom/squareup/okhttp/internal/framed/PushObserver;

.field private h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/squareup/okhttp/internal/framed/a$i;->a:Lcom/squareup/okhttp/internal/framed/a$i;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->e:Lcom/squareup/okhttp/internal/framed/a$i;

    .line 3
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->f:Lcom/squareup/okhttp/Protocol;

    .line 4
    sget-object v0, Lcom/squareup/okhttp/internal/framed/PushObserver;->CANCEL:Lcom/squareup/okhttp/internal/framed/PushObserver;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->g:Lcom/squareup/okhttp/internal/framed/PushObserver;

    .line 5
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/a$h;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/framed/a$h;)Lcom/squareup/okhttp/Protocol;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->f:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/a$h;)Lcom/squareup/okhttp/internal/framed/PushObserver;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->g:Lcom/squareup/okhttp/internal/framed/PushObserver;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/framed/a$h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/framed/a$h;)Lcom/squareup/okhttp/internal/framed/a$i;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->e:Lcom/squareup/okhttp/internal/framed/a$i;

    return-object p0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/framed/a$h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/framed/a$h;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->a:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/framed/a$h;)Lokio/BufferedSink;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->d:Lokio/BufferedSink;

    return-object p0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/framed/a$h;)Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a$h;->c:Lokio/BufferedSource;

    return-object p0
.end method


# virtual methods
.method public i()Lcom/squareup/okhttp/internal/framed/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/squareup/okhttp/internal/framed/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/framed/a;-><init>(Lcom/squareup/okhttp/internal/framed/a$h;Lcom/squareup/okhttp/internal/framed/a$a;)V

    return-object v0
.end method

.method public j(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/framed/a$h;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$h;->f:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method public k(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lcom/squareup/okhttp/internal/framed/a$h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$h;->a:Ljava/net/Socket;

    .line 2
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/a$h;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/squareup/okhttp/internal/framed/a$h;->c:Lokio/BufferedSource;

    .line 4
    iput-object p4, p0, Lcom/squareup/okhttp/internal/framed/a$h;->d:Lokio/BufferedSink;

    return-object p0
.end method

.class Lcom/squareup/okhttp/internal/b$b;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/b;->R()Lokio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/squareup/okhttp/internal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/squareup/okhttp/internal/b;

    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/b;Lokio/Sink;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/b$b;->b:Lcom/squareup/okhttp/internal/b;

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/c;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/b$b;->b:Lcom/squareup/okhttp/internal/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/b;->t(Lcom/squareup/okhttp/internal/b;Z)Z

    return-void
.end method

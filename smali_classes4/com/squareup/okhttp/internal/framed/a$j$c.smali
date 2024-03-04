.class Lcom/squareup/okhttp/internal/framed/a$j$c;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/a$j;->b(Lcom/squareup/okhttp/internal/framed/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/framed/i;

.field final synthetic b:Lcom/squareup/okhttp/internal/framed/a$j;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/a$j;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/i;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$j$c;->b:Lcom/squareup/okhttp/internal/framed/a$j;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/framed/a$j$c;->a:Lcom/squareup/okhttp/internal/framed/i;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$j$c;->b:Lcom/squareup/okhttp/internal/framed/a$j;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/a$j;->b:Lcom/squareup/okhttp/internal/framed/a;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a$j$c;->a:Lcom/squareup/okhttp/internal/framed/i;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->ackSettings(Lcom/squareup/okhttp/internal/framed/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

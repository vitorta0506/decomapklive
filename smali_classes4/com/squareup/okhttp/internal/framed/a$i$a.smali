.class final Lcom/squareup/okhttp/internal/framed/a$i$a;
.super Lcom/squareup/okhttp/internal/framed/a$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/a$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/a$i;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/squareup/okhttp/internal/framed/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/b;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

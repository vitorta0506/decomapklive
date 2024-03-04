.class Lcom/squareup/okhttp/internal/framed/a$a;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/a;->p0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
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

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$a;->c:Lcom/squareup/okhttp/internal/framed/a;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/a$a;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/a$a;->b:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$a;->c:Lcom/squareup/okhttp/internal/framed/a;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/a$a;->a:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a$a;->b:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/a;->l0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

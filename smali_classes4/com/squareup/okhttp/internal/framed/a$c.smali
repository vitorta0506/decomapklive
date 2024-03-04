.class Lcom/squareup/okhttp/internal/framed/a$c;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/a;->j0(ZIILcom/squareup/okhttp/internal/framed/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/squareup/okhttp/internal/framed/h;

.field final synthetic e:Lcom/squareup/okhttp/internal/framed/a;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/framed/h;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->e:Lcom/squareup/okhttp/internal/framed/a;

    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/framed/a$c;->a:Z

    iput p5, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:I

    iput p6, p0, Lcom/squareup/okhttp/internal/framed/a$c;->c:I

    iput-object p7, p0, Lcom/squareup/okhttp/internal/framed/a$c;->d:Lcom/squareup/okhttp/internal/framed/h;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a$c;->e:Lcom/squareup/okhttp/internal/framed/a;

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/a$c;->a:Z

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/a$c;->b:I

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/a$c;->c:I

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/a$c;->d:Lcom/squareup/okhttp/internal/framed/h;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/a;->I(Lcom/squareup/okhttp/internal/framed/a;ZIILcom/squareup/okhttp/internal/framed/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

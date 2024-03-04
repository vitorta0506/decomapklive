.class Lcom/google/firebase/encoders/proto/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/f;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ld6/b;

.field private final d:Lcom/google/firebase/encoders/proto/d;


# direct methods
.method constructor <init>(Lcom/google/firebase/encoders/proto/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/f;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/f;->b:Z

    .line 4
    iput-object p1, p0, Lcom/google/firebase/encoders/proto/f;->d:Lcom/google/firebase/encoders/proto/d;

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/encoders/proto/f;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/f;->a:Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/google/firebase/encoders/EncodingException;

    const-string v1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ld6/f;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/proto/f;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/f;->d:Lcom/google/firebase/encoders/proto/d;

    iget-object v1, p0, Lcom/google/firebase/encoders/proto/f;->c:Ld6/b;

    iget-boolean v2, p0, Lcom/google/firebase/encoders/proto/f;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/d;->l(Ld6/b;Ljava/lang/Object;Z)Ld6/d;

    return-object p0
.end method

.method c(Ld6/b;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/f;->a:Z

    .line 2
    iput-object p1, p0, Lcom/google/firebase/encoders/proto/f;->c:Ld6/b;

    .line 3
    iput-boolean p2, p0, Lcom/google/firebase/encoders/proto/f;->b:Z

    return-void
.end method

.method public e(Z)Ld6/f;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/proto/f;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/f;->d:Lcom/google/firebase/encoders/proto/d;

    iget-object v1, p0, Lcom/google/firebase/encoders/proto/f;->c:Ld6/b;

    iget-boolean v2, p0, Lcom/google/firebase/encoders/proto/f;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/d;->i(Ld6/b;ZZ)Lcom/google/firebase/encoders/proto/d;

    return-object p0
.end method

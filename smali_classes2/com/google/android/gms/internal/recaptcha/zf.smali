.class public Lcom/google/android/gms/internal/recaptcha/zf;
.super Lcom/google/android/gms/internal/recaptcha/fe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/recaptcha/zf<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/recaptcha/fe<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected b:Lcom/google/android/gms/internal/recaptcha/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected c:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/recaptcha/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/fe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->a:Lcom/google/android/gms/internal/recaptcha/dg;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/dg;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    return-void
.end method

.method private static final i(Lcom/google/android/gms/internal/recaptcha/dg;Lcom/google/android/gms/internal/recaptcha/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/uh;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic F()Lcom/google/android/gms/internal/recaptcha/gh;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->m()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->j()Lcom/google/android/gms/internal/recaptcha/zf;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic g(Lcom/google/android/gms/internal/recaptcha/ge;)Lcom/google/android/gms/internal/recaptcha/fe;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/zf;->k(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/zf;

    return-object p0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/recaptcha/gh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->a:Lcom/google/android/gms/internal/recaptcha/dg;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/recaptcha/zf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->a:Lcom/google/android/gms/internal/recaptcha/dg;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/zf;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->m()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/zf;->k(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/zf;

    return-object v0
.end method

.method public final k(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/zf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zf;->i(Lcom/google/android/gms/internal/recaptcha/dg;Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-object p0
.end method

.method public final l()Lcom/google/android/gms/internal/recaptcha/dg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->m()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/dg;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/recaptcha/zztq;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/recaptcha/zztq;-><init>(Lcom/google/android/gms/internal/recaptcha/gh;)V

    .line 4
    throw v1
.end method

.method public m()Lcom/google/android/gms/internal/recaptcha/dg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ph;->a()Lcom/google/android/gms/internal/recaptcha/ph;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/recaptcha/ph;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/recaptcha/uh;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/recaptcha/uh;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    return-object v0
.end method

.method protected n()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/recaptcha/dg;->m(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/dg;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/zf;->i(Lcom/google/android/gms/internal/recaptcha/dg;Lcom/google/android/gms/internal/recaptcha/dg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    return-void
.end method

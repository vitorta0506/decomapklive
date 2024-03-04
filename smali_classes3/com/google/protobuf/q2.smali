.class public Lcom/google/protobuf/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/a;",
        "BType:",
        "Lcom/google/protobuf/a$a;",
        "IType::",
        "Lcom/google/protobuf/r1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/a$b;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/protobuf/a$b;

.field private b:Lcom/google/protobuf/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBType;"
        }
    .end annotation
.end field

.field private c:Lcom/google/protobuf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMType;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;",
            "Lcom/google/protobuf/a$b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/u0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a;

    iput-object p1, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/q2;->a:Lcom/google/protobuf/a$b;

    .line 4
    iput-boolean p3, p0, Lcom/google/protobuf/q2;->d:Z

    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/q2;->b:Lcom/google/protobuf/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/q2;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/q2;->a:Lcom/google/protobuf/a$b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/a$b;->a()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/protobuf/q2;->d:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/q2;->f()V

    return-void
.end method

.method public b()Lcom/google/protobuf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/q2;->d:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/q2;->d()Lcom/google/protobuf/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/protobuf/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/q2;->b:Lcom/google/protobuf/a$a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/a;->newBuilderForType(Lcom/google/protobuf/a$b;)Lcom/google/protobuf/l1$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a$a;

    iput-object v0, p0, Lcom/google/protobuf/q2;->b:Lcom/google/protobuf/a$a;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/q2;->b:Lcom/google/protobuf/a$a;

    invoke-virtual {v0}, Lcom/google/protobuf/a$a;->q()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/q2;->b:Lcom/google/protobuf/a$a;

    return-object v0
.end method

.method public d()Lcom/google/protobuf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/q2;->b:Lcom/google/protobuf/a$a;

    invoke-interface {v0}, Lcom/google/protobuf/l1$a;->I()Lcom/google/protobuf/l1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a;

    iput-object v0, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    return-object v0
.end method

.method public e(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/q2<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/q2;->b:Lcom/google/protobuf/a$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    invoke-interface {v0}, Lcom/google/protobuf/r1;->getDefaultInstanceForType()Lcom/google/protobuf/l1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/q2;->c()Lcom/google/protobuf/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a$a;->v(Lcom/google/protobuf/l1;)Lcom/google/protobuf/a$a;

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/google/protobuf/q2;->f()V

    return-object p0
.end method

.method public g(Lcom/google/protobuf/a;)Lcom/google/protobuf/q2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/q2<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/u0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a;

    iput-object p1, p0, Lcom/google/protobuf/q2;->c:Lcom/google/protobuf/a;

    .line 2
    iget-object p1, p0, Lcom/google/protobuf/q2;->b:Lcom/google/protobuf/a$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/a$a;->o()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/q2;->b:Lcom/google/protobuf/a$a;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/q2;->f()V

    return-object p0
.end method

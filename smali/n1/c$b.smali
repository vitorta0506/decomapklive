.class final Ln1/c$b;
.super Ln1/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ln1/o;

.field private b:Ljava/lang/String;

.field private c:Ll1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/c<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ll1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll1/d<",
            "*[B>;"
        }
    .end annotation
.end field

.field private e:Ll1/b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln1/n;
    .locals 9

    .line 1
    iget-object v0, p0, Ln1/c$b;->a:Ln1/o;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Ln1/c$b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Ln1/c$b;->c:Ll1/c;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_2
    iget-object v0, p0, Ln1/c$b;->d:Ll1/d;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transformer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_3
    iget-object v0, p0, Ln1/c$b;->e:Ll1/b;

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance v0, Ln1/c;

    iget-object v3, p0, Ln1/c$b;->a:Ln1/o;

    iget-object v4, p0, Ln1/c$b;->b:Ljava/lang/String;

    iget-object v5, p0, Ln1/c$b;->c:Ll1/c;

    iget-object v6, p0, Ln1/c$b;->d:Ll1/d;

    iget-object v7, p0, Ln1/c$b;->e:Ll1/b;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ln1/c;-><init>(Ln1/o;Ljava/lang/String;Ll1/c;Ll1/d;Ll1/b;Ln1/c$a;)V

    return-object v0

    .line 13
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Ll1/b;)Ln1/n$a;
    .locals 1

    const-string v0, "Null encoding"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ln1/c$b;->e:Ll1/b;

    return-object p0
.end method

.method c(Ll1/c;)Ln1/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/c<",
            "*>;)",
            "Ln1/n$a;"
        }
    .end annotation

    const-string v0, "Null event"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ln1/c$b;->c:Ll1/c;

    return-object p0
.end method

.method d(Ll1/d;)Ln1/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll1/d<",
            "*[B>;)",
            "Ln1/n$a;"
        }
    .end annotation

    const-string v0, "Null transformer"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ln1/c$b;->d:Ll1/d;

    return-object p0
.end method

.method public e(Ln1/o;)Ln1/n$a;
    .locals 1

    const-string v0, "Null transportContext"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ln1/c$b;->a:Ln1/o;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ln1/n$a;
    .locals 1

    const-string v0, "Null transportName"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ln1/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

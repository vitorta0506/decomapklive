.class Lcom/google/common/base/r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/q;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "TB;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/h<",
            "TA;+TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/base/q;Lcom/google/common/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/q<",
            "TB;>;",
            "Lcom/google/common/base/h<",
            "TA;+TB;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/q;

    iput-object p1, p0, Lcom/google/common/base/r$c;->a:Lcom/google/common/base/q;

    .line 4
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/h;

    iput-object p1, p0, Lcom/google/common/base/r$c;->b:Lcom/google/common/base/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/q;Lcom/google/common/base/h;Lcom/google/common/base/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/r$c;-><init>(Lcom/google/common/base/q;Lcom/google/common/base/h;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/base/r$c;->a:Lcom/google/common/base/q;

    iget-object v1, p0, Lcom/google/common/base/r$c;->b:Lcom/google/common/base/h;

    invoke-interface {v1, p1}, Lcom/google/common/base/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/base/r$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/base/r$c;

    .line 3
    iget-object v0, p0, Lcom/google/common/base/r$c;->b:Lcom/google/common/base/h;

    iget-object v2, p1, Lcom/google/common/base/r$c;->b:Lcom/google/common/base/h;

    invoke-interface {v0, v2}, Lcom/google/common/base/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/r$c;->a:Lcom/google/common/base/q;

    iget-object p1, p1, Lcom/google/common/base/r$c;->a:Lcom/google/common/base/q;

    invoke-interface {v0, p1}, Lcom/google/common/base/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/base/r$c;->b:Lcom/google/common/base/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/r$c;->a:Lcom/google/common/base/q;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/p;->a(Lcom/google/common/base/q;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/common/base/r$c;->a:Lcom/google/common/base/q;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/r$c;->b:Lcom/google/common/base/h;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

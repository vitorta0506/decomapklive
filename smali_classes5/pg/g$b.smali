.class public Lpg/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final a:I

.field protected final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected d:Lpg/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected e:Lpg/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected f:Lpg/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lpg/g$b;->a:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lpg/g$b;->b:Ljava/lang/Object;

    .line 12
    iput-object p0, p0, Lpg/g$b;->f:Lpg/g$b;

    iput-object p0, p0, Lpg/g$b;->e:Lpg/g$b;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lpg/g$b;Lpg/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Lpg/g$b<",
            "TK;TV;>;",
            "Lpg/g$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lpg/g$b;->a:I

    .line 3
    iput-object p2, p0, Lpg/g$b;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lpg/g$b;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lpg/g$b;->d:Lpg/g$b;

    .line 6
    iput-object p5, p0, Lpg/g$b;->f:Lpg/g$b;

    .line 7
    iget-object p1, p5, Lpg/g$b;->e:Lpg/g$b;

    iput-object p1, p0, Lpg/g$b;->e:Lpg/g$b;

    .line 8
    invoke-virtual {p0}, Lpg/g$b;->a()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpg/g$b;->e:Lpg/g$b;

    iput-object p0, v0, Lpg/g$b;->f:Lpg/g$b;

    .line 2
    iget-object v0, p0, Lpg/g$b;->f:Lpg/g$b;

    iput-object p0, v0, Lpg/g$b;->e:Lpg/g$b;

    return-void
.end method

.method protected b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpg/g$b;->e:Lpg/g$b;

    iget-object v1, p0, Lpg/g$b;->f:Lpg/g$b;

    iput-object v1, v0, Lpg/g$b;->f:Lpg/g$b;

    .line 2
    iget-object v1, p0, Lpg/g$b;->f:Lpg/g$b;

    iput-object v0, v1, Lpg/g$b;->e:Lpg/g$b;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-virtual {p0}, Lpg/g$b;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lpg/g$b;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    :goto_0
    invoke-virtual {p0}, Lpg/g$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lpg/g$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lpg/g$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lpg/g$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lpg/g$b;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lpg/g$b;->c:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    const-string v0, "value"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lpg/g$b;->c:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lpg/g$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpg/g$b;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpg/g$b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

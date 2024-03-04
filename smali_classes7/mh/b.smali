.class final Lmh/b;
.super Lmh/a$a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmh/a$a;-><init>()V

    const-string v0, "Null longValue"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lmh/b;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lmh/b;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lmh/a$a;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lmh/a$a;

    .line 3
    iget-object v0, p0, Lmh/b;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Lmh/a$a;->d()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lmh/b;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeValueLong{longValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmh/b;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

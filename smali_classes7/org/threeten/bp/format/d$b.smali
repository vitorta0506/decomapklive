.class final Lorg/threeten/bp/format/d$b;
.super Ljl/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field a:Lorg/threeten/bp/chrono/i;

.field b:Lorg/threeten/bp/ZoneId;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Lorg/threeten/bp/Period;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lorg/threeten/bp/format/d;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/format/d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/threeten/bp/format/d$b;->g:Lorg/threeten/bp/format/d;

    invoke-direct {p0}, Ljl/c;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/threeten/bp/format/d$b;->a:Lorg/threeten/bp/chrono/i;

    .line 4
    iput-object p1, p0, Lorg/threeten/bp/format/d$b;->b:Lorg/threeten/bp/ZoneId;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    .line 6
    sget-object p1, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    iput-object p1, p0, Lorg/threeten/bp/format/d$b;->e:Lorg/threeten/bp/Period;

    return-void
.end method

.method synthetic constructor <init>(Lorg/threeten/bp/format/d;Lorg/threeten/bp/format/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/d$b;-><init>(Lorg/threeten/bp/format/d;)V

    return-void
.end method


# virtual methods
.method protected a()Lorg/threeten/bp/format/d$b;
    .locals 3

    .line 1
    new-instance v0, Lorg/threeten/bp/format/d$b;

    iget-object v1, p0, Lorg/threeten/bp/format/d$b;->g:Lorg/threeten/bp/format/d;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/d$b;-><init>(Lorg/threeten/bp/format/d;)V

    .line 2
    iget-object v1, p0, Lorg/threeten/bp/format/d$b;->a:Lorg/threeten/bp/chrono/i;

    iput-object v1, v0, Lorg/threeten/bp/format/d$b;->a:Lorg/threeten/bp/chrono/i;

    .line 3
    iget-object v1, p0, Lorg/threeten/bp/format/d$b;->b:Lorg/threeten/bp/ZoneId;

    iput-object v1, v0, Lorg/threeten/bp/format/d$b;->b:Lorg/threeten/bp/ZoneId;

    .line 4
    iget-object v1, v0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    iget-object v2, p0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    iget-boolean v1, p0, Lorg/threeten/bp/format/d$b;->d:Z

    iput-boolean v1, v0, Lorg/threeten/bp/format/d$b;->d:Z

    return-object v0
.end method

.method b()Lorg/threeten/bp/format/a;
    .locals 3

    .line 1
    new-instance v0, Lorg/threeten/bp/format/a;

    invoke-direct {v0}, Lorg/threeten/bp/format/a;-><init>()V

    .line 2
    iget-object v1, v0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    iget-object v2, p0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    iget-object v1, p0, Lorg/threeten/bp/format/d$b;->g:Lorg/threeten/bp/format/d;

    invoke-virtual {v1}, Lorg/threeten/bp/format/d;->h()Lorg/threeten/bp/chrono/i;

    move-result-object v1

    iput-object v1, v0, Lorg/threeten/bp/format/a;->b:Lorg/threeten/bp/chrono/i;

    .line 4
    iget-object v1, p0, Lorg/threeten/bp/format/d$b;->b:Lorg/threeten/bp/ZoneId;

    if-eqz v1, :cond_0

    .line 5
    iput-object v1, v0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ZoneId;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/d$b;->g:Lorg/threeten/bp/format/d;

    invoke-static {v1}, Lorg/threeten/bp/format/d;->a(Lorg/threeten/bp/format/d;)Lorg/threeten/bp/ZoneId;

    move-result-object v1

    iput-object v1, v0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ZoneId;

    .line 7
    :goto_0
    iget-boolean v1, p0, Lorg/threeten/bp/format/d$b;->d:Z

    iput-boolean v1, v0, Lorg/threeten/bp/format/a;->f:Z

    .line 8
    iget-object v1, p0, Lorg/threeten/bp/format/d$b;->e:Lorg/threeten/bp/Period;

    iput-object v1, v0, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/Period;

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/g;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljl/d;->q(J)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/g;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/g;)Z
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/i<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->a()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/threeten/bp/format/d$b;->a:Lorg/threeten/bp/chrono/i;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/h;->g()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/h;->f()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljl/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/threeten/bp/format/d$b;->b:Lorg/threeten/bp/ZoneId;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/format/d$b;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/threeten/bp/format/d$b;->a:Lorg/threeten/bp/chrono/i;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/format/d$b;->b:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

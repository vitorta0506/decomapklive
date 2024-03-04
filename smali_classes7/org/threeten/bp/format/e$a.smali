.class Lorg/threeten/bp/format/e$a;
.super Ljl/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/c;Lorg/threeten/bp/format/b;)Lorg/threeten/bp/temporal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/threeten/bp/chrono/b;

.field final synthetic b:Lorg/threeten/bp/temporal/c;

.field final synthetic c:Lorg/threeten/bp/chrono/i;

.field final synthetic d:Lorg/threeten/bp/ZoneId;


# direct methods
.method constructor <init>(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/temporal/c;Lorg/threeten/bp/chrono/i;Lorg/threeten/bp/ZoneId;)V
    .locals 0

    iput-object p1, p0, Lorg/threeten/bp/format/e$a;->a:Lorg/threeten/bp/chrono/b;

    iput-object p2, p0, Lorg/threeten/bp/format/e$a;->b:Lorg/threeten/bp/temporal/c;

    iput-object p3, p0, Lorg/threeten/bp/format/e$a;->c:Lorg/threeten/bp/chrono/i;

    iput-object p4, p0, Lorg/threeten/bp/format/e$a;->d:Lorg/threeten/bp/ZoneId;

    invoke-direct {p0}, Ljl/c;-><init>()V

    return-void
.end method


# virtual methods
.method public getLong(Lorg/threeten/bp/temporal/g;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->a:Lorg/threeten/bp/chrono/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->a:Lorg/threeten/bp/chrono/b;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->b:Lorg/threeten/bp/temporal/c;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/c;->getLong(Lorg/threeten/bp/temporal/g;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/g;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->a:Lorg/threeten/bp/chrono/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/b;->isSupported(Lorg/threeten/bp/temporal/g;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->b:Lorg/threeten/bp/temporal/c;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/c;->isSupported(Lorg/threeten/bp/temporal/g;)Z

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
    iget-object p1, p0, Lorg/threeten/bp/format/e$a;->c:Lorg/threeten/bp/chrono/i;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/h;->g()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lorg/threeten/bp/format/e$a;->d:Lorg/threeten/bp/ZoneId;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/h;->e()Lorg/threeten/bp/temporal/i;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->b:Lorg/threeten/bp/temporal/c;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/c;->query(Lorg/threeten/bp/temporal/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/i;->a(Lorg/threeten/bp/temporal/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->a:Lorg/threeten/bp/chrono/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/g;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->a:Lorg/threeten/bp/chrono/b;

    invoke-virtual {v0, p1}, Ljl/c;->range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/e$a;->b:Lorg/threeten/bp/temporal/c;

    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/c;->range(Lorg/threeten/bp/temporal/g;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

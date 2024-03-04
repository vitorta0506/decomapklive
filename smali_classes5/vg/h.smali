.class abstract Lvg/h;
.super Lvg/i;
.source "SourceFile"

# interfaces
.implements Lvg/l;
.implements Lvg/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvg/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lvg/i<",
        "TE;>;",
        "Lvg/l<",
        "TE;>;",
        "Lvg/j$a;"
    }
.end annotation


# instance fields
.field protected final a:J

.field protected final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lvg/i;-><init>()V

    .line 2
    invoke-static {p1}, Lwg/a;->c(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    .line 3
    iput-wide v0, p0, Lvg/h;->a:J

    .line 4
    invoke-static {p1}, Lwg/d;->a(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lvg/h;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 4

    iget-wide v0, p0, Lvg/h;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public clear()V
    .locals 1

    :goto_0
    invoke-interface {p0}, Lvg/l;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    invoke-static {p0}, Lvg/j;->a(Lvg/j$a;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lvg/j$a;->f()J

    move-result-wide v1

    .line 2
    invoke-interface {p0}, Lvg/j$a;->d()J

    move-result-wide v3

    .line 3
    new-instance v8, Lvg/h$a;

    iget-wide v5, p0, Lvg/h;->a:J

    iget-object v7, p0, Lvg/h;->b:[Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lvg/h$a;-><init>(JJJ[Ljava/lang/Object;)V

    return-object v8
.end method

.method public size()I
    .locals 1

    invoke-static {p0}, Lvg/j;->b(Lvg/j$a;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

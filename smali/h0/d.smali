.class public Lh0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/d$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lh0/d$b;


# direct methods
.method public constructor <init>(Lh0/d$b;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p2, p0, Lh0/d;->a:J

    .line 4
    iput-object p1, p0, Lh0/d;->b:Lh0/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    new-instance v0, Lh0/d$a;

    invoke-direct {v0, p1}, Lh0/d$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lh0/d;-><init>(Lh0/d$b;J)V

    return-void
.end method


# virtual methods
.method public build()Lh0/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lh0/d;->b:Lh0/d$b;

    invoke-interface {v0}, Lh0/d$b;->a()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 3
    :cond_2
    :goto_0
    iget-wide v1, p0, Lh0/d;->a:J

    invoke-static {v0, v1, v2}, Lh0/e;->c(Ljava/io/File;J)Lh0/a;

    move-result-object v0

    return-object v0
.end method

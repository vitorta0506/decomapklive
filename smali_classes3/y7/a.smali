.class public Ly7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly7/a$a;
    }
.end annotation


# static fields
.field private static b:Ly7/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly7/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly7/a;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Ly7/a;
    .locals 2

    .line 1
    sget-object v0, Ly7/a;->b:Ly7/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ly7/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ly7/a;->b:Ly7/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ly7/a;

    invoke-direct {v1}, Ly7/a;-><init>()V

    sput-object v1, Ly7/a;->b:Ly7/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Ly7/a;->b:Ly7/a;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly7/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly7/a$a;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ly7/a$a;->z()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Ly7/a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ly7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d(Ly7/a$a;)V
    .locals 1

    iget-object v0, p0, Ly7/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

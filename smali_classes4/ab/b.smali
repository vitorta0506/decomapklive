.class public Lab/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lab/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lab/a;",
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

    iput-object v0, p0, Lab/b;->a:Ljava/util/List;

    return-void
.end method

.method public static d()Lab/b;
    .locals 2

    .line 1
    sget-object v0, Lab/b;->b:Lab/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lab/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lab/b;->b:Lab/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lab/b;

    invoke-direct {v1}, Lab/b;-><init>()V

    sput-object v1, Lab/b;->b:Lab/b;

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
    sget-object v0, Lab/b;->b:Lab/b;

    return-object v0
.end method


# virtual methods
.method public a(Lab/a;)V
    .locals 1

    iget-object v0, p0, Lab/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lab/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public c(I)Lab/a;
    .locals 1

    iget-object v0, p0, Lab/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lab/a;

    return-object p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lab/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

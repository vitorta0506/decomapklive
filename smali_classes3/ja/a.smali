.class public Lja/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/a$b;
    }
.end annotation


# static fields
.field private static c:Lja/a;


# instance fields
.field private a:Ljava/lang/String;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lja/a$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lja/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lja/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lja/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static b()Lja/a;
    .locals 2

    .line 1
    sget-object v0, Lja/a;->c:Lja/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lja/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lja/a;->c:Lja/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lja/a;

    invoke-direct {v1}, Lja/a;-><init>()V

    sput-object v1, Lja/a;->c:Lja/a;

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
    sget-object v0, Lja/a;->c:Lja/a;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 0

    const-string p1, "user_guide"

    .line 1
    iput-object p1, p0, Lja/a;->a:Ljava/lang/String;

    .line 2
    new-instance p1, Lja/a$a;

    invoke-direct {p1, p0}, Lja/a$a;-><init>(Lja/a;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lja/a$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lja/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lja/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lja/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lja/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lja/a$b;

    invoke-interface {v2, p1}, Lja/a$b;->onDone(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lja/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lja/a;->e(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public h(Ljava/lang/String;Lja/a$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lja/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

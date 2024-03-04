.class public Lcom/snapchat/kit/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lje/a;


# direct methods
.method private static declared-synchronized a(Landroid/content/Context;)Lje/a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/snapchat/kit/sdk/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/snapchat/kit/sdk/a;->a:Lje/a;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lje/b;->c()Lje/b$a;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/snapchat/kit/sdk/b;->d(Landroid/content/Context;)Lbe/b;

    move-result-object p0

    invoke-virtual {v1, p0}, Lje/b$a;->c(Lbe/b;)Lje/b$a;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lje/b$a;->b()Lje/a;

    move-result-object p0

    sput-object p0, Lcom/snapchat/kit/sdk/a;->a:Lje/a;

    .line 5
    :cond_0
    sget-object p0, Lcom/snapchat/kit/sdk/a;->a:Lje/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;)Lle/a;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/snapchat/kit/sdk/a;->a(Landroid/content/Context;)Lje/a;

    move-result-object p0

    invoke-interface {p0}, Lje/a;->b()Lle/a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lne/a;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/snapchat/kit/sdk/a;->a(Landroid/content/Context;)Lje/a;

    move-result-object p0

    invoke-interface {p0}, Lje/a;->a()Lne/a;

    move-result-object p0

    return-object p0
.end method

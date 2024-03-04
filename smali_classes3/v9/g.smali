.class public Lv9/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lv9/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initWeiBo()V

    return-void
.end method

.method public static a()Lv9/g;
    .locals 2

    .line 1
    sget-object v0, Lv9/g;->a:Lv9/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lv9/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lv9/g;->a:Lv9/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lv9/g;

    invoke-direct {v1}, Lv9/g;-><init>()V

    sput-object v1, Lv9/g;->a:Lv9/g;

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
    sget-object v0, Lv9/g;->a:Lv9/g;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

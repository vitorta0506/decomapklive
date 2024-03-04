.class public Lz7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/a;


# static fields
.field private static volatile b:Lz7/a;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz7/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lz7/a;
    .locals 2

    .line 1
    sget-object v0, Lz7/a;->b:Lz7/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lz7/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lz7/a;->b:Lz7/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lz7/a;

    invoke-direct {v1}, Lz7/a;-><init>()V

    sput-object v1, Lz7/a;->b:Lz7/a;

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
    sget-object v0, Lz7/a;->b:Lz7/a;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lz7/a;->a:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "COUNTREY_BEAN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

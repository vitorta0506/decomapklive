.class public final Lo/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lo/a; = null

.field private static volatile b:Z = false

.field public static c:Lcom/alibaba/android/arouter/facade/template/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lo/b;->h()Z

    move-result v0

    return v0
.end method

.method public static c()Lo/a;
    .locals 2

    .line 1
    sget-boolean v0, Lo/a;->b:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lo/a;->a:Lo/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lo/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lo/a;->a:Lo/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lo/a;

    invoke-direct {v1}, Lo/a;-><init>()V

    sput-object v1, Lo/a;->a:Lo/a;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lo/a;->a:Lo/a;

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Lcom/alibaba/android/arouter/exception/InitException;

    const-string v1, "ARouter::Init::Invoke init(context) first!"

    invoke-direct {v0, v1}, Lcom/alibaba/android/arouter/exception/InitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Landroid/app/Application;)V
    .locals 3

    .line 1
    sget-boolean v0, Lo/a;->b:Z

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lo/b;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    sput-object v0, Lo/a;->c:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v1, "ARouter::"

    const-string v2, "ARouter init start."

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lo/b;->k(Landroid/app/Application;)Z

    move-result p0

    sput-boolean p0, Lo/a;->b:Z

    .line 5
    sget-boolean p0, Lo/a;->b:Z

    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lo/b;->e()V

    .line 7
    :cond_0
    sget-object p0, Lo/b;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v0, "ARouter init over."

    invoke-interface {p0, v1, v0}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    invoke-static {}, Lo/b;->j()Lo/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/b;->f(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lo/b;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lo/b;->j()Lo/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/b;->m(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lo/b;->j()Lo/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/b;->n(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

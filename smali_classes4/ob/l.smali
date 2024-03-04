.class public Lob/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/d;


# static fields
.field private static final h:Landroid/os/Handler;


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lob/a;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lpb/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lpb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpb/f<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/lang/CharSequence;

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lob/l;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lob/l$a;

    invoke-direct {v0, p0}, Lob/l$a;-><init>(Lob/l;)V

    iput-object v0, p0, Lob/l;->f:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lob/l$b;

    invoke-direct {v0, p0}, Lob/l$b;-><init>(Lob/l;)V

    iput-object v0, p0, Lob/l;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic d(Lob/l;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lob/l;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic e(Lob/l;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lob/l;->c:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic f(Lob/l;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lob/l;->a:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic g(Lob/l;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lob/l;->e:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lob/l;->a:Landroid/app/Application;

    .line 2
    invoke-static {p1}, Lob/a;->b(Landroid/app/Application;)Lob/a;

    move-result-object p1

    iput-object p1, p0, Lob/l;->b:Lob/a;

    return-void
.end method

.method public b(Lpb/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpb/f<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lob/l;->d:Lpb/f;

    return-void
.end method

.method public c(Ljava/lang/CharSequence;J)V
    .locals 3

    .line 1
    iput-object p1, p0, Lob/l;->e:Ljava/lang/CharSequence;

    .line 2
    sget-object p1, Lob/l;->h:Landroid/os/Handler;

    iget-object v0, p0, Lob/l;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lob/l;->f:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected h(Landroid/content/Context;)Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "appops"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "checkOpNoThrow"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "OP_POST_NOTIFICATION"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 6
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v8

    .line 9
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    .line 10
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public i(Landroid/app/Application;)Lpb/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lob/l;->b:Lob/a;

    invoke-virtual {v0}, Lob/a;->a()Landroid/app/Activity;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 3
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v0, Lob/o;

    invoke-direct {v0, p1}, Lob/o;-><init>(Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    new-instance v2, Lob/b;

    invoke-direct {v2, v0}, Lob/b;-><init>(Landroid/app/Activity;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x19

    if-ne v1, v0, :cond_2

    .line 6
    new-instance v0, Lob/g;

    invoke-direct {v0, p1}, Lob/g;-><init>(Landroid/app/Application;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1d

    if-ge v1, v0, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lob/l;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lob/e;

    invoke-direct {v0, p1}, Lob/e;-><init>(Landroid/app/Application;)V

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Lob/h;

    invoke-direct {v0, p1}, Lob/h;-><init>(Landroid/app/Application;)V

    .line 10
    :goto_0
    instance-of v2, v0, Lob/c;

    if-nez v2, :cond_4

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v2, :cond_5

    .line 12
    :cond_4
    iget-object v1, p0, Lob/l;->d:Lpb/f;

    invoke-interface {v1, p1}, Lpb/f;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lpb/b;->setView(Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Lob/l;->d:Lpb/f;

    invoke-interface {p1}, Lpb/f;->d()I

    move-result p1

    iget-object v1, p0, Lob/l;->d:Lpb/f;

    invoke-interface {v1}, Lpb/f;->e()I

    move-result v1

    iget-object v2, p0, Lob/l;->d:Lpb/f;

    invoke-interface {v2}, Lpb/f;->f()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lpb/b;->setGravity(III)V

    .line 14
    iget-object p1, p0, Lob/l;->d:Lpb/f;

    invoke-interface {p1}, Lpb/f;->a()F

    move-result p1

    iget-object v1, p0, Lob/l;->d:Lpb/f;

    invoke-interface {v1}, Lpb/f;->c()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lpb/b;->setMargin(FF)V

    :cond_5
    return-object v0
.end method

.method protected j(Ljava/lang/CharSequence;)I
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

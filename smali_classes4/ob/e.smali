.class public Lob/e;
.super Lob/h;
.source "SourceFile"


# static fields
.field private static b:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lob/h;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method private static b()V
    .locals 7

    .line 1
    sget-boolean v0, Lob/e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lob/e;->b:Z

    .line 3
    :try_start_0
    const-class v1, Landroid/widget/Toast;

    const-string v2, "getService"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    instance-of v2, v2, Lob/d;

    if-eqz v2, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/Class;

    const-string v6, "android.app.INotificationManager"

    .line 9
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v3

    new-instance v3, Lob/d;

    invoke-direct {v3, v1}, Lob/d;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-static {v2, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/Toast;

    const-string v3, "sService"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 13
    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public show()V
    .locals 0

    .line 1
    invoke-static {}, Lob/e;->b()V

    .line 2
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

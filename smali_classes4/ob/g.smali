.class public Lob/g;
.super Lob/e;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lob/e;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lob/g;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lob/g;->c:Z

    .line 3
    :try_start_0
    const-class v1, Landroid/widget/Toast;

    const-string v2, "mTN"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mHandler"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 9
    instance-of v3, v0, Lob/f;

    if-eqz v3, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance v3, Lob/f;

    invoke-direct {v3, v0}, Lob/f;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public show()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lob/g;->c()V

    .line 2
    invoke-super {p0}, Lob/e;->show()V

    return-void
.end method

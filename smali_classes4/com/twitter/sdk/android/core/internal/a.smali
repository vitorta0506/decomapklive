.class public Lcom/twitter/sdk/android/core/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/a$a;,
        Lcom/twitter/sdk/android/core/internal/a$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 3
    new-instance v0, Lcom/twitter/sdk/android/core/internal/a$a;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/internal/a$a;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/internal/a$b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/a$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/internal/a$a;->a(Lcom/twitter/sdk/android/core/internal/a$a;Lcom/twitter/sdk/android/core/internal/a$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

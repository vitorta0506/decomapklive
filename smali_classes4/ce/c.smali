.class public final Lce/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lce/a;
.implements Lce/b;


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lce/b$a;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lce/b$b;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lce/a$a;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lce/c;->a:Ljava/util/WeakHashMap;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lce/c;->b:Ljava/util/WeakHashMap;

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lce/c;->c:Ljava/util/WeakHashMap;

    .line 5
    iput-object p1, p0, Lce/c;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Collection;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lce/b$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lce/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final addOnFirebaseCustomTokenResultListener(Lce/a$a;)V
    .locals 2

    iget-object v0, p0, Lce/c;->c:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addOnLoginStartListener(Lce/b$a;)V
    .locals 2

    iget-object v0, p0, Lce/c;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addOnLoginStateChangedListener(Lce/b$b;)V
    .locals 2

    iget-object v0, p0, Lce/c;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V
    .locals 2
    .param p1    # Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lce/c;->d:Landroid/os/Handler;

    new-instance v1, Lce/c$f;

    invoke-direct {v1, p0, p1}, Lce/c$f;-><init>(Lce/c;Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lce/c;->d:Landroid/os/Handler;

    new-instance v1, Lce/c$e;

    invoke-direct {v1, p0, p1}, Lce/c$e;-><init>(Lce/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final d()Ljava/util/Collection;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lce/b$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lce/c;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method final e()Ljava/util/Collection;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lce/a$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lce/c;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lce/c;->d:Landroid/os/Handler;

    new-instance v1, Lce/c$a;

    invoke-direct {v1, p0}, Lce/c$a;-><init>(Lce/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lce/c;->d:Landroid/os/Handler;

    new-instance v1, Lce/c$b;

    invoke-direct {v1, p0}, Lce/c$b;-><init>(Lce/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lce/c;->d:Landroid/os/Handler;

    new-instance v1, Lce/c$c;

    invoke-direct {v1, p0}, Lce/c$c;-><init>(Lce/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lce/c;->d:Landroid/os/Handler;

    new-instance v1, Lce/c$d;

    invoke-direct {v1, p0}, Lce/c$d;-><init>(Lce/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeOnFirebaseCustomTokenResultListener(Lce/a$a;)V
    .locals 1

    iget-object v0, p0, Lce/c;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeOnLoginStartListener(Lce/b$a;)V
    .locals 1

    iget-object v0, p0, Lce/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeOnLoginStateChangedListener(Lce/b$b;)V
    .locals 1

    iget-object v0, p0, Lce/c;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

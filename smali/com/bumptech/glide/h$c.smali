.class Lcom/bumptech/glide/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Lp0/i;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RequestManager.this"
    .end annotation
.end field

.field final synthetic b:Lcom/bumptech/glide/h;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/h;Lp0/i;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/h$c;->b:Lcom/bumptech/glide/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/h$c;->a:Lp0/i;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/h$c;->b:Lcom/bumptech/glide/h;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h$c;->a:Lp0/i;

    invoke-virtual {v0}, Lp0/i;->e()V

    .line 3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

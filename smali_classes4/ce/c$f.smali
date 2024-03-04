.class final Lce/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/c;->b(Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;

.field final synthetic b:Lce/c;


# direct methods
.method constructor <init>(Lce/c;Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V
    .locals 0

    iput-object p1, p0, Lce/c$f;->b:Lce/c;

    iput-object p2, p0, Lce/c$f;->a:Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lce/c$f;->b:Lce/c;

    invoke-virtual {v0}, Lce/c;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce/a$a;

    .line 2
    iget-object v2, p0, Lce/c$f;->a:Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;

    invoke-interface {v1, v2}, Lce/a$a;->a(Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class final Lhe/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/kit/sdk/core/config/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhe/c;->c(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/kit/sdk/core/models/b;

.field final synthetic b:Lcom/snapchat/kit/sdk/core/models/b;

.field final synthetic c:Lhe/c;


# direct methods
.method constructor <init>(Lhe/c;Lcom/snapchat/kit/sdk/core/models/b;Lcom/snapchat/kit/sdk/core/models/b;)V
    .locals 0

    iput-object p1, p0, Lhe/c$a;->c:Lhe/c;

    iput-object p2, p0, Lhe/c$a;->a:Lcom/snapchat/kit/sdk/core/models/b;

    iput-object p3, p0, Lhe/c$a;->b:Lcom/snapchat/kit/sdk/core/models/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(D)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhe/c$a;->c:Lhe/c;

    invoke-static {v0}, Lhe/c;->b(Lhe/c;)Lhe/d;

    move-result-object v0

    invoke-virtual {v0}, Lhe/d;->e()D

    move-result-wide v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    iget-object v0, p0, Lhe/c$a;->c:Lhe/c;

    invoke-static {v0}, Lhe/c;->d(Lhe/c;)Lde/b;

    move-result-object v0

    iget-object v1, p0, Lhe/c$a;->c:Lhe/c;

    iget-object v2, p0, Lhe/c$a;->a:Lcom/snapchat/kit/sdk/core/models/b;

    iget-object v3, p0, Lhe/c$a;->b:Lcom/snapchat/kit/sdk/core/models/b;

    invoke-virtual {v1, v2, v3, p1, p2}, Lhe/c;->a(Lcom/snapchat/kit/sdk/core/models/b;Lcom/snapchat/kit/sdk/core/models/b;D)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lde/b;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

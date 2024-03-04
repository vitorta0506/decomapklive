.class final Lug/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lug/z;->b(ZLug/q;Lug/x;)Lug/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lug/q;


# direct methods
.method constructor <init>(Lug/q;)V
    .locals 0

    iput-object p1, p0, Lug/z$a;->a:Lug/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lug/q;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lug/z$a;->a:Lug/q;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lug/q;->cancel(Z)Z

    :cond_0
    return-void
.end method

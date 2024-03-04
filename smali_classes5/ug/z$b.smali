.class final Lug/z$b;
.super Lug/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lug/z;->b(ZLug/q;Lug/x;)Lug/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Lug/x;

.field final synthetic e:Lug/q;


# direct methods
.method varargs constructor <init>(Z[Lug/x;Lug/x;Lug/q;)V
    .locals 0

    iput-object p3, p0, Lug/z$b;->d:Lug/x;

    iput-object p4, p0, Lug/z$b;->e:Lug/q;

    invoke-direct {p0, p1, p2}, Lug/z;-><init>(Z[Lug/x;)V

    return-void
.end method


# virtual methods
.method public e(Lug/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/z$b;->d:Lug/x;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lug/z$b;->e:Lug/q;

    invoke-super {p0, p1}, Lug/z;->e(Lug/q;)V

    return-void
.end method
